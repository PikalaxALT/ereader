	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_366_0: @ 0x0834F858
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x58
	.byte VOL, 0x7F
	.byte N88, Cn3, v127
	.byte W90
	.byte FINE
	.align 2, 0
	.global song_unk_366
song_unk_366: @ 0x0834F868 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_366_0

