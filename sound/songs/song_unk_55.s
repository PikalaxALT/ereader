	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_55_0: @ 0x08348250
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x72
	.byte VOL, 0x7F
	.byte TIE, Cn3, v072
	.byte W12
song_unk_55_0_000: @ 0x0834825C
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_55_0_000
	.byte W12
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_55
song_unk_55: @ 0x08348268 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_55_0
	.size song_unk_55,.-song_unk_55
