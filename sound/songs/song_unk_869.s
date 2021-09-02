	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_869_0: @ 0x08355730
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x59
	.byte VOL, 0x7F
	.byte N44, Cn4, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_869
song_unk_869: @ 0x08355740 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_869_0

