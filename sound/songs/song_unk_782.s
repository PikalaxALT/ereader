	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_782_0: @ 0x08354F5C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x13
	.byte VOL, 0x50
	.byte N80, Cn4, v127
	.byte W84
	.byte FINE
song_unk_782_1: @ 0x08354F69
	.byte KEYSH, 0x00
	.byte VOICE, 0x13
	.byte VOL, 0x50
	.byte N80, Cn4, v127
	.byte W84
	.byte FINE
	.align 2, 0
	.global song_unk_782
song_unk_782: @ 0x08354F74 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_782_0
	.4byte song_unk_782_1

