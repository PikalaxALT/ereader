	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_187_0: @ 0x0834C4B0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x3C
	.byte VOL, 0x7F
	.byte TIE, Cn3, v080
	.byte W96
	.byte W30
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_187
song_unk_187: @ 0x0834C4C0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_187_0
	.size song_unk_187,.-song_unk_187
