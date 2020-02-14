	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.text
	.syntax unified

	.set o_SendRecvMgr_master_slave, 0
	.set o_SendRecvMgr_state, 1
	.set o_SendRecvMgr_xferState, 2
	.set o_SendRecvMgr_checksumResult, 3
	.set o_SendRecvMgr_cancellationReason, 4
	.set o_SendRecvMgr_dataptr, 8
	.set o_SendRecvMgr_cursor, 12
	.set o_SendRecvMgr_size, 16
	.set o_SendRecvMgr_checksum, 20

	thumb_func_start sub_0803C004
sub_0803C004: @ 0x0803C004
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, _0803C05C @ =gUnknown_2033BA4
	ldr r1, _0803C060 @ =gUnknown_30046E0
	ldr r0, [r1, #0x18]
	str r0, [r2]
	ldr r2, _0803C064 @ =gUnknown_2033BA8
	ldr r0, [r1, #0x1c]
	str r0, [r2]
	ldr r0, _0803C068 @ =sub_0803C504
	str r0, [r1, #0x18]
	ldr r0, _0803C06C @ =sub_0803C374
	str r0, [r1, #0x1c]
	bl sub_0803C634
	movs r7, #2
	ldr r6, _0803C070 @ =gUnknown_2033B8C
	ldr r4, _0803C074 @ =gUnknown_2033B90
_0803C02A:
	bl sub_0803C604
	ldr r1, _0803C078 @ =gUnknown_2033B8A
	movs r0, #2
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0803C03C
	strb r7, [r4]
_0803C03C:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_0803C0D8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [r6]
	movs r0, #0x13
	ands r0, r1
	cmp r0, #0x10
	bne _0803C07C
	movs r4, #0
	b _0803C09A
	.align 2, 0
_0803C05C: .4byte gUnknown_2033BA4
_0803C060: .4byte gUnknown_30046E0
_0803C064: .4byte gUnknown_2033BA8
_0803C068: .4byte sub_0803C504
_0803C06C: .4byte sub_0803C374
_0803C070: .4byte gUnknown_2033B8C
_0803C074: .4byte gUnknown_2033B90
_0803C078: .4byte gUnknown_2033B8A
_0803C07C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803C088
	movs r4, #1
	b _0803C09A
_0803C088:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803C098
	strb r0, [r4]
	bl VBlankIntrWait
	b _0803C02A
_0803C098:
	movs r4, #2
_0803C09A:
	movs r0, #0
	str r0, [sp]
	ldr r1, _0803C0C4 @ =gUnknown_2033B70
	ldr r2, _0803C0C8 @ =0x05000006
	mov r0, sp
	bl CpuSet
	bl sub_0803C688
	ldr r1, _0803C0CC @ =gUnknown_30046E0
	ldr r0, _0803C0D0 @ =gUnknown_2033BA4
	ldr r0, [r0]
	str r0, [r1, #0x18]
	ldr r0, _0803C0D4 @ =gUnknown_2033BA8
	ldr r0, [r0]
	str r0, [r1, #0x1c]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803C0C4: .4byte gUnknown_2033B70
_0803C0C8: .4byte 0x05000006
_0803C0CC: .4byte gUnknown_30046E0
_0803C0D0: .4byte gUnknown_2033BA4
_0803C0D4: .4byte gUnknown_2033BA8
	thumb_func_end sub_0803C004

	thumb_func_start sub_0803C0D8
sub_0803C0D8: @ 0x0803C0D8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0803C0FC @ =gUnknown_2033B70
	ldrb r0, [r0, #o_SendRecvMgr_state]
	cmp r0, #6
	bls _0803C0F0
	b _0803C344
_0803C0F0:
	lsls r0, r0, #2
	ldr r1, _0803C100 @ =_0803C104
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803C0FC: .4byte gUnknown_2033B70
_0803C100: .4byte _0803C104
_0803C104: @ jump table
	.4byte _0803C120 @ case 0
	.4byte _0803C194 @ case 1
	.4byte _0803C1B4 @ case 2
	.4byte _0803C1EA @ case 3
	.4byte _0803C274 @ case 4
	.4byte _0803C2E8 @ case 5
	.4byte _0803C318 @ case 6
_0803C120:
	ldr r5, _0803C174 @ =REG_IME
	movs r4, #0
	strh r4, [r5]
	ldr r3, _0803C178 @ =REG_IE
	ldrh r1, [r3]
	ldr r0, _0803C17C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r3]
	movs r6, #1
	strh r6, [r5]
	ldr r0, _0803C180 @ =REG_RCNT
	strh r4, [r0]
	ldr r2, _0803C184 @ =REG_SIOCNT
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r7, _0803C188 @ =0x00004003
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r5]
	ldrh r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r3]
	strh r6, [r5]
	ldr r4, _0803C18C @ =gUnknown_2033B70
	ldrb r0, [r4, #o_SendRecvMgr_state]
	cmp r0, #0
	bne _0803C16C
	str r0, [sp]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0803C190 @ =0x05000006
	bl CpuSet
_0803C16C:
	strb r6, [r4, #2]
	strb r6, [r4, #1]
	b _0803C344
	.align 2, 0
_0803C174: .4byte REG_IME
_0803C178: .4byte REG_IE
_0803C17C: .4byte 0x0000FF3F
_0803C180: .4byte REG_RCNT
_0803C184: .4byte REG_SIOCNT
_0803C188: .4byte 0x00004003
_0803C18C: .4byte gUnknown_2033B70
_0803C190: .4byte 0x05000006
_0803C194:
	adds r0, r2, #0
	bl sub_0803C514
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803C1A4
	bl sub_0803C5D0
_0803C1A4:
	ldr r0, _0803C1B0 @ =gUnknown_2033B90
	ldrb r0, [r0]
	cmp r0, #2
	beq _0803C1AE
	b _0803C344
_0803C1AE:
	b _0803C1F2
	.align 2, 0
_0803C1B0: .4byte gUnknown_2033B90
_0803C1B4:
	ldr r0, _0803C1FC @ =REG_RCNT
	movs r3, #0
	strh r3, [r0]
	ldr r2, _0803C200 @ =REG_SIOCNT
	movs r1, #0xa0
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #8
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0803C204 @ =gUnknown_2033B90
	strb r3, [r0]
	ldr r0, _0803C208 @ =gUnknown_2033B92
	strh r3, [r0]
	ldr r1, _0803C20C @ =gUnknown_2033B94
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0803C544
	ldr r1, _0803C210 @ =gUnknown_2033B70
	movs r0, #3
	strb r0, [r1, #o_SendRecvMgr_state]
_0803C1EA:
	ldr r0, _0803C204 @ =gUnknown_2033B90
	ldrb r0, [r0]
	cmp r0, #2
	bne _0803C214
_0803C1F2:
	ldr r1, _0803C210 @ =gUnknown_2033B70
	strb r0, [r1, #o_SendRecvMgr_cancellationReason]
	movs r0, #6
	strb r0, [r1, #o_SendRecvMgr_state]
	b _0803C344
	.align 2, 0
_0803C1FC: .4byte REG_RCNT
_0803C200: .4byte REG_SIOCNT
_0803C204: .4byte gUnknown_2033B90
_0803C208: .4byte gUnknown_2033B92
_0803C20C: .4byte gUnknown_2033B94
_0803C210: .4byte gUnknown_2033B70
_0803C214:
	ldr r2, _0803C258 @ =gUnknown_2033B92
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r1, _0803C25C @ =gUnknown_2033B94
	ldr r0, [r1]
	adds r3, r0, #1
	str r3, [r1]
	ldr r1, _0803C260 @ =gUnknown_2033B70
	ldrb r0, [r1, #o_SendRecvMgr_master_slave]
	cmp r0, #0
	bne _0803C238
	cmp r3, #0x3c
	bls _0803C238
	movs r0, #1
	strb r0, [r1, #o_SendRecvMgr_cancellationReason]
	movs r0, #6
	strb r0, [r1, #o_SendRecvMgr_state]
_0803C238:
	ldr r4, _0803C260 @ =gUnknown_2033B70
	ldrb r7, [r4, #o_SendRecvMgr_xferState]
	cmp r7, #2
	bne _0803C242
	b _0803C344
_0803C242:
	ldrb r0, [r4, #o_SendRecvMgr_master_slave]
	cmp r0, #0
	beq _0803C264
	ldrh r2, [r2]
	cmp r2, #2
	bls _0803C264
	bl sub_0803C5D0
	movs r0, #2
	strb r0, [r4, #o_SendRecvMgr_xferState]
	b _0803C344
	.align 2, 0
_0803C258: .4byte gUnknown_2033B92
_0803C25C: .4byte gUnknown_2033B94
_0803C260: .4byte gUnknown_2033B70
_0803C264:
	bl sub_0803C5D0
	ldr r1, _0803C270 @ =gUnknown_2033B70
	movs r0, #2
	strb r0, [r1, #o_SendRecvMgr_xferState]
	b _0803C344
	.align 2, 0
_0803C270: .4byte gUnknown_2033B70
_0803C274:
	ldr r5, _0803C2C8 @ =REG_IME
	movs r4, #0
	strh r4, [r5]
	ldr r3, _0803C2CC @ =REG_IE
	ldrh r1, [r3]
	ldr r0, _0803C2D0 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r3]
	movs r6, #1
	strh r6, [r5]
	ldr r0, _0803C2D4 @ =REG_RCNT
	strh r4, [r0]
	ldr r2, _0803C2D8 @ =REG_SIOCNT
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r7, _0803C2DC @ =0x00004003
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r5]
	ldrh r0, [r3]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r3]
	strh r6, [r5]
	ldr r4, _0803C2E0 @ =gUnknown_2033B70
	ldrb r0, [r4, #o_SendRecvMgr_state]
	cmp r0, #0
	bne _0803C2C0
	str r0, [sp]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0803C2E4 @ =0x05000006
	bl CpuSet
_0803C2C0:
	movs r0, #5
	strb r0, [r4, #o_SendRecvMgr_state]
	b _0803C344
	.align 2, 0
_0803C2C8: .4byte REG_IME
_0803C2CC: .4byte REG_IE
_0803C2D0: .4byte 0x0000FF3F
_0803C2D4: .4byte REG_RCNT
_0803C2D8: .4byte REG_SIOCNT
_0803C2DC: .4byte 0x00004003
_0803C2E0: .4byte gUnknown_2033B70
_0803C2E4: .4byte 0x05000006
_0803C2E8:
	ldr r4, _0803C310 @ =gUnknown_2033B70
	ldrb r0, [r4, #o_SendRecvMgr_master_slave]
	cmp r0, #1
	bne _0803C2F4
	bl sub_0803C5D0
_0803C2F4:
	ldr r1, _0803C314 @ =gUnknown_2033B92
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xb4
	bls _0803C344
	movs r0, #1
	strb r0, [r4, #o_SendRecvMgr_cancellationReason]
	movs r0, #6
	strb r0, [r4, #o_SendRecvMgr_state]
	b _0803C344
	.align 2, 0
_0803C310: .4byte gUnknown_2033B70
_0803C314: .4byte gUnknown_2033B92
_0803C318:
	ldr r5, _0803C35C @ =gUnknown_2033B70
	ldrb r0, [r5, #o_SendRecvMgr_xferState]
	cmp r0, #0
	beq _0803C344
	ldr r4, _0803C360 @ =REG_IME
	movs r3, #0
	strh r3, [r4]
	ldr r2, _0803C364 @ =REG_IE
	ldrh r1, [r2]
	ldr r0, _0803C368 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r4]
	ldr r0, _0803C36C @ =REG_SIOCNT
	strh r3, [r0]
	subs r0, #0x1a
	strh r3, [r0]
	ldr r1, _0803C370 @ =REG_IF
	movs r0, #0xc0
	strh r0, [r1]
	strb r3, [r5, #o_SendRecvMgr_xferState]
_0803C344:
	ldr r1, _0803C35C @ =gUnknown_2033B70
	ldrb r2, [r1, #o_SendRecvMgr_cancellationReason]
	lsls r0, r2, #2
	ldrb r7, [r1, #o_SendRecvMgr_xferState]
	orrs r0, r7
	ldrb r1, [r1, #o_SendRecvMgr_checksumResult]
	lsls r1, r1, #4
	orrs r0, r1
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803C35C: .4byte gUnknown_2033B70
_0803C360: .4byte REG_IME
_0803C364: .4byte REG_IE
_0803C368: .4byte 0x0000FF3F
_0803C36C: .4byte REG_SIOCNT
_0803C370: .4byte REG_IF
	thumb_func_end sub_0803C0D8

	thumb_func_start sub_0803C374
sub_0803C374: @ 0x0803C374
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r2, _0803C38C @ =gUnknown_2033B70
	ldrb r0, [r2, #o_SendRecvMgr_state]
	adds r3, r2, #0
	cmp r0, #3
	beq _0803C3FC
	cmp r0, #3
	bgt _0803C390
	cmp r0, #1
	beq _0803C398
	b _0803C4F2
	.align 2, 0
_0803C38C: .4byte gUnknown_2033B70
_0803C390:
	cmp r0, #5
	bne _0803C396
	b _0803C4C4
_0803C396:
	b _0803C4F2
_0803C398:
	ldr r1, _0803C3C8 @ =REG_SIOMLT_SEND
	ldr r2, _0803C3CC @ =0x0000CCC0
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803C3D0 @ =REG_SIOMLT_RECV
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r4, #0
	ldr r6, _0803C3CC @ =0x0000CCC0
	ldr r5, _0803C3D4 @ =0x0000FFFF
_0803C3B4:
	lsls r0, r1, #1
	add r0, sp
	ldrh r0, [r0]
	cmp r0, r6
	bne _0803C3D8
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0803C3E2
	.align 2, 0
_0803C3C8: .4byte REG_SIOMLT_SEND
_0803C3CC: .4byte 0x0000CCC0
_0803C3D0: .4byte REG_SIOMLT_RECV
_0803C3D4: .4byte 0x0000FFFF
_0803C3D8:
	cmp r0, r5
	beq _0803C3E2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0803C3E2:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0803C3B4
	cmp r2, #2
	beq _0803C3F2
	b _0803C4F2
_0803C3F2:
	cmp r4, #0
	beq _0803C3F8
	b _0803C4F2
_0803C3F8:
	strb r2, [r3, #o_SendRecvMgr_state]
	b _0803C4F2
_0803C3FC:
	ldr r0, _0803C438 @ =REG_SIOMLT_RECV
	ldr r4, [r0]
	ldr r0, [r2, #o_SendRecvMgr_cursor]
	cmp r0, #0
	bne _0803C412
	ldrb r0, [r2]
	cmp r0, #0
	bne _0803C412
	lsrs r0, r4, #2
	adds r0, #1
	str r0, [r2, #o_SendRecvMgr_size]
_0803C412:
	ldrb r0, [r3]
	cmp r0, #1
	bne _0803C448
	ldr r1, [r3, #o_SendRecvMgr_cursor]
	ldr r0, [r3, #o_SendRecvMgr_size]
	cmp r1, r0
	bge _0803C43C
	ldr r2, _0803C438 @ =REG_SIODATA32
	ldr r0, [r3, #o_SendRecvMgr_dataptr]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r3, #o_SendRecvMgr_checksum]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3, #o_SendRecvMgr_checksum]
	b _0803C482
	.align 2, 0
_0803C438: .4byte REG_SIODATA32
_0803C43C:
	ldr r1, _0803C444 @ =REG_SIODATA32
	ldr r0, [r3, #o_SendRecvMgr_checksum]
	b _0803C480
	.align 2, 0
_0803C444: .4byte REG_SIODATA32
_0803C448:
	ldr r1, [r3, #o_SendRecvMgr_cursor]
	cmp r1, #0
	ble _0803C468
	ldr r0, [r3, #o_SendRecvMgr_size]
	adds r0, #1
	cmp r1, r0
	bge _0803C468
	ldr r0, [r3, #o_SendRecvMgr_dataptr]
	lsls r1, r1, #2
	adds r1, r1, r0
	subs r1, #4
	str r4, [r1]
	ldr r0, [r3, #o_SendRecvMgr_checksum]
	adds r0, r0, r4
	str r0, [r3, #o_SendRecvMgr_checksum]
	b _0803C47C
_0803C468:
	ldr r0, [r3, #o_SendRecvMgr_cursor]
	cmp r0, #0
	beq _0803C47C
	ldr r0, [r3, #o_SendRecvMgr_checksum]
	cmp r0, r4
	bne _0803C478
	movs r0, #1
	b _0803C47A
_0803C478:
	movs r0, #2
_0803C47A:
	strb r0, [r3, #o_SendRecvMgr_checksumResult]
_0803C47C:
	ldr r1, _0803C4A4 @ =gUnknown_2033B94
	movs r0, #0
_0803C480:
	str r0, [r1]
_0803C482:
	ldr r1, [r3, #o_SendRecvMgr_cursor]
	adds r1, #1
	str r1, [r3, #o_SendRecvMgr_cursor]
	ldr r0, [r3, #o_SendRecvMgr_size]
	adds r0, #2
	cmp r1, r0
	bge _0803C4B2
	ldrb r0, [r3]
	cmp r0, #0
	beq _0803C4AC
	ldr r0, _0803C4A8 @ =REG_TM3CNT_H
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	b _0803C4F2
	.align 2, 0
_0803C4A4: .4byte gUnknown_2033B94
_0803C4A8: .4byte REG_TM3CNT_H
_0803C4AC:
	bl sub_0803C5D0
	b _0803C4F2
_0803C4B2:
	movs r0, #0
	movs r1, #4
	strb r1, [r3, #o_SendRecvMgr_state]
	ldr r1, _0803C4C0 @ =gUnknown_2033B92
	strh r0, [r1]
	b _0803C4F2
	.align 2, 0
_0803C4C0: .4byte gUnknown_2033B92
_0803C4C4:
	ldrb r3, [r2]
	cmp r3, #0
	bne _0803C4D0
	ldr r1, _0803C4FC @ =REG_SIOMLT_SEND
	ldrb r0, [r2, #o_SendRecvMgr_checksumResult]
	strh r0, [r1]
_0803C4D0:
	ldr r0, _0803C500 @ =REG_SIOMLT_RECV
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, sp
	ldrh r1, [r0, #2]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0803C4F2
	cmp r3, #1
	bne _0803C4EE
	strb r1, [r2, #o_SendRecvMgr_checksumResult]
_0803C4EE:
	movs r0, #6
	strb r0, [r2, #o_SendRecvMgr_state]
_0803C4F2:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803C4FC: .4byte REG_SIOMLT_SEND
_0803C500: .4byte REG_SIOMLT_RECV
	thumb_func_end sub_0803C374

	thumb_func_start sub_0803C504
sub_0803C504: @ 0x0803C504
	push {lr}
	bl sub_0803C5E0
	bl sub_0803C5D0
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0803C504

	thumb_func_start sub_0803C514
sub_0803C514: @ 0x0803C514
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0803C530 @ =REG_SIOCNT
	ldr r0, [r0]
	movs r1, #0xc
	ands r0, r1
	cmp r0, #8
	bne _0803C538
	cmp r2, #0
	beq _0803C538
	ldr r1, _0803C534 @ =gUnknown_2033B70
	movs r0, #1
	b _0803C53C
	.align 2, 0
_0803C530: .4byte REG_SIOCNT
_0803C534: .4byte gUnknown_2033B70
_0803C538:
	ldr r1, _0803C540 @ =gUnknown_2033B70
	movs r0, #0
_0803C53C:
	strb r0, [r1, #o_SendRecvMgr_master_slave]
	bx lr
	.align 2, 0
_0803C540: .4byte gUnknown_2033B70
	thumb_func_end sub_0803C514

	thumb_func_start sub_0803C544
sub_0803C544: @ 0x0803C544
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _0803C570 @ =gUnknown_2033B70
	ldrb r0, [r3, #o_SendRecvMgr_master_slave]
	cmp r0, #0
	beq _0803C57C
	ldr r2, _0803C574 @ =REG_SIOCNT
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	str r5, [r3, #o_SendRecvMgr_dataptr]
	ldr r0, _0803C578 @ =REG_SIOMLT_RECV
	str r4, [r0]
	lsrs r0, r4, #2
	adds r0, #1
	str r0, [r3, #o_SendRecvMgr_size]
	bl sub_0803C590
	b _0803C584
	.align 2, 0
_0803C570: .4byte gUnknown_2033B70
_0803C574: .4byte REG_SIOCNT
_0803C578: .4byte REG_SIOMLT_RECV
_0803C57C:
	ldr r1, _0803C58C @ =REG_SIOCNT
	ldrh r0, [r1]
	strh r0, [r1]
	str r2, [r3, #o_SendRecvMgr_dataptr]
_0803C584:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803C58C: .4byte REG_SIOCNT
	thumb_func_end sub_0803C544

	thumb_func_start sub_0803C590
sub_0803C590: @ 0x0803C590
	push {r4, lr}
	ldr r1, _0803C5BC @ =REG_TM3CNT_L
	ldr r2, _0803C5C0 @ =0x0000F971
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0803C5C4 @ =REG_TM3CNT_H
	movs r4, #0x40
	strh r4, [r0]
	ldr r0, _0803C5C8 @ =gUnknown_2033B98
	ldr r2, _0803C5CC @ =REG_IME
	ldrh r3, [r2]
	strh r3, [r0]
	movs r0, #0
	strh r0, [r2]
	adds r1, #0xf4
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	strh r3, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C5BC: .4byte REG_TM3CNT_L
_0803C5C0: .4byte 0x0000F971
_0803C5C4: .4byte REG_TM3CNT_H
_0803C5C8: .4byte gUnknown_2033B98
_0803C5CC: .4byte REG_IME
	thumb_func_end sub_0803C590

	thumb_func_start sub_0803C5D0
sub_0803C5D0: @ 0x0803C5D0
	ldr r0, _0803C5DC @ =REG_SIOCNT
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_0803C5DC: .4byte REG_SIOCNT
	thumb_func_end sub_0803C5D0

	thumb_func_start sub_0803C5E0
sub_0803C5E0: @ 0x0803C5E0
	ldr r2, _0803C5F4 @ =REG_TM3CNT_H
	ldrh r1, [r2]
	ldr r0, _0803C5F8 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0803C5FC @ =REG_TM3CNT_L
	ldr r2, _0803C600 @ =0x0000F971
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803C5F4: .4byte REG_TM3CNT_H
_0803C5F8: .4byte 0x0000FF7F
_0803C5FC: .4byte REG_TM3CNT_L
_0803C600: .4byte 0x0000F971
	thumb_func_end sub_0803C5E0

	thumb_func_start sub_0803C604
sub_0803C604: @ 0x0803C604
	push {r4, lr}
	ldr r0, _0803C624 @ =REG_KEYINPUT
	ldrh r0, [r0]
	ldr r2, _0803C628 @ =0x000003FF
	adds r1, r2, #0
	eors r1, r0
	ldr r3, _0803C62C @ =gUnknown_2033B8A
	ldr r2, _0803C630 @ =gUnknown_2033B88
	adds r0, r1, #0
	ldrh r4, [r2]
	bics r0, r4
	strh r0, [r3]
	strh r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803C624: .4byte REG_KEYINPUT
_0803C628: .4byte 0x000003FF
_0803C62C: .4byte gUnknown_2033B8A
_0803C630: .4byte gUnknown_2033B88
	thumb_func_end sub_0803C604

	thumb_func_start sub_0803C634
sub_0803C634: @ 0x0803C634
	ldr r1, _0803C660 @ =gUnknown_2033B98
	ldr r0, _0803C664 @ =REG_IME
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0803C668 @ =gUnknown_2033B9A
	ldr r0, _0803C66C @ =REG_IE
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0803C670 @ =gUnknown_2033B9C
	ldr r0, _0803C674 @ =REG_TM3CNT_H
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0803C678 @ =gUnknown_2033B9E
	ldr r0, _0803C67C @ =REG_SIOCNT
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _0803C680 @ =gUnknown_2033BA0
	ldr r0, _0803C684 @ =REG_RCNT
	ldrh r0, [r0]
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803C660: .4byte gUnknown_2033B98
_0803C664: .4byte REG_IME
_0803C668: .4byte gUnknown_2033B9A
_0803C66C: .4byte REG_IE
_0803C670: .4byte gUnknown_2033B9C
_0803C674: .4byte REG_TM3CNT_H
_0803C678: .4byte gUnknown_2033B9E
_0803C67C: .4byte REG_SIOCNT
_0803C680: .4byte gUnknown_2033BA0
_0803C684: .4byte REG_RCNT
	thumb_func_end sub_0803C634

	thumb_func_start sub_0803C688
sub_0803C688: @ 0x0803C688
	ldr r1, _0803C6B4 @ =REG_IME
	ldr r0, _0803C6B8 @ =gUnknown_2033B98
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #8
	ldr r0, _0803C6BC @ =gUnknown_2033B9A
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #0xf2
	ldr r0, _0803C6C0 @ =gUnknown_2033B9C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x1a
	ldr r0, _0803C6C4 @ =gUnknown_2033B9E
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	ldr r0, _0803C6C8 @ =gUnknown_2033BA0
	ldrh r0, [r0]
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803C6B4: .4byte REG_IME
_0803C6B8: .4byte gUnknown_2033B98
_0803C6BC: .4byte gUnknown_2033B9A
_0803C6C0: .4byte gUnknown_2033B9C
_0803C6C4: .4byte gUnknown_2033B9E
_0803C6C8: .4byte gUnknown_2033BA0
	thumb_func_end sub_0803C688

	thumb_func_start sub_0803C6CC
sub_0803C6CC: @ 0x0803C6CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	bl sub_0803C634
	movs r0, #2
	mov r8, r0
	ldr r7, _0803C718 @ =gUnknown_2033B8C
	ldr r4, _0803C71C @ =gUnknown_2033B90
_0803C6E4:
	bl sub_0803C604
	ldr r1, _0803C720 @ =gUnknown_2033B8A
	movs r0, #2
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0803C6F8
	mov r0, r8
	strb r0, [r4]
_0803C6F8:
	movs r0, #1
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_0803C0D8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [r7]
	movs r0, #0x13
	ands r0, r1
	cmp r0, #0x10
	bne _0803C724
	movs r4, #0
	b _0803C742
	.align 2, 0
_0803C718: .4byte gUnknown_2033B8C
_0803C71C: .4byte gUnknown_2033B90
_0803C720: .4byte gUnknown_2033B8A
_0803C724:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803C730
	movs r4, #1
	b _0803C742
_0803C730:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0803C740
	strb r0, [r4]
	bl VBlankIntrWait
	b _0803C6E4
_0803C740:
	movs r4, #2
_0803C742:
	movs r0, #0
	str r0, [sp]
	ldr r1, _0803C764 @ =gUnknown_2033B70
	ldr r2, _0803C768 @ =0x05000006
	mov r0, sp
	bl CpuSet
	bl sub_0803C688
	adds r0, r4, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803C764: .4byte gUnknown_2033B70
_0803C768: .4byte 0x05000006
	thumb_func_end sub_0803C6CC
	.align 2, 0 @ Don't pad with nop
