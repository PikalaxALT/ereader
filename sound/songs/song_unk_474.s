	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_474_0: @ 0x08350358
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x56
	.byte VOL, 0x7F
	.byte N23, En4, v112
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_474
song_unk_474: @ 0x08350368 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_474_0

