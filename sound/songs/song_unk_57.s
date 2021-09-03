	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_57_0: @ 0x08348290
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N03, Bn2, v080
	.byte W06
	.byte TIE
	.byte W18
song_unk_57_0_000: @ 0x0834829E
	.byte W72
	.byte GOTO
	 .4byte song_unk_57_0_000
	.byte W24
	.byte EOT, Bn2
	.byte FINE
	.align 2, 0
	.global song_unk_57
song_unk_57: @ 0x083482A8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_57_0
	.size song_unk_57,.-song_unk_57
