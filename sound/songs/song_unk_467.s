	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_467_0: @ 0x08350270
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N01, Cs5, v120
	.byte W02
	.byte Bn5
	.byte W02
	.byte Fs5
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_467
song_unk_467: @ 0x08350284 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_467_0

