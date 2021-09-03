	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_75_0: @ 0x08348680
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x73
	.byte VOL, 0x7F
	.byte N18, Gn2, v116
	.byte W03
	.byte VOL, 0x50
	.byte W01
	.byte 0x32
	.byte W02
	.byte 0x14
	.byte W12
	.byte FINE
	.align 2, 0
	.global song_unk_75
song_unk_75: @ 0x08348694 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_75_0
	.size song_unk_75,.-song_unk_75
