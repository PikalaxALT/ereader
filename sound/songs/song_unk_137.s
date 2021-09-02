	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_137_0: @ 0x0834AEDC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N02, Cs1, v092
	.byte W03
	.byte Cs2, v080
	.byte W03
	.byte Cs1, v092
	.byte W03
	.byte Cs2, v080
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_137
song_unk_137: @ 0x0834AEF4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_137_0

