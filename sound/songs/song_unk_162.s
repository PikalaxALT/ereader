	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_162_0: @ 0x0834BA64
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2A
	.byte VOL, 0x7F
	.byte TIE, An2, v100
	.byte W12
song_unk_162_0_000: @ 0x0834BA70
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_162_0_000
	.byte W12
	.byte EOT, An2
	.byte FINE
	.align 2, 0
	.global song_unk_162
song_unk_162: @ 0x0834BA7C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_162_0

