	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_91_0: @ 0x083492D4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte TIE, Cs2, v092
	.byte W96
	.byte W24
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_91
song_unk_91: @ 0x083492E4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_91_0

