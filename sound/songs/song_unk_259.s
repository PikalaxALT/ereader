	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_259_0: @ 0x0834E44C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x54
	.byte VOL, 0x7F
	.byte N23, Cn3, v072
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_259
song_unk_259: @ 0x0834E45C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_259_0
