	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_224_0: @ 0x0834CFDC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N00, Cn2, v100
	.byte W01
	.byte Bn1
	.byte W01
	.byte As1
	.byte W01
	.byte An1
	.byte W01
	.byte Cn3, v092
	.byte W01
	.byte Cs3, v080
	.byte W01
	.byte Dn3, v072
	.byte W01
	.byte Ds3, v060
	.byte W01
	.byte En3
	.byte W01
	.byte Fn3, v052
	.byte W01
	.byte Fs3, v040
	.byte W01
	.byte Gn3
	.byte W01
	.byte Gs3, v032
	.byte W01
	.byte An3
	.byte W01
	.byte As3, v020
	.byte W01
	.byte Bn3
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_224
song_unk_224: @ 0x0834D010 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_224_0

