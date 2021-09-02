	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_399_0: @ 0x0834FDB8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7B
	.byte VOL, 0x6E
	.byte N10, An3, v060
	.byte W12
	.byte N04, Gs3
	.byte W06
	.byte N10, An3
	.byte W12
	.byte N28, An2
	.byte W30
	.byte FINE
song_unk_399_1: @ 0x0834FDCE
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x6E
	.byte N11, Cs3, v072
	.byte W12
	.byte N05, Cn3
	.byte W06
	.byte N11, Cs3
	.byte W12
	.byte N28
	.byte W30
	.byte FINE
song_unk_399_2: @ 0x0834FDE1
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x6E
	.byte N10, An2, v056
	.byte W18
	.byte N04, En2
	.byte W12
	.byte N28, An2
	.byte W30
	.byte FINE
song_unk_399_3: @ 0x0834FDF2
	.byte KEYSH, 0x00
	.byte VOICE, 0x22
	.byte VOL, 0x6E
	.byte N01, En4, v052
	.byte W03
	.byte N07, En4, v040
	.byte W09
	.byte N01, Ds4, v052
	.byte W03
	.byte Ds4, v040
	.byte W03
	.byte En4, v052
	.byte W03
	.byte N07, En4, v040
	.byte W09
	.byte N01, En5, v052
	.byte W03
	.byte N13
	.byte W14
	.byte FINE
song_unk_399_4: @ 0x0834FE15
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x6E
	.byte N05, Dn1, v040
	.byte W12
	.byte N05
	.byte W06
	.byte N05
	.byte W12
	.byte N05
	.byte N40, Cs2, v032
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_399
song_unk_399: @ 0x0834FE2C (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_399_0
	.4byte song_unk_399_1
	.4byte song_unk_399_2
	.4byte song_unk_399_3
	.4byte song_unk_399_4

