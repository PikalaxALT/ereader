	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_221_0: @ 0x0834CF68
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x60
	.byte VOL, 0x7F
	.byte N02, Gn5, v040
	.byte W03
	.byte N02
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_221
song_unk_221: @ 0x0834CF78 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_221_0

