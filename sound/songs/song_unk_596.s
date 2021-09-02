	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_596_0: @ 0x08350E34
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N00, Gs4, v076
	.byte W01
	.byte Dn5
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_596
song_unk_596: @ 0x08350E44 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_596_0

