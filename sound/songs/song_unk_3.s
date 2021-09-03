	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_3_0: @ 0x08346654
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte PAN, 0x7F
	.byte N02, Gn4, v112
	.byte W03
	.byte Bn4
	.byte W03
	.byte Dn5
	.byte W03
	.byte Gn5
	.byte W04
	.byte Gn5, v080
	.byte W04
	.byte Gn5, v064
	.byte W04
	.byte N02
	.byte W05
	.byte Gn5, v048
	.byte W02
	.byte FINE
song_unk_3_1: @ 0x08346674
	.byte KEYSH, 0x00
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte PAN, 0x00
	.byte N02, Bn4, v112
	.byte W04
	.byte Gn5
	.byte W03
	.byte An5
	.byte W03
	.byte Bn5
	.byte W04
	.byte Bn5, v080
	.byte W04
	.byte Bn5, v064
	.byte W04
	.byte N02
	.byte W04
	.byte Bn5, v048
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_3
song_unk_3: @ 0x08346694 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_3_0
	.4byte song_unk_3_1
	.size song_unk_3,.-song_unk_3
