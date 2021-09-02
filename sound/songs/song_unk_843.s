	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_843_0: @ 0x08355458
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3F
	.byte VOL, 0x7F
	.byte N44, Cn4, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_843
song_unk_843: @ 0x08355468 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_843_0

