	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_56_0: @ 0x08348274
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x73
	.byte VOL, 0x7F
	.byte N30, Cn3, v096
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_56
song_unk_56: @ 0x08348284 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_56_0
	.size song_unk_56,.-song_unk_56
