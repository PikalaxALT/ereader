	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_123_0: @ 0x0834A068
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N01, Dn2, v064
	.byte N01, Ds2
	.byte W01
	.byte En2
	.byte W01
	.byte Fn2
	.byte W01
	.byte Fs2
	.byte N01, Gn2
	.byte W01
	.byte Gs2
	.byte W01
	.byte An2
	.byte W01
	.byte As2, v080
	.byte N01, Bn2
	.byte W01
	.byte Cn3
	.byte W01
	.byte Cs3
	.byte W01
	.byte Dn3
	.byte N01, Ds3
	.byte W01
	.byte En3
	.byte W01
	.byte Fn3
	.byte W01
	.byte Fs3
	.byte N01, Gn3
	.byte W01
	.byte Gs3
	.byte W01
	.byte An3
	.byte W01
	.byte As3
	.byte N01, Bn3
	.byte W01
	.byte Cn4
	.byte W01
	.byte Cs4
	.byte W01
	.byte Dn4
	.byte N01, Ds4
	.byte W01
	.byte En4
	.byte W01
	.byte Fn4
	.byte W01
	.byte Fs4
	.byte N01, Gn4
	.byte W01
	.byte Gs4
	.byte W01
	.byte An4, v064
	.byte W01
	.byte As4
	.byte N01, Bn4
	.byte W01
	.byte Cn5
	.byte W01
	.byte Cs5
	.byte W01
	.byte Dn5
	.byte N01, Ds5
	.byte W01
	.byte En5
	.byte W01
	.byte Fn5, v048
	.byte W01
	.byte Fs5
	.byte N01, Gn5
	.byte W01
	.byte Gs5
	.byte W01
	.byte An5
	.byte W01
	.byte As5
	.byte N01, Bn5
	.byte W01
	.byte Cn6
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_123
song_unk_123: @ 0x0834A0D4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_123_0
	.size song_unk_123,.-song_unk_123
