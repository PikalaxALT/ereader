	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_461_0: @ 0x083501C4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x75
	.byte VOL, 0x7F
	.byte N18, Cn3, v072
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_461
song_unk_461: @ 0x083501D4 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_461_0
	.size song_unk_461,.-song_unk_461
