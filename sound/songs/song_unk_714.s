	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_714_0: @ 0x083524D0
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte TEMPO, 0x64
	.byte VOICE, 0x08
	.byte W16
	.byte N06, Gn3, v127
	.byte W08
	.byte N14, Fs3
	.byte W16
	.byte N06, Gn3
	.byte W08
	.byte N14, Gs3
	.byte W16
	.byte N06, An3
	.byte W08
	.byte N14, As3
	.byte W16
	.byte N06, Bn3
	.byte W08
	.byte N17, Cn4
	.byte W18
	.byte FINE
song_unk_714_1: @ 0x083524F3
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte W16
	.byte N06, En3, v064
	.byte W08
	.byte N14, Ds3
	.byte W16
	.byte N06, En3
	.byte W08
	.byte N14, Fn3
	.byte W16
	.byte N06, Fs3
	.byte W08
	.byte N14, Gn3
	.byte W16
	.byte N06, Gs3
	.byte W08
	.byte W01
	.byte N16, An3
	.byte W17
	.byte FINE
song_unk_714_2: @ 0x08352515
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte W16
	.byte N06, Dn3, v064
	.byte W08
	.byte N14, Cs3
	.byte W16
	.byte N06, Dn3
	.byte W08
	.byte N14, Ds3
	.byte W16
	.byte N06, En3
	.byte W08
	.byte N14, Fn3
	.byte W16
	.byte N06, Fs3
	.byte W08
	.byte W01
	.byte N16, Gn3
	.byte W17
	.byte FINE
song_unk_714_3: @ 0x08352537
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte W16
	.byte N06, Bn2, v064
	.byte W08
	.byte N14, As2
	.byte W16
	.byte N06, Bn2
	.byte W08
	.byte N14, Cn3
	.byte W16
	.byte N06, Cs3
	.byte W08
	.byte N14, Dn3
	.byte W16
	.byte N06, Ds3
	.byte W08
	.byte W01
	.byte N16, En3
	.byte W17
	.byte FINE
song_unk_714_4: @ 0x08352559
	.byte VOL, 0x32
	.byte KEYSH, 0x00
	.byte VOICE, 0x7F
	.byte N14, Cn1, v127
	.byte W16
	.byte N06, Dn1, v064
	.byte W08
	.byte Dn1, v032
	.byte W08
	.byte N06
	.byte W08
	.byte Dn1, v064
	.byte W08
	.byte Dn1, v032
	.byte W08
	.byte N06
	.byte W08
	.byte Dn1, v064
	.byte W08
	.byte Dn1, v032
	.byte W08
	.byte N06
	.byte W08
	.byte Dn1, v064
	.byte W08
	.byte W02
	.byte N90, En1
	.byte W01
	.byte N10, Cn1, v124
	.byte W92
	.byte W01
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_714
song_unk_714: @ 0x0835258C (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804DE80 @ voice group
	.4byte song_unk_714_0
	.4byte song_unk_714_1
	.4byte song_unk_714_2
	.4byte song_unk_714_3
	.4byte song_unk_714_4

