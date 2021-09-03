	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_131_0: @ 0x0834ADEC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6B
	.byte VOL, 0x7F
	.byte TIE, Cn2, v112
	.byte W12
song_unk_131_0_000: @ 0x0834ADF8
	.byte W84
	.byte W84
	.byte GOTO
	 .4byte song_unk_131_0_000
	.byte W12
	.byte EOT, Cn2
	.byte FINE
song_unk_131_1: @ 0x0834AE03
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N12, An1, v056
	.byte W12
song_unk_131_1_001: @ 0x0834AE0D
	.byte N12, An1, v056
	.byte W12
	.byte As1
	.byte W12
	.byte N24, An1
	.byte W24
	.byte As1
	.byte W24
	.byte N12, An1
	.byte W12
	.byte As1
	.byte W12
	.byte N24, An1
	.byte W24
	.byte N12, As1
	.byte W12
	.byte An1
	.byte W12
	.byte N24, As1
	.byte W24
	.byte GOTO
	 .4byte song_unk_131_1_001
	.byte N12, An1, v056
	.byte W12
	.byte FINE
	.align 2, 0
	.global song_unk_131
song_unk_131: @ 0x0834AE34 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_131_0
	.4byte song_unk_131_1
	.size song_unk_131,.-song_unk_131
