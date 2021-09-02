	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_249_0: @ 0x0834DFB4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N01, An3, v060
	.byte W02
	.byte Gs3
	.byte W02
	.byte Gn3, v052
	.byte W02
	.byte Fs3
	.byte W02
	.byte Fn3, v040
	.byte W02
	.byte En3
	.byte W02
	.byte Ds3, v032
	.byte W02
	.byte Gn3, v040
	.byte W02
	.byte Fs3
	.byte W02
	.byte Fn3, v032
	.byte W02
	.byte En3
	.byte W02
	.byte Ds3, v020
	.byte W02
	.byte Dn3
	.byte W01
	.byte Cs3, v012
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_249
song_unk_249: @ 0x0834DFE4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_249_0

