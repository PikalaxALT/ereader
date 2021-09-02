	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_126_0: @ 0x0834A118
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x69
	.byte VOL, 0x7F
	.byte N05, Cn3, v100
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_126
song_unk_126: @ 0x0834A128 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_126_0

