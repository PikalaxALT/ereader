	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_92_0: @ 0x083492F0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x59
	.byte VOL, 0x7F
	.byte TIE, Fn2, v112
	.byte W06
song_unk_92_0_000: @ 0x083492FC
	.byte W90
	.byte W06
	.byte GOTO
	 .4byte song_unk_92_0_000
	.byte W18
	.byte EOT, Fn2
	.byte FINE
	.align 2, 0
	.global song_unk_92
song_unk_92: @ 0x08349308 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_92_0

