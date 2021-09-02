	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_518_0: @ 0x083508B4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte TIE, Cn3, v060
	.byte W96
	.byte W60
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_518
song_unk_518: @ 0x083508C4 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_518_0

