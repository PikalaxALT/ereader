	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_536_0: @ 0x08350AAC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N01, Dn3, v072
	.byte W02
	.byte Gn3
	.byte W02
	.byte N02, Cn4
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_536
song_unk_536: @ 0x08350AC0 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_536_0

