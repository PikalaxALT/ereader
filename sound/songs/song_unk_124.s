	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_124_0: @ 0x0834A0E0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte N40, Dn3, v068
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_124
song_unk_124: @ 0x0834A0F0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_124_0

