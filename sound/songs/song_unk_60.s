	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_60_0: @ 0x08348490
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x74
	.byte VOL, 0x7F
	.byte N18, Cn3, v072
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_60
song_unk_60: @ 0x083484A0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_60_0
	.size song_unk_60,.-song_unk_60
