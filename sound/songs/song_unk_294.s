	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_294_0: @ 0x0834F238
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x10
	.byte VOL, 0x7F
	.byte N17, Cn3, v100
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_294
song_unk_294: @ 0x0834F248 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_294_0

