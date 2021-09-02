	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_69_0: @ 0x083485C0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N00, Fn5, v076
	.byte N00, Gn5
	.byte W01
	.byte Ds5, v060
	.byte W01
	.byte Cs5
	.byte W01
	.byte An4, v044
	.byte N00, Bn4
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_69
song_unk_69: @ 0x083485DC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_69_0

