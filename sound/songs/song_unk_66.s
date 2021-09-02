	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_66_0: @ 0x08348550
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N00, Cs5, v088
	.byte W01
	.byte Gn5, v056
	.byte W02
	.byte FINE
song_unk_66_1: @ 0x08348560
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N00, As3, v088
	.byte FINE
	.align 2, 0
	.global song_unk_66
song_unk_66: @ 0x0834856C (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_66_0
	.4byte song_unk_66_1

