	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_95_0: @ 0x0834960C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x12
	.byte VOL, 0x7F
	.byte N84, Cn3, v072
	.byte W84
	.byte FINE
	.align 2, 0
	.global song_unk_95
song_unk_95: @ 0x0834961C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_95_0
	.size song_unk_95,.-song_unk_95
