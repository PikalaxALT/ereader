	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_517_0: @ 0x08350898
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1D
	.byte VOL, 0x7F
	.byte N68, Cn3, v088
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_517
song_unk_517: @ 0x083508A8 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_517_0

