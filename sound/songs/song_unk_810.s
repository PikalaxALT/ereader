	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_810_0: @ 0x083550BC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N90, Cn4, v127
	.byte W90
	.byte FINE
	.align 2, 0
	.global song_unk_810
song_unk_810: @ 0x083550CC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_810_0
	.size song_unk_810,.-song_unk_810
