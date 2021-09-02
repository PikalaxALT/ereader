	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_386_0: @ 0x0834FC1C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x63
	.byte VOL, 0x7F
	.byte TIE, Cn3, v032
	.byte W24
song_unk_386_0_000: @ 0x0834FC28
	.byte W72
	.byte W24
	.byte GOTO
	 .4byte song_unk_386_0_000
	.byte W24
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_386
song_unk_386: @ 0x0834FC34 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_386_0

