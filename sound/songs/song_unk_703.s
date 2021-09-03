	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_703_0: @ 0x08351CF8
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte TEMPO, 0x6E
	.byte VOICE, 0x06
	.byte N10, An4, v127
	.byte W12
	.byte N08, Bn4
	.byte W12
	.byte Cs5
	.byte W12
	.byte Bn4
	.byte W08
	.byte FINE
song_unk_703_1: @ 0x08351D0C
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte VOICE, 0x06
	.byte N08, Fs4, v048
	.byte W12
	.byte Gs4, v064
	.byte W12
	.byte An4
	.byte W12
	.byte Gs4
	.byte W08
	.byte FINE
song_unk_703_2: @ 0x08351D1E
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte VOICE, 0x06
	.byte N08, En4, v048
	.byte W12
	.byte Fs4, v064
	.byte W12
	.byte Gs4
	.byte W12
	.byte Fs4
	.byte W08
	.byte FINE
song_unk_703_3: @ 0x08351D30
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte VOICE, 0x02
	.byte PAN, 0x60
	.byte N11, An4, v048
	.byte W12
	.byte Bn4
	.byte W12
	.byte Cs5
	.byte W12
	.byte Bn4
	.byte W11
	.byte FINE
song_unk_703_4: @ 0x08351D43
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte VOICE, 0x06
	.byte N08, Cs4, v048
	.byte W12
	.byte Ds4, v064
	.byte W12
	.byte En4
	.byte W12
	.byte Ds4
	.byte W08
	.byte FINE
song_unk_703_5: @ 0x08351D55
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte VOICE, 0x07
	.byte PAN, 0x20
	.byte N11, An4, v048
	.byte W12
	.byte Bn4
	.byte W12
	.byte Cs5
	.byte W12
	.byte Bn4
	.byte W11
	.byte FINE
song_unk_703_6: @ 0x08351D68
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte VOICE, 0x7F
	.byte N23, Cn1, v127
	.byte N44, En1, v096
	.byte W44
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_703
song_unk_703: @ 0x08351D78 (song header)
	.byte 7, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup005 @ voice group
	.4byte song_unk_703_0
	.4byte song_unk_703_1
	.4byte song_unk_703_2
	.4byte song_unk_703_3
	.4byte song_unk_703_4
	.4byte song_unk_703_5
	.4byte song_unk_703_6
	.size song_unk_703,.-song_unk_703
