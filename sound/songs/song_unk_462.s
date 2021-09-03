	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_462_0: @ 0x083501E0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x76
	.byte VOL, 0x7F
	.byte N18, Cn3, v088
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_462
song_unk_462: @ 0x083501F0 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_462_0
	.size song_unk_462,.-song_unk_462
