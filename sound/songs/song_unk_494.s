	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_494_0: @ 0x08350748
	.byte KEYSH, 0x00
song_unk_494_0_000: @ 0x0835074A
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5F
	.byte VOL, 0x7F
	.byte N56, Cn3, v072
	.byte W60
	.byte N44, As2
	.byte W36
	.byte W12
	.byte N32, Dn3
	.byte W36
	.byte N68, Cn3
	.byte W48
	.byte W24
	.byte N11, Ds3
	.byte W12
	.byte N56, Bn2
	.byte W60
	.byte GOTO
	 .4byte song_unk_494_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_494
song_unk_494: @ 0x0835076C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_494_0

