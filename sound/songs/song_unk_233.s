	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_233_0: @ 0x0834D248
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x77
	.byte VOL, 0x7F
	.byte TIE, Dn2, v127
	.byte W96
	.byte W18
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_233
song_unk_233: @ 0x0834D258 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_233_0
	.size song_unk_233,.-song_unk_233
