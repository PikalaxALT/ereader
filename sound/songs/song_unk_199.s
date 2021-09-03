	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_199_0: @ 0x0834C880
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x04
	.byte VOL, 0x7F
	.byte N12, Gn3, v060
	.byte W12
	.byte An3
	.byte W12
	.byte As3
	.byte W12
	.byte Cn4
	.byte W12
	.byte As3
	.byte W12
	.byte An3
	.byte W12
	.byte N24, Gn3
	.byte W24
	.byte Gn4
	.byte W24
	.byte FINE
song_unk_199_1: @ 0x0834C89C
	.byte KEYSH, 0x00
	.byte VOICE, 0x3A
	.byte VOL, 0x7F
	.byte N09, Ds2, v127
	.byte W12
	.byte As2
	.byte W12
	.byte Ds3
	.byte W24
	.byte Fn2
	.byte W24
	.byte Gn2
	.byte W24
	.byte Gn1
	.byte W09
	.byte FINE
song_unk_199_2: @ 0x0834C8B1
	.byte KEYSH, 0x00
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N12, Gn4, v040
	.byte W12
	.byte An4
	.byte W12
	.byte As4
	.byte W12
	.byte Cn5
	.byte W12
	.byte As4
	.byte W12
	.byte An4
	.byte W12
	.byte N24, Gn4
	.byte W24
	.byte Bn4
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_199
song_unk_199: @ 0x0834C8CC (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_199_0
	.4byte song_unk_199_1
	.4byte song_unk_199_2
	.size song_unk_199,.-song_unk_199
