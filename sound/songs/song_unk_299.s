	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_299_0: @ 0x0834F2A8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x15
	.byte VOL, 0x7F
	.byte N54, Cn3, v080
	.byte W54
	.byte FINE
	.align 2, 0
	.global song_unk_299
song_unk_299: @ 0x0834F2B8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_299_0
	.size song_unk_299,.-song_unk_299
