	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_682_0: @ 0x08351980
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x70
	.byte VOL, 0x64
	.byte BEND, 0x1E
	.byte N44, Fn3, v052
	.byte W01
	.byte BEND, 0x32
	.byte W02
	.byte 0x46
	.byte W01
	.byte 0x5A
	.byte W02
	.byte 0x64
	.byte W01
	.byte 0x7F
	.byte W24
	.byte W03
	.byte 0x78
	.byte W04
	.byte 0x6E
	.byte W04
	.byte 0x5F
	.byte W04
	.byte 0x46
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_682
song_unk_682: @ 0x083519A4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_682_0

