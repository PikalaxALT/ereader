	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_276_0: @ 0x0834F054
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x59
	.byte VOL, 0x7F
	.byte N05, Dn3, v092
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_276
song_unk_276: @ 0x0834F064 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_276_0

