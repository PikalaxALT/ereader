	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_71_0: @ 0x08348610
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x60
	.byte VOL, 0x7F
	.byte N04, Gn2, v127
	.byte W03
	.byte VOL, 0x3C
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_71
song_unk_71: @ 0x08348620 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_71_0
	.size song_unk_71,.-song_unk_71
