	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_44_0: @ 0x08347F90
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6C
	.byte VOL, 0x7F
	.byte TIE, Cn3, v080
	.byte W06
song_unk_44_0_000: @ 0x08347F9C
	.byte W90
	.byte GOTO
	 .4byte song_unk_44_0_000
	.byte W24
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_44
song_unk_44: @ 0x08347FA8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_44_0
	.size song_unk_44,.-song_unk_44
