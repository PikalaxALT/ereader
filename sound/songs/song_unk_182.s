	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_182_0: @ 0x0834C424
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x37
	.byte VOL, 0x7F
	.byte N23, As2, v100
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_182
song_unk_182: @ 0x0834C434 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_182_0

