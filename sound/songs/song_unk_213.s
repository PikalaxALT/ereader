	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_213_0: @ 0x0834CB3C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x46
	.byte VOL, 0x7F
	.byte N24, Cn3, v100
	.byte W36
	.byte N60
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_213
song_unk_213: @ 0x0834CB4C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_213_0
	.size song_unk_213,.-song_unk_213
