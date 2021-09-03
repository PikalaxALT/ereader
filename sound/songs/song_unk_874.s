	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_874_0: @ 0x083557BC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5E
	.byte VOL, 0x7F
	.byte N60, Cn4, v127
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_874
song_unk_874: @ 0x083557CC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_874_0
	.size song_unk_874,.-song_unk_874
