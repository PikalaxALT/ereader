	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_347_0: @ 0x0834F6EC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x45
	.byte VOL, 0x7F
	.byte N44, Cn3, v060
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_347
song_unk_347: @ 0x0834F6FC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_347_0

