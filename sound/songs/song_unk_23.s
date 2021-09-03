	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_23_0: @ 0x08347940
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N01, Bn4, v080
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_23
song_unk_23: @ 0x08347950 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_23_0
	.size song_unk_23,.-song_unk_23
