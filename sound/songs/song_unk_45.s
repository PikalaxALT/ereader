	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_45_0: @ 0x08347FB4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6D
	.byte VOL, 0x7F
	.byte N23, Cn3, v072
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_45
song_unk_45: @ 0x08347FC4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_45_0

