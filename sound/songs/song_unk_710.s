	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_710_0: @ 0x08352298
	.byte VOL, 0x50
	.byte KEYSH, 0x00
	.byte TEMPO, 0x32
	.byte VOICE, 0x07
	.byte N02, Fs2, v127
	.byte W04
	.byte Gs2
	.byte W04
	.byte An2
	.byte W04
	.byte N30, Bn2
	.byte W32
	.byte W03
	.byte FINE
song_unk_710_1: @ 0x083522AD
	.byte VOL, 0x50
	.byte KEYSH, 0x00
	.byte VOICE, 0x07
	.byte N02, Fs4, v127
	.byte W04
	.byte Gs4
	.byte W04
	.byte An4
	.byte W04
	.byte N30, Bn4
	.byte W32
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_710
song_unk_710: @ 0x083522C0 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804DE80 @ voice group
	.4byte song_unk_710_0
	.4byte song_unk_710_1

