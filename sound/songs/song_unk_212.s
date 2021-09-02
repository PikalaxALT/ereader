	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_212_0: @ 0x0834CB20
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x46
	.byte VOL, 0x7F
	.byte N23, Gn3, v080
	.byte W36
	.byte N56
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_212
song_unk_212: @ 0x0834CB30 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_212_0

