	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_169_0: @ 0x0834BE04
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2F
	.byte VOL, 0x7F
	.byte N44, Cn3, v092
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_169
song_unk_169: @ 0x0834BE14 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_169_0

