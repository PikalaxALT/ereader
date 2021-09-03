	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_39_0: @ 0x08347EF4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N01, Dn5, v112
	.byte N01, Gn5
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_39
song_unk_39: @ 0x08347F04 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_39_0
	.size song_unk_39,.-song_unk_39
