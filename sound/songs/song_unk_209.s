	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_209_0: @ 0x0834C9DC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N05, Gn2, v072
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_209
song_unk_209: @ 0x0834C9EC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_209_0
