	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_11_0: @ 0x08346828
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N01, Gn4, v092
	.byte W01
	.byte FINE
song_unk_11_1: @ 0x08346835
	.byte KEYSH, 0x00
	.byte VOICE, 0x04
	.byte VOL, 0x7F
	.byte N48, Gn5, v060
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_11
song_unk_11: @ 0x08346840 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_11_0
	.4byte song_unk_11_1
	.size song_unk_11,.-song_unk_11
