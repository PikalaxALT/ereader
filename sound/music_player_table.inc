
	.global gMPlayTable
	.align 2, 0
gMPlayTable: @ 0x0804ed80
	music_player gMPlayInfo_1, gMPlayTrack_1, 5, 0
	music_player gMPlayInfo_2, gMPlayTrack_2, 5, 0
	music_player gMPlayInfo_3, gMPlayTrack_3, 5, 0
	music_player gMPlayInfo_4, gMPlayTrack_4, 8, 0
	music_player gMPlayInfo_5, gMPlayTrack_5, 5, 0
