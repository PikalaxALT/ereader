	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_586_0: @ 0x08350E18
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3B
	.byte VOL, 0x7F
	.byte N18, Dn3, v052
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_586
song_unk_586: @ 0x08350E28 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_586_0
	.size song_unk_586,.-song_unk_586
