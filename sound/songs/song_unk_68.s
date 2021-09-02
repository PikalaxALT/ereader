	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_68_0: @ 0x0834859C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N01, Fn3, v100
	.byte W02
	.byte Ds3
	.byte W02
	.byte Cs3
	.byte W02
	.byte Bn2, v092
	.byte W03
	.byte N00, An2, v080
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_68
song_unk_68: @ 0x083485B4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_68_0

