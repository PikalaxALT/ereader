	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_272_0: @ 0x0834E9D4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x12
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte W03
	.byte N06, Gs5, v020
	.byte W06
	.byte An5
	.byte W06
	.byte As5
	.byte W06
	.byte Bn5
	.byte W06
	.byte Cn6
	.byte W06
	.byte Cs6
	.byte W06
	.byte Dn6
	.byte W06
	.byte Ds6
	.byte W06
	.byte En6
	.byte W06
	.byte Fn6
	.byte W06
	.byte Fs6
	.byte W06
	.byte Gn6
	.byte W06
	.byte Gs6
	.byte W06
	.byte An6
	.byte W06
	.byte As6
	.byte W06
	.byte Bn6
	.byte W03
	.byte W03
	.byte Cn7
	.byte W06
	.byte Cs7
	.byte W06
	.byte Dn7
	.byte W06
	.byte Ds7
	.byte W06
	.byte FINE
song_unk_272_1: @ 0x0834EA0B
	.byte KEYSH, 0x00
	.byte VOICE, 0x30
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte N06, En5, v020
	.byte W06
	.byte Fn5
	.byte W06
	.byte Fs5
	.byte W06
	.byte Gn5
	.byte W06
	.byte Gs5
	.byte W06
	.byte An5
	.byte W06
	.byte As5
	.byte W06
	.byte Bn5
	.byte W06
	.byte Cn6
	.byte W06
	.byte Cs6
	.byte W06
	.byte Dn6
	.byte W06
	.byte Ds6
	.byte W06
	.byte En6
	.byte W06
	.byte Fn6
	.byte W06
	.byte Fs6
	.byte W06
	.byte Gn6
	.byte W06
	.byte Gs6
	.byte W06
	.byte An6
	.byte W06
	.byte As6
	.byte W06
	.byte Bn6
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_272
song_unk_272: @ 0x0834EA40 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_272_0
	.4byte song_unk_272_1
	.size song_unk_272,.-song_unk_272
