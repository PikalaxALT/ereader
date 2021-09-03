	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_31_0: @ 0x08347D40
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte N01, Gn4, v092
	.byte N01, An4
	.byte W01
	.byte Bn4, v076
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_31
song_unk_31: @ 0x08347D54 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_31_0
	.size song_unk_31,.-song_unk_31
