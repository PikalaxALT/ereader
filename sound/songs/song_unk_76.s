	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_76_0: @ 0x083486A0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7B
	.byte VOL, 0x7F
	.byte N06, Gs2, v060
	.byte N06, En3, v080
	.byte W08
	.byte Gs2, v060
	.byte N06, En3, v080
	.byte W08
	.byte Gs2, v060
	.byte N06, En3, v080
	.byte W08
	.byte N18, Gs2, v060
	.byte N18, En3, v080
	.byte W24
	.byte N12, Fs2, v060
	.byte N12, Dn3, v080
	.byte W12
	.byte En2, v060
	.byte N12, Cs3, v080
	.byte W12
	.byte N09, Fs2, v060
	.byte N09, Dn3, v080
	.byte W12
	.byte N06, Bn2, v060
	.byte N06, Dn3, v080
	.byte W06
	.byte An2, v060
	.byte N06, En3, v080
	.byte W06
	.byte N36, Gn2, v060
	.byte N36, Fs3, v080
	.byte W36
	.byte FINE
song_unk_76_1: @ 0x083486EB
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N48, En2, v060
	.byte N48, Bn2, v040
	.byte W48
	.byte Dn2
	.byte N24, An2
	.byte W24
	.byte Gn1, v060
	.byte W24
	.byte N36, Cn2
	.byte N36, Bn2, v040
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_76
song_unk_76: @ 0x08348708 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_76_0
	.4byte song_unk_76_1
	.size song_unk_76,.-song_unk_76
