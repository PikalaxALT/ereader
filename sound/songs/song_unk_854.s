	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_854_0: @ 0x0835558C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4A
	.byte VOL, 0x7F
	.byte N48, Cn4, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_854
song_unk_854: @ 0x0835559C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_854_0
	.size song_unk_854,.-song_unk_854
