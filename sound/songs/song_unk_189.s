	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_189_0: @ 0x0834C4E8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x41
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N06, Cn4, v052
	.byte W08
	.byte N06
	.byte W08
	.byte N06
	.byte W08
	.byte N21
	.byte W24
	.byte N06, Dn4
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
	.byte N48, En4
	.byte W48
	.byte FINE
song_unk_189_1: @ 0x0834C50B
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N06, En4, v060
	.byte W08
	.byte N06
	.byte W08
	.byte N06
	.byte W08
	.byte N21
	.byte W24
	.byte N06, Bn3
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte En3
	.byte W16
	.byte N06
	.byte W08
	.byte N48
	.byte W48
	.byte FINE
song_unk_189_2: @ 0x0834C52B
	.byte KEYSH, 0x00
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N06, Gn3, v032
	.byte W08
	.byte N06
	.byte W08
	.byte N06
	.byte W08
	.byte N21
	.byte W24
	.byte N06, Fs3
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte Gs3
	.byte W16
	.byte Fs3
	.byte W08
	.byte N48, Gs3
	.byte W48
	.byte FINE
song_unk_189_3: @ 0x0834C54C
	.byte KEYSH, 0x00
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N02, Gs3, v032
	.byte W08
	.byte N02
	.byte W08
	.byte N02
	.byte W08
	.byte N02
	.byte W12
	.byte N02
	.byte W12
	.byte N02
	.byte W12
	.byte N02
	.byte W12
	.byte N02
	.byte W06
	.byte N02
	.byte W06
	.byte N02
	.byte W06
	.byte N02
	.byte W06
	.byte N02
	.byte W16
	.byte N02
	.byte W08
	.byte N02
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_189
song_unk_189: @ 0x0834C574 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_189_0
	.4byte song_unk_189_1
	.4byte song_unk_189_2
	.4byte song_unk_189_3
	.size song_unk_189,.-song_unk_189
