	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_220_0: @ 0x0834CF4C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x60
	.byte VOL, 0x7F
	.byte N02, Gn5, v040
	.byte W02
	.byte VOL, 0x3C
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_220
song_unk_220: @ 0x0834CF5C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_220_0

