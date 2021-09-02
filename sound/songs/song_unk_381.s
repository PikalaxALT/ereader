	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_381_0: @ 0x0834FB88
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5C
	.byte VOL, 0x7F
	.byte N92, Cn3, v080
	.byte W96
	.byte FINE
	.align 2, 0
	.global song_unk_381
song_unk_381: @ 0x0834FB98 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_381_0

