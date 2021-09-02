	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_877_0: @ 0x08355810
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x61
	.byte VOL, 0x7F
	.byte N28, Cn4, v127
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_877
song_unk_877: @ 0x08355820 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_877_0

