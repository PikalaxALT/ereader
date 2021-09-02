	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_451_0: @ 0x0834FF98
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x67
	.byte VOL, 0x7F
	.byte N04, An3, v048
	.byte W05
	.byte FINE
	.align 2, 0
	.global song_unk_451
song_unk_451: @ 0x0834FFA8 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_451_0

