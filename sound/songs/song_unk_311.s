	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_311_0: @ 0x0834F388
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N78, Cn3, v100
	.byte W78
	.byte FINE
	.align 2, 0
	.global song_unk_311
song_unk_311: @ 0x0834F398 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_311_0
	.size song_unk_311,.-song_unk_311
