	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_875_0: @ 0x083557D8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5F
	.byte VOL, 0x7F
	.byte N44, Cn4, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_875
song_unk_875: @ 0x083557E8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_875_0

