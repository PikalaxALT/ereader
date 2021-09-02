	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_149_0: @ 0x0834B1B8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x41
	.byte VOICE, 0x00
	.byte VOL, 0x7F
	.byte N05, Fn3, v064
	.byte W24
	.byte Fs3
	.byte W12
	.byte Gn3
	.byte W12
	.byte Gs3
	.byte W24
	.byte As3
	.byte W24
	.byte Bn3
	.byte W48
	.byte En4
	.byte W06
	.byte FINE
song_unk_149_1: @ 0x0834B1D1
	.byte KEYSH, 0x00
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N05, En3, v120
	.byte W24
	.byte Ds3
	.byte W12
	.byte Dn3
	.byte W12
	.byte Cs3
	.byte W24
	.byte Cn3
	.byte W24
	.byte Bn2
	.byte W48
	.byte En2
	.byte W06
	.byte FINE
song_unk_149_2: @ 0x0834B1E8
	.byte KEYSH, 0x00
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W12
	.byte N03
	.byte W12
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N03
	.byte W48
	.byte N02, Gn2, v080
	.byte W03
	.byte FINE
song_unk_149_3: @ 0x0834B207
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte W96
	.byte W48
	.byte N11, Cs2, v064
	.byte W12
	.byte FINE
	.align 2, 0
	.global song_unk_149
song_unk_149: @ 0x0834B214 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_149_0
	.4byte song_unk_149_1
	.4byte song_unk_149_2
	.4byte song_unk_149_3

