	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_494_0: @ 0x08350748
	.byte KEYSH, 0x00
song_unk_494_0_000: @ 0x0835074A
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5F
	.byte VOL, 0x7F
	.byte N60, Cn3, v072
	.byte W60
	.byte N48, As2
	.byte W36
	.byte W12
	.byte N36, Dn3
	.byte W36
	.byte N72, Cn3
	.byte W48
	.byte W24
	.byte N12, Ds3
	.byte W12
	.byte N60, Bn2
	.byte W60
	.byte GOTO
	 .4byte song_unk_494_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_494
song_unk_494: @ 0x0835076C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_494_0
	.size song_unk_494,.-song_unk_494
