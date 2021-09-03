	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_361_0: @ 0x0834F804
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x53
	.byte VOL, 0x7F
	.byte TIE, Cn3, v112
	.byte W96
	.byte W12
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_361
song_unk_361: @ 0x0834F814 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_361_0
	.size song_unk_361,.-song_unk_361
