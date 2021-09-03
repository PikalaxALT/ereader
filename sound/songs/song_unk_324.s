	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_324_0: @ 0x0834F4BC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2E
	.byte VOL, 0x7F
	.byte N48, Cn3, v112
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_324
song_unk_324: @ 0x0834F4CC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_324_0
	.size song_unk_324,.-song_unk_324
