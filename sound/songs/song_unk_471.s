	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_471_0: @ 0x08350304
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x60
	.byte VOL, 0x7F
	.byte N03, Gn2, v127
	.byte W03
	.byte VOL, 0x3C
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_471
song_unk_471: @ 0x08350314 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_471_0

