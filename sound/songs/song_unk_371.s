	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_371_0: @ 0x0834F8C8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N24, Cn3, v112
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_371
song_unk_371: @ 0x0834F8D8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_371_0
	.size song_unk_371,.-song_unk_371
