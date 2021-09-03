	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_188_0: @ 0x0834C4CC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x3D
	.byte VOL, 0x7F
	.byte N36, Cn3, v120
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_188
song_unk_188: @ 0x0834C4DC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_188_0
	.size song_unk_188,.-song_unk_188
