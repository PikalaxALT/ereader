	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_16_0: @ 0x083475AC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte N02, Cs3, v052
	.byte W03
	.byte Ds3
	.byte W03
	.byte Fn3
	.byte W03
	.byte Gn3
	.byte W03
	.byte An3
	.byte W03
	.byte FINE
song_unk_16_1: @ 0x083475C1
	.byte KEYSH, 0x00
	.byte VOICE, 0x45
	.byte VOL, 0x7F
	.byte N02, Fn4, v100
	.byte W03
	.byte Gn4
	.byte W03
	.byte An4
	.byte W03
	.byte Bn4
	.byte W03
	.byte Cs5
	.byte W03
	.byte FINE
song_unk_16_2: @ 0x083475D4
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N02, Fn2, v072
	.byte W03
	.byte An2, v060
	.byte W03
	.byte Dn3, v052
	.byte W03
	.byte Gn3, v040
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_16
song_unk_16: @ 0x083475E8 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_16_0
	.4byte song_unk_16_1
	.4byte song_unk_16_2

