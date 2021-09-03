	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_158_0: @ 0x0834B4F8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1D
	.byte VOL, 0x7F
	.byte N84, An2, v088
	.byte W84
	.byte FINE
	.align 2, 0
	.global song_unk_158
song_unk_158: @ 0x0834B508 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_158_0
	.size song_unk_158,.-song_unk_158
