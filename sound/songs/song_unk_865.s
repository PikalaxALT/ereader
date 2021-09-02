	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_865_0: @ 0x083556C0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x55
	.byte VOL, 0x7F
	.byte N32, Cn4, v127
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_865
song_unk_865: @ 0x083556D0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_865_0

