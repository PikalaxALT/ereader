	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_171_0: @ 0x0834BE44
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N06, En2, v092
	.byte W06
	.byte FINE
song_unk_171_1: @ 0x0834BE51
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte W06
	.byte N03, Gn2, v060
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_171
song_unk_171: @ 0x0834BE60 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_171_0
	.4byte song_unk_171_1
	.size song_unk_171,.-song_unk_171
