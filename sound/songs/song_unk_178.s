	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_178_0: @ 0x0834C3B4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x33
	.byte VOL, 0x7F
	.byte N32, Bn2, v092
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_178
song_unk_178: @ 0x0834C3C4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_178_0

