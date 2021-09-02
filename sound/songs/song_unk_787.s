	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_787_0: @ 0x08355028
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x18
	.byte VOL, 0x50
	.byte N44, Cn4, v127
	.byte W48
	.byte FINE
song_unk_787_1: @ 0x08355035
	.byte KEYSH, 0x00
	.byte VOICE, 0x18
	.byte VOL, 0x50
	.byte N44, Cn4, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_787
song_unk_787: @ 0x08355040 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_787_0
	.4byte song_unk_787_1

