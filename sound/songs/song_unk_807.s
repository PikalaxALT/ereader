	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_807_0: @ 0x083B53EC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x78
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W18
	.byte EOT
	.byte FINE
song_unk_807_1: @ 0x083B53FB
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W18
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_807
song_unk_807: @ 0x083B5408 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_807_0
	.4byte song_unk_807_1

