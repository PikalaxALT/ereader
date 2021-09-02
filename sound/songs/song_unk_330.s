	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_330_0: @ 0x0834F548
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x34
	.byte VOL, 0x7F
	.byte N28, Cn3, v052
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_330
song_unk_330: @ 0x0834F558 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_330_0

