	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_839_0: @ 0x083553E8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3B
	.byte VOL, 0x7F
	.byte N40, Cn4, v127
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_839
song_unk_839: @ 0x083553F8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_839_0

