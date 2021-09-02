	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_146_0: @ 0x0834B0F8
	.byte KEYSH, 0x00
song_unk_146_0_000: @ 0x0834B0FA
	.byte TEMPO, 0x4B
	.byte VOICE, 0x17
	.byte VOL, 0x7F
	.byte N02, Gn2, v052
	.byte W10
	.byte N02
	.byte W11
	.byte N02
	.byte W10
	.byte N02
	.byte W11
	.byte GOTO
	 .4byte song_unk_146_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_146
song_unk_146: @ 0x0834B110 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_146_0

