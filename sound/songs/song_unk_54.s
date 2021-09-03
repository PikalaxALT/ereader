	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_54_0: @ 0x08348234
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x71
	.byte VOL, 0x7F
	.byte N30, An2, v127
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_54
song_unk_54: @ 0x08348244 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_54_0
	.size song_unk_54,.-song_unk_54
