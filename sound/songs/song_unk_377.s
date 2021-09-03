	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_377_0: @ 0x0834FA0C
	.byte KEYSH, 0x00
song_unk_377_0_000: @ 0x0834FA0E
	.byte TEMPO, 0x32
	.byte VOICE, 0x02
	.byte VOL, 0x7F
	.byte N03, An2, v040
	.byte W06
	.byte Gs2
	.byte W06
	.byte An2
	.byte W06
	.byte Gs2
	.byte W06
	.byte An2
	.byte W60
	.byte Cn3
	.byte W06
	.byte Bn2
	.byte W06
	.byte Gs2
	.byte W24
	.byte Gn3
	.byte W15
	.byte Fs3
	.byte W15
	.byte Ds3
	.byte W15
	.byte Dn3
	.byte W15
	.byte Cn4
	.byte W05
	.byte N03
	.byte W05
	.byte N03
	.byte W02
	.byte W03
	.byte N03
	.byte W24
	.byte W03
	.byte Cs3
	.byte W12
	.byte Dn3
	.byte W06
	.byte Ds3
	.byte W12
	.byte Bn2
	.byte W36
	.byte An3
	.byte W12
	.byte En4
	.byte W12
	.byte Fs4
	.byte W24
	.byte As2
	.byte W06
	.byte N03
	.byte W06
	.byte Gs2
	.byte W06
	.byte En2
	.byte W06
	.byte Ds2
	.byte W24
	.byte W06
	.byte Gn3
	.byte W36
	.byte N03
	.byte W24
	.byte Cs3
	.byte W03
	.byte Dn3
	.byte W03
	.byte Bn2
	.byte W03
	.byte Cn3
	.byte W21
	.byte W36
	.byte Cn4
	.byte W06
	.byte Bn3
	.byte W06
	.byte En4
	.byte W12
	.byte N03
	.byte W06
	.byte Fs4
	.byte W24
	.byte Bn3
	.byte W06
	.byte W12
	.byte Cs4
	.byte W30
	.byte An3
	.byte W06
	.byte An2
	.byte W06
	.byte Gs3
	.byte W06
	.byte Gs2
	.byte W36
	.byte Cn3
	.byte W06
	.byte Dn3
	.byte W06
	.byte En3
	.byte W42
	.byte Ds2
	.byte W18
	.byte Gn2
	.byte W18
	.byte Gn3, v044
	.byte W06
	.byte GOTO
	 .4byte song_unk_377_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_377
song_unk_377: @ 0x0834FA88 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_377_0
	.size song_unk_377,.-song_unk_377
