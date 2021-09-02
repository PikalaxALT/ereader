	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_32_0: @ 0x08347D60
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte N00, Dn4, v092
	.byte N00, En4
	.byte W01
	.byte Fs4, v076
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_32
song_unk_32: @ 0x08347D74 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_32_0

