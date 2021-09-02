	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_834_0: @ 0x0835535C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x36
	.byte VOL, 0x7F
	.byte N56, Cn4, v127
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_834
song_unk_834: @ 0x0835536C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_834_0

