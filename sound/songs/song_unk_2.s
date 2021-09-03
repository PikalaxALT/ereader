	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_2_0: @ 0x0834660C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte PAN, 0x7F
	.byte N02, En4, v112
	.byte W02
	.byte Bn4
	.byte W04
	.byte Bn4, v080
	.byte W04
	.byte Bn4, v064
	.byte W04
	.byte N02
	.byte W05
	.byte Bn4, v048
	.byte W02
	.byte FINE
song_unk_2_1: @ 0x08346628
	.byte KEYSH, 0x00
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte PAN, 0x00
	.byte W01
	.byte N02, An4, v112
	.byte W02
	.byte En5
	.byte W04
	.byte En5, v080
	.byte W04
	.byte En5, v064
	.byte W04
	.byte N02
	.byte W05
	.byte En5, v048
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_2
song_unk_2: @ 0x08346644 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_2_0
	.4byte song_unk_2_1
	.size song_unk_2,.-song_unk_2
