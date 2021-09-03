	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_300_0: @ 0x0834F2C4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x16
	.byte VOL, 0x7F
	.byte N84, Cn3, v080
	.byte W84
	.byte FINE
	.align 2, 0
	.global song_unk_300
song_unk_300: @ 0x0834F2D4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_300_0
	.size song_unk_300,.-song_unk_300
