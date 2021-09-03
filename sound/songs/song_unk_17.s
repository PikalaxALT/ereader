	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_17_0: @ 0x083475FC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1D
	.byte VOL, 0x7F
	.byte N01, Bn5, v048
	.byte N01, Cn6
	.byte W01
	.byte As5
	.byte W01
	.byte An5
	.byte W01
	.byte Gn5
	.byte N01, Gs5
	.byte W01
	.byte Fs5
	.byte W01
	.byte Fn5
	.byte W01
	.byte Ds5, v064
	.byte N01, En5
	.byte W01
	.byte Dn5
	.byte W01
	.byte Cs5
	.byte W01
	.byte Bn4
	.byte N01, Cn5
	.byte W01
	.byte As4
	.byte W01
	.byte An4
	.byte W01
	.byte Gn4, v080
	.byte N01, Gs4
	.byte W01
	.byte Fs4
	.byte W01
	.byte FINE
song_unk_17_1: @ 0x0834762F
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte W14
	.byte N01, Bn2, v120
	.byte N01, Cn3
	.byte W01
	.byte As2
	.byte W01
	.byte An2
	.byte W01
	.byte Gn2
	.byte N01, Gs2
	.byte W01
	.byte Fs2
	.byte W01
	.byte Fn2
	.byte W01
	.byte Ds2
	.byte N01, En2
	.byte W01
	.byte Dn2
	.byte W01
	.byte Cs2, v112
	.byte W01
	.byte Bn1
	.byte N01, Cn2
	.byte W01
	.byte As1
	.byte W01
	.byte An1
	.byte W01
	.byte Gs1
	.byte N01, Cn3, v096
	.byte W01
	.byte Bn2
	.byte W01
	.byte As2
	.byte W01
	.byte Gs2
	.byte N01, An2
	.byte W01
	.byte Gn2
	.byte W01
	.byte Fs2
	.byte W01
	.byte En2
	.byte N01, Fn2
	.byte W01
	.byte Ds2
	.byte W01
	.byte Dn2
	.byte W01
	.byte Cs2
	.byte N01, Cn3, v080
	.byte W01
	.byte Bn2
	.byte W01
	.byte As2
	.byte W01
	.byte Gs2
	.byte N01, An2
	.byte W01
	.byte Gn2
	.byte W01
	.byte Fs2
	.byte W01
	.byte Fn2
	.byte N01, Cn3, v064
	.byte W01
	.byte Bn2
	.byte W01
	.byte As2
	.byte W01
	.byte Gs2
	.byte N01, An2
	.byte W02
	.byte Bn2, v048
	.byte N01, Cn3
	.byte W01
	.byte As2
	.byte W01
	.byte An2
	.byte W01
	.byte Bn2, v032
	.byte N01, Cn3
	.byte W01
	.byte As2
	.byte W01
	.byte An2
	.byte W01
	.byte Gn2
	.byte N01, Gs2
	.byte W01
	.byte Fs2
	.byte W01
	.byte Fn2
	.byte W01
	.byte Ds2
	.byte N01, En2
	.byte W01
	.byte Dn2
	.byte W01
	.byte Cs2
	.byte W01
	.byte Bn1
	.byte N01, Cn2
	.byte W01
	.byte As1
	.byte W01
	.byte An1
	.byte W01
	.byte Gn1
	.byte N01, Gs1
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_17
song_unk_17: @ 0x083476C0 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_17_0
	.4byte song_unk_17_1
	.size song_unk_17,.-song_unk_17
