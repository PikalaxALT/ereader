	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_357_0: @ 0x0834F7B0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4F
	.byte VOL, 0x7F
	.byte N88, Cn3, v080
	.byte W90
	.byte FINE
	.align 2, 0
	.global song_unk_357
song_unk_357: @ 0x0834F7C0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_357_0

