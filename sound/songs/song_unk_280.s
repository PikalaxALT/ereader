	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_280_0: @ 0x0834F120
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x02
	.byte VOL, 0x7F
	.byte N17, Cn3, v127
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_280
song_unk_280: @ 0x0834F130 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_280_0

