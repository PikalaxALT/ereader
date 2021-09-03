	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_15_0: @ 0x0834755C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte N03, Ds3, v052
	.byte W03
	.byte Cs3
	.byte W03
	.byte Bn2
	.byte W03
	.byte An2
	.byte W03
	.byte Gn2
	.byte W03
	.byte FINE
song_unk_15_1: @ 0x08347571
	.byte KEYSH, 0x00
	.byte VOICE, 0x45
	.byte VOL, 0x7F
	.byte N03, Gn4, v100
	.byte W03
	.byte Fn4
	.byte W03
	.byte Ds4
	.byte W03
	.byte Cs4
	.byte W03
	.byte Bn3
	.byte W03
	.byte FINE
song_unk_15_2: @ 0x08347584
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N03, Gn3, v052
	.byte W03
	.byte Dn3
	.byte W03
	.byte An2
	.byte W03
	.byte Fn2
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_15
song_unk_15: @ 0x08347598 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_15_0
	.4byte song_unk_15_1
	.4byte song_unk_15_2
	.size song_unk_15,.-song_unk_15
