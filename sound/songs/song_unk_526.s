	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_526_0: @ 0x083509B8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x69
	.byte VOL, 0x7F
	.byte N06, Cn3, v100
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_526
song_unk_526: @ 0x083509C8 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_526_0
	.size song_unk_526,.-song_unk_526
