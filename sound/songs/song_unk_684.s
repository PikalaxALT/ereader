	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_684_0: @ 0x083519CC
	.byte KEYSH, 0x00
song_unk_684_0_000: @ 0x083519CE
	.byte TEMPO, 0x2D
	.byte VOICE, 0x03
	.byte VOL, 0x64
	.byte N06, An4, v032
	.byte W12
	.byte En4
	.byte W12
	.byte Fs4
	.byte W12
	.byte Bn3
	.byte W12
	.byte Cs4
	.byte W12
	.byte En4
	.byte W12
	.byte An4
	.byte W12
	.byte Bn4
	.byte W12
	.byte An4
	.byte W12
	.byte En4
	.byte W12
	.byte Fs4
	.byte W12
	.byte Bn3
	.byte W12
	.byte Cs4
	.byte W12
	.byte En4
	.byte W12
	.byte An4
	.byte W12
	.byte En4
	.byte W12
	.byte Gn4
	.byte W12
	.byte Dn4
	.byte W12
	.byte En4
	.byte W12
	.byte An3
	.byte W12
	.byte Bn3
	.byte W12
	.byte Dn4
	.byte W12
	.byte Gn4
	.byte W12
	.byte An4
	.byte W12
	.byte Gn4
	.byte W12
	.byte Dn4
	.byte W12
	.byte En4
	.byte W12
	.byte An3
	.byte W12
	.byte Bn3
	.byte W12
	.byte Dn4
	.byte W12
	.byte Gn4
	.byte W12
	.byte Dn4
	.byte W12
	.byte GOTO
	 .4byte song_unk_684_0_000
	.byte FINE
song_unk_684_1: @ 0x08351A1C
	.byte KEYSH, 0x00
song_unk_684_1_001: @ 0x08351A1E
	.byte VOICE, 0x25
	.byte VOL, 0x64
	.byte W06
	.byte N12, An4, v020
	.byte W12
	.byte En4
	.byte W12
	.byte Fs4
	.byte W12
	.byte Bn3
	.byte W12
	.byte Cs4
	.byte W12
	.byte En4
	.byte W12
	.byte An4
	.byte W12
	.byte Bn4
	.byte W06
	.byte W06
	.byte An4
	.byte W12
	.byte En4
	.byte W12
	.byte Fs4
	.byte W12
	.byte Bn3
	.byte W12
	.byte Cs4
	.byte W12
	.byte En4
	.byte W12
	.byte An4
	.byte W12
	.byte En4
	.byte W06
	.byte W06
	.byte Gn4
	.byte W12
	.byte Dn4
	.byte W12
	.byte En4
	.byte W12
	.byte An3
	.byte W12
	.byte Bn3
	.byte W12
	.byte Dn4
	.byte W12
	.byte Gn4
	.byte W12
	.byte An4
	.byte W06
	.byte W06
	.byte Gn4
	.byte W12
	.byte Dn4
	.byte W12
	.byte En4
	.byte W12
	.byte An3
	.byte W12
	.byte Bn3
	.byte W12
	.byte Dn4
	.byte W12
	.byte Gn4
	.byte W12
	.byte Dn4
	.byte W06
	.byte GOTO
	 .4byte song_unk_684_1_001
	.byte W06
	.byte FINE
song_unk_684_2: @ 0x08351A6F
	.byte KEYSH, 0x00
song_unk_684_2_002: @ 0x08351A71
	.byte VOICE, 0x78
	.byte VOL, 0x64
	.byte TIE, An0, v072
	.byte N32, En2
	.byte W36
	.byte N11, Dn2
	.byte W12
	.byte N92, Cs2
	.byte W48
	.byte W48
	.byte N23, An1
	.byte W24
	.byte En2
	.byte W24
	.byte EOT, An0
	.byte TIE, Gn0
	.byte N23, En2
	.byte W24
	.byte N11, Dn2
	.byte W12
	.byte Cs2
	.byte W12
	.byte N68, Dn2
	.byte W48
	.byte W24
	.byte N23, Bn1
	.byte W24
	.byte Gn2
	.byte W24
	.byte N11, Fs2
	.byte W12
	.byte N12, Dn2
	.byte W12
	.byte EOT, Gn0
	.byte GOTO
	 .4byte song_unk_684_2_002
	.byte FINE
	.align 2, 0
	.global song_unk_684
song_unk_684: @ 0x08351AAC (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_684_0
	.4byte song_unk_684_1
	.4byte song_unk_684_2
	.size song_unk_684,.-song_unk_684
