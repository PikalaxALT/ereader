	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_270_0: @ 0x0834E92C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x78
	.byte VOL, 0x12
	.byte TIE, En1, v068
	.byte TIE, Bn1
	.byte TIE, Gs2
	.byte TIE, Ds3
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
	.byte EOT, En1
	.byte Bn1
	.byte Gs2
	.byte Ds3
	.byte FINE
	.align 2, 0
	.global song_unk_270
song_unk_270: @ 0x0834E974 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_270_0

