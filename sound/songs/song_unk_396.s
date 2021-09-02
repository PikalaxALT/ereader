	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_396_0: @ 0x0834FD64
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5F
	.byte VOL, 0x7F
	.byte N17, Gn4, v060
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_396
song_unk_396: @ 0x0834FD74 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_396_0

