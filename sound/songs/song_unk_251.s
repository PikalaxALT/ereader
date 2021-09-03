	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_251_0: @ 0x0834E02C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N06, Cn4, v052
	.byte W06
	.byte Gn3
	.byte W06
	.byte TEMPO, 0x36
	.byte Cn4
	.byte W06
	.byte Dn4
	.byte W06
	.byte TEMPO, 0x31
	.byte En4
	.byte W06
	.byte An3
	.byte W06
	.byte TEMPO, 0x27
	.byte En4
	.byte W06
	.byte Fs4
	.byte W06
	.byte TEMPO, 0x23
	.byte N36, Gs4
	.byte W36
	.byte FINE
song_unk_251_1: @ 0x0834E052
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N24, Cn3, v060
	.byte W24
	.byte An2
	.byte W24
	.byte N36, En2
	.byte W36
	.byte FINE
song_unk_251_2: @ 0x0834E062
	.byte KEYSH, 0x00
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N06, En3, v032
	.byte W06
	.byte N06
	.byte W06
	.byte N06
	.byte W06
	.byte Gn3
	.byte W06
	.byte Cn4
	.byte W06
	.byte En3
	.byte W06
	.byte Cn4
	.byte W06
	.byte N06
	.byte W06
	.byte N36, Bn3
	.byte W36
	.byte FINE
song_unk_251_3: @ 0x0834E07E
	.byte KEYSH, 0x00
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N02, Gs3, v032
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
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_251
song_unk_251: @ 0x0834E098 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_251_0
	.4byte song_unk_251_1
	.4byte song_unk_251_2
	.4byte song_unk_251_3
	.size song_unk_251,.-song_unk_251
