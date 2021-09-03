	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_314_0: @ 0x0834F3DC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x24
	.byte VOL, 0x7F
	.byte N78, Cn3, v092
	.byte W78
	.byte FINE
	.align 2, 0
	.global song_unk_314
song_unk_314: @ 0x0834F3EC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_314_0
	.size song_unk_314,.-song_unk_314
