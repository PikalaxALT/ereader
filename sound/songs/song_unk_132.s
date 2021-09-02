	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_132_0: @ 0x0834AE44
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x24
	.byte VOL, 0x7F
	.byte N23, An3, v120
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_132
song_unk_132: @ 0x0834AE54 (song header)
	.byte 1, 0, 20, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_132_0

