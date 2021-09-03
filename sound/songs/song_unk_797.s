	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_797_0: @ 0x083AAE68
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6E
	.byte VOL, 0x50
	.byte N96, Cn4, v127
	.byte W96
	.byte FINE
song_unk_797_1: @ 0x083AAE75
	.byte KEYSH, 0x00
	.byte VOICE, 0x6E
	.byte VOL, 0x50
	.byte N96, Cn4, v127
	.byte W96
	.byte FINE
	.align 2, 0
	.global song_unk_797
song_unk_797: @ 0x083AAE80 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_797_0
	.4byte song_unk_797_1
	.size song_unk_797,.-song_unk_797
