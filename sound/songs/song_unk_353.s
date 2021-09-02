	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_353_0: @ 0x0834F75C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4B
	.byte VOL, 0x7F
	.byte TIE, Cn3, v127
	.byte W96
	.byte W24
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_353
song_unk_353: @ 0x0834F76C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_353_0

