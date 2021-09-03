	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_170_0: @ 0x0834BE20
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x30
	.byte VOL, 0x7F
	.byte TIE, Cs3, v092
	.byte W12
song_unk_170_0_000: @ 0x0834BE2C
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_170_0_000
	.byte W12
	.byte EOT, Cs3
	.byte FINE
	.align 2, 0
	.global song_unk_170
song_unk_170: @ 0x0834BE38 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_170_0
	.size song_unk_170,.-song_unk_170
