	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_316_0: @ 0x0834F414
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x26
	.byte VOL, 0x7F
	.byte N52, Cn3, v092
	.byte W54
	.byte FINE
	.align 2, 0
	.global song_unk_316
song_unk_316: @ 0x0834F424 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_316_0

