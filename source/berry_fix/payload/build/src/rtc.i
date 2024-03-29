# 1 "src/rtc.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/rtc.c"
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1



# 1 "../../tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 5 "include/gba/defines.h" 2
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "../../tools/agbcc/include/stdint.h" 1
# 31 "../../tools/agbcc/include/stdint.h"
# 1 "../../tools/agbcc/include/limits.h" 1
# 32 "../../tools/agbcc/include/stdint.h" 2



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
# 90 "include/gba/types.h"
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
# 142 "include/gba/types.h"
typedef void (*MainCallback)(void);
typedef void (*IntrCallback)(void);
typedef void (*IntrFunc)(void);
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
# 16 "include/gba/syscall.h"
void SoftReset(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const void *src, void *dest);

void LZ77UnCompVram(const void *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);

void SoundBiasReset(void);

void SoundBiasSet(void);

u32 Div(u32 divisor, u32 dividend);
u32 Mod(u32 divisor, u32 dividend);
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
# 2 "src/rtc.c" 2
# 1 "include/siirtc.h" 1



# 1 "include/gba/gba.h" 1
# 5 "include/siirtc.h" 2







enum
{
    MONTH_JAN = 1,
    MONTH_FEB,
    MONTH_MAR,
    MONTH_APR,
    MONTH_MAY,
    MONTH_JUN,
    MONTH_JUL,
    MONTH_AUG,
    MONTH_SEP,
    MONTH_OCT,
    MONTH_NOV,
    MONTH_DEC
};

struct SiiRtcInfo
{
    u8 year;
    u8 month;
    u8 day;
    u8 dayOfWeek;
    u8 hour;
    u8 minute;
    u8 second;
    u8 status;
    u8 alarmHour;
    u8 alarmMinute;
};

void SiiRtcUnprotect(void);
void SiiRtcProtect(void);
u8 SiiRtcProbe(void);
bool8 SiiRtcReset(void);
bool8 SiiRtcGetStatus(struct SiiRtcInfo *rtc);
bool8 SiiRtcSetStatus(struct SiiRtcInfo *rtc);
bool8 SiiRtcGetDateTime(struct SiiRtcInfo *rtc);
bool8 SiiRtcSetDateTime(struct SiiRtcInfo *rtc);
bool8 SiiRtcGetTime(struct SiiRtcInfo *rtc);
bool8 SiiRtcSetTime(struct SiiRtcInfo *rtc);
bool8 SiiRtcSetAlarm(struct SiiRtcInfo *rtc);
# 3 "src/rtc.c" 2
# 1 "include/global.h" 1
# 43 "include/global.h"
enum
{
    B_8 = 1,
    B_16 = 2,
    B_32 = 4
};
# 77 "include/global.h"
enum
{
    VERSION_SAPPHIRE = 1,
    VERSION_RUBY = 2,
    VERSION_EMERALD = 3,
};

enum LanguageId
{
    LANGUAGE_JAPANESE = 1,
    LANGUAGE_ENGLISH = 2,
    LANGUAGE_GERMAN = 5,
};
# 110 "include/global.h"
enum
{
    MALE,
    FEMALE
};

enum
{
    OPTIONS_BUTTON_MODE_NORMAL,
    OPTIONS_BUTTON_MODE_LR,
    OPTIONS_BUTTON_MODE_L_EQUALS_A
};

enum
{
    OPTIONS_TEXT_SPEED_SLOW,
    OPTIONS_TEXT_SPEED_MID,
    OPTIONS_TEXT_SPEED_FAST
};

enum
{
    OPTIONS_SOUND_MONO,
    OPTIONS_SOUND_STEREO
};

enum
{
    OPTIONS_BATTLE_STYLE_SHIFT,
    OPTIONS_BATTLE_STYLE_SET
};

enum
{
    BAG_ITEMS = 1,
    BAG_POKEBALLS,
    BAG_TMsHMs,
    BAG_BERRIES,
    BAG_KEYITEMS
};

struct Coords16
{
    s16 x;
    s16 y;
};

struct UCoords16
{
    u16 x;
    u16 y;
};

struct SecretBaseRecord
{
               u8 secretBaseId;
               u8 sbr_field_1_0:4;
               u8 gender:1;
               u8 sbr_field_1_5:1;
               u8 sbr_field_1_6:2;
               u8 playerName[7];
               u8 trainerId[4];
               u16 sbr_field_e;
               u8 sbr_field_10;
               u8 sbr_field_11;
               u8 decorations[16];
               u8 decorationPos[16];
               u32 partyPersonality[6];
               u16 partyMoves[6 * 4];
               u16 partySpecies[6];
               u16 partyHeldItems[6];
               u8 partyLevels[6];
               u8 partyEVs[6];
};

# 1 "include/constants/game_stat.h" 1
# 186 "include/global.h" 2
# 1 "include/global.fieldmap.h" 1



enum
{
    CONNECTION_SOUTH = 1,
    CONNECTION_NORTH,
    CONNECTION_WEST,
    CONNECTION_EAST,
    CONNECTION_DIVE,
    CONNECTION_EMERGE
};

typedef void (*TilesetCB)(void);

struct Tileset
{
             bool8 isCompressed;
             bool8 isSecondary;
             void *tiles;
             void *palettes;
             void *metatiles;
             void *metatileAttributes;
             TilesetCB callback;
};

struct MapLayout
{
             s32 width;
             s32 height;
             u16 *border;
             u16 *map;
             struct Tileset *primaryTileset;
             struct Tileset *secondaryTileset;
};

struct BackupMapLayout
{
    s32 width;
    s32 height;
    u16 *map;
};

struct EventObjectTemplate
{
             u8 localId;
             u8 graphicsId;
             u8 unk2;
             s16 x;
             s16 y;
             u8 elevation;
             u8 movementType;
             u8 movementRangeX:4;
             u8 movementRangeY:4;
             u16 trainerType;
             u16 trainerRange_berryTreeId;
             u8 *script;
             u16 flagId;
};

struct WarpEvent
{
    s16 x, y;
    u8 elevation;
    u8 warpId;
    u8 mapNum;
    u8 mapGroup;
};

struct CoordEvent
{
    s16 x, y;
    u8 elevation;
    u16 trigger;
    u16 index;
    u8 filler_A[0x2];
    u8 *script;
};

struct BgEvent
{
            u16 x;
            u16 y;
            u8 elevation;
            u8 kind;
            union {

        u8 *script;


        struct {
            u16 item;
            u16 hiddenItemId;
        } hiddenItem;


        u32 secretBaseId;

    } bgUnion;
};

struct MapEvents
{
    u8 eventObjectCount;
    u8 warpCount;
    u8 coordEventCount;
    u8 bgEventCount;

    struct EventObjectTemplate *eventObjects;
    struct WarpEvent *warps;
    struct CoordEvent *coordEvents;
    struct BgEvent *bgEvents;
};

struct MapConnection
{
          u8 direction;
          u32 offset;
          u8 mapGroup;
          u8 mapNum;
};

struct MapConnections
{
    s32 count;
    struct MapConnection *connections;
};

struct MapHeader
{
               struct MapLayout *mapLayout;
               struct MapEvents *events;
               u8 *mapScripts;
               struct MapConnections *connections;
               u16 music;
               u16 mapLayoutId;
               u8 regionMapSectionId;
               u8 cave;
               u8 weather;
               u8 mapType;
               u8 filler_18;
               u8 escapeRope;
               u8 flags;
               u8 battleType;
};

struct EventObject
{
             u32 active:1;
             u32 singleMovementActive:1;
             u32 triggerGroundEffectsOnMove:1;
             u32 triggerGroundEffectsOnStop:1;
             u32 disableCoveringGroundEffects:1;
             u32 landingJump:1;
             u32 heldMovementActive:1;
             u32 heldMovementFinished:1;
             u32 frozen:1;
             u32 facingDirectionLocked:1;
             u32 disableAnim:1;
             u32 enableAnim:1;
             u32 inanimate:1;
             u32 invisible:1;
             u32 offScreen:1;
             u32 trackedByCamera:1;
             u32 isPlayer:1;
             u32 hasReflection:1;
             u32 inShortGrass:1;
             u32 inShallowFlowingWater:1;
             u32 inSandPile:1;
             u32 inHotSprings:1;
             u32 hasShadow:1;
             u32 spriteAnimPausedBackup:1;
             u32 spriteAffineAnimPausedBackup:1;
             u32 disableJumpLandingGroundEffect:1;
             u32 fixedPriority:1;
             u8 spriteId;
             u8 graphicsId;
             u8 movementType;
             u8 trainerType;
             u8 localId;
             u8 mapNum;
             u8 mapGroup;
             u8 currentElevation:4;
             u8 previousElevation:4;
             struct Coords16 initialCoords;
             struct Coords16 currentCoords;
             struct Coords16 previousCoords;
             u8 facingDirection:4;
             u8 movementDirection:4;
             union __attribute__((packed)) {
        u8 as_byte;
        struct __attribute__((packed)) {
            u16 x:4;
            u16 y:4;
        } as_nybbles;
    } range;
             u8 fieldEffectSpriteId;
             u8 warpArrowSpriteId;
             u8 movementActionId;
             u8 trainerRange_berryTreeId;
             u8 currentMetatileBehavior;
             u8 previousMetatileBehavior;
             u8 previousMovementDirection;
             u8 directionSequenceIndex;
             u8 playerCopyableMovement;

};

struct EventObjectGraphicsInfo
{
             u16 tileTag;
             u16 paletteTag;
             u16 bridgeReflectionPaletteTag;
             u16 size;
             s16 width;
             s16 height;
             u8 paletteSlot:4;
             u8 shadowSize:2;
             u8 inanimate:1;
             u8 disableReflectionPaletteLoad:1;
             u8 tracks;
             const struct OamData *oam;
             const struct SubspriteTable *subspriteTables;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
};
# 238 "include/global.fieldmap.h"
enum
{
    ACRO_BIKE_NORMAL,
    ACRO_BIKE_TURNING,
    ACRO_BIKE_WHEELIE_STANDING,
    ACRO_BIKE_BUNNY_HOP,
    ACRO_BIKE_WHEELIE_MOVING,
    ACRO_BIKE_STATE5,
    ACRO_BIKE_STATE6,
};

enum
{
    DIR_NONE,
    DIR_SOUTH,
    DIR_NORTH,
    DIR_WEST,
    DIR_EAST,
    DIR_SOUTHWEST,
    DIR_SOUTHEAST,
    DIR_NORTHWEST,
    DIR_NORTHEAST,
};

enum
{
    COLLISION_LEDGE_JUMP = 6
};


enum
{
    NOT_MOVING,
    TURN_DIRECTION,
    MOVING,
};


enum
{
    T_NOT_MOVING,
    T_TILE_TRANSITION,
    T_TILE_CENTER,
};

struct PlayerAvatar
{
             u8 flags;
             u8 unk1;
             u8 runningState;
             u8 tileTransitionState;
             u8 spriteId;
             u8 eventObjectId;
             bool8 preventStep;
             u8 gender;
             u8 acroBikeState;
             u8 newDirBackup;
             u8 bikeFrameCounter;
             u8 bikeSpeed;

             u32 directionHistory;
             u32 abStartSelectHistory;

             u8 dirTimerHistory[8];
             u8 abStartSelectTimerHistory[8];
};

struct Camera
{
    bool8 active:1;
    s32 x;
    s32 y;
};

extern struct EventObject gMapObjects[];
extern u8 gSelectedEventObject;
extern struct MapHeader gMapHeader;
extern struct PlayerAvatar gPlayerAvatar;
# 187 "include/global.h" 2
# 1 "include/global.berry.h" 1



struct Berry
{
             u8 name[7];
             u8 firmness;
             u16 size;
             u8 maxYield;
             u8 minYield;
             const u8 *description1;
             const u8 *description2;
             u8 stageDuration;
             u8 spicy;
             u8 dry;
             u8 sweet;
             u8 bitter;
             u8 sour;
             u8 smoothness;
};

struct EnigmaBerry
{
              struct Berry berry;
              u8 pic[(6 * 6) * 32];
              u16 palette[16];
              u8 description1[45];
              u8 description2[45];
              u8 itemEffect[18];
              u8 holdEffect;
              u8 holdEffectParam;
              u32 checksum;
};

struct BattleEnigmaBerry
{
             u8 name[7];
             u8 holdEffect;
             u8 itemEffect[18];
             u8 holdEffectParam;
};

struct BerryTree
{
             u8 berry;
             u8 stage:7;





             bool8 growthSparkle:1;
             u16 minutesUntilNextStage;
             u8 berryYield;
             u8 regrowthCount:4;
             u8 watered1:1;
             u8 watered2:1;
             u8 watered3:1;
             u8 watered4:1;
};
# 188 "include/global.h" 2
# 1 "include/pokemon.h" 1



struct PokemonSubstruct0
{
    u16 species;
    u16 heldItem;
    u32 experience;
    u8 ppBonuses;
    u8 friendship;
};

struct PokemonSubstruct1
{
    u16 moves[4];
    u8 pp[4];
};

struct PokemonSubstruct2
{
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
};

struct PokemonSubstruct3
{
             u8 pokerus;
             u8 metLocation;

             u16 metLevel:7;
             u16 metGame:4;
             u16 pokeball:4;
             u16 otGender:1;

             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 isEgg:1;
             u32 altAbility:1;

             u32 coolRibbon:3;
             u32 beautyRibbon:3;
             u32 cuteRibbon:3;
             u32 smartRibbon:3;
             u32 toughRibbon:3;
             u32 championRibbon:1;
             u32 winningRibbon:1;
             u32 victoryRibbon:1;
             u32 artistRibbon:1;
             u32 effortRibbon:1;
             u32 giftRibbon1:1;
             u32 giftRibbon2:1;
             u32 giftRibbon3:1;
             u32 giftRibbon4:1;
             u32 giftRibbon5:1;
             u32 giftRibbon6:1;
             u32 giftRibbon7:1;
             u32 fatefulEncounter:5;
};

union PokemonSubstruct
{
    struct PokemonSubstruct0 type0;
    struct PokemonSubstruct1 type1;
    struct PokemonSubstruct2 type2;
    struct PokemonSubstruct3 type3;
    u16 raw[6];
};

struct BoxPokemon
{
             u32 personality;
             u32 otId;
             u8 nickname[10];
             u8 language;
             u8 isBadEgg:1;
             u8 hasSpecies:1;
             u8 isEgg:1;
             u8 otName[7];
             u8 markings;
             u16 checksum;
             u16 unknown;

    union
    {
        u32 raw[12];
        union PokemonSubstruct substructs[4];
    } secure;
};

struct Pokemon
{
             struct BoxPokemon box;
             u32 status;
             u8 level;
             u8 mail;
             u16 hp;
             u16 maxHP;
             u16 attack;
             u16 defense;
             u16 speed;
             u16 spAttack;
             u16 spDefense;
};

struct BattleTowerPokemon
{
            u16 species;
            u16 heldItem;
            u16 moves[4];
            u8 level;
            u8 ppBonuses;
            u8 hpEV;
            u8 attackEV;
            u8 defenseEV;
            u8 speedEV;
            u8 spAttackEV;
            u8 spDefenseEV;
            u32 otId;
            u32 hpIV:5;
            u32 attackIV:5;
            u32 defenseIV:5;
            u32 speedIV:5;
            u32 spAttackIV:5;
            u32 spDefenseIV:5;
            u32 gap:1;
            u32 altAbility:1;
            u32 personality;
            u8 nickname[10 + 1];
            u8 friendship;
};

struct PokemonStorage
{
               u8 currentBox;
               struct BoxPokemon boxes[14][30];
               u8 boxNames[14][9];
               u8 wallpaper[14];
};
# 189 "include/global.h" 2

struct WarpData
{
    s8 mapGroup;
    s8 mapNum;
    s8 warpId;
    s16 x, y;
};

struct ItemSlot
{
    u16 itemId;
    u16 quantity;
};

struct Pokeblock
{
    u8 color;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 feel;
};

struct Roamer
{
             u32 ivs;
             u32 personality;
             u16 species;
             u16 hp;
             u8 level;
             u8 status;
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             bool8 active;
             u8 filler[0x8];
};

struct RamScriptData
{
    u8 magic;
    u8 mapGroup;
    u8 mapNum;
    u8 objectId;
    u8 script[995];
};

struct RamScript
{
    u32 checksum;
    struct RamScriptData data;
};

struct EasyChatPair
{
    u16 unk0_0:7;
    u16 unk0_7:7;
    u16 unk1_6:1;
    u16 unk2;
    u16 words[2];
};

struct TVShowCommon
{
             u8 kind;
             bool8 active;
             u8 pad02[20];
             u16 var16[3];
             u8 srcTrainerId3Lo;
             u8 srcTrainerId3Hi;
             u8 srcTrainerId2Lo;
             u8 srcTrainerId2Hi;
             u8 srcTrainerIdLo;
             u8 srcTrainerIdHi;
             u8 trainerIdLo;
             u8 trainerIdHi;
};

struct TVShowFanClubLetter
{
             u8 kind;
             bool8 active;
             u16 species;
             u16 pad04[6];
             u8 playerName[8];
             u8 language;
};

struct TVShowRecentHappenings
{
             u8 kind;
             bool8 active;
             u16 var02;
             u16 var04[6];
             u8 playerName[8];
             u8 language;
             u8 pad19[10];
};

struct TVShowFanclubOpinions
{
             u8 kind;
             bool8 active;
             u16 var02;
             u8 var04A:4;
             u8 var04B:4;
             u8 playerName[8];
             u8 language;
             u8 var0E;
             u8 var0F;
             u8 var10[8];
             u16 var18[2];
             u16 var1C[4];
};

struct TVShowUnknownType04
{
             u8 kind;
             bool8 active;
             u8 pad02[4];
             u16 var06;
};

struct TVShowNameRaterShow
{
             u8 kind;
             bool8 active;
             u16 species;
             u8 pokemonName[11];
             u8 trainerName[11];
             u8 random;
             u8 random2;
             u16 var1C;
             u8 language;
             u8 pokemonNameLanguage;
};

struct TVShowBravoTrainerPokemonProfiles
{
             u8 kind;
             bool8 active;
             u16 species;
             u16 var04[2];
             u8 pokemonNickname[11];
             u8 contestCategory:3;
             u8 contestRank:2;
             u8 contestResult:2;
             u8 var13_7:1;
             u16 var14;
             u8 playerName[8];
             u8 language;
             u8 var1f;
};

struct TVShowBravoTrainerBattleTowerSpotlight
{
             u8 kind;
             bool8 active;
             u8 trainerName[8];
             u16 species;
             u8 enemyTrainerName[8];
             u16 defeatedSpecies;
             u16 var16;
             u16 var18[1];
             u8 btLevel;
             u8 var1b;
             u8 var1c;
             u8 language;
};

struct TVShowPokemonToday
{
             u8 kind;
             bool8 active;
             u8 language;
             u8 language2;
             u8 nickname[11];
             u8 ball;
             u16 species;
             u8 var12;
             u8 playerName[8];
};

struct TVShowSmartShopper
{
             u8 kind;
             bool8 active;
             u8 priceReduced;
             u8 language;
             u8 pad04[2];
             u16 itemIds[3];
             u16 itemAmounts[3];
             u8 shopLocation;
             u8 playerName[8];
};

struct TVShowPokemonTodayFailed
{
             u8 kind;
             bool8 active;
             u8 language;
             u8 pad03[9];
             u16 species;
             u16 species2;
             u8 var10;
             u8 var11;
             u8 var12;
             u8 playerName[8];
};

struct TVShowPokemonAngler
{
             u8 kind;
             bool8 active;
             u8 var02;
             u8 var03;
             u16 var04;
             u8 language;
    u8 pad07[12];
             u8 playerName[8];
};

struct TVShowWorldOfMasters
{
             u8 kind;
             bool8 active;
             u16 var02;
             u16 var04;
             u16 var06;
             u16 var08;
             u8 var0a;
             u8 language;
    u8 pad0c[7];
             u8 playerName[8];
};

struct TVShowMassOutbreak
{
             u8 kind;
             bool8 active;
             u8 var02;
             u8 var03;
             u16 moves[4];
             u16 species;
             u16 var0E;
             u8 locationMapNum;
             u8 locationMapGroup;
             u8 var12;
             u8 probability;
             u8 level;
             u8 var15;
             u16 daysLeft;
             u8 language;
    u8 pad19[11];
};

typedef union TVShow
{
    struct TVShowCommon common;
    struct TVShowFanClubLetter fanclubLetter;
    struct TVShowRecentHappenings recentHappenings;
    struct TVShowFanclubOpinions fanclubOpinions;
    struct TVShowUnknownType04 unkShow04;
    struct TVShowNameRaterShow nameRaterShow;
    struct TVShowBravoTrainerPokemonProfiles bravoTrainer;
    struct TVShowBravoTrainerBattleTowerSpotlight bravoTrainerTower;
    struct TVShowPokemonToday pokemonToday;
    struct TVShowSmartShopper smartshopperShow;
    struct TVShowPokemonTodayFailed pokemonTodayFailed;
    struct TVShowPokemonAngler pokemonAngler;
    struct TVShowWorldOfMasters worldOfMasters;
    struct TVShowMassOutbreak massOutbreak;
} TVShow;

struct MailStruct
{
             u16 words[9];
             u8 playerName[8];
             u8 trainerId[4];
             u16 species;
             u16 itemId;
};




struct MauvilleManCommon
{
    u8 id;
};

struct MauvilleManBard
{
             u8 id;
             u16 songLyrics[6];
             u16 temporaryLyrics[6];
             u8 playerName[8];
             u8 filler_2DB6[0x3];
             u8 playerTrainerId[4];
             bool8 hasChangedSong;
};

struct MauvilleManHipster
{
    u8 id;
    bool8 alreadySpoken;
};

struct MauvilleManTrader
{
    u8 id;
    u8 unk1[4];
    u8 unk5[4][11];
    bool8 alreadyTraded;
};

struct MauvilleManStoryteller
{
    u8 id;
    bool8 alreadyRecorded;
    u8 filler2[2];
    u8 gameStatIDs[4];
    u8 trainerNames[4][7];
    u8 statValues[4][4];
};

struct MauvilleManGiddy
{
             u8 id;
             u8 taleCounter;
             u8 questionNum;
             u16 randomWords[10];
             u8 questionList[12];
};


union MauvilleMan
{
    struct MauvilleManCommon common;
    struct MauvilleManBard bard;
    struct MauvilleManHipster hipster;
    struct MauvilleManTrader trader;
    struct MauvilleManStoryteller storyteller;
    struct MauvilleManGiddy giddy;
    u8 filler[0x40];
};

struct PokeNews
{
    u8 kind;
    u8 state;
    u16 days;
};

struct GabbyAndTyData
{
             u16 mon1;
             u16 mon2;
             u16 lastMove;
             u16 quote;
             u8 mapnum;
             u8 battleNum;
             u8 valA_0:1;
             u8 valA_1:1;
             u8 valA_2:1;
             u8 valA_3:1;
             u8 valA_4:1;
             u8 valA_5:3;
             u8 valB_0:1;
             u8 valB_1:1;
             u8 valB_2:1;
             u8 valB_3:1;
             u8 valB_4:1;
             u8 valB_5:3;
};

struct DayCareMail
{
             struct MailStruct message;
             u8 names[19];
};

struct DayCareStepCountersEtc {
    u32 steps[2];
    u16 pendingEggPersonality;
    u8 eggCycleStepsRemaining;
};

struct RecordMixingDayCareMail
{
    struct DayCareMail mail[2];
    u32 numDaycareMons;
    u16 itemsHeld[2];
};

struct DayCareMisc
{
    struct DayCareMail mail[2];
    struct DayCareStepCountersEtc countersEtc;
};

struct DayCare {
    struct BoxPokemon mons[2];
    struct DayCareMisc misc;
};

struct LinkBattleRecord
{
    u8 name[8];
    u16 trainerId;
    u16 wins;
    u16 losses;
    u16 draws;
};

struct RecordMixingGiftData
{
    u8 unk0;
    u8 quantity;
    u16 itemId;
    u8 filler4[8];
};

struct RecordMixingGift
{
    int checksum;
    struct RecordMixingGiftData data;
};

struct ContestWinner
{
             u32 personality;
             u32 otId;
             u16 species;
             u8 contestCategory;
             u8 nickname[11];
             u8 trainerName[8];
};






struct SaveBlock1
{
             struct Coords16 pos;
             struct WarpData location;
             struct WarpData warp1;
             struct WarpData warp2;
             struct WarpData lastHealLocation;
             struct WarpData warp4;
             u16 savedMusic;
             u8 weather;
             u8 weatherCycleStage;
             u8 flashLevel;
             u16 mapLayoutId;
             u16 mapView[0x100];
              u8 playerPartyCount;
              struct Pokemon playerParty[6];
              u32 money;
              u16 coins;
              u16 registeredItem;
              struct ItemSlot pcItems[50];
              struct ItemSlot bagPocket_Items[20];
              struct ItemSlot bagPocket_KeyItems[20];
              struct ItemSlot bagPocket_PokeBalls[16];
              struct ItemSlot bagPocket_TMHM[64];
              struct ItemSlot bagPocket_Berries[46];
              struct Pokeblock pokeblocks[40];
              u8 dexSeen2[((412 / 8) + ((412 % 8) ? 1 : 0))];
              u16 berryBlenderRecords[3];
              u8 filler_972[0x6];
              u16 trainerRematchStepCounter;
              u8 trainerRematches[100];
              struct EventObject eventObjects[16];
              struct EventObjectTemplate eventObjectTemplates[64];
               u8 flags[288];
               u16 vars[256];
               u32 gameStats[50];
               struct BerryTree berryTrees[128];
               struct SecretBaseRecord secretBases[20];
               u8 playerRoomDecor[12];
               u8 playerRoomDecorPos[12];
               u8 decorDesk[10];
               u8 decorChair[10];
               u8 decorPlant[10];
               u8 decorOrnament[30];
               u8 decorMat[30];
               u8 decorPoster[10];
               u8 decorDoll[40];
               u8 decorCushion[10];
               u8 padding_2736[2];
               TVShow tvShows[25];
               struct PokeNews pokeNews[16];
               u16 outbreakPokemonSpecies;
               u8 outbreakLocationMapNum;
               u8 outbreakLocationMapGroup;
               u8 outbreakPokemonLevel;
               u8 outbreakUnk1;
               u16 outbreakUnk2;
               u16 outbreakPokemonMoves[4];
               u8 outbreakUnk4;
               u8 outbreakPokemonProbability;
               u16 outbreakUnk5;
               struct GabbyAndTyData gabbyAndTyData;
               struct {
                   u16 unk2B1C[6];
                   u16 unk2B28[6];
                   u16 unk2B34[6];
                   u16 unk2B40[6];
    } easyChats;
               struct MailStruct mail[16];
               u8 unk2D8C[4];
               u8 filler_2D90[0x4];
               union MauvilleMan mauvilleMan;
               struct EasyChatPair easyChatPairs[5];
               struct ContestWinner contestWinners[8];
               struct ContestWinner museumPortraits[5];
               struct DayCare daycare;
               struct LinkBattleRecord linkBattleRecords[5];
    struct {
                   u8 unknown1[8];
                   u8 giftRibbons[11];
                   u8 unknown2[8];
                   u32 currentPokeCoupons;
                   u32 totalEarnedPokeCoupons;
                   u8 unknown3[6];
                   u8 receivedWishmakerJirachi;
                   u8 unknown4[18];
    } __attribute__((packed)) externalReservedData;
               struct Roamer roamer;
               struct EnigmaBerry enigmaBerry;
               struct RamScript ramScript;
               struct RecordMixingGift recordMixingGift;
               u8 dexSeen3[((412 / 8) + ((412 % 8) ? 1 : 0))];
};

extern struct SaveBlock1 gSaveBlock1;

struct Time
{
             s16 days;
             s8 hours;
             s8 minutes;
             s8 seconds;
};

struct Pokedex
{
             u8 order;
             u8 unknown1;
             u8 nationalMagic;
             u8 unknown2;
             u32 unownPersonality;
             u32 spindaPersonality;
             u32 unknown3;
             u8 owned[((412 / 8) + ((412 % 8) ? 1 : 0))];
             u8 seen[((412 / 8) + ((412 % 8) ? 1 : 0))];
};

struct BattleTowerTrainer
{
             u8 trainerClass;
             u8 name[8];
             u8 teamFlags;
    u8 filler0A[2];
             u16 greeting[6];
};

struct BattleTowerRecord
{
             u8 battleTowerLevelType;
             u8 trainerClass;
             u16 winStreak;
             u8 name[8];
             u8 trainerId[4];
             u16 greeting[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};

struct BattleTowerEReaderTrainer
{
             u8 unk0;
             u8 trainerClass;
             u16 winStreak;
             u8 name[8];
             u8 trainerId[4];
             u16 greeting[6];
             u16 farewellPlayerLost[6];
             u16 farewellPlayerWon[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};

struct BattleTowerData
{
                       struct BattleTowerRecord playerRecord;
                       struct BattleTowerRecord records[5];
                       u16 firstMonSpecies;
                       u16 defeatedBySpecies;
                       u8 defeatedByTrainerName[8];
                       u8 firstMonNickname[10];
                       struct BattleTowerEReaderTrainer ereaderTrainer;
                       u8 battleTowerLevelType:1;
                       u8 unk_554:1;
                       u8 battleOutcome;
                       u8 var_4AE[2];
                       u16 curChallengeBattleNum[2];
                       u16 curStreakChallengesNum[2];
                       u16 recordWinStreaks[2];
                       u8 battleTowerTrainerId;
                       u8 selectedPartyMons[0x3];
                       u16 prizeItem;
                       u8 battledTrainerIds[6];
                       u16 totalBattleTowerWins;
                       u16 bestBattleTowerWinStreak;
                       u16 currentWinStreaks[2];
                       u8 lastStreakLevelType;
                       u8 filler_4D1[0x317];
};

struct SaveBlock2
{
             u8 playerName[8];
             u8 playerGender;
             u8 specialSaveWarp;
             u8 playerTrainerId[4];
             u16 playTimeHours;
             u8 playTimeMinutes;
             u8 playTimeSeconds;
             u8 playTimeVBlanks;
             u8 optionsButtonMode;
             u16 optionsTextSpeed:3;
    u16 optionsWindowFrameType:5;
    u16 optionsSound:1;
    u16 optionsBattleStyle:1;
    u16 optionsBattleSceneOff:1;
    u16 regionMapZoom:1;
             struct Pokedex pokedex;
             u8 filler_90[0x8];
             struct Time localTimeOffset;
             struct Time lastBerryTreeUpdate;
             struct BattleTowerData battleTower;
};

struct MapPosition
{
    s16 x;
    s16 y;
    s8 height;
};

struct UnkStruct_8054FF8
{
    u8 a;
    u8 b;
    u8 c;
    u8 d;
    struct MapPosition sub;
    u16 field_C;
};


struct HallOfFame
{
    u8 filler[0x1F00];
};

extern struct SaveBlock2 gSaveBlock2;
# 4 "src/rtc.c" 2
# 1 "include/main.h" 1





enum RomHeaderValidationResult
{
    SAPPHIRE_UPDATABLE = 2,
    RUBY_UPDATABLE,
    SAPPHIRE_NONEED,
    RUBY_NONEED,
    INVALID
};

enum MainCallbackState
{
    MAINCB_INIT = 0,
    MAINCB_CHECK_RTC,
    MAINCB_CHECK_FLASH,
    MAINCB_READ_SAVE,
    MAINCB_CHECK_TIME,
    MAINCB_FIX_DATE,
    MAINCB_NO_NEED_TO_FIX,
    MAINCB_YEAR_MAKES_NO_SENSE,
    MAINCB_FINISHED,
    MAINCB_CHECK_PACIFIDLOG_TM,
    MAINCB_FIX_PACIFIDLOG_TM,
    MAINCB_ERROR
};

extern IntrFunc gIntrTable[];
extern u16 gHeldKeys;
extern u16 gNewKeys;
extern u8 gIntrVector[];
extern u32 gUpdateSuccessful;
extern u32 gUnknown_3001194;
extern u32 gUnknown_30011A0[];
extern u32 gMainCallbackState;
extern u32 gGameVersion;

extern u8 gSharedMem[0x8000];

extern const IntrFunc gIntrFuncPointers[];
# 5 "src/rtc.c" 2

struct Time gTimeSinceBerryUpdate;
struct Time gRtcUTCTime;

static u16 sRtcProbeStatus;
static struct SiiRtcInfo sRtcInfoBuffer;
static u8 sRtcProbeCode;
static u16 sImeBak;
static struct SiiRtcInfo sRtcInfoWork;

const struct SiiRtcInfo sDefaultRTC = {
    .year = 0,
    .month = 1,
    .day = 1,
    .dayOfWeek = 0,
    .hour = 0,
    .minute = 0,
    .second = 0,
    .status = 0,
    .alarmHour = 0,
    .alarmMinute = 0
};
const s32 sDaysPerMonth[] = {
    31,
    28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
};

void rtc_get_status_and_datetime(struct SiiRtcInfo *);
u16 rtc_validate_datetime(struct SiiRtcInfo *);


void rtc_intr_disable(void)
{
    sImeBak = (*(vu16 *)(0x4000000 + 0x208));
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
}

void rtc_intr_enable(void)
{
    (*(vu16 *)(0x4000000 + 0x208)) = sImeBak;
}

s32 bcd_to_hex(u8 a0)
{
    if (a0 >= 0xa0 || (a0 & 0xF) >= 10)
        return 0xFF;
    return ((a0 >> 4) & 0xF) * 10 + (a0 & 0xF);
}

bool8 is_leap_year(u8 year)
{
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
        return 1;
    return 0;
}

u16 rtc_count_days_parameterized(u8 year, u8 month, u8 day)
{
    u16 numDays = 0;
    s32 i;
    for (i = year - 1; i > 0; i--)
    {
        numDays += 365;
        if (is_leap_year(i) == 1)
            numDays++;
    }
    for (i = 0; i < month - 1; i++)
        numDays += sDaysPerMonth[i];
    if (month > MONTH_FEB && is_leap_year(year) == 1)
        numDays++;
    numDays += day;
    return numDays;
}

u16 rtc_count_days_from_info(struct SiiRtcInfo *info)
{
    return rtc_count_days_parameterized(bcd_to_hex(info->year), bcd_to_hex(info->month), bcd_to_hex(info->day));
}

static void rtc_probe_status(void)
{
    sRtcProbeStatus = 0;
    rtc_intr_disable();
    SiiRtcUnprotect();
    sRtcProbeCode = SiiRtcProbe();
    rtc_intr_enable();
    if ((sRtcProbeCode & 0xF) != 1)
        sRtcProbeStatus = 1;
    else
    {
        if (sRtcProbeCode & 0xF0)
            sRtcProbeStatus = 2;
        else
            sRtcProbeStatus = 0;
        rtc_get_status_and_datetime(&sRtcInfoBuffer);
        sRtcProbeStatus = rtc_validate_datetime(&sRtcInfoBuffer);
    }
}

u16 rtc_get_probe_status(void)
{
    return sRtcProbeStatus;
}

void sub_020106EC(struct SiiRtcInfo * info)
{
    if (sRtcProbeStatus & 0xFF0)
        *info = sDefaultRTC;
    else
        rtc_get_status_and_datetime(info);
}

void rtc_get_datetime(struct SiiRtcInfo * info)
{
    rtc_intr_disable();
    SiiRtcGetDateTime(info);
    rtc_intr_enable();
}

void rtc_get_status(struct SiiRtcInfo * info)
{
    rtc_intr_disable();
    SiiRtcGetStatus(info);
    rtc_intr_enable();
}

void rtc_get_status_and_datetime(struct SiiRtcInfo * info)
{
    rtc_get_status(info);
    rtc_get_datetime(info);
}

u16 rtc_validate_datetime(struct SiiRtcInfo * info)
{
    s32 year, month, day;
    u16 r4 = (info->status & 0x80) ? 0x20 : 0;
    if (!(info->status & 0x40))
        r4 |= 0x10;
    year = bcd_to_hex(info->year);
    if (year == 0xFF)
        r4 |= 0x40;
    month = bcd_to_hex(info->month);
    if (month == 0xFF || month == 0 || month > 12)
        r4 |= 0x80;
    day = bcd_to_hex(info->day);
    if (day == 0xFF)
        r4 |= 0x100;
    if (month == MONTH_FEB)
    {
        if (day > is_leap_year(year) + sDaysPerMonth[1])
            r4 |= 0x100;
    }
    else
    {
        if (day > sDaysPerMonth[month - 1])
            r4 |= 0x100;
    }
    day = bcd_to_hex(info->hour);
    if (day > 24)
        r4 |= 0x200;
    day = bcd_to_hex(info->minute);
    if (day > 60)
        r4 |= 0x400;
    day = bcd_to_hex(info->second);
    if (day > 60)
        r4 |= 0x800;
    return r4;
}

void rtc_reset(void)
{
    rtc_intr_disable();
    SiiRtcReset();
    rtc_intr_enable();
}

void rtc_sub_time_from_datetime(struct SiiRtcInfo * datetime, struct Time * dest, struct Time * timediff)
{
    u16 r4 = rtc_count_days_from_info(datetime);
    dest->seconds = bcd_to_hex(datetime->second) - timediff->seconds;
    dest->minutes = bcd_to_hex(datetime->minute) - timediff->minutes;
    dest->hours = bcd_to_hex(datetime->hour) - timediff->hours;
    dest->days = r4 - timediff->days;
    if (dest->seconds < 0)
    {
        dest->seconds += 60;
        dest->minutes--;
    }
    if (dest->minutes < 0)
    {
        dest->minutes += 60;
        dest->hours--;
    }
    if (dest->hours < 0)
    {
        dest->hours += 24;
        dest->days--;
    }
}

void rtc_sub_time_from_time(struct Time * dest, struct Time * diff, struct Time * src)
{
    dest->seconds = src->seconds - diff->seconds;
    dest->minutes = src->minutes - diff->minutes;
    dest->hours = src->hours - diff->hours;
    dest->days = src->days - diff->days;
    if (dest->seconds < 0)
    {
        dest->seconds += 60;
        dest->minutes--;
    }
    if (dest->minutes < 0)
    {
        dest->minutes += 60;
        dest->hours--;
    }
    if (dest->hours < 0)
    {
        dest->hours += 24;
        dest->days--;
    }
}

bool32 rtc_maincb_is_rtc_working(void)
{
    rtc_probe_status();
    if (rtc_get_probe_status() & 0xFF0)
        return 0;
    return 1;
}

void rtc_set_datetime(struct SiiRtcInfo * info)
{
    vu16 imeBak = (*(vu16 *)(0x4000000 + 0x208));
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    SiiRtcSetDateTime(info);
    (*(vu16 *)(0x4000000 + 0x208)) = imeBak;
}

bool32 rtc_maincb_is_time_since_last_berry_update_positive(u8 * a0)
{
    rtc_get_status_and_datetime(&sRtcInfoWork);
    *a0 = bcd_to_hex(sRtcInfoWork.year);
    rtc_sub_time_from_datetime(&sRtcInfoWork, &gRtcUTCTime, ((struct Time *)0x02028098));
    rtc_sub_time_from_time(&gTimeSinceBerryUpdate, ((struct Time *)0x020280A0), &gRtcUTCTime);
    if (gTimeSinceBerryUpdate.days * 1440 + gTimeSinceBerryUpdate.hours * 60 + gTimeSinceBerryUpdate.minutes >= 0)
        return 1;
    return 0;
}

u32 hex_to_bcd(u8 a0)
{
    u32 r4;
    if (a0 > 99)
        return 0xFF;
    r4 = Div(a0, 10) << 4;
    r4 |= Mod(a0, 10);
    return r4;
}

void sii_rtc_inc(u8 * a0)
{
    *a0 = hex_to_bcd(bcd_to_hex(*a0) + 1);
}

void sii_rtc_inc_month(struct SiiRtcInfo * a0)
{
    sii_rtc_inc(&a0->month);
    if (bcd_to_hex(a0->month) > 12)
    {
        sii_rtc_inc(&a0->year);
        a0->month = MONTH_JAN;
    }
}

void sii_rtc_inc_day(struct SiiRtcInfo * a0)
{
    sii_rtc_inc(&a0->day);
    if (bcd_to_hex(a0->day) > sDaysPerMonth[bcd_to_hex(a0->month) - 1])
    {
        if (!is_leap_year(bcd_to_hex(a0->year)) || bcd_to_hex(a0->month) != MONTH_FEB || bcd_to_hex(a0->day) != 29)
        {
            a0->day = 1;
            sii_rtc_inc_month(a0);
        }
    }
}

bool32 rtc_is_past_feb_28_2000(struct SiiRtcInfo * a0)
{
    if (bcd_to_hex(a0->year) == 0)
    {
        if (bcd_to_hex(a0->month) == MONTH_JAN)
            return 0;
        if (bcd_to_hex(a0->month) > MONTH_FEB)
            return 1;
        if (bcd_to_hex(a0->day) == 29)
            return 1;
        return 0;
    }
    if (bcd_to_hex(a0->year) == 1)
        return 1;
    return 0;
}

void rtc_maincb_fix_date(void)
{
    rtc_get_status_and_datetime(&sRtcInfoWork);
    if (bcd_to_hex(sRtcInfoWork.year) == 0 || bcd_to_hex(sRtcInfoWork.year) == 1)
    {
        if (bcd_to_hex(sRtcInfoWork.year) == 1)
        {
            sRtcInfoWork.year = 2;
            sRtcInfoWork.month = MONTH_JAN;
            sRtcInfoWork.day = 2;
            rtc_set_datetime(&sRtcInfoWork);
        }
        else
        {
            if (rtc_is_past_feb_28_2000(&sRtcInfoWork) == 1)
            {
                sii_rtc_inc_day(&sRtcInfoWork);
                sii_rtc_inc(&sRtcInfoWork.year);
            }
            else
            {
                sii_rtc_inc(&sRtcInfoWork.year);
            }
            rtc_set_datetime(&sRtcInfoWork);
        }
    }
}
