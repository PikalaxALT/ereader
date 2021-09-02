	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_257_0: @ 0x0834E414
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x52
	.byte VOL, 0x7F
	.byte N17, Bn2, v092
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_257
song_unk_257: @ 0x0834E424 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_257_0

