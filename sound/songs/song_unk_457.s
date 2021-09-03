	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_457_0: @ 0x08350184
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N03, Bn2, v080
	.byte W06
	.byte TIE
	.byte W18
song_unk_457_0_000: @ 0x08350192
	.byte W72
	.byte GOTO
	 .4byte song_unk_457_0_000
	.byte W24
	.byte EOT, Bn2
	.byte FINE
	.align 2, 0
	.global song_unk_457
song_unk_457: @ 0x0835019C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_457_0
	.size song_unk_457,.-song_unk_457
