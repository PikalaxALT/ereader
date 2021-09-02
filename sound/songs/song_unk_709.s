	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_709_0: @ 0x0835221C
	.byte VOL, 0x5A
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3D
	.byte VOICE, 0x00
	.byte N02, Gn2, v096
	.byte W06
	.byte Cs3
	.byte W06
	.byte Fs3
	.byte W06
	.byte Cn4
	.byte W12
	.byte Fn3
	.byte W06
	.byte TEMPO, 0x37
	.byte Cs3
	.byte W12
	.byte N10, En2, v080
	.byte W11
	.byte FINE
song_unk_709_1: @ 0x08352239
	.byte VOL, 0x5A
	.byte KEYSH, 0x00
	.byte VOICE, 0x00
	.byte N02, Fn2, v096
	.byte W06
	.byte Bn2
	.byte W06
	.byte En3
	.byte W06
	.byte As3
	.byte W12
	.byte Ds3
	.byte W06
	.byte Bn2
	.byte W12
	.byte N10, Dn2, v080
	.byte W11
	.byte FINE
song_unk_709_2: @ 0x08352252
	.byte VOL, 0x5A
	.byte KEYSH, 0x00
	.byte VOICE, 0x04
	.byte PAN, 0x50
	.byte W48
	.byte W01
	.byte N10, Dn3, v016
	.byte W11
	.byte FINE
song_unk_709_3: @ 0x08352261
	.byte VOL, 0x5A
	.byte KEYSH, 0x00
	.byte VOICE, 0x05
	.byte PAN, 0x30
	.byte W48
	.byte W01
	.byte N10, As0, v127
	.byte W11
	.byte FINE
song_unk_709_4: @ 0x08352270
	.byte VOL, 0x5A
	.byte KEYSH, 0x00
	.byte VOICE, 0x7F
	.byte W48
	.byte N10, Cn1, v127
	.byte W11
	.byte FINE
	.align 2, 0
	.global song_unk_709
song_unk_709: @ 0x0835227C (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804DE80 @ voice group
	.4byte song_unk_709_0
	.4byte song_unk_709_1
	.4byte song_unk_709_2
	.4byte song_unk_709_3
	.4byte song_unk_709_4

