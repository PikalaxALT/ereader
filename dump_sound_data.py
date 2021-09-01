import struct
import sys
import collections
import functools
import bisect


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


class WaveData(PmRawData):
    pass


class SongTrack(PmRawData):
    pass


class Keysplit(PmRawData):
    pass


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
        if self.type in [0, 3, 8, 11, 16]:
            self.wav = WaveData.from_bytes(buffer, self.wav)
        elif self.type in [64, 128]:
            self.wav = VoiceGroupRaw.from_bytes(buffer, self.wav)
        if self.type == 64:
            keysplit = self.attack | (self.decay << 8) | (self.sustain << 16) | (self.release << 24)
            self.keysplits = Keysplit.from_bytes(buffer, keysplit)
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


class VoiceGroupRaw(PmRawData):
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
        print('{0.name}:: @ 0x{0.offset:08X} (voicegroup)'.format(self), file=fp)
        for vg in self._structs:
            vg.to_text(fp)
        print('', file=fp)


class SongHeader(PmStructData, format='<BBBBL', names=('trackCount', 'blockCount', 'priority', 'reverb', 'tone')):
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
            self.tracks = []
        else:
            self.tone = VoiceGroupRaw.from_bytes(buffer, self.tone)
            track_list = struct.Struct('<{:d}L'.format(self.trackCount))
            self.tracks = [SongTrack.from_bytes(buffer, value) for value in track_list.unpack_from(buffer, offset + len(self) - ROM_LOAD_ADDR)]
            self._size = self._struct.size + track_list.size
        return self

    def to_text(self, fp):
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


def insort_left(array, obj):
    j = bisect.bisect_left(array, obj)
    if array[j] > obj:
        obj.set_end(array[j])
        array.insert(j, obj)
        if isinstance(array[j - 1], PmRawData):
            array[j - 1].set_end(obj)


def main():
    with open(sys.argv[1], 'rb') as rom:
        raw = rom.read()
    offset = song_table_start = int(sys.argv[2], 0)
    end = int(sys.argv[3], 0)
    mus_player_start = int(sys.argv[4], 0)
    mus_player_end = int(sys.argv[5], 0)
    size = SongTableEntry.sizeof()

    song_entries = {MusicPlayer.from_bytes(raw, i) for i in range(mus_player_start, mus_player_end, MusicPlayer.sizeof())}
    while True:
        song = SongTableEntry.from_bytes(raw, offset)
        if song.song is None:
            break
        if song.song.name != 'dummy_song_header':
            song.song.name = 'song_unk_{}'.format((offset - song_table_start) // size)
        song_entries.add(song)
        song_entries.add(song.song)
        if song.song.tone is not None:
            song_entries.add(song.song.tone)
        song_entries |= set(song.song.tracks)
        offset += size
    song_entries = sorted(song_entries)
    song_entries.append(PmRawData.from_bytes(raw, end))
    i = 0
    while i < len(song_entries) - 1:
        x = song_entries[i]
        if isinstance(x, PmRawData):
            x.set_end(song_entries[i + 1])
            if isinstance(x, VoiceGroupRaw):
                for vg in x.iter_structs(raw):
                    if isinstance(vg.wav, PmObject):
                        insort_left(song_entries, vg.wav)
                    if isinstance(vg.keysplits, PmObject):
                        insort_left(song_entries, vg.keysplits)
        i += 1
    song_entries.pop(-1)
    for obj in song_entries:
        if obj.offset == song_table_start:
            print('gSongTable:: @ 0x{:08X}'.format(song_table_start))
        obj.to_text(sys.stdout)


if __name__ == '__main__':
    main()
