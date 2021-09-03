	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_764_0: @ 0x08354C44
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W96
	.byte W48
	.byte EOT
	.byte FINE
song_unk_764_1: @ 0x08354C54
	.byte KEYSH, 0x00
	.byte VOICE, 0x01
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W96
	.byte W48
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_764
song_unk_764: @ 0x08354C64 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_764_0
	.4byte song_unk_764_1
	.size song_unk_764,.-song_unk_764
