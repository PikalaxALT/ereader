	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_643_0: @ 0x08351004
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4E
	.byte VOL, 0x7F
	.byte N17, Cn3, v060
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_643
song_unk_643: @ 0x08351014 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_643_0

