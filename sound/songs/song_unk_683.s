	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_683_0: @ 0x083519B0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6F
	.byte VOL, 0x7F
	.byte N28, Cn3, v072
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_683
song_unk_683: @ 0x083519C0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_683_0

