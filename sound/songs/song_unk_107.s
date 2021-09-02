	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_107_0: @ 0x08349C54
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7B
	.byte MOD, 0x00
	.byte VOL, 0x7F
	.byte N04, Cn3, v072
	.byte W06
	.byte N23
	.byte W24
	.byte FINE
song_unk_107_1: @ 0x08349C65
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N04, Cn2, v056
	.byte W06
	.byte N23
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_107
song_unk_107: @ 0x08349C74 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_107_0
	.4byte song_unk_107_1

