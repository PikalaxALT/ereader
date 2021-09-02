	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_609_0: @ 0x08350EAC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N05, Gn2, v072
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_609
song_unk_609: @ 0x08350EBC (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_609_0

