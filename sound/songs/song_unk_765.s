	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_765_0: @ 0x08354C74
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x02
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W48
	.byte EOT
	.byte FINE
song_unk_765_1: @ 0x08354C83
	.byte KEYSH, 0x00
	.byte VOICE, 0x02
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W48
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_765
song_unk_765: @ 0x08354C90 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_765_0
	.4byte song_unk_765_1

