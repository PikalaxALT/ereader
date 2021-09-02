	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_140_0: @ 0x0834AF44
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7B
	.byte VOL, 0x7F
	.byte N05, Cs2, v052
	.byte N05, Fs2
	.byte N05, Bn2, v060
	.byte W06
	.byte Fs2, v052
	.byte N05, Bn2
	.byte N05, En3, v060
	.byte W06
	.byte Fn2, v052
	.byte N05, As2
	.byte N05, Ds3, v060
	.byte W06
	.byte N19, An2, v052
	.byte N19, Dn3
	.byte N19, Gn3, v060
	.byte W20
	.byte FINE
song_unk_140_1: @ 0x0834AF6F
	.byte KEYSH, 0x00
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte PAN, 0x7F
	.byte N01, Bn3, v064
	.byte W03
	.byte En4
	.byte W04
	.byte An4, v080
	.byte W02
	.byte Dn5
	.byte W04
	.byte Gn5
	.byte W03
	.byte N01
	.byte W05
	.byte Gn5, v064
	.byte W04
	.byte N01
	.byte W04
	.byte Gn5, v048
	.byte W04
	.byte Gn5, v032
	.byte W02
	.byte FINE
song_unk_140_2: @ 0x0834AF92
	.byte KEYSH, 0x00
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte PAN, 0x00
	.byte N01, Fs4, v080
	.byte W04
	.byte Bn4
	.byte W03
	.byte En5
	.byte W03
	.byte An5
	.byte W04
	.byte Dn6, v064
	.byte W03
	.byte N01
	.byte W04
	.byte N01
	.byte W05
	.byte N01
	.byte W04
	.byte Dn6, v048
	.byte W03
	.byte Dn6, v032
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_140
song_unk_140: @ 0x0834AFB4 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_140_0
	.4byte song_unk_140_1
	.4byte song_unk_140_2

