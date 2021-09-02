	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_252_0: @ 0x0834E0B0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N05, An3, v052
	.byte W06
	.byte TEMPO, 0x34
	.byte Gs3
	.byte W06
	.byte TEMPO, 0x2D
	.byte An3
	.byte W06
	.byte TEMPO, 0x23
	.byte Bn3
	.byte W06
	.byte TEMPO, 0x1E
	.byte N23, Cs4
	.byte W24
	.byte FINE
song_unk_252_1: @ 0x0834E0CE
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N23, Dn3, v060
	.byte W24
	.byte An2
	.byte W24
	.byte FINE
song_unk_252_2: @ 0x0834E0DB
	.byte KEYSH, 0x00
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N23, Fs3, v032
	.byte W24
	.byte En3
	.byte W24
	.byte FINE
song_unk_252_3: @ 0x0834E0E8
	.byte KEYSH, 0x00
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N01, Gs3, v032
	.byte W06
	.byte N01
	.byte W06
	.byte N01
	.byte W06
	.byte N01
	.byte W06
	.byte N01
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_252
song_unk_252: @ 0x0834E0FC (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_252_0
	.4byte song_unk_252_1
	.4byte song_unk_252_2
	.4byte song_unk_252_3

