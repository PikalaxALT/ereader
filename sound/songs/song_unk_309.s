	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_309_0: @ 0x0834F36C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte TIE, Cn3, v072
	.byte W96
	.byte W06
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_309
song_unk_309: @ 0x0834F37C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_309_0

