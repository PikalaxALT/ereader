	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_110_0: @ 0x08349D1C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7B
	.byte VOL, 0x7F
	.byte N05, Fs3, v060
	.byte W06
	.byte N28
	.byte W30
	.byte FINE
song_unk_110_1: @ 0x08349D2B
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N32, As2, v072
	.byte W36
	.byte FINE
song_unk_110_2: @ 0x08349D36
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N05, Fs2, v056
	.byte W06
	.byte N28
	.byte W30
	.byte FINE
song_unk_110_3: @ 0x08349D43
	.byte KEYSH, 0x00
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N03, Ds4, v032
	.byte W04
	.byte Fn4
	.byte W04
	.byte Gs4
	.byte W04
	.byte Cs5
	.byte W04
	.byte Ds5
	.byte W04
	.byte Fn5
	.byte W04
	.byte Gs5
	.byte W04
	.byte N15, Cs6
	.byte W16
	.byte FINE
	.align 2, 0
	.global song_unk_110
song_unk_110: @ 0x08349D60 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_110_0
	.4byte song_unk_110_1
	.4byte song_unk_110_2
	.4byte song_unk_110_3

