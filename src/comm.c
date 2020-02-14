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

u16 gUnknown_3003E22;
u16 gUnknown_3003E24;
u8 gUnknown_3003E30;
u8 gUnknown_3003E34;
u16 gUnknown_3003E38;
s8 gUnknown_3003E40[4];
LINK gUnknown_3003E50;

void sub_0803B7AC(u16 *a0);
void sub_0803B8A0(u16 *a0);
void sub_0803BEB0(void);
void sub_0803BED8(void);

void sub_0803B58C(void)
{
    gUnknown_3003E38 = REG_IME;
    REG_IME = 0;
    REG_IE &= ~(INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL);
    REG_IME = gUnknown_3003E38;

    REG_RCNT = 0;
    REG_SIOCNT = SIO_MULTI_MODE;
    REG_SIOCNT |= SIO_115200_BPS | SIO_INTR_ENABLE;

    gUnknown_3003E38 = REG_IME;
    REG_IME = 0;
    REG_IE |= INTR_FLAG_SERIAL;
    REG_IME = gUnknown_3003E38;

    DmaFill32(3, 0, &gUnknown_3003E50, sizeof(gUnknown_3003E50));
    gUnknown_3003E22 = 0;
    gUnknown_3003E24 = 0;
    gUnknown_3003E30 = 0;
    gUnknown_3003E34 = 0;
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

    switch (gUnknown_3003E50.field_01)
    {
    case 0:
        gUnknown_3003E38 = REG_IME;
        REG_IME = 0;
        REG_IE &= ~(INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL);
        REG_IME = gUnknown_3003E38;

        REG_SIOCNT = 0;
        REG_TM3CNT_H = 0;
        REG_IF = INTR_FLAG_TIMER3 | INTR_FLAG_SERIAL;
        DmaFill32(3, 0, &gUnknown_3003E50, sizeof(gUnknown_3003E50));
        gUnknown_3003E50.field_01 = 1;
        break;
    case 1:
        if (*a0 == 1)
        {
            sub_0803B58C();
            gUnknown_3003E50.field_01 = 2;
        }
        break;
    case 2:
        switch (*a0)
        {
        default:
            sub_0803BEB0();
            break;
        case 1:
            if (gUnknown_3003E50.field_00 == 8 && gUnknown_3003E50.field_03 > 1)
                gUnknown_3003E50.field_0e = 1;
            break;
        case 2:
            gUnknown_3003E50.field_01 = 0;
            break;
        }
    case 3:
        sub_0803BED8();
        gUnknown_3003E50.field_01 = 4;
        // fallthrough
    case 4:
        sub_0803B7AC(a1);
        sub_0803B8A0(a2);
        break;
    }
    *a0 = 0;
    resp = gUnknown_3003E50.field_03 << 2;
    resp |= gUnknown_3003E50.field_02;
    if (gUnknown_3003E50.field_00 == 8)
        resp |= 0x20;
    _00c = gUnknown_3003E50.field_0c << 8;
    _00f = gUnknown_3003E50.field_0f << 9;
    _010 = gUnknown_3003E50.field_10 << 12;
    _011 = gUnknown_3003E50.field_11 << 13;
    _012 = gUnknown_3003E50.field_12 << 14;
    _013 = gUnknown_3003E50.field_13 << 16;
    if (gUnknown_3003E50.field_01 == 4)
        resp |= 0x40;
    resp |= _00c;
    resp |= _00f;
    resp |= _010;
    resp |= _011;
    resp |= _012;
    resp |= _013;
    if (gUnknown_3003E40[1] >= gUnknown_3003E50.field_02)
        resp |= 0x20000;
    return resp;
}
*/
