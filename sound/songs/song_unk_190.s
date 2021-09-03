	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_190_0: @ 0x0834C58C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x46
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N06, En4, v052
	.byte W06
	.byte Fn4
	.byte W06
	.byte N42, En4
	.byte W84
song_unk_190_0_000: @ 0x0834C59D
	.byte TEMPO, 0x28
	.byte VOICE, 0x04
	.byte VOL, 0x7F
	.byte N12, Cn4, v052
	.byte W12
	.byte En3
	.byte W12
	.byte Cn4
	.byte W12
	.byte En3
	.byte W12
	.byte Cn4
	.byte W12
	.byte En3
	.byte W12
	.byte Cn4
	.byte W12
	.byte En3
	.byte W12
	.byte Bn3
	.byte W12
	.byte En3
	.byte W12
	.byte Bn3
	.byte W12
	.byte En3
	.byte W12
	.byte Bn3
	.byte W12
	.byte En3
	.byte W12
	.byte Bn3
	.byte W12
	.byte En3
	.byte W12
	.byte As3
	.byte W12
	.byte Dn3
	.byte W12
	.byte As3
	.byte W12
	.byte Dn3
	.byte W12
	.byte As3
	.byte W12
	.byte Dn3
	.byte W12
	.byte As3
	.byte W12
	.byte Dn3
	.byte W12
	.byte An3
	.byte W12
	.byte Dn3
	.byte W12
	.byte An3
	.byte W12
	.byte Dn3
	.byte W12
	.byte An3
	.byte W12
	.byte Dn3
	.byte W12
	.byte An3
	.byte W12
	.byte Dn3
	.byte W12
	.byte An3
	.byte W12
	.byte Cn3
	.byte W12
	.byte An3
	.byte W12
	.byte Cn3
	.byte W12
	.byte Bn3
	.byte W12
	.byte Cn3
	.byte W12
	.byte An3
	.byte W12
	.byte Cn3
	.byte W12
	.byte An3
	.byte W12
	.byte Bn2
	.byte W12
	.byte Gs3
	.byte W12
	.byte Bn2
	.byte W12
	.byte An3
	.byte W12
	.byte Dn3
	.byte W12
	.byte Bn3
	.byte W12
	.byte Dn3
	.byte W12
	.byte GOTO
	 .4byte song_unk_190_0_000
	.byte FINE
song_unk_190_1: @ 0x0834C60B
	.byte KEYSH, 0x00
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N06, En2, v052
	.byte W06
	.byte N06
	.byte W06
	.byte N42
	.byte W84
song_unk_190_1_001: @ 0x0834C619
	.byte VOICE, 0x23
	.byte VOL, 0x7F
	.byte N12, An2, v052
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte Gs2
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte Gn2
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte Fs2
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte Fn2
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte En2
	.byte W24
	.byte N12
	.byte W24
	.byte Fs2
	.byte W24
	.byte Gs2
	.byte W24
	.byte GOTO
	 .4byte song_unk_190_1_001
	.byte FINE
	.align 2, 0
	.global song_unk_190
song_unk_190: @ 0x0834C658 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_190_0
	.4byte song_unk_190_1
	.size song_unk_190,.-song_unk_190
