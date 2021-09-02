	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_827_0: @ 0x08355298
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2F
	.byte VOL, 0x7F
	.byte N40, Cn4, v127
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_827
song_unk_827: @ 0x083552A8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_827_0

