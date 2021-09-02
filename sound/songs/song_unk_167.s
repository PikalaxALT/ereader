	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_167_0: @ 0x0834BB10
	.byte KEYSH, 0x00
song_unk_167_0_000: @ 0x0834BB12
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2E
	.byte VOL, 0x7F
	.byte N05, En4, v112
	.byte W09
	.byte N05
	.byte W09
	.byte N05
	.byte W09
	.byte N05
	.byte W09
	.byte N05
	.byte W09
	.byte N05
	.byte W09
	.byte N05
	.byte W09
	.byte N05
	.byte W09
	.byte GOTO
	 .4byte song_unk_167_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_167
song_unk_167: @ 0x0834BB30 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_167_0

