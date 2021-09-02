	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_856_0: @ 0x083555C4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4C
	.byte VOL, 0x7F
	.byte N52, Cn4, v127
	.byte W54
	.byte FINE
	.align 2, 0
	.global song_unk_856
song_unk_856: @ 0x083555D4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_856_0

