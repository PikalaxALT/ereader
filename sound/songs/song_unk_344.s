	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_344_0: @ 0x0834F698
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte N54, Cn3, v120
	.byte W54
	.byte FINE
	.align 2, 0
	.global song_unk_344
song_unk_344: @ 0x0834F6A8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_344_0
	.size song_unk_344,.-song_unk_344
