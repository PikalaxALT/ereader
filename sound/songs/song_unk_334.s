	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_334_0: @ 0x0834F5B8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x38
	.byte VOL, 0x7F
	.byte N40, Cn3, v080
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_334
song_unk_334: @ 0x0834F5C8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_334_0

