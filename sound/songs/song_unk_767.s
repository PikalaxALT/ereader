	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_767_0: @ 0x08354CCC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x04
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W96
	.byte W72
	.byte EOT
	.byte FINE
song_unk_767_1: @ 0x08354CDC
	.byte KEYSH, 0x00
	.byte VOICE, 0x04
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W96
	.byte W72
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_767
song_unk_767: @ 0x08354CEC (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_767_0
	.4byte song_unk_767_1
	.size song_unk_767,.-song_unk_767
