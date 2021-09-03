	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_349_0: @ 0x0834F708
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x47
	.byte VOL, 0x7F
	.byte N30, Cn3, v072
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_349
song_unk_349: @ 0x0834F718 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_349_0
	.size song_unk_349,.-song_unk_349
