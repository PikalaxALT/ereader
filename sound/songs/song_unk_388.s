	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_388_0: @ 0x0834FC64
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte TIE, Cn3, v052
	.byte W24
song_unk_388_0_000: @ 0x0834FC70
	.byte W72
	.byte W24
	.byte GOTO
	 .4byte song_unk_388_0_000
	.byte W24
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_388
song_unk_388: @ 0x0834FC7C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_388_0
	.size song_unk_388,.-song_unk_388
