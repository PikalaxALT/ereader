	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_336_0: @ 0x0834F5D4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3A
	.byte VOL, 0x7F
	.byte N44, Cn3, v092
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_336
song_unk_336: @ 0x0834F5E4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_336_0

