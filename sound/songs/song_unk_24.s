	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_24_0: @ 0x0834795C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N01, Cn4, v096
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_24
song_unk_24: @ 0x0834796C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_24_0
	.size song_unk_24,.-song_unk_24
