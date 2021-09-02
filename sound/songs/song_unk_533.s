	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_533_0: @ 0x08350A50
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x00
	.byte VOL, 0x7F
	.byte N00, Gs4, v072
	.byte W01
	.byte N02, Gn3
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_533
song_unk_533: @ 0x08350A60 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_533_0

