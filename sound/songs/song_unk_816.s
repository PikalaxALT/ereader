	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_816_0: @ 0x08355164
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x24
	.byte VOL, 0x7F
	.byte N48, Cn4, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_816
song_unk_816: @ 0x08355174 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_816_0
	.size song_unk_816,.-song_unk_816
