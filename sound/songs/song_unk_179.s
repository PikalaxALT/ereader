	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_179_0: @ 0x0834C3D0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x34
	.byte VOL, 0x7F
	.byte N12, Cn3, v092
	.byte W12
	.byte FINE
	.align 2, 0
	.global song_unk_179
song_unk_179: @ 0x0834C3E0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_179_0
	.size song_unk_179,.-song_unk_179
