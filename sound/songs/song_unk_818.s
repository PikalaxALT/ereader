	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_818_0: @ 0x0835519C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x26
	.byte VOL, 0x7F
	.byte N68, Cn4, v127
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_818
song_unk_818: @ 0x083551AC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_818_0

