	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_196_0: @ 0x0834C824
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N01, Gs4, v076
	.byte W01
	.byte Dn5
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_196
song_unk_196: @ 0x0834C834 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_196_0
	.size song_unk_196,.-song_unk_196
