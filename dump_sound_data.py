import struct
import sys
import collections
import functools
import bisect
import os
import subprocess


ROM_LOAD_ADDR = 0x08000000


@functools.total_ordering
class PmObject:
    def __init__(self, offset):
        assert offset >= ROM_LOAD_ADDR
        self.offset = offset
        self.name = 'gUnknown_{:08X}'.format(offset)

    def __hash__(self):
        return self.offset

    def __eq__(self, other):
        # Use self.__class__ here because this is an equality check
        return isinstance(other, self.__class__) and other.offset == self.offset

    def __lt__(self, other):
        # Use PmObject here so we can sort multiple subclasses of PmObject
        return isinstance(other, PmObject) and self.offset < other.offset

    @classmethod
    def from_bytes(cls, buffer, offset, *, size):
        return NotImplemented

    def __len__(self):
        if hasattr(self, '_size'):
            return self._size
        elif hasattr(self.__class__, '_struct'):
            return self._struct.size
        elif hasattr(self, '_raw'):
            return len(self._raw)
        else:
            raise NotImplementedError('unknown subclass flavor')

    def __str__(self):
        return self.name

    def __repr__(self):
        return '<{0.__class__.__name__}(0x{0.offset:08X})>'.format(self)

    def to_text(self, fp):
        return NotImplemented

    def to_binary(self, fp):
        return NotImplemented


class PmRawData(PmObject):
    @classmethod
    def from_bytes(cls, buffer, offset, *, size=0):
        self = cls(offset)
        if size == 0:
            self._raw = buffer[offset - ROM_LOAD_ADDR:]
        else:
            self._raw = buffer[offset - ROM_LOAD_ADDR:offset + size - ROM_LOAD_ADDR]
        return self

    def truncate(self, size):
        if size <= len(self):
            self._raw = self._raw[:size]

    def set_end(self, obj):
        self.truncate(obj.offset - self.offset)

    def to_text(self, fp):
        print('{0.name}: @ 0x{0.offset:08X}'.format(self), file=fp)
        offset = self.offset
        size = len(self)
        if offset & 15:
            offset += 15
            offset &= ~15
            offset -= self.offset
            print('\t.byte ' + ', '.join('0x{:02X}'.format(x) for x in self._raw[:offset]), file=fp)
        else:
            offset = 0
        for i in range(offset, size, 16):
            print('\t.byte ' + ', '.join('0x{:02X}'.format(x) for x in self._raw[i:i + 16]), file=fp)
        print('', file=fp)

    def to_binary(self, fp):
        fp.write(self._raw)

    def __getitem__(self, item):
        return self._raw[item]


class WaveData(PmRawData):
    pass


class DirectSound(WaveData):
    pass


class ProgrammableWaveData(WaveData):
    pass


class TrackSet(PmRawData):
    def __init__(self, offset):
        super().__init__(offset)
        self.tracks = []
        self._labels = {}
        self._raw = b''
        self.song = None

    def __iter__(self):
        return iter(self.tracks)

    def append(self, track):
        bisect.insort_left(self.tracks, track)
        track.parent = self

    def recalc(self):
        assert self.song or self.tracks
        if not self.song:
            self.song = self.tracks[0].song
        self.offset = min(self.offset, self.tracks[0].offset)
        self._raw = b''
        for i, t in enumerate(self.tracks[1:]):
            self.tracks[i].set_end(t)
            self._raw += self.tracks[i]._raw
        if self.song > self.tracks[-1]:
            self.tracks[-1].set_end(self.song)
        self._raw += self.tracks[-1]._raw
        assert len(self._raw) == self.song.offset - self.tracks[0].offset

    def extend(self, tracks):
        for track in tracks:
            self.append(track)
        self.recalc()

    def clear(self):
        self.tracks.clear()
        self._raw = b''
        if self.song is not None:
            self.offset = self.song.offset

    def to_text(self, fp):
        for track in self.tracks:
            track.analyze()
        for track in self.tracks:
            track.to_text(fp)


class SongTrack(PmRawData):
    def __init__(self, offset):
        super().__init__(offset)
        self._labels = collections.defaultdict(lambda: '{0.song.name}_')
        self._lines = {}
        self.parent = None

    def analyze(self):
        def get_length(value):
            if value < 25:
                wait = value
            else:
                wait = [
                    28,
                    30,
                    32,
                    36,
                    40,
                    42,
                    44,
                    48,
                    52,
                    54,
                    56,
                    60,
                    64,
                    66,
                    68,
                    72,
                    76,
                    78,
                    80,
                    84,
                    88,
                    90,
                    92,
                    96
                ][value - 25]
            return wait

        def get_wait(value):
            nonlocal i, is_continue
            wait = get_length(value - 0x80)
            return '\t.byte W{:02d}'.format(wait)

        def get_cmd(value):
            nonlocal i
            cmds = [
                'FINE',      # B1
                'GOTO',      # B2
                'PATT',      # B3
                'PEND',      # B4
                'REPT',      # B5
                None,        # B6
                None,        # B7
                None,        # B8
                'MEMACC',    # B9
                'PRIO',      # BA
                'TEMPO',     # BB
                'KEYSH',     # BC
                'VOICE',     # BD
                'VOL',       # BE
                'PAN',       # BF
                'BEND',      # C0
                'BENDR',     # C1
                'LFOS',      # C2
                'LFODL',     # C3
                'MOD',       # C4
                'MODT',      # C5
                None,        # C6
                None,        # C7
                'TUNE',        # C8
                None,        # C9
                None,        # CA
                None,        # CB
                None,        # CC
                'XCMD',      # CD
                'EOT',       # CE
            ]
            cmd = cmds[value - 0xB1]
            assert cmd is not None
            line = '\t.byte '
            if not is_continue:
                line += cmd + ', '
            if cmd in ['REPT', 'PRIO', 'TEMPO', 'KEYSH', 'VOICE', 'VOL', 'PAN', 'BEND', 'BENDR', 'LFOS', 'LFODL', 'MOD', 'MODT', 'TUNE']:
                line += '0x{:02X}'.format(self[i])
                i += 1
            if cmd == 'MEMACC':
                line += '0x{:02X}, 0x{:02X}'.format(self[i], self[i + 1])
                i += 2
            if cmd in ['GOTO', 'PATT', 'REPT']:
                line = line.rstrip(', ')
                addr = self[i] | (self[i + 1] << 8) | (self[i + 2] << 16) | (self[i + 3] << 24)
                line += '\n\t .4byte {}'.format(labels[addr])
                i += 4
            if cmd == 'EOT' and self[i] < 0x80:
                line += '{}'.format(get_pitch(self[i]))
                i += 1
            return line

        def get_pitch(value):
            pitches = ['Cn', 'Cs', 'Dn', 'Ds', 'En', 'Fn', 'Fs', 'Gn', 'Gs', 'An', 'As', 'Bn']
            return '{}{}'.format(pitches[value % 12], value // 12 - 2).replace('-', 'M')

        def get_note(value):
            nonlocal i
            if value == 0xCF:
                cmd = 'TIE'
            else:
                cmd = 'N{:02d}'.format(get_length(value - 0xD0))
            line = '\t.byte '
            if not is_continue:
                line += '{}, '.format(cmd)
            if self[i] >= 0x80:
                return line
            line += get_pitch(self[i])
            i += 1
            if self[i] >= 0x80:
                return line
            line += ', v{:03d}'.format(self[i])
            i += 1
            return line

        labels = collections.defaultdict(lambda: '{.name}_{:03d}'.format(self, len(labels))) | self.parent._labels
        lines = {}
        i = 0
        end = len(self)
        while self[end - 1] == 0:
            end -= 1
        running_status = 0
        while i < end:
            line_i = i
            byt = self[i]
            if byt < 128:
                byt = running_status
                is_continue = True
            else:
                i += 1
                if byt >= 0xBD:
                    running_status = byt
                is_continue = False
            if byt >= 0xCF:
                lines[line_i] = get_note(byt).rstrip(', ')
            elif byt > 0xB0:
                lines[line_i] = get_cmd(byt).rstrip(', ')
            else:
                lines[line_i] = get_wait(byt).rstrip(', ')
            if i == line_i:
                raise RuntimeError('Infinite loop detected in {0.name}:{1:d}, aborting'.format(self, i))

        self._lines = lines
        self._labels = labels
        self.parent._labels |= labels

    def to_text(self, fp):
        print('{0.name}: @ 0x{0.offset:08X}'.format(self), file=fp)
        for i, line in sorted(self._lines.items()):
            if i + self.offset in self.parent._labels:
                print('{}: @ 0x{:08X}'.format(self.parent._labels[i + self.offset], self.offset + i), file=fp)
            print(line, file=fp)


class Keysplit(PmRawData):
    def to_text(self, fp):
        print('\t.set {.name}, . - 36'.format(self), file=fp)
        for i, value in enumerate(self._raw, 36):
            print('\t.byte {}  @ {}'.format(value, i), file=fp)
        print('', file=fp)


class PmStructData(PmObject):
    def __init_subclass__(cls, *, format, names):
        cls._struct = struct.Struct(format)
        cls._names = names

    @classmethod
    def from_bytes(cls, buffer, offset):
        self = cls(offset)
        for name, value in zip(cls._names, cls._struct.unpack_from(buffer, offset - ROM_LOAD_ADDR)):
            setattr(self, name, value)
        return self

    @classmethod
    def sizeof(cls):
        return cls._struct.size


class VoiceGroup(PmStructData, format='<BBBBLBBBB', names=('type', 'key', 'length', 'pan_sweep', 'wav', 'attack', 'decay', 'sustain', 'release')):
    @classmethod
    def from_bytes(cls, buffer, offset):
        self = super().from_bytes(buffer, offset)
        if self.type in [0, 8, 16]:
            self.wav = DirectSound.from_bytes(buffer, self.wav)
        elif self.type in [3, 11]:
            self.wav = ProgrammableWaveData.from_bytes(buffer, self.wav)
        elif self.type in [64, 128]:
            self.wav = VoiceGroupArray.from_bytes(buffer, self.wav)
        if self.type == 64:
            keysplit = self.attack | (self.decay << 8) | (self.sustain << 16) | (self.release << 24)
            self.keysplits = Keysplit.from_bytes(buffer, keysplit + 36)
        else:
            self.keysplits = None
        return self

    def to_text(self, fp):
        methods = {
            0: 'voice_directsound',
            1: 'voice_square_1',
            2: 'voice_square_2',
            3: 'voice_programmable_wave',
            4: 'voice_noise',
            8: 'voice_directsound_no_resample',
            9: 'voice_square_1_alt',
            10: 'voice_square_2_alt',
            11: 'voice_programmable_wave_alt',
            12: 'voice_noise_alt',
            16: 'voice_directsound_alt',
            64: 'voice_keysplit',
            128: 'voice_keysplit_all',
        }
        print('\t{0} '.format(methods[self.type]), file=fp, end='')
        if not self.type & 0xE0:
            print('{0.key}, {1}, '.format(self, self.pan_sweep & 0x7F), file=fp, end='')
        print('{0.wav}'.format(self), file=fp, end='')
        if not self.type & 0xE0:
            print(', {0.attack}, {0.decay}, {0.sustain}, {0.release}'.format(self), file=fp)
        elif self.type == 0x40:
            print(', {0.keysplits}'.format(self), file=fp)
        else:
            print('', file=fp)


class VoiceGroupArray(PmRawData):
    def __init__(self, offset):
        super().__init__(offset)
        self._structs = None

    def iter_structs(self, buffer):
        self._structs = []
        i = self.offset
        while i < self.offset + len(self):
            try:
                obj = VoiceGroup.from_bytes(buffer, i)
            except AssertionError:
                raw = buffer[i - ROM_LOAD_ADDR:i + VoiceGroup.sizeof() - ROM_LOAD_ADDR]
                if sum(raw) == 0:
                    break
                print(['{:02x}'.format(x) for x in buffer[i - ROM_LOAD_ADDR:i + VoiceGroup.sizeof() - ROM_LOAD_ADDR]])
                raise
            self._structs.append(obj)
            yield obj
            i += VoiceGroup.sizeof()

    def __iter__(self):
        return iter(self._structs)

    def to_text(self, fp):
        assert self._structs is not None
        print('\t.align 2, 0', file=fp)
        print('\t.global {0.name}'.format(self), file=fp)
        print('{0.name}: @ 0x{0.offset:08X} (voicegroup)'.format(self), file=fp)
        for vg in self._structs:
            vg.to_text(fp)


class SongHeader(PmStructData, format='<BBBBL', names=('trackCount', 'blockCount', 'priority', 'reverb', 'tone')):
    def __init__(self, offset):
        super().__init__(offset)
        self.tracks = TrackSet(offset)
        self.tracks.song = self

    @classmethod
    @functools.cache
    def from_bytes(cls, buffer, offset):
        if offset == 0:
            return None
        self = super().from_bytes(buffer, offset)
        if self.trackCount == 0:
            return DummySongHeader(offset)
        self.tone = VoiceGroupArray.from_bytes(buffer, self.tone)
        track_list = struct.Struct('<{:d}L'.format(self.trackCount))
        self.tracks.extend(SongTrack.from_bytes(buffer, value) for value in track_list.unpack_from(buffer, offset + len(self) - ROM_LOAD_ADDR))
        self._size = self._struct.size + track_list.size
        return self

    def to_text(self, fp):
        print('\t.align 2, 0', file=fp)
        print('\t.global {0.name}'.format(self), file=fp)
        print('{0.name}: @ 0x{0.offset:08X} (song header)'.format(self), file=fp)
        print('\t.byte {0.trackCount}, {0.blockCount}, {0.priority}, {0.reverb} @ trackCount, blockCount, priority, reverb'.format(self), file=fp)
        print('\t.4byte {0.tone} @ voice group'.format(self), file=fp)
        for track in self.tracks:
            print('\t.4byte {}'.format(track), file=fp)
        print('', file=fp)


class DummySongHeader(SongHeader, format='<BBBB', names=('trackCount', 'blockCount', 'priority', 'reverb')):
    def __init__(self, offset):
        super().__init__(offset)
        self.name = 'dummy_song_header'
        self.trackCount = 0
        self.blockCount = 0
        self.priority = 0
        self.reverb = 0
        self.tone = None
        self.tracks = None

    def to_text(self, fp):
        print('\t.align 2, 0', file=fp)
        print('{0.name}: @ 0x{0.offset:08X} (song header)'.format(self), file=fp)
        print('\t.byte {0.trackCount}, {0.blockCount}, {0.priority}, {0.reverb} @ trackCount, blockCount, priority, reverb'.format(self), file=fp)


class SongTableEntry(PmStructData, format='<LHH', names=('song', 'ms', 'me')):
    @classmethod
    def from_bytes(cls, buffer, offset):
        self = super().from_bytes(buffer, offset)
        self.song = SongHeader.from_bytes(buffer, self.song)
        return self

    def to_text(self, fp):
        print('\tsong {0.song}, {0.ms}, {0.me}'.format(self), file=fp)


class MusicPlayer(PmStructData, format='<LLBxH', names=('info', 'track', 'unk8', 'unkA')):
    pass


class SongTableArray(PmRawData):
    def __init__(self, offset):
        super().__init__(offset)
        self._structs = None
        self.name = 'gSongTable'

    def iter_structs(self, buffer):
        self._structs = []
        i = self.offset
        while i < self.offset + len(self):
            song = SongTableEntry.from_bytes(buffer, i)
            if song.song is None:
                self.truncate(i - self.offset)
                break
            self._structs.append(song)
            yield song
            i += SongTableEntry.sizeof()

    def to_text(self, fp):
        assert self._structs is not None
        print('\t.align 2, 0', file=fp)
        print('\t.global {0.name}'.format(self), file=fp)
        print('{0.name}: @ 0x{0.offset:08X}'.format(self), file=fp)
        for song in self._structs:
            song.to_text(fp)


def insort_left(array, obj):
    j = bisect.bisect_left(array, obj)
    if isinstance(obj, PmRawData) and array[j] > obj:
        obj.set_end(array[j])
    if array[j] > obj:
        array.insert(j, obj)
        if j > 0 and isinstance(array[j - 1], PmRawData):
            array[j - 1].set_end(obj)


def main():
    if len(sys.argv) < 6:
        print('usage: {} ROM gSongTable gSoundDataEnd gMPlayTable gMPlayTableEnd', file=sys.stderr)
        return 1
    with open(sys.argv[1], 'rb') as rom:
        raw = rom.read()
    offset = song_table_start = int(sys.argv[2], 0)
    end = int(sys.argv[3], 0)
    mus_player_start = int(sys.argv[4], 0)
    mus_player_end = int(sys.argv[5], 0)
    size = SongTableEntry.sizeof()

    song_entries = [MusicPlayer.from_bytes(raw, i) for i in range(mus_player_start, mus_player_end, MusicPlayer.sizeof())]
    song_entries.append(PmRawData.from_bytes(raw, end))
    song_table = SongTableArray.from_bytes(raw, song_table_start)
    insort_left(song_entries, song_table)
    for header in song_table.iter_structs(raw):
        if not isinstance(header.song, DummySongHeader):
            header.song.name = 'song_unk_{}'.format((offset - song_table_start) // size)
            for i, track in enumerate(header.song.tracks):
                track.name = '{0.song.name}_{1}'.format(header, i)
                track.song = header.song
        insort_left(song_entries, header.song)
        if not isinstance(header.song, DummySongHeader):
            insort_left(song_entries, header.song.tone)
            insort_left(song_entries, header.song.tracks)
        offset += size
    i = 0
    while i < len(song_entries) - 1:
        x = song_entries[i]
        if isinstance(x, PmRawData):
            x.set_end(song_entries[i + 1])
            if isinstance(x, VoiceGroupArray):
                for vg in x.iter_structs(raw):
                    if isinstance(vg.wav, PmObject):
                        insort_left(song_entries, vg.wav)
                    if isinstance(vg.keysplits, PmObject):
                        insort_left(song_entries, vg.keysplits)
        i += 1
    song_entries.pop(-1)

    vgi = 0
    ksi = 0
    for obj in song_entries:
        if isinstance(obj, VoiceGroupArray):
            obj.name = 'voicegroup{:03d}'.format(vgi)
            vgi += 1
        elif isinstance(obj, Keysplit):
            obj.name = 'KeySplitTable{:d}'.format(ksi)
            ksi += 1

    created_voicegroups_inc = False
    created_keysplit_tables_inc = False
    created_sound_data_inc = False
    created_programmable_wave_inc = False
    created_music_player_table_inc = False
    created_song_table_inc = False
    created_song_inc = collections.defaultdict(bool)
    os.makedirs('sound/voicegroups', exist_ok=True)
    os.makedirs('sound/programmable_wave_samples', exist_ok=True)
    os.makedirs('sound/direct_sound_samples', exist_ok=True)
    os.makedirs('sound/songs/midi', exist_ok=True)
    print('\t.section .rodata')
    print('\t.include "asm/macros/m4a.inc"')
    print('\t.include "asm/macros/music_voice.inc"')
    for obj in song_entries:
        if isinstance(obj, VoiceGroupArray):
            filename = 'sound/voicegroups/{.name}.inc'.format(obj)
            with open('sound/voice_groups.inc', 'a' if created_voicegroups_inc else 'w') as vginc:
                print('\t.include "{}"'.format(filename), file=vginc)
            with open(filename, 'w') as fp:
                obj.to_text(fp)
            if not created_voicegroups_inc:
                print('\t.include "sound/voice_groups.inc"')
            created_voicegroups_inc = True
        elif isinstance(obj, Keysplit):
            with open('sound/keysplit_tables.inc', 'a' if created_keysplit_tables_inc else 'w') as ksinc:
                obj.to_text(ksinc)
            if not created_keysplit_tables_inc:
                print('\t.include "sound/keysplit_tables.inc"')
            created_keysplit_tables_inc = True
        elif isinstance(obj, MusicPlayer):
            # with open('sound/music_player_table.inc', 'a' if created_music_player_table_inc else 'w') as fp:
            #     obj.to_text(fp)
            if not created_music_player_table_inc:
                print('\t.include "sound/music_player_table.inc"')
            created_music_player_table_inc = True
        elif isinstance(obj, SongTableArray):
            with open('sound/song_table.inc', 'a' if created_song_table_inc else 'w') as fp:
                obj.to_text(fp)
            if not created_song_table_inc:
                print('\t.include "sound/song_table.inc"')
            created_song_table_inc = True
        elif isinstance(obj, (SongTrack, TrackSet)):
            songfname = 'sound/songs/{.song.name}.s'.format(obj)
            with open(songfname, 'a' if created_song_inc[songfname] else 'w') as fp:
                if not created_song_inc[songfname]:
                    print('\t.include "MPlayDef.s"', file=fp)
                    print('\t.section .rodata', file=fp)
                    print('\t.align 2, 0', file=fp)
                    print('\t{}(.rodata);'.format(songfname.replace('.s', '.o')), file=sys.stderr)
                obj.to_text(fp)
            created_song_inc[songfname] = True
        elif isinstance(obj, DummySongHeader):
            with open('sound/song_table.inc', 'a' if created_song_table_inc else 'w') as fp:
                obj.to_text(fp)
            if not created_song_table_inc:
                print('\t.include "sound/song_table.inc"')
            created_song_table_inc = True
        elif isinstance(obj, SongHeader):
            songfname = 'sound/songs/{.name}.s'.format(obj)
            with open(songfname, 'a' if created_song_inc[songfname] else 'w') as fp:
                if not created_song_inc[songfname]:
                    print('\t.include "MPlayDef.s"', file=fp)
                    print('\t.section .rodata', file=fp)
                    print('\t.align 2, 0', file=fp)
                    print('\t{}(.rodata);'.format(songfname.replace('.s', '.o')), file=sys.stderr)
                obj.to_text(fp)
            created_song_inc[songfname] = True
        elif isinstance(obj, DirectSound):
            filename = 'sound/direct_sound_samples/{.offset:08X}.bin'.format(obj)
            with open('sound/direct_sound_data.inc', 'a' if created_sound_data_inc else 'w') as fp:
                print('{0.name}: @ 0x{0.offset:08X}'.format(obj), file=fp)
                print('\t.incbin "{}"'.format(filename), file=fp)
            with open(filename, 'wb') as fp:
                obj.to_binary(fp)
            if not created_sound_data_inc:
                print('\t.include "sound/direct_sound_data.inc"')
            created_sound_data_inc = True
            subprocess.run(['tools/aif2pcm/aif2pcm', filename, filename.replace('.bin', '.aif')])
        elif isinstance(obj, ProgrammableWaveData):
            filename = 'sound/programmable_wave_samples/{.offset:08X}.pcm'.format(obj)
            with open('sound/programmable_wave_data.inc', 'a' if created_programmable_wave_inc else 'w') as fp:
                print('{0.name}: @ 0x{0.offset:08X}'.format(obj), file=fp)
                print('\t.incbin "{}"'.format(filename), file=fp)
            with open(filename, 'wb') as fp:
                obj.to_binary(fp)
            if not created_programmable_wave_inc:
                print('\t.include "sound/programmable_wave_data.inc"')
            created_programmable_wave_inc = True
        else:
            obj.to_text(sys.stdout)
    print('\t.align 2, 0')
    return 0


if __name__ == '__main__':
    sys.exit(main())
