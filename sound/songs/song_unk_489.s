	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_489_0: @ 0x083506D0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N30, Fn2, v112
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_489
song_unk_489: @ 0x083506E0 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_489_0
	.size song_unk_489,.-song_unk_489
