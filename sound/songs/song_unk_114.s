	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_114_0: @ 0x08349E28
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1A
	.byte VOL, 0x7F
	.byte TIE, Fn2, v127
	.byte W12
song_unk_114_0_000: @ 0x08349E34
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_114_0_000
	.byte W12
	.byte EOT, Fn2
	.byte FINE
	.align 2, 0
	.global song_unk_114
song_unk_114: @ 0x08349E40 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_114_0
	.size song_unk_114,.-song_unk_114
