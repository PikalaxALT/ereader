	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_543_0: @ 0x08350B34
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x27
	.byte VOL, 0x7F
	.byte N02, Cn3, v040
	.byte W03
	.byte N05, Gn3
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_543
song_unk_543: @ 0x08350B44 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_543_0

