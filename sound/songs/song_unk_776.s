	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_776_0: @ 0x08354E60
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x0D
	.byte VOL, 0x50
	.byte N68, Cn4, v127
	.byte W72
	.byte FINE
song_unk_776_1: @ 0x08354E6D
	.byte KEYSH, 0x00
	.byte VOICE, 0x0D
	.byte VOL, 0x50
	.byte N68, Cn4, v127
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_776
song_unk_776: @ 0x08354E78 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_776_0
	.4byte song_unk_776_1

