	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_258_0: @ 0x0834E430
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x53
	.byte VOL, 0x7F
	.byte TIE, Bn2, v080
	.byte W96
	.byte W24
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_258
song_unk_258: @ 0x0834E440 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_258_0

