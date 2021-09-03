	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_468_0: @ 0x08350290
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N02, Fn3, v100
	.byte W02
	.byte Ds3
	.byte W02
	.byte Cs3
	.byte W02
	.byte Bn2, v092
	.byte W03
	.byte N01, An2, v080
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_468
song_unk_468: @ 0x083502A8 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_468_0
	.size song_unk_468,.-song_unk_468
