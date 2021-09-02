	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_247_0: @ 0x0834DF4C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N01, Gn3, v060
	.byte W02
	.byte En3
	.byte W02
	.byte Cn3
	.byte W02
	.byte FINE
song_unk_247_1: @ 0x0834DF5D
	.byte KEYSH, 0x00
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte W06
	.byte N01, Cn4, v060
	.byte W02
	.byte Bn3
	.byte W02
	.byte As3
	.byte W02
	.byte An3
	.byte W02
	.byte Gs3
	.byte W02
	.byte Gn3, v052
	.byte W02
	.byte Fs3
	.byte W02
	.byte Fn3, v040
	.byte W02
	.byte En3
	.byte W02
	.byte Ds3
	.byte W02
	.byte Dn3, v032
	.byte W02
	.byte Cs3
	.byte W02
	.byte Cn3
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_247
song_unk_247: @ 0x0834DF84 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_247_0
	.4byte song_unk_247_1

