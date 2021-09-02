	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_202_0: @ 0x0834C918
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x40
	.byte VOL, 0x7F
	.byte N40, Cn3, v060
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_202
song_unk_202: @ 0x0834C928 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_202_0

