#include "gba/gba.h"

typedef struct Link
{
    u8 field_00;
    u8 field_01;
    u8 field_02;
    u8 field_03;
    u8 filler_04[8];
    u8 field_0c;
    u8 field_0d;
    u8 field_0e;
    u8 field_0f;
    u8 field_10;
    u8 field_11;
    u8 field_12;
    u8 field_13;
    u8 filler_14[0x384];
} LINK;

extern u16 ovx28_3003E22;
extern u16 ovx28_3003E24;
extern u8 ovx28_3003E30;
extern u8 ovx28_3003E34;
extern u16 ovx28_3003E38;
extern s8 ovx28_3003E40[4];
extern LINK ovx28_3003E50;

void sub_0803B7AC(u16 *a0);
void sub_0803B8A0(u16 *a0);
void sub_0803BEB0(void);
void sub_0803BED8(void);

void sub_0803B58C(void)
{
    ovx28_3003E38 = REG_IME;
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL);
    REG_IME = ovx28_3003E38;

    REG_RCNT = 0;
    REG_SIOCNT = SIO_MULTI_MODE;
    REG_SIOCNT |= SIO_115200_BPS | SIO_INTR_ENABLE;

    ovx28_3003E38 = REG_IME;
    REG_IME = 0;
    REG_IE |= INTR_FLAG_SERIAL;
    REG_IME = ovx28_3003E38;

    DmaFill32(3, 0, &ovx28_3003E50, sizeof(ovx28_3003E50));
    ovx28_3003E22 = 0;
    ovx28_3003E24 = 0;
    ovx28_3003E30 = 0;
    ovx28_3003E34 = 0;
}
/*

int sub_0803B634(u8 *a0, u16 *a1, u16 *a2)
{
    int resp;
    int _00c;
    int _00f;
    int _010;
    int _011;
    int _012;
    int _013;

    switch (ovx28_3003E50.field_01)
    {
    case 0:
        ovx28_3003E38 = REG_IME;
        REG_IME = 0;
        REG_IE &= ~(INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL);
        REG_IME = ovx28_3003E38;

        REG_SIOCNT = 0;
        REG_TM3CNT_H = 0;
        REG_IF = INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL;
        DmaFill32(3, 0, &ovx28_3003E50, sizeof(ovx28_3003E50));
        ovx28_3003E50.field_01 = 1;
        break;
    case 1:
        if (*a0 == 1)
        {
            sub_0803B58C();
            ovx28_3003E50.field_01 = 2;
        }
        break;
    case 2:
        switch (*a0)
        {
        default:
            sub_0803BEB0();
            break;
        case 1:
            if (ovx28_3003E50.field_00 == 8 && ovx28_3003E50.field_03 > 1)
                ovx28_3003E50.field_0e = 1;
            break;
        case 2:
            ovx28_3003E50.field_01 = 0;
            break;
        }
    case 3:
        sub_0803BED8();
        ovx28_3003E50.field_01 = 4;
        // fallthrough
    case 4:
        sub_0803B7AC(a1);
        sub_0803B8A0(a2);
        break;
    }
    *a0 = 0;
    resp = ovx28_3003E50.field_03 << 2;
    resp |= ovx28_3003E50.field_02;
    if (ovx28_3003E50.field_00 == 8)
        resp |= 0x20;
    _00c = ovx28_3003E50.field_0c << 8;
    _00f = ovx28_3003E50.field_0f << 9;
    _010 = ovx28_3003E50.field_10 << 12;
    _011 = ovx28_3003E50.field_11 << 13;
    _012 = ovx28_3003E50.field_12 << 14;
    _013 = ovx28_3003E50.field_13 << 16;
    if (ovx28_3003E50.field_01 == 4)
        resp |= 0x40;
    resp |= _00c;
    resp |= _00f;
    resp |= _010;
    resp |= _011;
    resp |= _012;
    resp |= _013;
    if (ovx28_3003E40[1] >= ovx28_3003E50.field_02)
        resp |= 0x20000;
    return resp;
}
*/
