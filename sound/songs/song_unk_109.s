	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_109_0: @ 0x08349CC4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7B
	.byte MOD, 0x00
	.byte VOL, 0x7F
	.byte N04, En3, v072
	.byte W06
	.byte N23
	.byte W24
	.byte FINE
song_unk_109_1: @ 0x08349CD5
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N28, Gs2, v072
	.byte W30
	.byte FINE
song_unk_109_2: @ 0x08349CE0
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N04, En2, v056
	.byte W06
	.byte N23
	.byte W24
	.byte FINE
song_unk_109_3: @ 0x08349CED
	.byte KEYSH, 0x00
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N02, En4, v032
	.byte W03
	.byte Gs4
	.byte W03
	.byte Bn4
	.byte W03
	.byte En5
	.byte W03
	.byte N40, Gs5
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_109
song_unk_109: @ 0x08349D04 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_109_0
	.4byte song_unk_109_1
	.4byte song_unk_109_2
	.4byte song_unk_109_3

