	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_237_0: @ 0x0834D590
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4A
	.byte VOL, 0x7F
	.byte N23, Cn3, v052
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_237
song_unk_237: @ 0x0834D5A0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_237_0

