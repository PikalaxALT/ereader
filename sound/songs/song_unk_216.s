	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_216_0: @ 0x0834CE34
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N04, Gn3, v052
	.byte W04
	.byte An3
	.byte W04
	.byte Dn4
	.byte W04
	.byte FINE
	.align 2, 0
	.global song_unk_216
song_unk_216: @ 0x0834CE48 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_216_0
	.size song_unk_216,.-song_unk_216
