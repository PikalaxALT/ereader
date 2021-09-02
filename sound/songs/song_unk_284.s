	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_284_0: @ 0x0834F174
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x06
	.byte VOL, 0x7F
	.byte N56, Cn3, v072
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_284
song_unk_284: @ 0x0834F184 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_284_0

