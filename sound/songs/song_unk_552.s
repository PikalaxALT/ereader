	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_552_0: @ 0x08350C48
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte N32, Ds5, v060
	.byte W36
	.byte FINE
song_unk_552_1: @ 0x08350C55
	.byte KEYSH, 0x00
	.byte VOICE, 0x04
	.byte VOL, 0x7F
	.byte W04
	.byte N03, As4, v052
	.byte W05
	.byte Gs4, v048
	.byte W04
	.byte N32, Gn4, v040
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_552
song_unk_552: @ 0x08350C68 (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_552_0
	.4byte song_unk_552_1

