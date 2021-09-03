	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_293_0: @ 0x0834F21C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x0F
	.byte VOL, 0x7F
	.byte N78, Cn3, v100
	.byte W78
	.byte FINE
	.align 2, 0
	.global song_unk_293
song_unk_293: @ 0x0834F22C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_293_0
	.size song_unk_293,.-song_unk_293
