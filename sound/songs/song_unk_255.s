	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_255_0: @ 0x0834E3DC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x50
	.byte VOL, 0x7F
	.byte N11, Cn3, v092
	.byte W12
	.byte FINE
	.align 2, 0
	.global song_unk_255
song_unk_255: @ 0x0834E3EC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_255_0

