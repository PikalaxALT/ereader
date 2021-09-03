	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_553_0: @ 0x08350C78
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N03, Gs4, v052
	.byte W02
	.byte Cs5
	.byte W04
	.byte N36, En5
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_553
song_unk_553: @ 0x08350C8C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_553_0
	.size song_unk_553,.-song_unk_553
