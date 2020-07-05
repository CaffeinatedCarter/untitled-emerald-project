# 1 "src/multiboot.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/multiboot.c"
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1



# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 5 "include/gba/defines.h" 2
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "tools/agbcc/include/stdint.h" 1
# 31 "tools/agbcc/include/stdint.h"
# 1 "tools/agbcc/include/limits.h" 1
# 32 "tools/agbcc/include/stdint.h" 2



typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;



typedef signed char int_least8_t;
typedef short int_least16_t;
typedef int int_least32_t;
typedef long long int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long uint_fast64_t;



typedef int intptr_t;
typedef unsigned int uintptr_t;



typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 5 "include/gba/types.h" 2

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};

struct OamData
{
             u32 y:8;
             u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

             u32 x:9;
             u32 matrixNum:5;
             u32 size:2;

             u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
             u16 affineParam;
};
# 117 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 intrEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 7 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    const u8 *boot_srcp;
    const u8 *boot_endp;
    const u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
void SoftReset(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const u32 *src, void *dest);

void LZ77UnCompVram(const u32 *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);

s32 Div(s32 num, s32 denom);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1
# 10 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 13 "include/gba/isagbprint.h"
void AGBPrintInit(void);
void AGBPutc(const char cChr);
void AGBPrint(const char *pBuf);
void AGBPrintf(const char *pBuf, ...);
void AGBPrintFlush1Block(void);
void AGBPrintFlush(void);
void AGBAssert(const char *pFile, int nLine, const char *pExpression, int nStopProgram);
# 11 "include/gba/gba.h" 2
# 2 "src/multiboot.c" 2
# 1 "include/multiboot.h" 1
# 15 "include/multiboot.h"
void MultiBootInit(struct MultiBootParam *mp);
int MultiBootMain(struct MultiBootParam *mp);
void MultiBootStartProbe(struct MultiBootParam *mp);
void MultiBootStartMaster(struct MultiBootParam *mp, const u8 *srcp, int length, u8 palette_color, s8 palette_speed);
int MultiBootCheckComplete(struct MultiBootParam *mp);
# 3 "src/multiboot.c" 2

static u16 MultiBoot_required_data[3];

static int MultiBootSend(struct MultiBootParam *mp, u16 data);
static int MultiBootHandShake(struct MultiBootParam *mp);
static void MultiBootWaitCycles(u32 cycles);
static void MultiBootWaitSendDone(void);

void MultiBootInit(struct MultiBootParam *mp)
{
    mp->client_bit = 0;
    mp->probe_count = 0;
    mp->response_bit = 0;

    mp->check_wait = 15;
    mp->sendflag = 0;

    mp->handshake_timeout = 0;

    (*(vu16 *)(0x4000000 + 0x134)) = 0;
    (*(vu16 *)(0x4000000 + 0x128)) = 0x2000 | 0x0003;
    (*(vu16 *)(0x4000000 + 0x12a)) = 0;
}

int MultiBootMain(struct MultiBootParam *mp)
{
    int i;
    int j;
    int k;

    if (MultiBootCheckComplete(mp))
    {
        return 0;
    }

    if (mp->check_wait > 15)
    {
        mp->check_wait--;
        return 0;
    }

output_burst:
    if (mp->sendflag)
    {
        mp->sendflag = 0;

        i = (*(vu16 *)(0x4000000 + 0x128)) & (0x0080 | 0x0040 | 0x0030 | 0x0008 | 0x0004);
        if (i != 0x0008)
        {
            MultiBootInit(mp);
            return i ^ 0x0008;
        }
    }

    if (mp->probe_count >= 0xe0)
    {
        i = MultiBootHandShake(mp);
        if (i)
        {
            return i;
        }

        if (mp->server_type == 1
         && mp->probe_count > 0xe1
         && MultiBootCheckComplete(mp) == 0)
        {
            MultiBootWaitSendDone();
            goto output_burst;
        }

        if (MultiBootCheckComplete(mp) == 0)
        {
            if (mp->handshake_timeout == 0)
            {
                MultiBootInit(mp);
                return 0x71;
            }
            mp->handshake_timeout--;
        }

        return 0;
    }

    switch (mp->probe_count)
    {
    case 0:
        k = 0x0e;
        for (i = 3; i != 0; i--)
        {
            if (*(vu16 *)((0x4000000 + 0x120) + i * 2) != 0xffff)
            {
                break;
            }
            k >>= 1;
        }

        k &= 0x0e;
        mp->response_bit = k;

        for (i = 3; i != 0; i--)
        {
            j = *(vu16 *)((0x4000000 + 0x120) + i * 2);
            if (mp->client_bit & (1 << i))
            {
                if (j != ((0x72 << 8) | (1 << i)))
                {
                    k = 0;
                    break;
                }
            }
        }

        mp->client_bit &= k;

        if (k == 0)
        {
            mp->check_wait = 15;
        }

        if (mp->check_wait)
        {
            mp->check_wait--;
        }
        else
        {
            if (mp->response_bit != mp->client_bit)
            {
                MultiBootStartProbe(mp);
                goto case_1;
            }
        }

    output_master_info:
        return MultiBootSend(mp, (0x62 << 8) | mp->client_bit);

    case_1:
    case 1:
        mp->probe_target_bit = 0;
        for (i = 3; i != 0; i--)
        {
            j = *(vu16 *)((0x4000000 + 0x120) + i * 2);
            if ((j >> 8) == 0x72)
            {
                MultiBoot_required_data[i - 1] = j;
                j &= 0xff;
                if (j == (1 << i))
                {
                    mp->probe_target_bit |= j;
                }
            }
        }

        if (mp->response_bit != mp->probe_target_bit)
        {
            goto output_master_info;
        }

        mp->probe_count = 2;
        return MultiBootSend(mp, (0x61 << 8) | mp->probe_target_bit);

    case 2:
        for (i = 3; i != 0; i--)
        {
            if (mp->probe_target_bit & (1 << i))
            {
                j = *(vu16 *)((0x4000000 + 0x120) + i * 2);
                if (j != MultiBoot_required_data[i - 1])
                {
                    mp->probe_target_bit ^= 1 << i;
                }
            }
        }
        goto output_header;

    case 0xd0:
        k = 1;
        for (i = 3; i != 0; i--)
        {
            j = *(vu16 *)((0x4000000 + 0x120) + i * 2);
            mp->client_data[i - 1] = j;
            if (mp->probe_target_bit & (1 << i))
            {
                if ((j >> 8) != 0x72
                 && (j >> 8) != 0x73)
                {
                    MultiBootInit(mp);
                    return 0x60;
                }
                if (j == MultiBoot_required_data[i - 1])
                {
                    k = 0;
                }
            }
        }

        if (k == 0)
        {
            return MultiBootSend(mp, (0x63 << 8) | mp->palette_data);
        }

        mp->probe_count = 0xd1;

        k = 0x11;
        for (i = 3; i != 0; i--)
        {
            k += mp->client_data[i - 1];
        }
        mp->handshake_data = k;
        return MultiBootSend(mp, (0x64 << 8) | (k & 0xff));

    case 0xd1:
        for (i = 3; i != 0; i--)
        {
            j = *(vu16 *)((0x4000000 + 0x120) + i * 2);
            if (mp->probe_target_bit & (1 << i))
            {
                if ((j >> 8) != 0x73)
                {
                    MultiBootInit(mp);
                    return 0x60;
                }
            }
        }

        i = MultiBoot(mp);

        if (i == 0)
        {
            mp->probe_count = 0xe0;
            mp->handshake_timeout = 400;
            return 0;
        }
        MultiBootInit(mp);
        mp->check_wait = 15 * 2;
        return 0x70;

    default:
        for (i = 3; i != 0; i--)
        {
            if (mp->probe_target_bit & (1 << i))
            {
                j = *(vu16 *)((0x4000000 + 0x120) + i * 2);
                if ((j >> 8) != (0x61 + 1 - (mp->probe_count >> 1))
                 || ((j & 0xff) != (1 << i)))
                {
                    mp->probe_target_bit ^= 1 << i;
                }
            }
        }

        if (mp->probe_count == 0xc4)
        {
            mp->client_bit = mp->probe_target_bit & 0x0e;
            mp->probe_count = 0;
            goto output_master_info;
        }

    output_header:
        if (mp->probe_target_bit == 0)
        {
            MultiBootInit(mp);
            return 0x50;
        }

        mp->probe_count += 2;
        if (mp->probe_count == 0xc4)
        {
            goto output_master_info;
        }
        i = MultiBootSend(mp,
            (mp->masterp[mp->probe_count - 4 + 1] << 8)
            | mp->masterp[mp->probe_count - 4]);

        if (i)
        {
            return i;
        }
        if (mp->server_type == 1)
        {
            MultiBootWaitSendDone();
            goto output_burst;
        }
        return 0;
    }
}

static int MultiBootSend(struct MultiBootParam *mp, u16 data)
{
    int i;

    i = (*(vu16 *)(0x4000000 + 0x128)) & (0x0080 | 0x0008 | 0x0004);
    if (i != 0x0008)
    {
        MultiBootInit(mp);
        return i ^ 0x0008;
    }

    (*(vu16 *)(0x4000000 + 0x12a)) = data;
    (*(vu16 *)(0x4000000 + 0x128)) = 0x2000 | 0x0080 | 0x0003;

    mp->sendflag = 1;
    return 0;
}

void MultiBootStartProbe(struct MultiBootParam *mp)
{
    if (mp->probe_count != 0)
    {
        MultiBootInit(mp);
        return;
    }
    mp->check_wait = 0;
    mp->client_bit = 0;
    mp->probe_count = 1;
}

void MultiBootStartMaster(struct MultiBootParam *mp, const u8 *srcp, int length, u8 palette_color, s8 palette_speed)
{
    int i = 0;

    if (mp->probe_count != 0
     || mp->client_bit == 0
     || mp->check_wait != 0)
    {
        MultiBootInit(mp);
        return;
    }

    mp->boot_srcp = srcp;
    length = (length + 15) & ~15;
    if (length < 0x100 || length > 0x40000)
    {
        MultiBootInit(mp);
        return;
    }

    mp->boot_endp = srcp + length;

    switch (palette_speed)
    {
    case -4:
    case -3:
    case -2:
    case -1:
        i = (palette_color << 3) | (3 - palette_speed);
        break;
    case 0:
        i = 0x38 | palette_color;
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        i = (palette_color << 3) | (palette_speed - 1);
        break;
    }

    mp->palette_data = ((i & 0x3f) << 1) | 0x81;
    mp->probe_count = 0xd0;
}

int MultiBootCheckComplete(struct MultiBootParam *mp)
{
    if (mp->probe_count == 0xe9)
    {
        return 1;
    }

    return 0;
}

static int MultiBootHandShake(struct MultiBootParam *mp)
{
    int i, j;




    switch (mp->probe_count)
    {
    case_0xe0:
    case 0xe0:
        mp->probe_count = 0xe1;
        (mp->system_work[1]) = 0x0000;
        (mp->system_work[0]) = 0x100000;
        return MultiBootSend(mp, 0x0000);

    default:
        for (i = 3; i != 0; i--)
        {
            j = *(vu16 *)((0x4000000 + 0x120) + i * 2);
            if ((mp->client_bit & (1 << i))
                && j != (mp->system_work[1]))
            {
                goto case_0xe0;
            }
        }
        mp->probe_count++;
        (mp->system_work[1]) = (mp->system_work[0]) & 0xffff;
        if ((mp->system_work[0]) == 0x0000)
        {
            (mp->system_work[1]) = mp->masterp[0xac] | (mp->masterp[0xad] << 8);
            (mp->system_work[0]) = (mp->system_work[1]) << 5;
        }
        (mp->system_work[0]) >>= 5;
    output_common:
        return MultiBootSend(mp, (mp->system_work[0]));

    case 0xe7:
    case 0xe8:
        for (i = 3; i != 0; i--)
        {
            j = *(vu16 *)((0x4000000 + 0x120) + i * 2);
            if ((mp->client_bit & (1 << i)) && j != (mp->system_work[1]))
            {
                MultiBootInit(mp);
                return 0x71;
            }
        }

        mp->probe_count++;
        if (mp->probe_count == 0xe9)
        {
            return 0;
        }

        (mp->system_work[0]) = mp->masterp[0xae] | (mp->masterp[0xaf] << 8);
        (mp->system_work[1]) = (mp->system_work[0]);
        goto output_common;
    }



}

static void MultiBootWaitCycles(u32 cycles)
{
    asm("mov r2, pc");
    asm("lsr r2, #24");
    asm("mov r1, #12");
    asm("cmp r2, #0x02");
    asm("beq MultiBootWaitCyclesLoop");

    asm("mov r1, #13");
    asm("cmp r2, #0x08");
    asm("beq MultiBootWaitCyclesLoop");

    asm("mov r1, #4");

    asm("MultiBootWaitCyclesLoop:");
    asm("sub r0, r1");
    asm("bgt MultiBootWaitCyclesLoop");
}

static void MultiBootWaitSendDone(void)
{
    int i;

    for (i = 0; i < 31069; i++)
    {
        if (((*(vu16 *)(0x4000000 + 0x128)) & 0x0080) == 0)
        {
            break;
        }
    }

    MultiBootWaitCycles(600);
}
