	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_701_0: @ 0x08351C20
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_701_0_000: @ 0x08351C24
	.byte TEMPO, 0x48
	.byte VOICE, 0x7F
	.byte N01, En1, v016
	.byte W08
	.byte N01
	.byte W04
	.byte N02, En1, v064
	.byte W08
	.byte N01, En1, v016
	.byte W04
	.byte N01
	.byte W08
	.byte N01
	.byte W04
	.byte N02, En1, v064
	.byte W08
	.byte N01, En1, v016
	.byte W04
	.byte N01
	.byte W08
	.byte N01
	.byte W04
	.byte N02, En1, v064
	.byte W08
	.byte N01, En1, v016
	.byte W04
	.byte N01
	.byte W08
	.byte N01
	.byte W04
	.byte N02, En1, v064
	.byte W08
	.byte N01, En1, v016
	.byte W04
	.byte GOTO
	 .4byte song_unk_701_0_000
	.byte FINE
song_unk_701_1: @ 0x08351C60
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_701_1_001: @ 0x08351C64
	.byte VOICE, 0x7F
	.byte N11, Cn1, v127
	.byte W42
	.byte N11
	.byte W12
	.byte N11
	.byte W42
	.byte GOTO
	 .4byte song_unk_701_1_001
	.byte FINE
song_unk_701_2: @ 0x08351C74
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_701_2_002: @ 0x08351C78
	.byte VOICE, 0x7F
	.byte W24
	.byte N11, Dn1, v096
	.byte W48
	.byte N11
	.byte W24
	.byte GOTO
	 .4byte song_unk_701_2_002
	.byte FINE
	.align 2, 0
	.global song_unk_701
song_unk_701: @ 0x08351C88 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup005 @ voice group
	.4byte song_unk_701_0
	.4byte song_unk_701_1
	.4byte song_unk_701_2
	.size song_unk_701,.-song_unk_701
