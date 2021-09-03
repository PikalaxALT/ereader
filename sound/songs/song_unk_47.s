	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_47_0: @ 0x08347FEC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6F
	.byte VOL, 0x7F
	.byte TIE, Cn3, v064
	.byte W06
song_unk_47_0_000: @ 0x08347FF8
	.byte W90
	.byte GOTO
	 .4byte song_unk_47_0_000
	.byte W24
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_47
song_unk_47: @ 0x08348004 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_47_0
	.size song_unk_47,.-song_unk_47
