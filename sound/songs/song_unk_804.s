	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_804_0: @ 0x083B53C4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x75
	.byte VOL, 0x50
	.byte N44, Cn4, v127
	.byte W48
	.byte FINE
song_unk_804_1: @ 0x083B53D1
	.byte KEYSH, 0x00
	.byte VOICE, 0x75
	.byte VOL, 0x50
	.byte N44, Cn4, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_804
song_unk_804: @ 0x083B53DC (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_804_0
	.4byte song_unk_804_1

