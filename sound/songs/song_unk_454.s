	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_454_0: @ 0x08350128
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x71
	.byte VOL, 0x7F
	.byte N28, An2, v127
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_454
song_unk_454: @ 0x08350138 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_454_0

