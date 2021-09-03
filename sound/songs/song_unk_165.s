	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_165_0: @ 0x0834BAD0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2D
	.byte VOL, 0x7F
	.byte N42, Fn3, v112
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_165
song_unk_165: @ 0x0834BAE0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_165_0
	.size song_unk_165,.-song_unk_165
