	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_74_0: @ 0x08348664
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x56
	.byte VOL, 0x7F
	.byte N24, En4, v112
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_74
song_unk_74: @ 0x08348674 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_74_0
	.size song_unk_74,.-song_unk_74
