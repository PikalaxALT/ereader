	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_376_0: @ 0x0834F9B4
	.byte KEYSH, 0x00
song_unk_376_0_000: @ 0x0834F9B6
	.byte TEMPO, 0x41
	.byte VOICE, 0x00
	.byte VOL, 0x7F
	.byte N06, Gn4, v040
	.byte W12
	.byte Dn4
	.byte W12
	.byte En4
	.byte W24
	.byte An3
	.byte W48
	.byte W12
	.byte Cn4
	.byte W36
	.byte Bn3
	.byte W12
	.byte An3
	.byte W12
	.byte Gn3
	.byte W24
	.byte W24
	.byte Fs3
	.byte W12
	.byte An3
	.byte W12
	.byte Dn3
	.byte W48
	.byte Cn3
	.byte W12
	.byte Bn2
	.byte W36
	.byte Gn3
	.byte W48
	.byte An3
	.byte W24
	.byte Bn3
	.byte W24
	.byte Cn4
	.byte W12
	.byte Bn3
	.byte W12
	.byte En4
	.byte W24
	.byte W24
	.byte Bn3
	.byte W24
	.byte Cs4
	.byte W12
	.byte Dn4
	.byte W36
	.byte W24
	.byte An3
	.byte W24
	.byte En3
	.byte W48
	.byte Gn2
	.byte W12
	.byte An2
	.byte W36
	.byte Dn3
	.byte W24
	.byte Cn4
	.byte W24
	.byte GOTO
	 .4byte song_unk_376_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_376
song_unk_376: @ 0x0834FA00 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_376_0
	.size song_unk_376,.-song_unk_376
