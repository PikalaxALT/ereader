	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_206_0: @ 0x0834C988
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x28
	.byte VOL, 0x7F
	.byte N40, Fn3, v060
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_206
song_unk_206: @ 0x0834C998 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_206_0

