	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_308_0: @ 0x0834F350
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N92, Cn3, v072
	.byte W96
	.byte FINE
	.align 2, 0
	.global song_unk_308
song_unk_308: @ 0x0834F360 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_308_0

