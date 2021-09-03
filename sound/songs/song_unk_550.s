	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_550_0: @ 0x08350BB8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x56
	.byte VOL, 0x7F
	.byte N18, Gn3, v112
	.byte W18
	.byte FINE
song_unk_550_1: @ 0x08350BC5
	.byte KEYSH, 0x00
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte N01, Gn1, v092
	.byte W01
	.byte Gs1
	.byte W02
	.byte An1
	.byte W01
	.byte As1
	.byte W02
	.byte Bn1
	.byte N01, Cn2, v072
	.byte W01
	.byte Cs2
	.byte W01
	.byte Dn2
	.byte W01
	.byte Ds2
	.byte N01, En2
	.byte W01
	.byte Fn2, v060
	.byte W01
	.byte Fs2
	.byte W01
	.byte Gn2
	.byte N01, Gs2
	.byte W01
	.byte An2
	.byte W01
	.byte As2, v040
	.byte W01
	.byte Bn2
	.byte N01, Cn3
	.byte W01
	.byte Cs3
	.byte W01
	.byte Dn3
	.byte W01
	.byte Ds3, v032
	.byte N01, En3
	.byte W01
	.byte Fn3
	.byte W01
	.byte Fs3
	.byte W01
	.byte Gn3
	.byte N01, Gs3, v020
	.byte W01
	.byte An3
	.byte W01
	.byte As3
	.byte W01
	.byte Bn3
	.byte N01, Cn4
	.byte W01
	.byte Cs4, v012
	.byte W01
	.byte Dn4
	.byte W01
	.byte Ds4
	.byte FINE
	.align 2, 0
	.global song_unk_550
song_unk_550: @ 0x08350C18 (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_550_0
	.4byte song_unk_550_1
	.size song_unk_550,.-song_unk_550
