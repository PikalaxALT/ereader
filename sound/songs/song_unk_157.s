	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_157_0: @ 0x0834B4D0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N00, Fn5, v080
	.byte N00, Gn5
	.byte W01
	.byte An5, v064
	.byte W01
	.byte Bn5
	.byte W01
	.byte Cs6, v048
	.byte N00, Ds6
	.byte W01
	.byte Fn6, v032
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_157
song_unk_157: @ 0x0834B4EC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_157_0

