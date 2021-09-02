	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_292_0: @ 0x0834F200
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x0E
	.byte VOL, 0x7F
	.byte N23, Cn3, v127
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_292
song_unk_292: @ 0x0834F210 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_292_0

