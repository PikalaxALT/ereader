	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_36_0: @ 0x08347EA0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x62
	.byte VOL, 0x7F
	.byte N48, Dn3, v072
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_36
song_unk_36: @ 0x08347EB0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_36_0
	.size song_unk_36,.-song_unk_36
