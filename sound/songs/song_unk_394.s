	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_394_0: @ 0x0834FD24
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte TIE, Cn3, v092
	.byte W24
song_unk_394_0_000: @ 0x0834FD30
	.byte W72
	.byte W24
	.byte GOTO
	 .4byte song_unk_394_0_000
	.byte W24
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_394
song_unk_394: @ 0x0834FD3C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_394_0
	.size song_unk_394,.-song_unk_394
