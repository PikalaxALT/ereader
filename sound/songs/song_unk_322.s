	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_322_0: @ 0x0834F4A0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2C
	.byte VOL, 0x7F
	.byte N52, Cn3, v100
	.byte W54
	.byte FINE
	.align 2, 0
	.global song_unk_322
song_unk_322: @ 0x0834F4B0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_322_0

