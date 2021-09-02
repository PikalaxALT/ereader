	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_358_0: @ 0x0834F7CC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x50
	.byte VOL, 0x7F
	.byte N32, Cn3, v060
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_358
song_unk_358: @ 0x0834F7DC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_358_0

