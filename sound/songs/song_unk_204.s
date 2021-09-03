	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_204_0: @ 0x0834C950
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte N24, Cn3, v072
	.byte W24
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_204
song_unk_204: @ 0x0834C960 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_204_0
	.size song_unk_204,.-song_unk_204
