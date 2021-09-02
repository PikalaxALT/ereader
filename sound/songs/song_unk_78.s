	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_78_0: @ 0x083487C8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte N02, An2, v100
	.byte W02
	.byte Gs2
	.byte W02
	.byte Gn2
	.byte W02
	.byte Fs2
	.byte W03
	.byte Fn2
	.byte W02
	.byte En2
	.byte W02
	.byte Ds2
	.byte W02
	.byte Dn2
	.byte W03
	.byte FINE
song_unk_78_1: @ 0x083487E5
	.byte KEYSH, 0x00
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte N02, Bn2, v092
	.byte W02
	.byte As2
	.byte W02
	.byte An2
	.byte W02
	.byte Gs2
	.byte W03
	.byte Gn2
	.byte W02
	.byte Fs2
	.byte W02
	.byte Fn2
	.byte W02
	.byte En2
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_78
song_unk_78: @ 0x08348800 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_78_0
	.4byte song_unk_78_1

