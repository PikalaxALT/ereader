	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_473_0: @ 0x0835033C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4B
	.byte VOL, 0x7F
	.byte N44, Gn3, v104
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_473
song_unk_473: @ 0x0835034C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_473_0

