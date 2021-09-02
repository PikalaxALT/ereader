	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_185_0: @ 0x0834C478
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3A
	.byte VOL, 0x7F
	.byte N28, Bn2, v092
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_185
song_unk_185: @ 0x0834C488 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_185_0

