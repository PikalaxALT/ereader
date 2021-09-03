	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_772_0: @ 0x08354DB0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x09
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W96
	.byte W48
	.byte EOT
	.byte FINE
song_unk_772_1: @ 0x08354DC0
	.byte KEYSH, 0x00
	.byte VOICE, 0x09
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W96
	.byte W48
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_772
song_unk_772: @ 0x08354DD0 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_772_0
	.4byte song_unk_772_1
	.size song_unk_772,.-song_unk_772
