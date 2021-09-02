	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_48_0: @ 0x08348010
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N04, An1, v096
	.byte W05
	.byte N00, Bn1
	.byte W01
	.byte Cn2
	.byte N00, Cs2
	.byte W01
	.byte Ds2
	.byte W01
	.byte TIE, En2
	.byte W16
song_unk_48_0_000: @ 0x08348028
	.byte W72
	.byte W24
	.byte GOTO
	 .4byte song_unk_48_0_000
	.byte W24
	.byte W03
	.byte EOT, En2
	.byte FINE
	.align 2, 0
	.global song_unk_48
song_unk_48: @ 0x08348034 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_48_0

