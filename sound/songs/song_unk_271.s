	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_271_0: @ 0x0834E980
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x78
	.byte VOL, 0x12
	.byte TIE, Bn0, v080
	.byte TIE, Fs1
	.byte TIE, Ds2
	.byte TIE, As2
	.byte W02
	.byte VOL, 0x1B
	.byte W04
	.byte 0x24
	.byte W02
	.byte 0x2D
	.byte W04
	.byte 0x3B
	.byte W02
	.byte 0x44
	.byte W04
	.byte 0x51
	.byte W02
	.byte 0x5A
	.byte W04
	.byte 0x63
	.byte W02
	.byte 0x6C
	.byte W04
	.byte 0x76
	.byte W02
	.byte 0x7F
	.byte W52
	.byte 0x78
	.byte W02
	.byte 0x6C
	.byte W04
	.byte 0x62
	.byte W02
	.byte 0x56
	.byte W04
	.byte 0x4D
	.byte W02
	.byte 0x44
	.byte W04
	.byte 0x36
	.byte W02
	.byte 0x2D
	.byte W04
	.byte 0x24
	.byte W02
	.byte 0x1B
	.byte W04
	.byte 0x13
	.byte W02
	.byte 0x0A
	.byte W04
	.byte EOT, Bn0
	.byte Fs1
	.byte Ds2
	.byte As2
	.byte FINE
	.align 2, 0
	.global song_unk_271
song_unk_271: @ 0x0834E9C8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_271_0
	.size song_unk_271,.-song_unk_271
