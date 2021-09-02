	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_234_0: @ 0x0834D264
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6C
	.byte VOL, 0x7F
	.byte TIE, Cn3, v080
	.byte W96
	.byte W12
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_234
song_unk_234: @ 0x0834D274 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_234_0

