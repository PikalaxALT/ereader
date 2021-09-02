	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_115_0: @ 0x08349E4C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1B
	.byte VOL, 0x7F
	.byte TIE, Dn3, v112
	.byte W12
song_unk_115_0_000: @ 0x08349E58
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_115_0_000
	.byte W12
	.byte EOT, Dn3
	.byte FINE
	.align 2, 0
	.global song_unk_115
song_unk_115: @ 0x08349E64 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_115_0

