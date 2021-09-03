	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_466_0: @ 0x08350244
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N01, Cs5, v088
	.byte W01
	.byte Gn5, v056
	.byte W02
	.byte FINE
song_unk_466_1: @ 0x08350254
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N01, As3, v088
	.byte FINE
	.align 2, 0
	.global song_unk_466
song_unk_466: @ 0x08350260 (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_466_0
	.4byte song_unk_466_1
	.size song_unk_466,.-song_unk_466
