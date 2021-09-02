	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_286_0: @ 0x0834F190
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x08
	.byte VOL, 0x7F
	.byte N23, Cn3, v080
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_286
song_unk_286: @ 0x0834F1A0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_286_0

