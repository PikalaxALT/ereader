	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_629_0: @ 0x08350F48
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N05, An1, v096
	.byte W05
	.byte N01, Bn1
	.byte W01
	.byte Cn2
	.byte N01, Cs2
	.byte W01
	.byte Ds2
	.byte W01
	.byte N19, En2
	.byte W19
	.byte N01, Ds2, v048
	.byte W01
	.byte Dn2
	.byte W01
	.byte Cs2
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_629
song_unk_629: @ 0x08350F6C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_629_0
	.size song_unk_629,.-song_unk_629
