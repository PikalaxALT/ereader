	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_243_0: @ 0x0834DBC0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4E
	.byte VOL, 0x7F
	.byte N17, Cn3, v060
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_243
song_unk_243: @ 0x0834DBD0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_243_0

