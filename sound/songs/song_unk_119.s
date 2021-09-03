	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_119_0: @ 0x08349ECC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte TIE, Cn3, v100
	.byte W18
song_unk_119_0_000: @ 0x08349ED8
	.byte W78
	.byte W18
	.byte GOTO
	 .4byte song_unk_119_0_000
	.byte W06
	.byte EOT, Cn3
	.byte FINE
song_unk_119_1: @ 0x08349EE3
	.byte KEYSH, 0x00
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte W09
	.byte TIE, Cn3, v092
	.byte W09
song_unk_119_1_001: @ 0x08349EEE
	.byte W78
	.byte W18
	.byte GOTO
	 .4byte song_unk_119_1_001
	.byte W15
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_119
song_unk_119: @ 0x08349EFC (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_119_0
	.4byte song_unk_119_1
	.size song_unk_119,.-song_unk_119
