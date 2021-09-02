	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_428_0: @ 0x0834FEC0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N00, Cn5, v072
	.byte W01
	.byte En5
	.byte W02
	.byte Gs5, v056
	.byte W01
	.byte Cn6
	.byte W02
	.byte En6, v040
	.byte W01
	.byte Gs6
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_428
song_unk_428: @ 0x0834FEDC (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_428_0

