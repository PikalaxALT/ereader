	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_478_0: @ 0x08350444
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte N03, An2, v100
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
song_unk_478_1: @ 0x08350461
	.byte KEYSH, 0x00
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte N03, Bn2, v092
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
	.global song_unk_478
song_unk_478: @ 0x0835047C (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_478_0
	.4byte song_unk_478_1
	.size song_unk_478,.-song_unk_478
