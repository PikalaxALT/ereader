	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_164_0: @ 0x0834BAAC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2C
	.byte VOL, 0x7F
	.byte TIE, Bn2, v060
	.byte W12
song_unk_164_0_000: @ 0x0834BAB8
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_164_0_000
	.byte W12
	.byte EOT, Bn2
	.byte FINE
	.align 2, 0
	.global song_unk_164
song_unk_164: @ 0x0834BAC4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_164_0
	.size song_unk_164,.-song_unk_164
