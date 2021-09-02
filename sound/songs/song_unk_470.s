	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_470_0: @ 0x083502DC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N00, An5, v076
	.byte N00, Bn5
	.byte W01
	.byte Cs6, v060
	.byte W01
	.byte Ds6
	.byte W01
	.byte Fn6, v044
	.byte N00, Gn6
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_470
song_unk_470: @ 0x083502F8 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_470_0

