	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_338_0: @ 0x0834F60C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3C
	.byte VOL, 0x7F
	.byte N64, Cn3, v072
	.byte W66
	.byte FINE
	.align 2, 0
	.global song_unk_338
song_unk_338: @ 0x0834F61C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_338_0

