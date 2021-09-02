import struct
import sys
import collections
import functools
import bisect
import os


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
        if size > len(self):
            raise ValueError('cannot truncate to longer ({} -> {})'.format(len(self), size))
        self._raw = self._raw[:size]

    def set_end(self, obj):
        self.truncate(obj.offset - self.offset)

    def to_text(self, fp):
        print('{0.name}:: @ 0x{0.offset:08X}'.format(self), file=fp)
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
        self.offset = min(self.offset, self.tracks[0].offset)
        self._raw = b''
        for i, t in enumerate(self.tracks[1:]):
            self.tracks[i].set_end(t)
            self._raw += self.tracks[i]._raw
        if self.song > self.tracks[-1]:
            self.tracks[-1].set_end(self.song)
        self._raw += self.tracks[-1]._raw

    def extend(self, tracks):
        for track in tracks:
            self.append(track)

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
        def get_wait(value):
            value -= 0x80
            if value < 25:
                return value
            else:
                return [
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

        pitches = ['Cn', 'Cs', 'Dn', 'Ds', 'En', 'Fn', 'Fs', 'Gn', 'Gs', 'An', 'As', 'Bn']
        labels = collections.defaultdict(lambda: '{.name}_{:03d}'.format(self, len(labels)))
        lines = {}
        i = 0
        while i < len(self):
            byt = self[i]
            if byt < 128:
                pitch = '{}{}'.format(pitches[byt % 12], (byt // 12) - 2).replace('-', 'M')
                lines[i] = '\t.byte {}'.format(pitch)
                i += 1
                if i < len(self) and self[i] < 128:
                    lines[i - 1] += ', v{:03d}'.format(self[i])
                    i += 1
            elif byt < 0xB1:
                lines[i] = '\t.byte W{:02d}'.format(get_wait(byt))
                i += 2
            elif byt >= 0xD0:
                lines[i] = '\t.byte N{:02d}'.format(byt - 0xD0)
                i += 1
            elif byt == 0xB1:
                lines[i] = '\t.byte FINE'
                i += 1
            elif byt == 0xB2:
                label = int.from_bytes(self[i + 1:i + 5], 'little')
                lines[i] = '\t.byte GOTO\n\t.4byte {}'.format(labels[label])
                i += 5
            elif byt == 0xB3:
                label = int.from_bytes(self[i + 1:i + 5], 'little')
                lines[i] = '\t.byte PATT\n\t.4byte {}'.format(labels[label])
                i += 5
            elif byt == 0xB4:
                lines[i] = '\t.byte PEND'
                i += 1
            elif byt == 0xB5:
                label = int.from_bytes(self[i + 2:i + 6], 'little')
                lines[i] = '\t.byte REPT, {}\n\t.4byte{}'.format(self[i + 1], label)
                i += 6
            elif byt == 0xB9:
                # memacc
                # not implemented in ereader
                lines[i] = '\t.byte MEMACC, {}, {}'.format(self[i + 1], self[i + 2])
                i += 3
            elif byt == 0xBA:
                lines[i] = '\t.byte PRIO, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xBB:
                lines[i] = '\t.byte TEMPO, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xBC:
                lines[i] = '\t.byte KEYSH, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xBD:
                lines[i] = '\t.byte VOICE, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xBE:
                lines[i] = '\t.byte VOL, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xBF:
                lines[i] = '\t.byte PAN, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xC0:
                lines[i] = '\t.byte BEND, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xC1:
                lines[i] = '\t.byte BENDR, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xC2:
                lines[i] = '\t.byte LFOS, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xC3:
                lines[i] = '\t.byte LFODL, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xC4:
                lines[i] = '\t.byte MOD, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xC5:
                lines[i] = '\t.byte MODT, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xC8:
                lines[i] = '\t.byte TUNE, {}'.format(self[i + 1])
                i += 2
            elif byt == 0xCE:
                lines[i] = '\t.byte EOT'
                i += 1
            elif byt == 0xCF:
                lines[i] = '\t.byte TIE'
                i += 1
            else:
                raise ValueError('unknown music command at {:08X}: {:02X}'.format(self.offset + i, byt))
        self._lines = lines
        self._labels = labels
        self.parent._labels = labels | self.parent._labels

    def to_text(self, fp):
        print('{0.name}: @ 0x{0.offset:08X}'.format(self), file=fp)
        for i, line in sorted(self._lines.items()):
            if i in self.parent._labels:
                print('{}:: @ 0x{:08X}'.format(self.parent._labels[i], self.offset + i), file=fp)
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
        if self.type == 0x40:
            print(', {0.keysplits}'.format(self), file=fp)


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
        print('{0.name}:: @ 0x{0.offset:08X} (voicegroup)'.format(self), file=fp)
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
            self.name = 'dummy_song_header'
            self._size = 4
            self.tone = None
        else:
            self.tone = VoiceGroupArray.from_bytes(buffer, self.tone)
            track_list = struct.Struct('<{:d}L'.format(self.trackCount))
            self.tracks.extend(SongTrack.from_bytes(buffer, value) for value in track_list.unpack_from(buffer, offset + len(self) - ROM_LOAD_ADDR))
            self._size = self._struct.size + track_list.size
        return self

    def to_text(self, fp):
        print('\t.align 2, 0', file=fp)
        print('{0.name}:: @ 0x{0.offset:08X} (song header)'.format(self), file=fp)
        print('\t.byte {0.trackCount}, {0.blockCount}, {0.priority}, {0.reverb} @ trackCount, blockCount, priority, reverb'.format(self), file=fp)
        if self.name != 'dummy_song_header':
            print('\t.4byte {0.tone} @ voice group'.format(self), file=fp)
            for track in self.tracks:
                print('\t.4byte {}'.format(track), file=fp)
        print('', file=fp)


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
        print('{0.name}:: @ 0x{0.offset:08X}'.format(self), file=fp)
        for song in self._structs:
            song.to_text(fp)


def insort_left(array, obj):
    j = bisect.bisect_left(array, obj)
    if isinstance(obj, PmRawData) and array[j] > obj:
        obj.set_end(array[j])
        array.insert(j, obj)
        if isinstance(array[j - 1], PmRawData):
            try:
                array[j - 1].set_end(obj)
            except ValueError:
                print(repr(array[j - 1]), repr(obj), repr(array[j + 1]))
                raise


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

    song_entries = {MusicPlayer.from_bytes(raw, i) for i in range(mus_player_start, mus_player_end, MusicPlayer.sizeof())}
    song_table = SongTableArray.from_bytes(raw, song_table_start)
    song_entries.add(song_table)
    for header in song_table.iter_structs(raw):
        if header.song.name != 'dummy_song_header':
            header.song.name = 'song_unk_{}'.format((offset - song_table_start) // size)
            for i, track in enumerate(header.song.tracks):
                track.name = '{0.song.name}_{1}'.format(header, i)
                track.song = header.song
        song_entries.add(header.song)
        if header.song.tone is not None:
            song_entries.add(header.song.tone)
        song_entries.add(header.song.tracks)
        offset += size
    song_entries = sorted(song_entries)
    song_entries.append(PmRawData.from_bytes(raw, end))
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
    created_song_inc = collections.defaultdict(bool)
    os.makedirs('sound/voicegroups', exist_ok=True)
    os.makedirs('sound/programmable_wave_samples', exist_ok=True)
    os.makedirs('sound/direct_sound_samples', exist_ok=True)
    os.makedirs('sound/songs/midi', exist_ok=True)
    for obj in song_entries:
        if isinstance(obj, VoiceGroupArray):
            filename = 'sound/voicegroups/{.name}.inc'.format(obj)
            with open('sound/voice_groups.inc', 'a' if created_voicegroups_inc else 'w') as vginc:
                print('\t.include "{}"'.format(filename), file=vginc)
            with open(filename, 'w') as fp:
                obj.to_text(fp)
            created_voicegroups_inc = True
        elif isinstance(obj, Keysplit):
            with open('sound/keysplit_tables.inc', 'a' if created_keysplit_tables_inc else 'w') as ksinc:
                obj.to_text(ksinc)
            created_keysplit_tables_inc = True
        elif isinstance(obj, SongTableArray):
            with open('sound/song_table.inc', 'w') as fp:
                obj.to_text(fp)
        elif isinstance(obj, (SongTrack, TrackSet)):
            songfname = 'sound/songs/{.song.name}.s'.format(obj)
            with open(songfname, 'a' if created_song_inc[songfname] else 'w') as fp:
                obj.to_text(fp)
            created_song_inc[songfname] = True
        elif isinstance(obj, SongHeader):
            songfname = 'sound/songs/{.name}.s'.format(obj)
            with open(songfname, 'a' if created_song_inc[songfname] else 'w') as fp:
                obj.to_text(fp)
            created_song_inc[songfname] = True
        elif isinstance(obj, DirectSound):
            filename = 'sound/direct_sound_samples/{.offset:08X}.bin'.format(obj)
            with open('sound/direct_sound_data.inc', 'a' if created_sound_data_inc else 'w') as fp:
                print('{0.name}:: @ 0x{0.offset:08X}'.format(obj), file=fp)
                print('\t.incbin "{}"'.format(filename), file=fp)
            with open(filename, 'wb') as fp:
                obj.to_binary(fp)
            created_sound_data_inc = True
        elif isinstance(obj, ProgrammableWaveData):
            filename = 'sound/programmable_wave_samples/{.offset:08X}.bin'.format(obj)
            with open('sound/programmable_wave_data.inc', 'a' if created_programmable_wave_inc else 'w') as fp:
                print('{0.name}:: @ 0x{0.offset:08X}'.format(obj), file=fp)
                print('\t.incbin "{}"'.format(filename), file=fp)
            with open(filename, 'wb') as fp:
                obj.to_binary(fp)
            created_programmable_wave_inc = True
        else:
            obj.to_text(sys.stdout)

    return 0


if __name__ == '__main__':
    sys.exit(main())
