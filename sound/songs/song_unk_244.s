	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_244_0: @ 0x0834DBDC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N02, Gn4, v060
	.byte W03
	.byte Dn5
	.byte W03
	.byte Bn4
	.byte W03
	.byte Fs5
	.byte W03
	.byte Dn5
	.byte W03
	.byte An5
	.byte W03
	.byte Fn5
	.byte W03
	.byte Cn6
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_244
song_unk_244: @ 0x0834DBF8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_244_0
