	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_761_0: @ 0x083AB4CC
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
	.byte TEMPO, 0x50
	.byte VOICE, 0x7B
	.byte N04, Cn3, v127
	.byte W12
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte Fn3
	.byte W12
	.byte N04
	.byte W12
	.byte N42, Cn3
	.byte W48
song_unk_761_0_000: @ 0x083AB4E3
	.byte W96
	.byte GOTO
	 .4byte song_unk_761_0_000
	.byte FINE
song_unk_761_1: @ 0x083AB4EA
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
	.byte VOICE, 0x00
	.byte PAN, 0x7F
	.byte N04, An4, v064
	.byte W12
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte Fn5
	.byte W12
	.byte N04
	.byte W12
	.byte N42, An4
	.byte W48
song_unk_761_1_001: @ 0x083AB501
	.byte W96
	.byte GOTO
	 .4byte song_unk_761_1_001
	.byte FINE
song_unk_761_2: @ 0x083AB508
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
	.byte VOICE, 0x1E
	.byte PAN, 0x00
	.byte N04, Fn2, v127
	.byte W12
	.byte N04
	.byte W06
	.byte N04
	.byte W06
	.byte Cn2
	.byte W12
	.byte N04
	.byte W12
	.byte N42, Fn2
	.byte W48
song_unk_761_2_002: @ 0x083AB51F
	.byte W96
	.byte GOTO
	 .4byte song_unk_761_2_002
	.byte FINE
song_unk_761_3: @ 0x083AB526
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte W96
song_unk_761_3_003: @ 0x083AB52D
	.byte N18, Cn1, v127
	.byte W18
	.byte N06
	.byte W06
	.byte N12
	.byte W12
	.byte N24
	.byte W24
	.byte N12, Gs6
	.byte W12
	.byte N24, Cn1
	.byte W24
	.byte GOTO
	 .4byte song_unk_761_3_003
	.byte FINE
song_unk_761_4: @ 0x083AB543
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
	.byte VOICE, 0x64
	.byte PAN, 0x00
	.byte W96
song_unk_761_4_004: @ 0x083AB54C
	.byte N01, Cn4, v127
	.byte W12
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
	.byte W12
	.byte N01
	.byte W12
	.byte GOTO
	 .4byte song_unk_761_4_004
	.byte FINE
	.align 2, 0
	.global song_unk_761
song_unk_761: @ 0x083AB568 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_761_0
	.4byte song_unk_761_1
	.4byte song_unk_761_2
	.4byte song_unk_761_3
	.4byte song_unk_761_4
	.size song_unk_761,.-song_unk_761
