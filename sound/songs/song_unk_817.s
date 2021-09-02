	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_817_0: @ 0x08355180
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x25
	.byte VOL, 0x7F
	.byte N56, Cn4, v127
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_817
song_unk_817: @ 0x08355190 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_817_0

