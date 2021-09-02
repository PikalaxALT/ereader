	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_42_0: @ 0x08347F50
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6A
	.byte VOL, 0x7F
	.byte N80, Cn3, v080
	.byte W84
	.byte FINE
	.align 2, 0
	.global song_unk_42
song_unk_42: @ 0x08347F60 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_42_0

