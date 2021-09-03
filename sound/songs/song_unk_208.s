	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_208_0: @ 0x0834C9C0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N06, Cn3, v072
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_208
song_unk_208: @ 0x0834C9D0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_208_0
	.size song_unk_208,.-song_unk_208
