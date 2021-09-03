	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_25_0: @ 0x08347978
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N01, An5, v080
	.byte W01
	.byte FINE
song_unk_25_1: @ 0x08347985
	.byte KEYSH, 0x00
	.byte VOICE, 0x43
	.byte VOL, 0x7F
	.byte N01, Cs6, v080
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_25
song_unk_25: @ 0x08347990 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_25_0
	.4byte song_unk_25_1
	.size song_unk_25,.-song_unk_25
