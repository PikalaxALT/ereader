	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_755_0: @ 0x083AB200
	.byte VOL, 0x5F
	.byte KEYSH, 0x00
	.byte TEMPO, 0x5A
	.byte VOICE, 0x5E
	.byte N04, Cn4, v127
	.byte W04
	.byte Cn4, v096
	.byte W04
	.byte Cn4, v064
	.byte W04
song_unk_755_0_000: @ 0x083AB212
	.byte N04, Cn4, v032
	.byte W04
	.byte N04
	.byte W04
	.byte N04
	.byte W04
	.byte GOTO
	 .4byte song_unk_755_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_755
song_unk_755: @ 0x083AB220 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_755_0
	.size song_unk_755,.-song_unk_755
