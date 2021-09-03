	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_142_0: @ 0x0834B030
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x26
	.byte VOL, 0x7F
	.byte BEND, 0x04
	.byte TIE, An1, v080
	.byte TIE, Cs2
	.byte W06
	.byte BEND, 0x09
	.byte W06
	.byte 0x0B
	.byte W06
	.byte 0x0D
	.byte W06
	.byte 0x12
	.byte W06
	.byte 0x16
	.byte W06
	.byte 0x18
	.byte W06
	.byte 0x1B
	.byte W06
	.byte 0x1D
	.byte W06
	.byte 0x1F
	.byte W06
	.byte 0x22
	.byte W06
	.byte 0x26
	.byte W06
	.byte 0x28
	.byte W06
	.byte 0x2D
	.byte W06
	.byte 0x2F
	.byte W06
	.byte 0x34
	.byte W06
	.byte 0x36
	.byte W06
	.byte 0x38
	.byte W06
	.byte 0x3A
	.byte W06
	.byte 0x3D
	.byte W06
	.byte 0x3F
	.byte W06
	.byte 0x44
	.byte W06
	.byte 0x46
	.byte W06
	.byte 0x48
	.byte W06
	.byte 0x4A
	.byte W06
	.byte 0x4F
	.byte W06
	.byte 0x53
	.byte W06
	.byte 0x56
	.byte W06
	.byte 0x5C
	.byte W06
	.byte 0x5F
	.byte W06
	.byte 0x61
	.byte W06
	.byte 0x66
	.byte W06
	.byte 0x68
	.byte W06
	.byte 0x6C
	.byte W06
	.byte 0x6F
	.byte W06
	.byte 0x73
	.byte W06
	.byte 0x78
	.byte W06
	.byte 0x7A
	.byte W06
	.byte 0x7F
	.byte W06
	.byte 0x40
	.byte W06
	.byte EOT, An1
	.byte Cs2
	.byte FINE
	.align 2, 0
	.global song_unk_142
song_unk_142: @ 0x0834B094 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_142_0
	.size song_unk_142,.-song_unk_142
