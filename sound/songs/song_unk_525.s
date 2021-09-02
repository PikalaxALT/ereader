	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_525_0: @ 0x0835099C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x23
	.byte VOL, 0x7F
	.byte N76, Cn3, v076
	.byte W78
	.byte FINE
	.align 2, 0
	.global song_unk_525
song_unk_525: @ 0x083509AC (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_525_0

