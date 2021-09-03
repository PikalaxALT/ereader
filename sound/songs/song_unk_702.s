	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_702_0: @ 0x08351C9C
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_702_0_000: @ 0x08351CA0
	.byte TEMPO, 0x32
	.byte VOICE, 0x7F
	.byte N05, Cn2, v096
	.byte W24
	.byte N05
	.byte W24
	.byte N05
	.byte W24
	.byte N05
	.byte W24
	.byte GOTO
	 .4byte song_unk_702_0_000
	.byte FINE
song_unk_702_1: @ 0x08351CB4
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_702_1_001: @ 0x08351CB8
	.byte VOICE, 0x7F
	.byte W12
	.byte N01, En1, v016
	.byte W24
	.byte N01
	.byte W24
	.byte N01
	.byte W24
	.byte N01
	.byte W12
	.byte GOTO
	 .4byte song_unk_702_1_001
	.byte FINE
song_unk_702_2: @ 0x08351CCB
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_702_2_002: @ 0x08351CCF
	.byte VOICE, 0x7F
	.byte N11, Bn1, v024
	.byte W24
	.byte Bn1, v032
	.byte W24
	.byte Bn1, v024
	.byte W24
	.byte Bn1, v032
	.byte W24
	.byte GOTO
	 .4byte song_unk_702_2_002
	.byte FINE
	.align 2, 0
	.global song_unk_702
song_unk_702: @ 0x08351CE4 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup005 @ voice group
	.4byte song_unk_702_0
	.4byte song_unk_702_1
	.4byte song_unk_702_2
	.size song_unk_702,.-song_unk_702
