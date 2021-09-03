	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_637_0: @ 0x08350FB0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4A
	.byte VOL, 0x7F
	.byte N24, Cn3, v052
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_637
song_unk_637: @ 0x08350FC0 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_637_0
	.size song_unk_637,.-song_unk_637
