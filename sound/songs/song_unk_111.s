	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_111_0: @ 0x08349D78
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7B
	.byte VOL, 0x7F
	.byte N05, Gs3, v060
	.byte W06
	.byte N05
	.byte W06
	.byte N05
	.byte W06
	.byte N30
	.byte W30
	.byte FINE
song_unk_111_1: @ 0x08349D8B
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N48, Cn3, v072
	.byte W48
	.byte FINE
song_unk_111_2: @ 0x08349D96
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N05, Gs2, v056
	.byte W06
	.byte N05
	.byte W06
	.byte N05
	.byte W06
	.byte N30
	.byte W30
	.byte FINE
song_unk_111_3: @ 0x08349DA7
	.byte KEYSH, 0x00
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N04, Ds4, v032
	.byte W04
	.byte Fn4
	.byte W04
	.byte Gn4
	.byte W04
	.byte As4
	.byte W04
	.byte Ds5
	.byte W04
	.byte Fn5
	.byte W04
	.byte Gn5
	.byte W04
	.byte As5
	.byte W04
	.byte Ds6
	.byte W02
	.byte N16, Fn6
	.byte W16
	.byte FINE
	.align 2, 0
	.global song_unk_111
song_unk_111: @ 0x08349DC8 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_111_0
	.4byte song_unk_111_1
	.4byte song_unk_111_2
	.4byte song_unk_111_3
	.size song_unk_111,.-song_unk_111
