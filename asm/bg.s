	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.struct 0
o_Dma3Request_sad:
	.struct o_Dma3Request_sad + 4
o_Dma3Request_dad:
	.struct o_Dma3Request_dad + 4
o_Dma3Request_size:
	.struct o_Dma3Request_size + 4
o_Dma3Request_cnt:
	.struct o_Dma3Request_cnt + 4
Dma3Request_size:
	.struct Dma3Request_size

	.struct 0
o_Dma3Manager_queue:
	.struct o_Dma3Manager_queue + 128 * Dma3Request_size
o_Dma3Manager_cursor:
	.struct o_Dma3Manager_cursor + 4
o_Dma3Manager_count:
	.struct o_Dma3Manager_count + 4
Dma3Manager_size:
	.struct Dma3Manager_size

	.text
	.syntax unified
	.align 2, 0

	thumb_func_start sub_08000308
sub_08000308: @ 0x08000308
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	mov ip, r1
	adds r4, r2, #0
	movs r6, #0x80
	lsls r6, r6, #0x18
	orrs r6, r3
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r6
	movs r1, #1
	mov sl, r1
	cmp r0, #0
	beq _08000332
	movs r2, #2
	mov sl, r2
_08000332:
	ldr r0, _0800036C @ =REG_DISPSTAT
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800038A
	adds r1, r6, #0
	ldr r0, _08000370 @ =0xFFFCFFFF
	ands r6, r0
	ldr r0, _08000374 @ =REG_DMA3
	ldr r3, [sp, #8]
	str r3, [r0]
	mov r7, ip
	str r7, [r0, #4]
	mov r2, sl
	lsrs r4, r2
	orrs r6, r4
	str r6, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08000378
	ldr r0, [sp, #8]
	bl sub_08005598
	b _08000456
	.align 2, 0
_0800036C: .4byte REG_DISPSTAT
_08000370: .4byte 0xFFFCFFFF
_08000374: .4byte REG_DMA3
_08000378:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08000456
	ldr r0, [sp, #8]
	bl sub_08005618
	b _08000456
_0800038A:
	ldr r1, _08000468 @ =sDma3Queue
	ldr r3, _0800046C @ =o_Dma3Manager_count
	adds r0, r1, r3
	ldr r0, [r0]
	adds r3, r0, #1
	movs r0, #0x81
	negs r0, r0
	ands r3, r0
	movs r7, #0x80
	lsls r7, r7, #4
	adds r5, r1, r7
	ldr r0, [r5]
	mov sb, r1
	cmp r3, r0
	bne _080003B8
	ldr r0, [r5]
	cmp r3, r0
	bne _080003B8
	adds r2, r3, #0
	adds r1, r5, #0
_080003B2:
	ldr r0, [r1]
	cmp r2, r0
	beq _080003B2
_080003B8:
	ldr r0, _08000470 @ =0x000019FF
	mov r8, r0
	cmp r4, r8
	bls _08000414
	ldr r5, _08000468 @ =sDma3Queue
	ldr r1, _0800046C @ =o_Dma3Manager_count
	adds r2, r5, r1
	movs r3, #0xd0
	lsls r3, r3, #5
_080003CA:
	ldr r1, [r2]
	lsls r1, r1, #4
	adds r0, r1, r5
	ldr r7, [sp, #8]
	str r7, [r0]
	ldr r0, _08000474 @ =sDma3Queue + o_Dma3Request_dad
	adds r0, r1, r0
	str r0, [sp]
	mov r7, ip
	str r7, [r0]
	adds r0, r5, #0
	adds r0, #8
	adds r1, r1, r0
	str r1, [sp, #4]
	adds r0, r3, #0
	mov r1, sl
	asrs r0, r1
	ldr r7, [sp, #4]
	str r0, [r7]
	ldr r0, [r2]
	lsls r0, r0, #4
	ldr r1, _08000478 @ =sDma3Queue + o_Dma3Request_cnt
	adds r0, r0, r1
	str r6, [r0]
	ldr r0, [r2]
	adds r0, #1
	movs r1, #0x81
	negs r1, r1
	ands r0, r1
	str r0, [r2]
	ldr r7, [sp, #8]
	adds r7, r7, r3
	str r7, [sp, #8]
	add ip, r3
	subs r4, r4, r3
	cmp r4, r8
	bhi _080003CA
_08000414:
	cmp r4, #0
	beq _08000456
	ldr r2, _0800046C @ =o_Dma3Manager_count
	add r2, sb
	ldr r1, [r2]
	lsls r1, r1, #4
	mov r3, sb
	adds r0, r1, r3
	ldr r7, [sp, #8]
	str r7, [r0]
	mov r0, sb
	adds r0, #4
	adds r0, r1, r0
	mov r3, ip
	str r3, [r0]
	mov r0, sb
	adds r0, #8
	adds r1, r1, r0
	mov r7, sl
	lsrs r4, r7
	str r4, [r1]
	ldr r0, [r2]
	lsls r0, r0, #4
	mov r1, sb
	adds r1, #0xc
	adds r0, r0, r1
	str r6, [r0]
	ldr r0, [r2]
	adds r0, #1
	movs r1, #0x81
	negs r1, r1
	ands r0, r1
	str r0, [r2]
_08000456:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000468: .4byte sDma3Queue
_0800046C: .4byte o_Dma3Manager_count
_08000470: .4byte 0x000019FF
_08000474: .4byte sDma3Queue + o_Dma3Request_dad
_08000478: .4byte sDma3Queue + o_Dma3Request_cnt
	thumb_func_end sub_08000308

	thumb_func_start sub_0800047C
sub_0800047C: @ 0x0800047C
	push {r4, r5, r6, lr}
	ldr r3, _080004CC @ =sDma3Queue
	ldr r1, _080004D0 @ =o_Dma3Manager_count
	adds r0, r3, r1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r3, r2
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	beq _08000504
	ldr r0, [r1]
	cmp r2, r0
	beq _08000504
	adds r6, r3, #0
	adds r5, r1, #0
	ldr r4, _080004D4 @ =REG_DMA3
_0800049E:
	ldr r1, [r5]
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r2, [r1, #0xc]
	ldr r3, [r1]
	str r3, [r4]
	ldr r0, [r1, #4]
	str r0, [r4, #4]
	ldr r0, _080004D8 @ =0xFFFCFFFF
	ands r0, r2
	ldr r1, [r1, #8]
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080004DC
	adds r0, r3, #0
	bl sub_08005598
	b _080004EC
	.align 2, 0
_080004CC: .4byte sDma3Queue
_080004D0: .4byte o_Dma3Manager_count
_080004D4: .4byte REG_DMA3
_080004D8: .4byte 0xFFFCFFFF
_080004DC:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _080004EC
	adds r0, r3, #0
	bl sub_08005618
_080004EC:
	ldr r0, [r5]
	adds r0, #1
	movs r1, #0x81
	negs r1, r1
	ands r0, r1
	str r0, [r5]
	ldr r1, _0800050C @ =o_Dma3Manager_count
	adds r0, r6, r1
	ldr r1, [r0]
	ldr r0, [r5]
	cmp r1, r0
	bne _0800049E
_08000504:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800050C: .4byte o_Dma3Manager_count
	thumb_func_end sub_0800047C

	thumb_func_start sub_08000510
sub_08000510: @ 0x08000510
	push {lr}
	movs r1, #0
	movs r2, #0
	ldr r0, _0800056C @ =gUnknown_2031538
_08000518:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #0x23
	bls _08000518
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	bl sub_0800062C
	ldr r0, _08000570 @ =REG_BG2PA
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0800062C
	ldr r0, _08000574 @ =REG_BG3PA
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0800062C
	ldr r0, _08000578 @ =REG_BG2PD
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0800062C
	ldr r0, _0800057C @ =REG_BG3PD
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0800062C
	ldr r0, _08000580 @ =sDma3Queue
	ldr r2, _08000584 @ =o_Dma3Manager_count
	adds r1, r0, r2
	movs r2, #0
	str r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0800056C: .4byte gUnknown_2031538
_08000570: .4byte REG_BG2PA
_08000574: .4byte REG_BG3PA
_08000578: .4byte REG_BG2PD
_0800057C: .4byte REG_BG3PD
_08000580: .4byte sDma3Queue
_08000584: .4byte o_Dma3Manager_count
	thumb_func_end sub_08000510

	thumb_func_start sub_08000588
sub_08000588: @ 0x08000588
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, _080005AC @ =0x0000FFFF
	ands r2, r1
	lsrs r2, r2, #0xe
	lsls r2, r2, #2
	orrs r4, r2
	ands r3, r1
	lsrs r3, r3, #0xb
	lsls r3, r3, #8
	lsls r0, r0, #1
	ldr r1, _080005B0 @ =REG_BG0CNT
	adds r0, r0, r1
	orrs r4, r3
	ldr r2, _080005B4 @ =gUnknown_85EA550
	ldr r3, _080005B8 @ =gUnknown_2031538
	b _080005C0
	.align 2, 0
_080005AC: .4byte 0x0000FFFF
_080005B0: .4byte REG_BG0CNT
_080005B4: .4byte gUnknown_85EA550
_080005B8: .4byte gUnknown_2031538
_080005BC:
	adds r2, #4
	adds r3, #2
_080005C0:
	ldr r1, [r2]
	cmp r1, #0
	beq _080005D2
	cmp r1, r0
	bne _080005CE
	strh r4, [r3]
	b _080005D4
_080005CE:
	cmp r1, r0
	bls _080005BC
_080005D2:
	strh r4, [r0]
_080005D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08000588

	thumb_func_start sub_080005DC
sub_080005DC: @ 0x080005DC
	ldr r3, _080005F8 @ =gUnknown_85EA550
	ldr r0, [r3]
	cmp r0, #0
	beq _080005F4
	ldr r2, _080005FC @ =gUnknown_2031538
_080005E6:
	ldm r3!, {r0}
	ldrh r1, [r2]
	strh r1, [r0]
	adds r2, #2
	ldr r0, [r3]
	cmp r0, #0
	bne _080005E6
_080005F4:
	bx lr
	.align 2, 0
_080005F8: .4byte gUnknown_85EA550
_080005FC: .4byte gUnknown_2031538
	thumb_func_end sub_080005DC

	thumb_func_start sub_08000600
sub_08000600: @ 0x08000600
	ldr r2, _08000608 @ =gUnknown_85EA550
	ldr r3, _0800060C @ =gUnknown_2031538
	b _08000614
	.align 2, 0
_08000608: .4byte gUnknown_85EA550
_0800060C: .4byte gUnknown_2031538
_08000610:
	adds r2, #4
	adds r3, #2
_08000614:
	ldr r1, [r2]
	cmp r1, #0
	beq _08000626
	cmp r1, r0
	bne _08000622
	ldrh r0, [r3]
	b _08000628
_08000622:
	cmp r1, r0
	bls _08000610
_08000626:
	ldrh r0, [r0]
_08000628:
	bx lr
	.align 2, 0
	thumb_func_end sub_08000600

	thumb_func_start sub_0800062C
sub_0800062C: @ 0x0800062C
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r3, _08000638 @ =gUnknown_85EA550
	ldr r1, _0800063C @ =gUnknown_2031538
	b _08000644
	.align 2, 0
_08000638: .4byte gUnknown_85EA550
_0800063C: .4byte gUnknown_2031538
_08000640:
	adds r3, #4
	adds r1, #2
_08000644:
	ldr r2, [r3]
	cmp r2, #0
	beq _08000656
	cmp r2, r0
	bne _08000652
	strh r4, [r1]
	b _08000658
_08000652:
	cmp r2, r0
	bls _08000640
_08000656:
	strh r4, [r0]
_08000658:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800062C

	.bss
gUnknown_2031538:
	.space 72

sDma3Queue:
	.space Dma3Manager_size

	.text
	.align 2, 0 @ Don't pad with nop
