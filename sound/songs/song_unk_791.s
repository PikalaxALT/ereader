	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_791_0: @ 0x08355078
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1C
	.byte VOL, 0x50
	.byte N68, Cn4, v127
	.byte W72
	.byte FINE
song_unk_791_1: @ 0x08355085
	.byte KEYSH, 0x00
	.byte VOICE, 0x1C
	.byte VOL, 0x50
	.byte N68, Cn4, v127
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_791
song_unk_791: @ 0x08355090 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_791_0
	.4byte song_unk_791_1

