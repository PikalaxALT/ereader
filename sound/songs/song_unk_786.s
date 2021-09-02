	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_786_0: @ 0x08355000
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x17
	.byte VOL, 0x50
	.byte N80, Cn4, v127
	.byte W84
	.byte FINE
song_unk_786_1: @ 0x0835500D
	.byte KEYSH, 0x00
	.byte VOICE, 0x17
	.byte VOL, 0x50
	.byte N80, Cn4, v127
	.byte W84
	.byte FINE
	.align 2, 0
	.global song_unk_786
song_unk_786: @ 0x08355018 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_786_0
	.4byte song_unk_786_1

