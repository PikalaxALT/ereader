	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_616_0: @ 0x08350EEC
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
	.global song_unk_616
song_unk_616: @ 0x08350F00 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_616_0
	.size song_unk_616,.-song_unk_616
