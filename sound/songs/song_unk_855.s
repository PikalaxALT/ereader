	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_855_0: @ 0x083555A8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4B
	.byte VOL, 0x7F
	.byte N54, Cn4, v127
	.byte W54
	.byte FINE
	.align 2, 0
	.global song_unk_855
song_unk_855: @ 0x083555B8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_855_0
	.size song_unk_855,.-song_unk_855
