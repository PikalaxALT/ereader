	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_245_0: @ 0x0834DC04
	.byte KEYSH, 0x00
	.byte TEMPO, 0x28
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N06, Fs4, v060
	.byte W06
	.byte Gs4
	.byte W06
	.byte Fs4
	.byte W06
	.byte En4
	.byte W06
	.byte Ds4
	.byte W06
	.byte Cs4
	.byte W06
	.byte TEMPO, 0x20
	.byte Bn3
	.byte W12
	.byte TEMPO, 0x19
	.byte As3
	.byte W12
	.byte TEMPO, 0x10
	.byte An3
	.byte W12
song_unk_245_0_001: @ 0x0834DC26
	.byte TEMPO, 0x28
	.byte N06, Gs3, v060
	.byte W06
	.byte Gn3
	.byte W06
	.byte Gs3
	.byte W06
	.byte An3
	.byte W06
	.byte Bn3
	.byte W06
	.byte Cs4
	.byte W06
	.byte Bn3
	.byte W12
	.byte En4
	.byte W12
	.byte Ds4
	.byte W12
song_unk_245_0_000: @ 0x0834DC3C
	.byte N02, En4, v060
	.byte W02
	.byte N04, Ds4
	.byte W04
	.byte N06, Cs4
	.byte W06
	.byte N06
	.byte W06
	.byte Cn4
	.byte W06
	.byte Cs4
	.byte W06
	.byte Ds4
	.byte W06
	.byte N24, Cs4
	.byte W36
	.byte PEND
	.byte N06, Ds4
	.byte W06
	.byte En4
	.byte W06
	.byte Fs4
	.byte W06
	.byte En4
	.byte W06
	.byte Ds4
	.byte W06
	.byte En4
	.byte W06
	.byte Cs4
	.byte W06
	.byte Ds4
	.byte W06
	.byte Bn3
	.byte W06
	.byte Cs4
	.byte W06
	.byte An3
	.byte W06
	.byte Bn3
	.byte W06
	.byte Gs3
	.byte W06
	.byte An3
	.byte W06
	.byte Bn3
	.byte W06
	.byte An3
	.byte W06
	.byte Gs3
	.byte W06
	.byte Gn3
	.byte W06
	.byte Gs3
	.byte W12
	.byte N12, En3
	.byte W24
	.byte N06, Gs3
	.byte W06
	.byte Gn3
	.byte W06
	.byte Gs3
	.byte W06
	.byte An3
	.byte W06
	.byte Bn3
	.byte W06
	.byte Cs4
	.byte W06
	.byte Bn3
	.byte W12
	.byte En4
	.byte W12
	.byte Ds4
	.byte W12
	.byte PATT
	 .4byte song_unk_245_0_000
	.byte N06, Bn3, v060
	.byte W06
	.byte An4
	.byte W06
	.byte N06
	.byte W06
	.byte Gs4
	.byte W06
	.byte N06
	.byte W06
	.byte Fs4
	.byte W06
	.byte En4
	.byte W06
	.byte Ds4
	.byte W06
	.byte Cs4
	.byte W06
	.byte Bn3
	.byte W06
	.byte Cs4
	.byte W06
	.byte Ds4
	.byte W06
	.byte En4
	.byte W12
	.byte Bn3
	.byte W12
	.byte Gs3
	.byte W12
	.byte N24, En3
	.byte W36
	.byte GOTO
	 .4byte song_unk_245_0_001
	.byte FINE
song_unk_245_1: @ 0x0834DCBD
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N06, Bn2, v060
	.byte W12
	.byte Ds3
	.byte W12
	.byte Fs3
	.byte W12
	.byte An3
	.byte W36
song_unk_245_1_002: @ 0x0834DCCD
	.byte N06, En2, v060
	.byte W12
	.byte Bn2
	.byte W12
	.byte N06
	.byte W12
	.byte Gs2
	.byte W12
	.byte Bn2
	.byte W12
	.byte N06
	.byte W12
	.byte PEND
song_unk_245_1_003: @ 0x0834DCDC
	.byte N06, An2, v060
	.byte W12
	.byte En3
	.byte W12
	.byte N06
	.byte W12
	.byte Cs3
	.byte W12
	.byte En3
	.byte W12
	.byte N06
	.byte W12
	.byte PEND
song_unk_245_1_004: @ 0x0834DCEB
	.byte N06, Bn2, v060
	.byte W12
	.byte Fs3
	.byte W12
	.byte N06
	.byte W12
	.byte Bn2
	.byte W12
	.byte Cs3
	.byte W12
	.byte Ds3
	.byte W12
	.byte PEND
	.byte En3
	.byte W12
	.byte Bn2
	.byte W12
	.byte Gs2
	.byte W12
	.byte En2
	.byte W12
	.byte Bn2
	.byte W12
	.byte N06
	.byte W12
	.byte PATT
	 .4byte song_unk_245_1_002
	.byte PATT
	 .4byte song_unk_245_1_003
	.byte PATT
	 .4byte song_unk_245_1_004
	.byte N06, En3, v060
	.byte W12
	.byte Bn2
	.byte W12
	.byte Gs2
	.byte W12
	.byte En2
	.byte W36
	.byte GOTO
	 .4byte song_unk_245_1_002
	.byte FINE
	.align 2, 0
	.global song_unk_245
song_unk_245: @ 0x0834DD28 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_245_0
	.4byte song_unk_245_1
	.size song_unk_245,.-song_unk_245
