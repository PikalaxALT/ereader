	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_535_0: @ 0x08350A8C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x00
	.byte VOL, 0x7F
	.byte N03, Cs6, v060
	.byte W03
	.byte Cs5
	.byte W03
	.byte Cs6
	.byte W03
	.byte Cs5
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_535
song_unk_535: @ 0x08350AA0 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_535_0
	.size song_unk_535,.-song_unk_535
