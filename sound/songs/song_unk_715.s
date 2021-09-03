	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_715_0: @ 0x083525A8
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte TEMPO, 0x41
	.byte VOICE, 0x08
	.byte PAN, 0x44
	.byte N05, Cn4, v124
	.byte W06
	.byte N05
	.byte W06
	.byte N05
	.byte W06
	.byte N05
	.byte W12
	.byte N05
	.byte W12
	.byte N08
	.byte W08
	.byte FINE
song_unk_715_1: @ 0x083525C1
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte PAN, 0x44
	.byte N05, An3, v064
	.byte W06
	.byte N05
	.byte W06
	.byte N05
	.byte W06
	.byte Gs3
	.byte W12
	.byte N05
	.byte W13
	.byte N07, Gn3, v048
	.byte W07
	.byte FINE
song_unk_715_2: @ 0x083525DA
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte PAN, 0x44
	.byte N05, En3, v064
	.byte W06
	.byte N05
	.byte W06
	.byte N05
	.byte W06
	.byte Ds3
	.byte W12
	.byte N05
	.byte W13
	.byte N07, Dn3, v048
	.byte W07
	.byte FINE
song_unk_715_3: @ 0x083525F3
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte PAN, 0x44
	.byte N05, Fs2, v096
	.byte W06
	.byte N05
	.byte W06
	.byte N05
	.byte W06
	.byte Fn2
	.byte W12
	.byte N05
	.byte W13
	.byte N08, En2
	.byte W08
	.byte FINE
song_unk_715_4: @ 0x0835260B
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte VOICE, 0x7F
	.byte N05, Dn1, v096
	.byte W06
	.byte Dn1, v032
	.byte W06
	.byte N05
	.byte W06
	.byte N11, Cn1, v064
	.byte N08, En1, v032
	.byte W12
	.byte N11, Cn1, v064
	.byte N08, En1, v032
	.byte W13
	.byte N11, Cn1, v104
	.byte W02
	.byte TIE, En1, v032
	.byte W48
	.byte W03
	.byte W48
	.byte W02
	.byte EOT
	.byte FINE
song_unk_715_5: @ 0x08352635
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte VOICE, 0x07
	.byte W42
	.byte N08, Cn5, v127
	.byte W08
	.byte FINE
	.align 2, 0
	.global song_unk_715
song_unk_715: @ 0x08352644 (song header)
	.byte 6, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup005 @ voice group
	.4byte song_unk_715_0
	.4byte song_unk_715_1
	.4byte song_unk_715_2
	.4byte song_unk_715_3
	.4byte song_unk_715_4
	.4byte song_unk_715_5
	.size song_unk_715,.-song_unk_715
