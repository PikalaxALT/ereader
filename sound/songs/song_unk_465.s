	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_465_0: @ 0x08350218
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N00, Gs5, v088
	.byte W01
	.byte Dn6, v056
	.byte W02
	.byte FINE
song_unk_465_1: @ 0x08350228
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N00, Cn4, v088
	.byte FINE
	.align 2, 0
	.global song_unk_465
song_unk_465: @ 0x08350234 (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_465_0
	.4byte song_unk_465_1

