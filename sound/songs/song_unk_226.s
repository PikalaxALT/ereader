	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_226_0: @ 0x0834D064
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x48
	.byte VOL, 0x7F
	.byte TIE, Cn3, v072
	.byte W96
	.byte W60
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_226
song_unk_226: @ 0x0834D074 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_226_0
