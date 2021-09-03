	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_77_0: @ 0x08348718
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x56
	.byte VOL, 0x7F
	.byte N24, En3, v080
	.byte W24
	.byte FINE
song_unk_77_1: @ 0x08348725
	.byte KEYSH, 0x00
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte BEND, 0x00
	.byte N30, Cn2, v092
	.byte W02
	.byte VOL, 0x6E
	.byte W01
	.byte BEND, 0x09
	.byte W03
	.byte VOL, 0x68
	.byte BEND, 0x1F
	.byte W02
	.byte VOL, 0x57
	.byte W01
	.byte BEND, 0x36
	.byte W03
	.byte VOL, 0x3F
	.byte BEND, 0x51
	.byte W02
	.byte VOL, 0x2E
	.byte W01
	.byte BEND, 0x68
	.byte W03
	.byte VOL, 0x24
	.byte BEND, 0x75
	.byte W02
	.byte VOL, 0x13
	.byte W01
	.byte BEND, 0x7F
	.byte W03
	.byte VOL, 0x09
	.byte W06
	.byte FINE
song_unk_77_2: @ 0x0834875C
	.byte KEYSH, 0x00
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte BEND, 0x00
	.byte N30, An1, v092
	.byte W02
	.byte VOL, 0x6E
	.byte W01
	.byte BEND, 0x09
	.byte W03
	.byte VOL, 0x68
	.byte BEND, 0x1F
	.byte W02
	.byte VOL, 0x57
	.byte W01
	.byte BEND, 0x36
	.byte W03
	.byte VOL, 0x3F
	.byte BEND, 0x51
	.byte W02
	.byte VOL, 0x2E
	.byte W01
	.byte BEND, 0x68
	.byte W03
	.byte VOL, 0x24
	.byte BEND, 0x75
	.byte W02
	.byte VOL, 0x13
	.byte W01
	.byte BEND, 0x7F
	.byte W03
	.byte VOL, 0x09
	.byte W06
	.byte FINE
song_unk_77_3: @ 0x08348793
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N30, En2, v072
	.byte W02
	.byte VOL, 0x6E
	.byte W04
	.byte 0x68
	.byte W02
	.byte 0x57
	.byte W04
	.byte 0x3F
	.byte W02
	.byte 0x2E
	.byte W04
	.byte 0x24
	.byte W02
	.byte 0x13
	.byte W04
	.byte 0x09
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_77
song_unk_77: @ 0x083487B0 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_77_0
	.4byte song_unk_77_1
	.4byte song_unk_77_2
	.4byte song_unk_77_3
	.size song_unk_77,.-song_unk_77
