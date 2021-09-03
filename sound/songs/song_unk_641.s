	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_641_0: @ 0x08350FCC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x4C
	.byte VOL, 0x7F
	.byte N18, Gn2, v100
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_641
song_unk_641: @ 0x08350FDC (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_641_0
	.size song_unk_641,.-song_unk_641
