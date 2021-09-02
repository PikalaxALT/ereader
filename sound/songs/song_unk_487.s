	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_487_0: @ 0x08350698
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N11, Bn4, v080
	.byte W12
	.byte N44, Gn4
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_487
song_unk_487: @ 0x083506A8 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_487_0

