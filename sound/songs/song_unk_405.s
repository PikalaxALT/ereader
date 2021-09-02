	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_405_0: @ 0x083466D4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7E
	.byte VOL, 0x7F
	.byte N40, Cn3, v100
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_405
song_unk_405: @ 0x083466E4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_405_0

