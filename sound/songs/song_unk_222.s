	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_222_0: @ 0x0834CF84
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x28
	.byte VOL, 0x7F
	.byte N04, Fn3, v060
	.byte W05
	.byte N40
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_222
song_unk_222: @ 0x0834CF94 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_222_0

