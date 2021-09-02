	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_522_0: @ 0x083508EC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N23, Cs3, v072
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_522
song_unk_522: @ 0x083508FC (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_522_0

