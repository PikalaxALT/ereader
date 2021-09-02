	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_826_0: @ 0x0835527C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2E
	.byte VOL, 0x7F
	.byte N44, Cn4, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_826
song_unk_826: @ 0x0835528C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_826_0

