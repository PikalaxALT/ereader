	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_327_0: @ 0x0834F4F4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x31
	.byte VOL, 0x7F
	.byte N60, Cn3, v080
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_327
song_unk_327: @ 0x0834F504 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_327_0
	.size song_unk_327,.-song_unk_327
