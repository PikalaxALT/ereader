	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_389_0: @ 0x0834FC88
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x6E
	.byte TIE, Cn3, v092
	.byte W96
	.byte W96
	.byte W36
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_389
song_unk_389: @ 0x0834FC98 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_389_0
