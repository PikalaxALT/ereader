	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_215_0: @ 0x0834CDF8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6C
	.byte VOL, 0x7F
	.byte TIE, Cn3, v052
	.byte W12
song_unk_215_0_000: @ 0x0834CE04
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_215_0_000
	.byte W12
	.byte EOT, Cn3
	.byte FINE
song_unk_215_1: @ 0x0834CE0F
	.byte KEYSH, 0x00
	.byte VOICE, 0x37
	.byte VOL, 0x7F
	.byte TIE, Dn3, v068
	.byte W12
song_unk_215_1_001: @ 0x0834CE19
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_215_1_001
	.byte W12
	.byte EOT, Dn3
	.byte FINE
	.align 2, 0
	.global song_unk_215
song_unk_215: @ 0x0834CE24 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_215_0
	.4byte song_unk_215_1
	.size song_unk_215,.-song_unk_215
