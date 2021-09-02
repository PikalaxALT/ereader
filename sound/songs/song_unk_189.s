	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_189_0: @ 0x0834C4E8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x41
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N05, Cn4, v052
	.byte W08
	.byte N05
	.byte W08
	.byte N05
	.byte W08
	.byte N20
	.byte W24
	.byte N05, Dn4
	.byte W12
	.byte An3
	.byte W12
	.byte Bn3
	.byte W12
	.byte Dn4
	.byte W12
	.byte En4
	.byte W16
	.byte Dn4
	.byte W08
	.byte N44, En4
	.byte W48
	.byte FINE
song_unk_189_1: @ 0x0834C50B
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N05, En4, v060
	.byte W08
	.byte N05
	.byte W08
	.byte N05
	.byte W08
	.byte N20
	.byte W24
	.byte N05, Bn3
	.byte W12
	.byte N05
	.byte W12
	.byte N05
	.byte W12
	.byte N05
	.byte W12
	.byte En3
	.byte W16
	.byte N05
	.byte W08
	.byte N44
	.byte W48
	.byte FINE
song_unk_189_2: @ 0x0834C52B
	.byte KEYSH, 0x00
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N05, Gn3, v032
	.byte W08
	.byte N05
	.byte W08
	.byte N05
	.byte W08
	.byte N20
	.byte W24
	.byte N05, Fs3
	.byte W12
	.byte N05
	.byte W12
	.byte N05
	.byte W12
	.byte N05
	.byte W12
	.byte Gs3
	.byte W16
	.byte Fs3
	.byte W08
	.byte N44, Gs3
	.byte W48
	.byte FINE
song_unk_189_3: @ 0x0834C54C
	.byte KEYSH, 0x00
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N01, Gs3, v032
	.byte W08
	.byte N01
	.byte W08
	.byte N01
	.byte W08
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W06
	.byte N01
	.byte W06
	.byte N01
	.byte W06
	.byte N01
	.byte W06
	.byte N01
	.byte W16
	.byte N01
	.byte W08
	.byte N01
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_189
song_unk_189: @ 0x0834C574 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_189_0
	.4byte song_unk_189_1
	.4byte song_unk_189_2
	.4byte song_unk_189_3

