	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_337_0: @ 0x0834F5F0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3B
	.byte VOL, 0x7F
	.byte N64, Cn3, v080
	.byte W66
	.byte FINE
	.align 2, 0
	.global song_unk_337
song_unk_337: @ 0x0834F600 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_337_0

