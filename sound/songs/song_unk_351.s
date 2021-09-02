	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_351_0: @ 0x0834F740
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x49
	.byte VOL, 0x7F
	.byte N56, Cn3, v092
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_351
song_unk_351: @ 0x0834F750 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_351_0

