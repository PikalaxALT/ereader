	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_333_0: @ 0x0834F59C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x37
	.byte VOL, 0x7F
	.byte N44, Cn3, v112
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_333
song_unk_333: @ 0x0834F5AC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_333_0

