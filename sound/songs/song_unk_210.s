	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_210_0: @ 0x0834C9F8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x45
	.byte VOL, 0x7F
	.byte N88, Cn3, v072
	.byte W90
	.byte FINE
	.align 2, 0
	.global song_unk_210
song_unk_210: @ 0x0834CA08 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_210_0

