	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_227_0: @ 0x0834D080
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x47
	.byte VOL, 0x7F
	.byte N32, Cn3, v020
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_227
song_unk_227: @ 0x0834D090 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_227_0

