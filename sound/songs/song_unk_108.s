	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_108_0: @ 0x08349C84
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7B
	.byte MOD, 0x00
	.byte VOL, 0x7F
	.byte N05, Dn3, v072
	.byte W06
	.byte N24
	.byte W24
	.byte FINE
song_unk_108_1: @ 0x08349C95
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N30, Fs2, v080
	.byte W30
	.byte FINE
song_unk_108_2: @ 0x08349CA0
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N05, Dn2, v056
	.byte W06
	.byte N24
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_108
song_unk_108: @ 0x08349CB0 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_108_0
	.4byte song_unk_108_1
	.4byte song_unk_108_2
	.size song_unk_108,.-song_unk_108
