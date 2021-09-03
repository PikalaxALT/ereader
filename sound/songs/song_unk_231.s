	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_231_0: @ 0x0834D1F8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x49
	.byte VOL, 0x7F
	.byte TIE, An2, v080
	.byte W12
song_unk_231_0_000: @ 0x0834D204
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_231_0_000
	.byte W12
	.byte EOT, An2
	.byte FINE
	.align 2, 0
	.global song_unk_231
song_unk_231: @ 0x0834D210 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_231_0
	.size song_unk_231,.-song_unk_231
