# 1 "src/easy_chat.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/easy_chat.c"
# 1 "include/global.h" 1



# 1 "tools/agbcc/include/string.h" 1
# 14 "tools/agbcc/include/string.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 15 "tools/agbcc/include/string.h" 2


# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 18 "tools/agbcc/include/string.h" 2





void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const char *, const char *, size_t);
void bcopy (const char *, char *, size_t);
void bzero (char *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
int strncasecmp (const char *, const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 5 "include/global.h" 2
# 1 "tools/agbcc/include/limits.h" 1
# 6 "include/global.h" 2
# 1 "include/config.h" 1
# 7 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1
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
# 11 "include/gba/gba.h" 2
# 8 "include/global.h" 2
# 1 "include/constants/global.h" 1
# 9 "include/global.h" 2
# 112 "include/global.h"
struct Coords8
{
    s8 x;
    s8 y;
};

struct UCoords8
{
    u8 x;
    u8 y;
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

struct Coords32
{
    s32 x;
    s32 y;
};

struct UCoords32
{
    u32 x;
    u32 y;
};

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
             u8 mode;
             u8 nationalMagic;
             u8 unknown2;
             u32 unownPersonality;
             u32 spindaPersonality;
             u32 unknown3;
             u8 owned[((412 / 8) + ((412 % 8) ? 1 : 0))];
             u8 seen[((412 / 8) + ((412 % 8) ? 1 : 0))];
};

struct PokemonJumpResults
{
    u16 jumpsInRow;
    u16 field2;
    u16 excellentsInRow;
    u16 field6;
    u32 field8;
    u32 bestJumpScore;
};

struct BerryPickingResults
{
    u32 bestScore;
    u16 berriesPicked;
    u16 berriesPickedInRow;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
};


struct PyramidBag
{
    u16 itemId[2][10];
    u8 quantity[2][10];
};

struct BerryCrush
{
    u16 berryCrushResults[4];
    u32 berryPowderAmount;
    u32 unk;
};

struct ApprenticeMon
{
    u16 species;
    u16 moves[4];
    u16 item;
};



struct Apprentice
{
    u8 id:5;
    u8 lvlMode:2;
    u8 numQuestions;
    u8 number;
    struct ApprenticeMon party[6 / 2];
    u16 speechWon[6];
    u8 playerId[4];
    u8 playerName[7];
    u8 language;
    u32 checksum;
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
    u32 abilityNum:1;
    u32 personality;
    u8 nickname[10 + 1];
    u8 friendship;
};



struct EmeraldBattleTowerRecord
{
             u8 lvlMode;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 speechWon[6];
             u16 speechLost[6];
             struct BattleTowerPokemon party[4];
             u8 language;
             u32 checksum;
};

struct BattleTowerInterview
{
    u16 playerSpecies;
    u16 opponentSpecies;
    u8 opponentName[7 + 1];
    u8 opponentMonNickname[10 + 1];
    u8 opponentLanguage;
};

struct BattleTowerEReaderTrainer
{
             u8 unk0;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 farewellPlayerLost[6];
             u16 farewellPlayerWon[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};


struct DomeMonData
{
    u16 moves[4];
    u8 evs[6];
    u8 nature;
};

struct RentalMon
{
    u16 monId;
    u32 personality;
    u8 ivs;
    u8 abilityNum;
};

struct BattleDomeTrainer
{
    u16 trainerId:10;
    u16 isEliminated:1;
    u16 eliminatedAt:2;
    u16 forfeited:3;
};



struct BattleFrontier
{
              struct EmeraldBattleTowerRecord towerPlayer;
              struct EmeraldBattleTowerRecord towerRecords[5];
              struct BattleTowerInterview towerInterview;
              struct BattleTowerEReaderTrainer ereaderTrainer;
              u8 challengeStatus;
              u8 lvlMode:2;
              u8 challengePaused:1;
              u8 disableRecordBattle:1;
              u16 selectedPartyMons[4];
              u16 curChallengeBattleNum;
              u16 trainerIds[20];
              u32 winStreakActiveFlags;
              u16 towerWinStreaks[4][2];
              u16 towerRecordWinStreaks[4][2];
              u16 battledBrainFlags;
              u16 towerSinglesStreak;
              u16 towerNumWins;
              u8 towerBattleOutcome;
              u8 towerLvlMode;
              u8 domeAttemptedSingles50:1;
              u8 domeAttemptedSinglesOpen:1;
              u8 domeHasWonSingles50:1;
              u8 domeHasWonSinglesOpen:1;
              u8 domeAttemptedDoubles50:1;
              u8 domeAttemptedDoublesOpen:1;
              u8 domeHasWonDoubles50:1;
              u8 domeHasWonDoublesOpen:1;
              u8 domeUnused;
              u8 domeLvlMode;
              u8 domeBattleMode;
              u16 domeWinStreaks[2][2];
              u16 domeRecordWinStreaks[2][2];
              u16 domeTotalChampionships[2][2];
              struct BattleDomeTrainer domeTrainers[16];
              u16 domeMonIds[16][3];
              u16 unused_DC4;
              u16 palacePrize;
              u16 palaceWinStreaks[2][2];
              u16 palaceRecordWinStreaks[2][2];
              u16 arenaPrize;
              u16 arenaWinStreaks[2];
              u16 arenaRecordStreaks[2];
              u16 factoryWinStreaks[2][2];
              u16 factoryRecordWinStreaks[2][2];
              u16 factoryRentsCount[2][2];
              u16 factoryRecordRentsCount[2][2];
              u16 pikePrize;
              u16 pikeWinStreaks[2];
              u16 pikeRecordStreaks[2];
              u16 pikeTotalStreaks[2];
              u8 pikeHintedRoomIndex:3;
              u8 pikeHintedRoomType:4;
              u8 pikeHealingRoomsDisabled:1;
              u16 pikeHeldItemsBackup[3];
              u16 pyramidPrize;
              u16 pyramidWinStreaks[2];
              u16 pyramidRecordStreaks[2];
              u16 pyramidRandoms[4];
              u8 pyramidTrainerFlags;
              struct PyramidBag pyramidBag;
              u8 pyramidLightRadius;
              u16 verdanturfTentPrize;
              u16 fallarborTentPrize;
              u16 slateportTentPrize;
              struct RentalMon rentalMons[3 * 2];
              u16 battlePoints;
              u16 cardBattlePoints;
              u32 battlesCount;
              u16 domeWinningMoves[16];
              u8 trainerFlags;
              u8 opponentNames[2][7 + 1];
              u8 opponentTrainerIds[2][4];
              u8 unk_EF9:7;
              u8 savedGame:1;
              u8 unused_EFA;
              u8 unused_EFB;
              struct DomeMonData domePlayerPartyData[3];
};

struct ApprenticeQuestion
{
    u8 questionId:2;
    u8 monId:2;
    u8 moveSlot:2;
    u8 suggestedChange:2;
    u16 data;
};

struct PlayersApprentice
{
             u8 id;
             u8 lvlMode:2;
             u8 questionsAnswered:4;
             u8 leadMonId:2;
             u8 party:3;
             u8 saveId:2;
             u8 unused;
             u8 speciesIds[6 / 2];
             struct ApprenticeQuestion questions[9];
};

struct RankingHall1P
{
    u8 id[4];
    u16 winStreak;
    u8 name[7 + 1];
    u8 language;
};

struct RankingHall2P
{
    u8 id1[4];
    u8 id2[4];
    u16 winStreak;
    u8 name1[7 + 1];
    u8 name2[7 + 1];
    u8 language;
};

struct SaveBlock2
{
             u8 playerName[7 + 1];
             u8 playerGender;
             u8 specialSaveWarpFlags;
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
             u32 gcnLinkFlags;
             u32 encryptionKey;
             struct PlayersApprentice playerApprentice;
             struct Apprentice apprentices[4];
              struct BerryCrush berryCrush;
              struct PokemonJumpResults pokeJump;
              struct BerryPickingResults berryPick;
              struct RankingHall1P hallRecords1P[9][2][3];
              struct RankingHall2P hallRecords2P[2][3];
              u16 contestLinkResults[5][4];
              struct BattleFrontier frontier;
};

extern struct SaveBlock2 *gSaveBlock2Ptr;

struct SecretBaseParty
{
    u32 personality[6];
    u16 moves[6 * 4];
    u16 species[6];
    u16 heldItems[6];
    u8 levels[6];
    u8 EVs[6];
};

struct SecretBase
{
               u8 secretBaseId;
               u8 sbr_field_1_0:4;
               u8 gender:1;
               u8 battledOwnerToday:1;
               u8 registryStatus:2;
               u8 trainerName[7];
               u8 trainerId[4];
               u8 language;
               u16 numSecretBasesReceived;
               u8 numTimesEntered;
               u8 sbr_field_11;
               u8 decorations[16];
               u8 decorationPositions[16];
               struct SecretBaseParty party;
};

# 1 "include/constants/game_stat.h" 1
# 512 "include/global.h" 2
# 1 "include/global.fieldmap.h" 1
# 13 "include/global.fieldmap.h"
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
             u16 *metatiles;
             u16 *metatileAttributes;
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

struct ObjectEventTemplate
{
             u8 localId;
             u8 graphicsId;
             u8 inConnection;
             s16 x;
             s16 y;
             u8 elevation;
             u8 movementType;
             u16 movementRangeX:4;
             u16 movementRangeY:4;
             u16 trainerType;
             u16 trainerRange_berryTreeId;
             const u8 *script;
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
    u8 *script;
};

struct BgEvent
{
    u16 x, y;
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
    u8 objectEventCount;
    u8 warpCount;
    u8 coordEventCount;
    u8 bgEventCount;
    struct ObjectEventTemplate *objectEvents;
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
               const struct MapLayout *mapLayout;
               const struct MapEvents *events;
               const u8 *mapScripts;
               const struct MapConnections *connections;
               u16 music;
               u16 mapLayoutId;
               u8 regionMapSectionId;
               u8 cave;
               u8 weather;
               u8 mapType;
               u8 filler_18[2];
               u8 flags;
               u8 battleType;
};
# 156 "include/global.fieldmap.h"
struct ObjectEvent
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
             u32 hideReflection:1;
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
            u8 x:4;
            u8 y:4;
        } __attribute__((aligned(1))) as_nybbles;
    } __attribute__((aligned(1))) range;
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

struct ObjectEventGraphicsInfo
{
             u16 tileTag;
             u16 paletteTag1;
             u16 paletteTag2;
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

enum {
    PLAYER_AVATAR_STATE_NORMAL,
    PLAYER_AVATAR_STATE_MACH_BIKE,
    PLAYER_AVATAR_STATE_ACRO_BIKE,
    PLAYER_AVATAR_STATE_SURFING,
    PLAYER_AVATAR_STATE_UNDERWATER,
    PLAYER_AVATAR_STATE_FIELD_MOVE,
    PLAYER_AVATAR_STATE_FISHING,
    PLAYER_AVATAR_STATE_WATERING,
};
# 259 "include/global.fieldmap.h"
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
    COLLISION_NONE,
    COLLISION_OUTSIDE_RANGE,
    COLLISION_IMPASSABLE,
    COLLISION_ELEVATION_MISMATCH,
    COLLISION_OBJECT_EVENT,
    COLLISION_STOP_SURFING,
    COLLISION_LEDGE_JUMP,
    COLLISION_PUSHED_BOULDER,
    COLLISION_ROTATING_GATE,
    COLLISION_WHEELIE_HOP,
    COLLISION_ISOLATED_VERTICAL_RAIL,
    COLLISION_ISOLATED_HORIZONTAL_RAIL,
    COLLISION_VERTICAL_RAIL,
    COLLISION_HORIZONTAL_RAIL,
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
             u8 transitionFlags;
             u8 runningState;
             u8 tileTransitionState;
             u8 spriteId;
             u8 objectEventId;
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

extern struct ObjectEvent gObjectEvents[16];
extern u8 gSelectedObjectEvent;
extern struct MapHeader gMapHeader;
extern struct PlayerAvatar gPlayerAvatar;
extern struct Camera gCamera;
# 513 "include/global.h" 2
# 1 "include/global.berry.h" 1






struct Berry
{
    const u8 name[6 + 1];
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



struct Berry2
{
    u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    u8 *description1;
    u8 *description2;
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
    struct Berry2 berry;
    u8 itemEffect[18];
    u8 holdEffect;
    u8 holdEffectParam;
    u32 checksum;
};

struct BattleEnigmaBerry
{
             u8 name[6 + 1];
             u8 holdEffect;
             u8 itemEffect[18];
             u8 holdEffectParam;
};

struct BerryTree
{
    u8 berry;
    u8 stage:7;
    u8 growthSparkle:1;
    u16 minutesUntilNextStage;
    u8 berryYield;
    u8 regrowthCount:4;
    u8 watered1:1;
    u8 watered2:1;
    u8 watered3:1;
    u8 watered4:1;
};
# 514 "include/global.h" 2
# 1 "include/global.tv.h" 1



typedef union
{

    struct {
                 u8 kind;
                 bool8 active;
                 u8 pad02[26];
                 u8 srcTrainerId3Lo;
                 u8 srcTrainerId3Hi;
                 u8 srcTrainerId2Lo;
                 u8 srcTrainerId2Hi;
                 u8 srcTrainerIdLo;
                 u8 srcTrainerIdHi;
                 u8 trainerIdLo;
                 u8 trainerIdHi;
    } common;



    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[6];
                 u8 playerName[8];
                 u8 language;
    } fanclubLetter;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 var02;
                 u16 words[6];
                 u8 playerName[8];
                 u8 language;
    } recentHappenings;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 friendshipHighNybble:4;
                 u8 questionAsked:4;
                 u8 playerName[8];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_0F[1];
                 u8 nickname[8];
                 u16 words18[2];
                 u16 words[4];
    } fanclubOpinions;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 words[2];
                 u16 var06;
                 u8 pad_08[3];
                 u8 string_0b[12];
                 u8 language;
    } unkShow04;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 pokemonName[11];
                 u8 trainerName[11];
                 u8 random;
                 u8 random2;
                 u16 randomSpecies;
                 u8 language;
                 u8 pokemonNameLanguage;
    } nameRaterShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[2];
                 u8 pokemonNickname[11];
                 u8 contestCategory:3;
                 u8 contestRank:2;
                 u8 contestResult:2;
                 u16 move;
                 u8 playerName[8];
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 trainerName[8];
                 u16 species;
                 u8 pokemonName[8];
                 u16 defeatedSpecies;
                 u16 numFights;
                 u16 words[1];
                 u8 btLevel;
                 u8 interviewResponse;
                 bool8 wonTheChallenge;
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainerTower;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 winningSpecies;
                 u8 winningTrainerName[8];
                 u8 appealFlags2;
                 u8 round1Rank;
                 u8 round2Rank;
                 u8 appealFlags1;
                 u16 move;
                 u16 species;
                 u8 playerName[8];
                 u8 category;
                 u8 language;
                 u8 winningTrainerLanguage;
    } contestLiveUpdates;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 sheen;
                 u8 flavor:3;
                 u8 unk_03_3:2;
                 u8 worstBlenderName[8];
                 u8 playerName[8];
                 u8 language;
                 u8 worstBlenderLanguage;
    } threeCheers;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 speciesOpponent;
                 u8 playerName[8];
                 u8 linkOpponentName[8];
                 u16 move;
                 u16 speciesPlayer;
                 u8 battleType;
                 u8 language;
                 u8 linkOpponentLanguage;
    } battleUpdate;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[8];
                 u8 idLo;
                 u8 idHi;
                 u8 idolName[8];
                 u16 words[1];
                 u8 score;
                 u8 language;
                 u8 idolNameLanguage;
    } fanClubSpecial;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[8];
                 u8 contestCategory;
                 u8 nickname[11];
                 u8 pokeblockState;
                 u8 language;
                 u8 pokemonNameLanguage;
    } contestLiveUpdates2;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 language2;
                 u8 nickname[11];
                 u8 ball;
                 u16 species;
                 u8 nBallsUsed;
                 u8 playerName[8];
    } pokemonToday;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 priceReduced;
                 u8 language;
                 u8 pad04[2];
                 u16 itemIds[3];
                 u16 itemAmounts[3];
                 u8 shopLocation;
                 u8 playerName[8];
    } smartshopperShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 pad03[9];
                 u16 species;
                 u16 species2;
                 u8 nBallsUsed;
                 u8 outcome;
                 u8 location;
                 u8 playerName[8];
    } pokemonTodayFailed;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nBites;
                 u8 nFails;
                 u16 species;
                 u8 language;
                 u8 pad07[12];
                 u8 playerName[8];
    } pokemonAngler;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 numPokeCaught;
                 u16 caughtPoke;
                 u16 steps;
                 u16 species;
                 u8 location;
                 u8 language;
                 u8 pad0c[7];
                 u8 playerName[8];
    } worldOfMasters;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 dexCount;
                 u8 badgeCount;
                 u8 nSilverSymbols;
                 u8 nGoldSymbols;
                 u8 location;
                 u16 battlePoints;
                 u16 mapLayoutId;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[8];
    } rivalTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 gender;
                 u8 language;
                 u8 filler_0a[9];
                 u8 playerName[8];
    } trendWatcher;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 location;
                 u8 language;
                 u16 mapLayoutId;
                 u8 filler_08[11];
                 u8 playerName[8];
    } treasureInvestigators;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 won;
                 u8 whichGame;
                 u16 nCoins;
                 u8 filler_06[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[8];
    } findThatGamer;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 lastOpponentSpecies;
                 u8 location;
                 u8 outcome;
                 u16 caughtMonBall;
                 u16 balls;
                 u16 poke1Species;
                 u16 lastUsedMove;
                 u8 language;
                 u8 filler_0f[4];
                 u8 playerName[8];
    } breakingNews;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 avgLevel;
                 u8 nDecorations;
                 u8 decorations[4];
                 u16 species;
                 u16 move;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[8];
    } secretBaseVisit;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 whichPrize;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[8];
    } lottoWinner;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 move;
                 u16 foeSpecies;
                 u16 species;
                 u16 otherMoves[3];
                 u16 betterMove;
                 u8 nOtherMoves;
                 u8 language;
                 u8 filler_12[1];
                 u8 playerName[8];
    } battleSeminar;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[8];
    } trainerFanClub;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nRibbons;
                 u8 selectedRibbon;
                 u8 nickname[11];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_12[2];
                 u8 playerName[8];
    } cuties;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 winStreak;
                 u16 species1;
                 u16 species2;
                 u16 species3;
                 u16 species4;
                 u8 language;
                 u8 facility;
                 u8 filler_0e[5];
                 u8 playerName[8];
    } frontier;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 count;
                 u8 actionIdx;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[8];
    } numberOne;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 stepsInBase;
                 u8 baseOwnersName[8];
                 u32 flags;
                 u16 item;
                 u8 savedState;
                 u8 playerName[8];
                 u8 language;
                 u8 baseOwnersNameLanguage;
    } secretBaseSecrets;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nMonsCaught;
                 u8 nPkblkUsed;
                 u8 language;
                 u8 filler_05[14];
                 u8 playerName[8];
    } safariFanClub;



    struct {
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
    } massOutbreak;
} TVShow;

typedef struct
{
    u8 kind;
    u8 state;
    u16 days;
} PokeNews;

struct GabbyAndTyData
{
             u16 mon1;
             u16 mon2;
             u16 lastMove;
             u16 quote[1];
             u8 mapnum;
             u8 battleNum;
             u8 battleTookMoreThanOneTurn:1;
             u8 playerLostAMon:1;
             u8 playerUsedHealingItem:1;
             u8 playerThrewABall:1;
             u8 onAir:1;
             u8 valA_5:3;
             u8 battleTookMoreThanOneTurn2:1;
             u8 playerLostAMon2:1;
             u8 playerUsedHealingItem2:1;
             u8 playerThrewABall2:1;
             u8 valB_4:4;
};
# 515 "include/global.h" 2
# 1 "include/pokemon.h" 1



# 1 "include/constants/pokemon.h" 1
# 5 "include/pokemon.h" 2
# 1 "gflib/sprite.h" 1






struct SpriteSheet
{
    const void *data;
    u16 size;
    u16 tag;
};

struct CompressedSpriteSheet
{
    const u32 *data;
    u16 size;
    u16 tag;
};

struct SpriteFrameImage
{
    const void *data;
    u16 size;
};





struct SpritePalette
{
    const u16 *data;
    u16 tag;
};

struct CompressedSpritePalette
{
    const u32 *data;
    u16 tag;
};

struct AnimFrameCmd
{


    u32 imageValue:16;

    u32 duration:6;
    u32 hFlip:1;
    u32 vFlip:1;
};

struct AnimLoopCmd
{
    u32 type:16;
    u32 count:6;
};

struct AnimJumpCmd
{
    u32 type:16;
    u32 target:6;
};




union AnimCmd
{
    s16 type;
    struct AnimFrameCmd frame;
    struct AnimLoopCmd loop;
    struct AnimJumpCmd jump;
};
# 86 "gflib/sprite.h"
struct AffineAnimFrameCmd
{
    s16 xScale;
    s16 yScale;
    u8 rotation;
    u8 duration;
};

struct AffineAnimLoopCmd
{
    s16 type;
    s16 count;
};

struct AffineAnimJumpCmd
{
    s16 type;
    u16 target;
};

struct AffineAnimEndCmdAlt
{
    s16 type;
    u16 val;
};

union AffineAnimCmd
{
    s16 type;
    struct AffineAnimFrameCmd frame;
    struct AffineAnimLoopCmd loop;
    struct AffineAnimJumpCmd jump;
    struct AffineAnimEndCmdAlt end;
};
# 136 "gflib/sprite.h"
struct AffineAnimState
{
    u8 animNum;
    u8 animCmdIndex;
    u8 delayCounter;
    u8 loopCounter;
    s16 xScale;
    s16 yScale;
    u16 rotation;
};

enum
{
    SUBSPRITES_OFF,
    SUBSPRITES_ON,
    SUBSPRITES_IGNORE_PRIORITY,
};

struct Subsprite
{
    s8 x;
    s8 y;
    u16 shape:2;
    u16 size:2;
    u16 tileOffset:10;
    u16 priority:2;
};

struct SubspriteTable
{
    u8 subspriteCount;
    const struct Subsprite *subsprites;
};

struct Sprite;

typedef void (*SpriteCallback)(struct Sprite *);

struct SpriteTemplate
{
    u16 tileTag;
    u16 paletteTag;
    const struct OamData *oam;
    const union AnimCmd *const *anims;
    const struct SpriteFrameImage *images;
    const union AffineAnimCmd *const *affineAnims;
    SpriteCallback callback;
};





struct Sprite
{
             struct OamData oam;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
             const struct SpriteTemplate *template;
             const struct SubspriteTable *subspriteTables;
             SpriteCallback callback;

             struct Coords16 pos1;
             struct Coords16 pos2;
             s8 centerToCornerVecX;
             s8 centerToCornerVecY;

             u8 animNum;
             u8 animCmdIndex;
             u8 animDelayCounter:6;
             bool8 animPaused:1;
             bool8 affineAnimPaused:1;
             u8 animLoopCounter;


             s16 data[8];

             bool16 inUse:1;
             bool16 coordOffsetEnabled:1;
             bool16 invisible:1;
             bool16 flags_3:1;
             bool16 flags_4:1;
             bool16 flags_5:1;
             bool16 flags_6:1;
             bool16 flags_7:1;
             bool16 hFlip:1;
             bool16 vFlip:1;
             bool16 animBeginning:1;
             bool16 affineAnimBeginning:1;
             bool16 animEnded:1;
             bool16 affineAnimEnded:1;
             bool16 usingSheet:1;
             bool16 flags_f:1;

             u16 sheetTileStart;

             u8 subspriteTableNum:6;
             u8 subspriteMode:2;

             u8 subpriority;
};

struct OamMatrix
{
    s16 a;
    s16 b;
    s16 c;
    s16 d;
};

extern const struct OamData gDummyOamData;
extern const union AnimCmd *const gDummySpriteAnimTable[];
extern const union AffineAnimCmd *const gDummySpriteAffineAnimTable[];
extern const struct SpriteTemplate gDummySpriteTemplate;

extern u8 gReservedSpritePaletteCount;
extern struct Sprite gSprites[];
extern u8 gOamLimit;
extern u16 gReservedSpriteTileCount;
extern s16 gSpriteCoordOffsetX;
extern s16 gSpriteCoordOffsetY;
extern struct OamMatrix gOamMatrices[];
extern bool8 gAffineAnimsDisabled;

void ResetSpriteData(void);
void AnimateSprites(void);
void BuildOamBuffer(void);
u8 CreateSprite(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateSpriteAtEnd(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateInvisibleSprite(void (*callback)(struct Sprite *));
u8 CreateSpriteAndAnimate(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
void DestroySprite(struct Sprite *sprite);
void ResetOamRange(u8 a, u8 b);
void LoadOam(void);
void SetOamMatrix(u8 matrixNum, u16 a, u16 b, u16 c, u16 d);
void CalcCenterToCornerVec(struct Sprite *sprite, u8 shape, u8 size, u8 affineMode);
void SpriteCallbackDummy(struct Sprite *sprite);
void ProcessSpriteCopyRequests(void);
void RequestSpriteCopy(const u8 *src, u8 *dest, u16 size);
void FreeSpriteTiles(struct Sprite *sprite);
void FreeSpritePalette(struct Sprite *sprite);
void FreeSpriteOamMatrix(struct Sprite *sprite);
void DestroySpriteAndFreeResources(struct Sprite *sprite);
void sub_800142C(u32 a1, u32 a2, u16 *a3, u16 a4, u32 a5);
void AnimateSprite(struct Sprite *sprite);
void sub_8007E18(struct Sprite* sprite, s16 a2, s16 a3);
void StartSpriteAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SeekSpriteAnim(struct Sprite *sprite, u8 animCmdIndex);
void StartSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SetSpriteSheetFrameTileNum(struct Sprite *sprite);
u8 AllocOamMatrix(void);
void FreeOamMatrix(u8 matrixNum);
void InitSpriteAffineAnim(struct Sprite *sprite);
void SetOamMatrixRotationScaling(u8 matrixNum, s16 xScale, s16 yScale, u16 rotation);
u16 LoadSpriteSheet(const struct SpriteSheet *sheet);
void LoadSpriteSheets(const struct SpriteSheet *sheets);
u16 AllocTilesForSpriteSheet(struct SpriteSheet *sheet);
void AllocTilesForSpriteSheets(struct SpriteSheet *sheets);
void LoadTilesForSpriteSheet(const struct SpriteSheet *sheet);
void LoadTilesForSpriteSheets(struct SpriteSheet *sheets);
void FreeSpriteTilesByTag(u16 tag);
void FreeSpriteTileRanges(void);
u16 GetSpriteTileStartByTag(u16 tag);
u16 GetSpriteTileTagByTileStart(u16 start);
void RequestSpriteSheetCopy(const struct SpriteSheet *sheet);
u16 LoadSpriteSheetDeferred(const struct SpriteSheet *sheet);
void FreeAllSpritePalettes(void);
u8 LoadSpritePalette(const struct SpritePalette *palette);
void LoadSpritePalettes(const struct SpritePalette *palettes);
u8 AllocSpritePalette(u16 tag);
u8 IndexOfSpritePaletteTag(u16 tag);
u16 GetSpritePaletteTagByPaletteNum(u8 paletteNum);
void FreeSpritePaletteByTag(u16 tag);
void SetSubspriteTables(struct Sprite *sprite, const struct SubspriteTable *subspriteTables);
bool8 AddSpriteToOamBuffer(struct Sprite *object, u8 *oamIndex);
bool8 AddSubspritesToOamBuffer(struct Sprite *sprite, struct OamData *destOam, u8 *oamIndex);
void CopyToSprites(u8 *src);
void CopyFromSprites(u8 *dest);
u8 SpriteTileAllocBitmapOp(u16 bit, u8 op);
void ClearSpriteCopyRequests(void);
void ResetAffineAnimData(void);
# 6 "include/pokemon.h" 2

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
            u32 abilityNum:1;

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
            u32 fatefulEncounter:4;
            u32 obedient:1;
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
    u8 unused:5;
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

struct Unknown_806F160_Struct
{
    u8 field_0_0:4;
    u8 field_0_1:4;
    u8 field_1;
    u8 magic;
    u8 field_3_0:4;
    u8 field_3_1:4;
    void *bytes;
    u8 **byteArrays;
    struct SpriteTemplate *templates;
    struct SpriteFrameImage *frameImages;
};

struct BattlePokemon
{
             u16 species;
             u16 attack;
             u16 defense;
             u16 speed;
             u16 spAttack;
             u16 spDefense;
             u16 moves[4];
             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 isEgg:1;
             u32 abilityNum:1;
             s8 statStages[6 + 2];
             u8 ability;
             u8 type1;
             u8 type2;
             u8 unknown;
             u8 pp[4];
             u16 hp;
             u8 level;
             u8 friendship;
             u16 maxHP;
             u16 item;
             u8 nickname[10 + 1];
             u8 ppBonuses;
             u8 otName[7 + 1];
             u32 experience;
             u32 personality;
             u32 status1;
             u32 status2;
             u32 otId;
};

struct BaseStats
{
            u8 baseHP;
            u8 baseAttack;
            u8 baseDefense;
            u8 baseSpeed;
            u8 baseSpAttack;
            u8 baseSpDefense;
            u8 type1;
            u8 type2;
            u8 catchRate;
            u8 expYield;
            u16 evYield_HP:2;
            u16 evYield_Attack:2;
            u16 evYield_Defense:2;
            u16 evYield_Speed:2;
            u16 evYield_SpAttack:2;
            u16 evYield_SpDefense:2;
            u16 item1;
            u16 item2;
            u8 genderRatio;
            u8 eggCycles;
            u8 friendship;
            u8 growthRate;
            u8 eggGroup1;
            u8 eggGroup2;
            u8 abilities[2];
            u8 safariZoneFleeRate;
            u8 bodyColor : 7;
            u8 noFlip : 1;
};

struct BattleMove
{
    u8 effect;
    u8 power;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 secondaryEffectChance;
    u8 target;
    s8 priority;
    u8 flags;
};

struct SpindaSpot
{
    u8 x, y;
    u16 image[16];
};

struct __attribute__((packed)) LevelUpMove
{
    u16 move:9;
    u16 level:7;
};

struct Evolution
{
    u16 method;
    u16 param;
    u16 targetSpecies;
};

extern u8 gPlayerPartyCount;
extern struct Pokemon gPlayerParty[6];
extern u8 gEnemyPartyCount;
extern struct Pokemon gEnemyParty[6];
extern struct SpriteTemplate gMultiuseSpriteTemplate;

extern const struct BattleMove gBattleMoves[];
extern const u8 gFacilityClassToPicIndex[];
extern const u8 gFacilityClassToTrainerClass[];
extern const struct BaseStats gBaseStats[];
extern const u8 *const gItemEffectTable[];
extern const struct Evolution gEvolutionTable[][5];
extern const u32 gExperienceTables[][100 + 1];
extern const u16 *const gLevelUpLearnsets[];
extern const u8 gPPUpGetMask[];
extern const u8 gPPUpSetMask[];
extern const u8 gPPUpAddMask[];
extern const u8 gStatStageRatios[][2];
extern const u16 gLinkPlayerFacilityClasses[];
extern const struct SpriteTemplate gUnknown_08329D98[];
extern const s8 gNatureStatTable[][5];

void ZeroBoxMonData(struct BoxPokemon *boxMon);
void ZeroMonData(struct Pokemon *mon);
void ZeroPlayerPartyMons(void);
void ZeroEnemyPartyMons(void);
void CreateMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateBoxMon(struct BoxPokemon *boxMon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateMonWithNature(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 nature);
void CreateMonWithGenderNatureLetter(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 gender, u8 nature, u8 unownLetter);
void CreateMaleMon(struct Pokemon *mon, u16 species, u8 level);
void CreateMonWithIVsPersonality(struct Pokemon *mon, u16 species, u8 level, u32 ivs, u32 personality);
void CreateMonWithIVsOTID(struct Pokemon *mon, u16 species, u8 level, u8 *ivs, u32 otId);
void CreateMonWithEVSpread(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 evSpread);
void CreateBattleTowerMon(struct Pokemon *mon, struct BattleTowerPokemon *src);
void CreateBattleTowerMon2(struct Pokemon *mon, struct BattleTowerPokemon *src, bool8 lvl50);
void CreateApprenticeMon(struct Pokemon *mon, const struct Apprentice *src, u8 monId);
void CreateMonWithEVSpreadNatureOTID(struct Pokemon *mon, u16 species, u8 level, u8 nature, u8 fixedIV, u8 evSpread, u32 otId);
void sub_80686FC(struct Pokemon *mon, struct BattleTowerPokemon *dest);
void CreateObedientMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
bool8 sub_80688F8(u8 caseId, u8 battlerId);
void SetDeoxysStats(void);
u16 sub_8068B48(void);
u16 sub_8068BB0(void);
void CreateObedientEnemyMon(void);
void CalculateMonStats(struct Pokemon *mon);
void BoxMonToMon(const struct BoxPokemon *src, struct Pokemon *dest);
u8 GetLevelFromMonExp(struct Pokemon *mon);
u8 GetLevelFromBoxMonExp(struct BoxPokemon *boxMon);
u16 GiveMoveToMon(struct Pokemon *mon, u16 move);
u16 GiveMoveToBattleMon(struct BattlePokemon *mon, u16 move);
void SetMonMoveSlot(struct Pokemon *mon, u16 move, u8 slot);
void SetBattleMonMoveSlot(struct BattlePokemon *mon, u16 move, u8 slot);
void GiveMonInitialMoveset(struct Pokemon *mon);
void GiveBoxMonInitialMoveset(struct BoxPokemon *boxMon);
u16 MonTryLearningNewMove(struct Pokemon *mon, bool8 firstMove);
void DeleteFirstMoveAndGiveMoveToMon(struct Pokemon *mon, u16 move);
void DeleteFirstMoveAndGiveMoveToBoxMon(struct BoxPokemon *boxMon, u16 move);
s32 CalculateBaseDamage(struct BattlePokemon *attacker, struct BattlePokemon *defender, u32 move, u16 sideStatus, u16 powerOverride, u8 typeOverride, u8 bankAtk, u8 bankDef);

u8 CountAliveMonsInBattle(u8 caseId);




u8 GetDefaultMoveTarget(u8 battlerId);
u8 GetMonGender(struct Pokemon *mon);
u8 GetBoxMonGender(struct BoxPokemon *boxMon);
u8 GetGenderFromSpeciesAndPersonality(u16 species, u32 personality);
void SetMultiuseSpriteTemplateToPokemon(u16 speciesTag, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerBack(u16 trainerSpriteId, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerFront(u16 arg0, u8 battlerPosition);





u32 GetMonData();
u32 GetBoxMonData();

void SetMonData(struct Pokemon *mon, s32 field, const void *dataArg);
void SetBoxMonData(struct BoxPokemon *boxMon, s32 field, const void *dataArg);
void CopyMon(void *dest, void *src, size_t size);
u8 GiveMonToPlayer(struct Pokemon *mon);
u8 SendMonToPC(struct Pokemon* mon);
u8 CalculatePlayerPartyCount(void);
u8 CalculateEnemyPartyCount(void);
u8 GetMonsStateToDoubles(void);
u8 GetMonsStateToDoubles_2(void);
u8 GetAbilityBySpecies(u16 species, u8 abilityNum);
u8 GetMonAbility(struct Pokemon *mon);
void CreateSecretBaseEnemyParty(struct SecretBase *secretBaseRecord);
u8 GetSecretBaseTrainerPicIndex(void);
u8 GetSecretBaseTrainerClass(void);
bool8 IsPlayerPartyAndPokemonStorageFull(void);
bool8 IsPokemonStorageFull(void);
void GetSpeciesName(u8 *name, u16 species);
u8 CalculatePPWithBonus(u16 move, u8 ppBonuses, u8 moveIndex);
void RemoveMonPPBonus(struct Pokemon *mon, u8 moveIndex);
void RemoveBattleMonPPBonus(struct BattlePokemon *mon, u8 moveIndex);
void CopyPlayerPartyMonToBattleData(u8 battlerId, u8 partyIndex);
bool8 ExecuteTableBasedItemEffect(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex);
bool8 PokemonUseItemEffects(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex, u8 e);
bool8 HealStatusConditions(struct Pokemon *mon, u32 battlePartyId, u32 healMask, u8 battlerId);
u8 GetItemEffectParamOffset(u16 itemId, u8 effectByte, u8 effectBit);
u8 *UseStatIncreaseItem(u16 itemId);
u8 GetNature(struct Pokemon *mon);
u8 GetNatureFromPersonality(u32 personality);
u16 GetEvolutionTargetSpecies(struct Pokemon *mon, u8 type, u16 evolutionItem);
u16 HoennPokedexNumToSpecies(u16 hoennNum);
u16 NationalPokedexNumToSpecies(u16 nationalNum);
u16 NationalToHoennOrder(u16 nationalNum);
u16 SpeciesToNationalPokedexNum(u16 species);
u16 SpeciesToHoennPokedexNum(u16 species);
u16 HoennToNationalOrder(u16 hoennNum);
u16 SpeciesToCryId(u16 species);
void sub_806D544(u16 species, u32 personality, u8 *dest);
void DrawSpindaSpots(u16 species, u32 personality, u8 *dest, u8 a4);
void EvolutionRenameMon(struct Pokemon *mon, u16 oldSpecies, u16 newSpecies);
u8 GetPlayerFlankId(void);
u16 GetLinkTrainerFlankId(u8 id);
s32 GetBattlerMultiplayerId(u16 a1);
u8 GetTrainerEncounterMusicId(u16 trainerOpponentId);
u16 ModifyStatByNature(u8 nature, u16 n, u8 statIndex);
void AdjustFriendship(struct Pokemon *mon, u8 event);
void MonGainEVs(struct Pokemon *mon, u16 defeatedSpecies);
u16 GetMonEVCount(struct Pokemon *mon);
void RandomlyGivePartyPokerus(struct Pokemon *party);
u8 CheckPartyPokerus(struct Pokemon *party, u8 selection);
u8 CheckPartyHasHadPokerus(struct Pokemon *party, u8 selection);
void UpdatePartyPokerusTime(u16 days);
void PartySpreadPokerus(struct Pokemon *party);
bool8 TryIncrementMonLevel(struct Pokemon *mon);
u32 CanMonLearnTMHM(struct Pokemon *mon, u8 tm);
u32 CanSpeciesLearnTMHM(u16 species, u8 tm);
u8 GetMoveRelearnerMoves(struct Pokemon *mon, u16 *moves);
u8 GetLevelUpMovesBySpecies(u16 species, u16 *moves);
u8 GetNumberOfRelearnableMoves(struct Pokemon *mon);
u16 SpeciesToPokedexNum(u16 species);
bool32 IsSpeciesInHoennDex(u16 species);
void ClearBattleMonForms(void);
u16 GetBattleBGM(void);
void PlayBattleBGM(void);
void PlayMapChosenOrBattleBGM(u16 songId);
void sub_806E694(u16 songId);
const u32 *GetMonFrontSpritePal(struct Pokemon *mon);
const u32 *GetMonSpritePalFromSpeciesAndPersonality(u16 species, u32 otId, u32 personality);
const struct CompressedSpritePalette *GetMonSpritePalStruct(struct Pokemon *mon);
const struct CompressedSpritePalette *GetMonSpritePalStructFromOtIdPersonality(u16 species, u32 otId , u32 personality);
bool32 IsHMMove2(u16 move);
bool8 IsMonSpriteNotFlipped(u16 species);
s8 GetMonFlavorRelation(struct Pokemon *mon, u8 flavor);
s8 GetFlavorRelationByPersonality(u32 personality, u8 flavor);
bool8 IsTradedMon(struct Pokemon *mon);
bool8 IsOtherTrainer(u32 otId, u8 *otName);
void MonRestorePP(struct Pokemon *mon);
void BoxMonRestorePP(struct BoxPokemon *boxMon);
void SetMonPreventsSwitchingString(void);
void SetWildMonHeldItem(void);
bool8 IsMonShiny(struct Pokemon *mon);
bool8 IsShinyOtIdPersonality(u32 otId, u32 personality);
const u8 *GetTrainerPartnerName(void);
void BattleAnimateFrontSprite(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void DoMonFrontSpriteAnimation(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void PokemonSummaryDoMonAnimation(struct Sprite* sprite, u16 species, bool8 oneFrame);
void StopPokemonAnimationDelayTask(void);
void BattleAnimateBackSprite(struct Sprite* sprite, u16 species);
u8 sub_806EF08(u8 arg0);
u8 sub_806EF84(u8 arg0, u8 arg1);
u16 sub_806EFF0(u16 arg0);
u16 FacilityClassToPicIndex(u16 facilityClass);
u16 PlayerGenderToFrontTrainerPicId(u8 playerGender);
void HandleSetPokedexFlag(u16 nationalNum, u8 caseId, u32 personality);
const u8 *GetTrainerClassNameFromId(u16 trainerId);
const u8 *GetTrainerNameFromId(u16 trainerId);
bool8 HasTwoFramesAnimation(u16 species);
struct Unknown_806F160_Struct *sub_806F2AC(u8 id, u8 arg1);
void sub_806F47C(u8 id);
u8 *sub_806F4F8(u8 id, u8 arg1);
# 516 "include/global.h" 2

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

struct MailStruct
{
             u16 words[9];
             u8 playerName[7 + 1];
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
             u8 playerName[7 + 1];
             u8 filler_2DB6[0x3];
             u8 playerTrainerId[4];
             bool8 hasChangedSong;
             u8 language;
};

struct MauvilleManStoryteller
{
    u8 id;
    bool8 alreadyRecorded;
    u8 filler2[2];
    u8 gameStatIDs[4];
    u8 trainerNames[4][7];
    u8 statValues[4][4];
    u8 language[4];
};

struct MauvilleManGiddy
{
             u8 id;
             u8 taleCounter;
             u8 questionNum;
             u16 randomWords[10];
             u8 questionList[8];
             u8 language;
};

struct MauvilleManHipster
{
    u8 id;
    bool8 alreadySpoken;
    u8 language;
};

struct MauvilleOldManTrader
{
    u8 id;
    u8 decorations[4];
    u8 playerNames[4][11];
    u8 alreadyTraded;
    u8 language[4];
};

typedef union OldMan
{
    struct MauvilleManCommon common;
    struct MauvilleManBard bard;
    struct MauvilleManGiddy giddy;
    struct MauvilleManHipster hipster;
    struct MauvilleOldManTrader trader;
    struct MauvilleManStoryteller storyteller;
    u8 filler[0x40];
} OldMan;

struct RecordMixing_UnknownStructSub
{
    u32 unk0;
    u8 data[0x34];

};

struct RecordMixing_UnknownStruct
{
    struct RecordMixing_UnknownStructSub data[2];
    u32 unk70;
    u16 unk74[0x2];
};



struct LinkBattleRecord
{
    u8 name[7 + 1];
    u16 trainerId;
    u16 wins;
    u16 losses;
    u16 draws;
};

struct LinkBattleRecords
{
    struct LinkBattleRecord entries[5];
    u8 languages[5];
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
    u32 trainerId;
    u16 species;
    u8 contestCategory;
    u8 monName[10 + 1];
    u8 trainerName[7 + 1];
    u8 contestRank;
};

struct DayCareMail
{
    struct MailStruct message;
    u8 OT_name[7 + 1];
    u8 monName[10 + 1];
    u8 gameLanguage:4;
    u8 monLanguage:4;
};

struct DaycareMon
{
    struct BoxPokemon mon;
    struct DayCareMail mail;
    u32 steps;
};

struct DayCare
{
    struct DaycareMon mons[2];
    u32 offspringPersonality;
    u8 stepCounter;
};

struct RecordMixingDayCareMail
{
    struct DayCareMail mail[2];
    u32 numDaycareMons;
    bool16 holdsItem[2];
};

struct LilycoveLadyQuiz
{
              u8 id;
              u8 state;
              u16 question[9];
              u16 correctAnswer;
              u16 playerAnswer;
              u8 playerName[7 + 1];
              u16 playerTrainerId[4];
              u16 prize;
              bool8 waitingForChallenger;
              u8 questionId;
              u8 prevQuestionId;
              u8 language;
};

struct LilycoveLadyFavor
{
              u8 id;
              u8 state;
              bool8 likedItem;
              u8 numItemsGiven;
              u8 playerName[7 + 1];
              u8 favorId;
              u16 itemId;
              u16 bestItem;
              u8 language;
};

struct LilycoveLadyContest
{
              u8 id;
              bool8 givenPokeblock;
              u8 numGoodPokeblocksGiven;
              u8 numOtherPokeblocksGiven;
              u8 playerName[7 + 1];
              u8 maxSheen;
              u8 category;
              u8 language;
};

typedef union
{
    struct LilycoveLadyQuiz quiz;
    struct LilycoveLadyFavor favor;
    struct LilycoveLadyContest contest;
    u8 id;
    u8 pad[0x40];
} LilycoveLady;

struct WaldaPhrase
{
    u16 colors[2];
    u8 text[16];
    u8 iconId;
    u8 patternId;
    bool8 patternUnlocked;
};

struct TrainerNameRecord
{
    u32 trainerId;
    u8 trainerName[7 + 1];
};

struct SaveTrainerHill
{
               u32 timer;
               u32 bestTime;
               u8 unk_3D6C;
               u8 unused;
               u16 receivedPrize:1;
               u16 checkedFinalTime:1;
               u16 spokeToOwner:1;
               u16 hasLost:1;
               u16 maybeECardScanDuringChallenge:1;
               u16 field_3D6E_0f:1;
               u16 tag:2;
};

struct MysteryEventStruct
{
    u8 unk_0_0:2;
    u8 unk_0_2:3;
    u8 unk_0_5:3;
    u8 unk_1;
};

 struct WonderNews
{
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[40];
    u8 unk_2C[10][40];
};

 struct WonderNewsSaveStruct
{
    u32 crc;
    struct WonderNews data;
};

 struct WonderCard
{
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    u8 unk_08_0:2;
    u8 unk_08_2:4;
    u8 unk_08_6:2;
    u8 unk_09;
    u8 unk_0A[40];
    u8 unk_32[40];
    u8 unk_5A[4][40];
    u8 unk_FA[40];
    u8 unk_122[40];
};

 struct WonderCardSaveStruct
{
    u32 crc;
    struct WonderCard data;
};

 struct MEventBuffer_3430_Sub
{
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08[2][7];
};

 struct MEventBuffer_3430
{
    u32 crc;
    struct MEventBuffer_3430_Sub data;
};

 struct MEventBuffers
{
                     struct WonderNewsSaveStruct wonderNews;
                     struct WonderCardSaveStruct wonderCard;
                     struct MEventBuffer_3430 buffer_310;
                     u16 unk_338[4];
                     struct MysteryEventStruct unk_340;
                     u32 unk_344[2][5];
};

struct SaveBlock1
{
             struct Coords16 pos;
             struct WarpData location;
             struct WarpData continueGameWarp;
             struct WarpData dynamicWarp;
             struct WarpData lastHealLocation;
             struct WarpData escapeWarp;
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
              struct ItemSlot bagPocket_Items[30];
              struct ItemSlot bagPocket_KeyItems[30];
              struct ItemSlot bagPocket_PokeBalls[16];
              struct ItemSlot bagPocket_TMHM[64];
              struct ItemSlot bagPocket_Berries[46];
              struct Pokeblock pokeblocks[40];
              u8 seen1[((412 / 8) + ((412 % 8) ? 1 : 0))];
              u16 berryBlenderRecords[3];
              u8 field_9C2[6];
              u16 trainerRematchStepCounter;
              u8 trainerRematches[100];
              struct ObjectEvent objectEvents[16];
              struct ObjectEventTemplate objectEventTemplates[64];
               u8 flags[300];
               u16 vars[256];
               u32 gameStats[64];
               struct BerryTree berryTrees[128];
               struct SecretBase secretBases[20];
               u8 playerRoomDecorations[12];
               u8 playerRoomDecorationPositions[12];
               u8 decorationDesks[10];
               u8 decorationChairs[10];
               u8 decorationPlants[10];
               u8 decorationOrnaments[30];
               u8 decorationMats[30];
               u8 decorationPosters[10];
               u8 decorationDolls[40];
               u8 decorationCushions[10];
               u8 padding_27CA[2];
               TVShow tvShows[25];
               PokeNews pokeNews[16];
               u16 outbreakPokemonSpecies;
               u8 outbreakLocationMapNum;
               u8 outbreakLocationMapGroup;
               u8 outbreakPokemonLevel;
               u8 outbreakUnk1;
               u16 outbreakUnk2;
               u16 outbreakPokemonMoves[4];
               u8 outbreakUnk4;
               u8 outbreakPokemonProbability;
               u16 outbreakDaysLeft;
               struct GabbyAndTyData gabbyAndTyData;
               u16 easyChatProfile[6];
               u16 easyChatBattleStart[6];
               u16 easyChatBattleWon[6];
               u16 easyChatBattleLost[6];
               struct MailStruct mail[16];
               u8 additionalPhrases[8];
               OldMan oldMan;
               struct EasyChatPair easyChatPairs[5];
               struct ContestWinner contestWinners[13];
               struct DayCare daycare;
               struct LinkBattleRecords linkBattleRecords;
               u8 giftRibbons[52];
               struct Roamer roamer;
               struct EnigmaBerry enigmaBerry;
               struct MEventBuffers unk_322C;
               u8 field_3598[0x180];
               u32 trainerHillTimes[4];
               struct RamScript ramScript;
               struct RecordMixingGift recordMixingGift;
               u8 seen2[((412 / 8) + ((412 % 8) ? 1 : 0))];
               LilycoveLady lilycoveLady;
               struct TrainerNameRecord trainerNameRecords[20];
               u8 unk3C88[10][21];
               u8 filler3D5A[0xA];
               struct SaveTrainerHill trainerHill;
               struct WaldaPhrase waldaPhrase;

};

extern struct SaveBlock1* gSaveBlock1Ptr;

struct MapPosition
{
    s16 x;
    s16 y;
    s8 height;
};

struct TradeRoomPlayer
{
    u8 playerId;
    u8 isLocalPlayer;
    u8 c;
    u8 facing;
    struct MapPosition pos;
    u16 field_C;
};
# 2 "src/easy_chat.c" 2
# 1 "gflib/malloc.h" 1
# 15 "gflib/malloc.h"
extern u8 gHeap[];

void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 3 "src/easy_chat.c" 2
# 1 "include/bard_music.h" 1






struct BardSound
{
             u8 var00;
             s8 var01;
             u16 var02;
             s16 volume;
             u16 var06;
};

struct BardPhoneme
{
             u16 length;
             u16 pitch;
};

struct BardSong
{
             u8 currWord;
             u8 currPhoneme;
             u8 phonemeTimer;
             u8 state;
             s16 length;
             u16 volume;
             s16 pitch;
             s16 voiceInflection;
             u16 lyrics[6];
             struct BardPhoneme phonemes[6];
             const struct BardSound *sound;
};





extern const u16 gNumSpeciesNames;
extern const u16 gUnknown_085FA1D4;
const struct BardSound *GetWordSounds(u16 word);
void GetWordPhonemes(struct BardSong *song, u16 word);
# 4 "src/easy_chat.c" 2
# 1 "gflib/bg.h" 1



struct BGCntrlBitfield
{
    volatile u16 priority:2;
    volatile u16 charBaseBlock:2;
    volatile u16 field_0_2:4;
    volatile u16 field_1_0:5;
    volatile u16 areaOverflowMode:1;
    volatile u16 screenSize:2;
};

enum
{
 BG_ATTR_CHARBASEINDEX = 1,
 BG_ATTR_MAPBASEINDEX,
 BG_ATTR_SCREENSIZE,
 BG_ATTR_PALETTEMODE,
 BG_ATTR_MOSAIC,
 BG_ATTR_WRAPAROUND,
 BG_ATTR_PRIORITY,
 BG_ATTR_METRIC,
 BG_ATTR_TYPE,
 BG_ATTR_BASETILE,
};

struct BgTemplate
{
    u16 bg:2;
    u16 charBaseIndex:2;
    u16 mapBaseIndex:5;
    u16 screenSize:2;
    u16 paletteMode:1;
    u16 priority:2;
    u16 baseTile:10;
};

void ResetBgs(void);
u8 GetBgMode(void);
void ResetBgControlStructs(void);
void Unused_ResetBgControlStruct(u8 bg);
u8 LoadBgVram(u8 bg, const void *src, u16 size, u16 destOffset, u8 mode);
void SetTextModeAndHideBgs(void);
bool8 IsInvalidBg(u8 bg);
int DummiedOutFireRedLeafGreenTileAllocFunc(int a1, int a2, int a3, int a4);
void ResetBgsAndClearDma3BusyFlags(u32 leftoverFireRedLeafGreenVariable);
void InitBgsFromTemplates(u8 bgMode, const struct BgTemplate *templates, u8 numTemplates);
void InitBgFromTemplate(const struct BgTemplate *template);
void SetBgMode(u8 bgMode);
u16 LoadBgTiles(u8 bg, const void* src, u16 size, u16 destOffset);
u16 LoadBgTilemap(u8 bg, const void *src, u16 size, u16 destOffset);
u16 Unused_LoadBgPalette(u8 bg, const void *src, u16 size, u16 destOffset);
bool8 IsDma3ManagerBusyWithBgCopy(void);
void ShowBg(u8 bg);
void HideBg(u8 bg);
void SetBgAttribute(u8 bg, u8 attributeId, u8 value);
u16 GetBgAttribute(u8 bg, u8 attributeId);
s32 ChangeBgX(u8 bg, s32 value, u8 op);
s32 GetBgX(u8 bg);
s32 ChangeBgY(u8 bg, s32 value, u8 op);
s32 ChangeBgY_ScreenOff(u8 bg, u32 value, u8 op);
s32 GetBgY(u8 bg);
void SetBgAffine(u8 bg, s32 srcCenterX, s32 srcCenterY, s16 dispCenterX, s16 dispCenterY, s16 scaleX, s16 scaleY, u16 rotationAngle);
u8 Unused_AdjustBgMosaic(u8 a1, u8 a2);
void SetBgTilemapBuffer(u8 bg, void *tilemap);
void UnsetBgTilemapBuffer(u8 bg);
void* GetBgTilemapBuffer(u8 bg);
void CopyToBgTilemapBuffer(u8 bg, const void *src, u16 mode, u16 destOffset);
void CopyBgTilemapBufferToVram(u8 bg);
void CopyToBgTilemapBufferRect(u8 bg, const void* src, u8 destX, u8 destY, u8 width, u8 height);
void CopyToBgTilemapBufferRect_ChangePalette(u8 bg, const void *src, u8 destX, u8 destY, u8 rectWidth, u8 rectHeight, u8 palette);
void CopyRectToBgTilemapBufferRect(u8 bg, const void *src, u8 srcX, u8 srcY, u8 srcWidth, u8 unused, u8 srcHeight, u8 destX, u8 destY, u8 rectWidth, u8 rectHeight, s16 palette1, s16 tileOffset);
void FillBgTilemapBufferRect_Palette0(u8 bg, u16 tileNum, u8 x, u8 y, u8 width, u8 height);
void FillBgTilemapBufferRect(u8 bg, u16 tileNum, u8 x, u8 y, u8 width, u8 height, u8 palette);
void WriteSequenceToBgTilemapBuffer(u8 bg, u16 firstTileNum, u8 x, u8 y, u8 width, u8 height, u8 paletteSlot, s16 tileNumDelta);
u16 GetBgMetricTextMode(u8 bg, u8 whichMetric);
u32 GetBgMetricAffineMode(u8 bg, u8 whichMetric);
u32 GetTileMapIndexFromCoords(s32 x, s32 y, s32 screenSize, u32 screenWidth, u32 screenHeight);
void CopyTileMapEntry(const u16 *src, u16 *dest, s32 palette1, s32 tileOffset, s32 palette2);
u32 GetBgType(u8 bg);
bool32 IsInvalidBg32(u8 bg);
bool32 IsTileMapOutsideWram(u8 bg);
# 5 "src/easy_chat.c" 2
# 1 "include/data.h" 1



# 1 "include/constants/moves.h" 1
# 5 "include/data.h" 2
# 1 "include/constants/species.h" 1
# 6 "include/data.h" 2



struct MonCoords
{


    u8 size;
    u8 y_offset;
};

struct TrainerMonNoItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
};

struct TrainerMonItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
};

struct TrainerMonNoItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 moves[4];
};

struct TrainerMonItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
    u16 moves[4];
};

union TrainerMonPtr
{
    const struct TrainerMonNoItemDefaultMoves *NoItemDefaultMoves;
    const struct TrainerMonNoItemCustomMoves *NoItemCustomMoves;
    const struct TrainerMonItemDefaultMoves *ItemDefaultMoves;
    const struct TrainerMonItemCustomMoves *ItemCustomMoves;
};

struct Trainer
{
             u8 partyFlags;
             u8 trainerClass;
             u8 encounterMusic_gender;
             u8 trainerPic;
             u8 trainerName[12];
             u16 items[4];
             bool8 doubleBattle;
             u32 aiFlags;
             u8 partySize;
             union TrainerMonPtr party;
};



extern const u16 gUnknown_082FF1D8[];
extern const u32 gUnknown_082FF1F8[];

extern const struct SpriteFrameImage gUnknown_082FF3A8[];
extern const struct SpriteFrameImage gUnknown_082FF3C8[];
extern const struct SpriteFrameImage gUnknown_082FF3E8[];
extern const struct SpriteFrameImage gUnknown_082FF408[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Brendan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_May[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Red[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Leaf[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RubySapphireBrendan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RubySapphireMay[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Wally[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Steven[];

extern const union AffineAnimCmd *const gUnknown_082FF618[];
extern const union AffineAnimCmd *const gUnknown_082FF694[];
extern const union AffineAnimCmd *const gUnknown_082FF6C0[];

extern const union AnimCmd *const gUnknown_082FF70C[];
extern const struct MonCoords gMonFrontPicCoords[];
extern const struct CompressedSpriteSheet gMonStillFrontPicTable[];
extern const struct MonCoords gMonBackPicCoords[];
extern const struct CompressedSpriteSheet gMonBackPicTable[];
extern const struct CompressedSpritePalette gMonPaletteTable[];
extern const struct CompressedSpritePalette gMonShinyPaletteTable[];
extern const union AnimCmd *const *const gTrainerFrontAnimsPtrTable[];
extern const struct MonCoords gTrainerFrontPicCoords[];
extern const struct CompressedSpriteSheet gTrainerFrontPicTable[];
extern const struct CompressedSpritePalette gTrainerFrontPicPaletteTable[];
extern const union AnimCmd *const *const gTrainerBackAnimsPtrTable[];
extern const struct MonCoords gTrainerBackPicCoords[];
extern const struct CompressedSpriteSheet gTrainerBackPicTable[];
extern const struct CompressedSpritePalette gTrainerBackPicPaletteTable[];

extern const u8 gEnemyMonElevation[412];

extern const union AnimCmd *const *const gMonFrontAnimsPtrTable[];
extern const struct CompressedSpriteSheet gMonFrontPicTable[];

extern const struct Trainer gTrainers[];
extern const u8 gTrainerClassNames[][13];
extern const u8 gSpeciesNames[][10 + 1];
extern const u8 gMoveNames[355][12 + 1];
# 6 "src/easy_chat.c" 2
# 1 "include/decompress.h" 1





extern u8 gDecompressionBuffer[0x4000];

void LZDecompressWram(const u32 *src, void *dest);
void LZDecompressVram(const u32 *src, void *dest);

u16 LoadCompressedSpriteSheet(const struct CompressedSpriteSheet *src);
void LoadCompressedSpriteSheetOverrideBuffer(const struct CompressedSpriteSheet *src, void *buffer);
bool8 LoadCompressedSpriteSheetUsingHeap(const struct CompressedSpriteSheet* src);

void LoadCompressedSpritePalette(const struct CompressedSpritePalette *src);
void LoadCompressedSpritePaletteOverrideBuffer(const struct CompressedSpritePalette *a, void *buffer);
bool8 LoadCompressedSpritePaletteUsingHeap(const struct CompressedSpritePalette *src);

void DecompressPicFromTable(const struct CompressedSpriteSheet *src, void* buffer, s32 species);
void DecompressPicFromTable_2(const struct CompressedSpriteSheet *src, void* buffer, s32 species);
void DecompressPicFromTable_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void* buffer, s32 species);

void HandleLoadSpecialPokePic(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality);
void HandleLoadSpecialPokePic_2(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality);
void HandleLoadSpecialPokePic_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality);

void LoadSpecialPokePic(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);
void LoadSpecialPokePic_2(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);
void LoadSpecialPokePic_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);

u32 GetDecompressedDataSize(const u32 *ptr);
# 7 "src/easy_chat.c" 2
# 1 "include/dewford_trend.h" 1



void InitDewfordTrend(void);
void UpdateDewfordTrendPerDay(u16);
void UpdateDewfordTrendPerDay(u16 days);
bool8 sub_81226D8(u16 *a);
void ReceiveEasyChatPairsData(struct EasyChatPair *a, size_t b, u8 unused);
# 8 "src/easy_chat.c" 2
# 1 "include/dynamic_placeholder_text_util.h" 1



void DynamicPlaceholderTextUtil_Reset(void);
void DynamicPlaceholderTextUtil_SetPlaceholderPtr(u8 idx, const u8 *ptr);
u8 *DynamicPlaceholderTextUtil_ExpandPlaceholders(u8 *dest, const u8 *src);
const u8 *DynamicPlaceholderTextUtil_GetPlaceholderPtr(u8 idx);
# 9 "src/easy_chat.c" 2
# 1 "include/easy_chat.h" 1



# 1 "include/main.h" 1



typedef void (*MainCallback)(void);
typedef void (*IntrCallback)(void);
typedef void (*IntrFunc)(void);

struct Main
{
              MainCallback callback1;
              MainCallback callback2;

              MainCallback savedCallback;

              IntrCallback vblankCallback;
              IntrCallback hblankCallback;
              IntrCallback vcountCallback;
              IntrCallback serialCallback;

              vu16 intrCheck;

              u32 vblankCounter1;
              u32 vblankCounter2;

              u16 heldKeysRaw;
              u16 newKeysRaw;
              u16 heldKeys;
              u16 newKeys;
              u16 newAndRepeatedKeys;
              u16 keyRepeatCounter;
              bool16 watchedKeysPressed;
              u16 watchedKeysMask;

              struct OamData oamBuffer[128];

              u8 state;

              u8 oamLoadDisabled:1;
              u8 inBattle:1;
              u8 field_439_x4:1;
};

extern const u8 gGameVersion;
extern const u8 gGameLanguage;
extern const u8 RomHeaderGameCode[4];
extern const u8 RomHeaderSoftwareVersion;

extern u16 gKeyRepeatStartDelay;
extern bool8 gLinkTransferringData;
extern struct Main gMain;
extern u16 gKeyRepeatContinueDelay;
extern bool8 gSoftResetDisabled;
extern IntrFunc gIntrTable[];
extern u8 gLinkVSyncDisabled;
extern u32 IntrMain_Buffer[];
extern s8 gPcmDmaCounter;

void AgbMain(void);
void SetMainCallback2(MainCallback callback);
void InitKeys(void);
void SetVBlankCallback(IntrCallback callback);
void SetHBlankCallback(IntrCallback callback);
void SetVCountCallback(IntrCallback callback);
void SetSerialCallback(IntrCallback callback);
void InitFlashTimer(void);
void SetTrainerHillVBlankCounter(u32 *var);
void ClearTrainerHillVBlankCounter(void);
void DoSoftReset(void);
void ClearPokemonCrySongs(void);
void RestoreSerialTimer3IntrHandlers(void);
void StartTimer1(void);
void SeedRngAndSetTrainerId(void);
u16 GetGeneratedTrainerIdLower(void);
void sub_819789C(void);
# 5 "include/easy_chat.h" 2
# 1 "include/constants/easy_chat.h" 1
# 6 "include/easy_chat.h" 2

struct EasyChatScreenTemplate
{
    u8 type;
    u8 numColumns;
    u8 numRows;
    u8 frameId:7;
    u8 fourFooterOptions:1;
    const u8 *titleText;
    const u8 *instructionsText1;
    const u8 *instructionsText2;
    const u8 *confirmText1;
    const u8 *confirmText2;
};

struct EasyChatScreen
{
             u8 type;
             u8 templateId;
             u8 numColumns;
             u8 numRows;
             u8 state;
             s8 mainCursorColumn;
             s8 mainCursorRow;
             u8 unk_07;
             u8 stateBackup;
             u8 unk_09;
             s8 unk_0a;
             s8 unk_0b;
             u8 unk_0c;
             u8 unk_0d;
             u8 unk_0e;
             u8 unk_0f;
             s8 unk_10;
             s8 unk_11;
             u8 displayedPersonType;
             u8 unk_13;
             u8 unk_14[0x20];
             const u8 *titleText;
             u16 *words;
             u16 ecWordBuffer[9];
};

struct Unk203A11C
{
    u16 unk0;
    u16 windowId;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    s8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB[0xC1];
    u8 unkCC[0x202];
    u16 unk2CE;
    int unk2D0;
    int unk2D4;
    struct Sprite *unk2D8;
    struct Sprite *unk2DC;
    struct Sprite *unk2E0;
    struct Sprite *unk2E4;
    struct Sprite *unk2E8;
    struct Sprite *unk2EC;
    struct Sprite *unk2F0;
    struct Sprite *unk2F4;
    struct Sprite *unk2F8;
    struct Sprite *unk2FC;
    u16 unk300[0x800 / 2];
    u16 unkB00[0x800 / 2];
};

struct EasyChatPhraseFrameDimensions
{
    u8 left:5;
    u8 top:3;
    u8 width;
    u8 height;
    u8 footerId;
};

struct EasyChatWordInfo
{
    const u8 *text;
    int alphabeticalOrder;
    int enabled;
};

typedef union
{
    const u16 *valueList;
    const struct EasyChatWordInfo *words;
} EasyChatGroupWordData;

struct EasyChatGroup
{
    EasyChatGroupWordData wordData;
    u16 numWords;
    u16 numEnabledWords;
};

struct Unk203A120
{
    u16 unk0;
    u16 unk2[0x16];
    u16 unk2E[27];
    u16 unk64[27][270];
    u8 filler3958[0x2C];
    u16 unk3984[0x10E];
    u16 unk3BA0;
};

struct EasyChatWordsByLetter
{
    const u16 *words;
    int numWords;
};

void InitEasyChatPhrases(void);
void ShowEasyChatScreen(void);
u8 * CopyEasyChatWord(u8 *dest, u16 word);
bool32 sub_811F8D8(int word);
void InitializeEasyChatWordArray(u16 *words, u16 length);
u8 *ConvertEasyChatWordsToString(u8 *dest, const u16 *src, u16 columns, u16 rows);
bool8 ECWord_CheckIfOutsideOfValidRange(u16 word);
u16 GetRandomEasyChatWordFromGroup(u16 group);
u16 GetNewHipsterPhraseToTeach(void);
u16 EasyChat_GetNumWordsInGroup(u8);
u16 GetRandomEasyChatWordFromUnlockedGroup(u16);
void DoEasyChatScreen(u8 type, u16 *words, MainCallback callback, u8 displayedPersonType);
void sub_811F8BC(void);
void UnlockAdditionalPhrase(u8 additionalPhraseId);
# 10 "src/easy_chat.c" 2
# 1 "include/event_data.h" 1



# 1 "include/constants/flags.h" 1



# 1 "include/constants/opponents.h" 1
# 5 "include/constants/flags.h" 2
# 5 "include/event_data.h" 2
# 1 "include/constants/vars.h" 1
# 6 "include/event_data.h" 2

void InitEventData(void);
void ClearTempFieldEventData(void);
void ClearDailyFlags(void);
void DisableNationalPokedex(void);
void EnableNationalPokedex(void);
bool32 IsNationalPokedexEnabled(void);
void DisableMysteryEvent(void);
void EnableMysteryEvent(void);
bool32 IsMysteryEventEnabled(void);
void DisableMysteryGift(void);
void EnableMysteryGift(void);
bool32 IsMysteryGiftEnabled(void);
void ClearMysteryEventFlags(void);
void ClearMysteryEventVars(void);
void DisableResetRTC(void);
void EnableResetRTC(void);
bool32 CanResetRTC(void);
u16 *GetVarPointer(u16 id);
u16 VarGet(u16 id);
bool8 VarSet(u16 id, u16 value);
u8 VarGetObjectEventGraphicsId(u8 id);
u8 *GetFlagPointer(u16 id);
u8 FlagSet(u16 id);
u8 FlagClear(u16 id);
bool8 FlagGet(u16 id);

extern u16 gSpecialVar_0x8000;
extern u16 gSpecialVar_0x8001;
extern u16 gSpecialVar_0x8002;
extern u16 gSpecialVar_0x8003;
extern u16 gSpecialVar_0x8004;
extern u16 gSpecialVar_0x8005;
extern u16 gSpecialVar_0x8006;
extern u16 gSpecialVar_0x8007;
extern u16 gSpecialVar_0x8008;
extern u16 gSpecialVar_0x8009;
extern u16 gSpecialVar_0x800A;
extern u16 gSpecialVar_0x800B;
extern u16 gSpecialVar_Result;
extern u16 gSpecialVar_LastTalked;
extern u16 gSpecialVar_Facing;
extern u16 gSpecialVar_MonBoxId;
extern u16 gSpecialVar_MonBoxPos;
extern u16 gSpecialVar_Unused_0x8014;
# 11 "src/easy_chat.c" 2
# 1 "include/event_object_movement.h" 1



enum SpinnerRunnerFollowPatterns
{
    RUNFOLLOW_ANY,
    RUNFOLLOW_NORTH_SOUTH,
    RUNFOLLOW_EAST_WEST,
    RUNFOLLOW_NORTH_WEST,
    RUNFOLLOW_NORTH_EAST,
    RUNFOLLOW_SOUTH_WEST,
    RUNFOLLOW_SOUTH_EAST,
    RUNFOLLOW_NORTH_SOUTH_WEST,
    RUNFOLLOW_NORTH_SOUTH_EAST,
    RUNFOLLOW_NORTH_EAST_WEST,
    RUNFOLLOW_SOUTH_EAST_WEST
};

struct UnkStruct_085094AC
{
    const union AnimCmd *const *anims;
    u8 animPos[4];
};
# 46 "include/event_object_movement.h"
struct PairedPalettes
{
    u16 tag;
    const u16 *data;
};

struct LockedAnimObjectEvents
{
    u8 objectEventIds[16];
    u8 count;
};

extern const struct SpriteFrameImage gObjectEventPicTable_PechaBerryTree[];
extern const struct OamData gObjectEventBaseOam_32x8;
extern const struct OamData gObjectEventBaseOam_32x32;
extern const struct SpriteTemplate *const gFieldEffectObjectTemplatePointers[];
extern const u8 gReflectionEffectPaletteMap[];

extern const u8 *const gBerryTreeObjectEventGraphicsIdTablePointers[];
extern const struct SpriteFrameImage *const gBerryTreePicTablePointers[];
extern const u8 *const gBerryTreePaletteSlotTablePointers[];

void ResetObjectEvents(void);
u8 GetMoveDirectionAnimNum(u8);
u8 GetObjectEventIdByLocalIdAndMap(u8, u8, u8);
bool8 TryGetObjectEventIdByLocalIdAndMap(u8, u8, u8, u8 *);
u8 GetObjectEventIdByXY(s16, s16);
void SetObjectEventDirection(struct ObjectEvent *, u8);
u8 GetFirstInactiveObjectEventId(void);
void RemoveObjectEventByLocalIdAndMap(u8, u8, u8);
void LoadPlayerObjectReflectionPalette(u16, u8);
void LoadSpecialObjectReflectionPalette(u16, u8);
void TryMoveObjectEventToMapCoords(u8, u8, u8, s16, s16);
void PatchObjectPalette(u16, u8);
void sub_808E16C(s16, s16);
void OverrideSecretBaseDecorationSpriteScript(u8 localId, u8 mapNum, u8 mapGroup, u8 decorCat);
void sub_8092FF0(s16, s16, s16 *, s16 *);
u8 GetFaceDirectionAnimNum(u8);
void sub_80930E0(s16 *, s16 *, s16, s16);
void ObjectEventClearHeldMovement(struct ObjectEvent *);
void ObjectEventClearHeldMovementIfActive(struct ObjectEvent *);
void TrySpawnObjectEvents(s16, s16);
u8 sprite_new(u8 graphicsId, u8 a1, s16 x, s16 y, u8 z, u8 direction);
u8 AddPseudoObjectEvent(u16, void (*)(struct Sprite *), s16 x, s16 y, u8 subpriority);
u8 TrySpawnObjectEvent(u8, u8, u8);
u8 SpawnSpecialObjectEventParameterized(u8 graphicsId, u8 movementBehavior, u8 localId, s16 x, s16 y, u8 z);
u8 SpawnSpecialObjectEvent(struct ObjectEventTemplate *);
void SetSpritePosToMapCoords(s16, s16, s16 *, s16 *);
void CameraObjectReset1(void);
void ObjectEventSetGraphicsId(struct ObjectEvent *, u8 graphicsId);
void ObjectEventTurn(struct ObjectEvent *, u8);
void ObjectEventTurnByLocalIdAndMap(u8, u8, u8, u8);
const struct ObjectEventGraphicsInfo *GetObjectEventGraphicsInfo(u8 graphicsId);
void npc_by_local_id_and_map_set_field_1_bit_x20(u8, u8, u8, u8);
void FreeAndReserveObjectSpritePalettes(void);
void sub_808E82C(u8, u8, u8, s16, s16);
void sub_808E7E4(u8, u8, u8);
void sub_808E78C(u8, u8, u8, u8);
void sub_808E75C(s16, s16);
void ObjectEventGetLocalIdAndMap(struct ObjectEvent *objectEvent, void *localId, void *mapNum, void *mapGroup);
void ShiftObjectEventCoords(struct ObjectEvent *, s16, s16);
void MoveObjectEventToMapCoords(struct ObjectEvent *, s16, s16);
void TryOverrideObjectEventTemplateCoords(u8, u8, u8);
void InitObjectEventPalettes(u8 palSlot);
void UpdateObjectEventCurrentMovement(struct ObjectEvent *, struct Sprite *, bool8(struct ObjectEvent *, struct Sprite *));
u8 ObjectEventFaceOppositeDirection(struct ObjectEvent *, u8);
u8 GetOppositeDirection(u8);
u8 GetWalkInPlaceFastestMovementAction(u32);
u8 GetWalkInPlaceFastMovementAction(u32);
u8 GetWalkInPlaceNormalMovementAction(u32);
u8 GetWalkInPlaceSlowMovementAction(u32);
u8 GetCollisionAtCoords(struct ObjectEvent *, s16, s16, u32);
void MoveCoords(u8, s16 *, s16 *);
bool8 ObjectEventIsHeldMovementActive(struct ObjectEvent *);
u8 ObjectEventClearHeldMovementIfFinished(struct ObjectEvent *);
u8 GetObjectEventIdByXYZ(u16 x, u16 y, u8 z);
void SetTrainerMovementType(struct ObjectEvent *objectEvent, u8 movementType);
u8 GetTrainerFacingDirectionMovementType(u8 direction);
const u8 *GetObjectEventScriptPointerByObjectEventId(u8 objectEventId);
u8 GetCollisionFlagsAtCoords(struct ObjectEvent *objectEvent, s16 x, s16 y, u8 direction);
u8 GetFaceDirectionMovementAction(u32);
u8 GetWalkNormalMovementAction(u32);
u8 GetWalkFastMovementAction(u32);
u8 GetRideWaterCurrentMovementAction(u32);
u8 GetWalkFastestMovementAction(u32);
u8 GetPlayerRunMovementAction(u32);
u8 GetJumpInPlaceMovementAction(u32);
u8 GetAcroWheelieFaceDirectionMovementAction(u32);
u8 GetAcroPopWheelieFaceDirectionMovementAction(u32);
u8 GetAcroEndWheelieFaceDirectionMovementAction(u32);
u8 GetAcroWheelieHopFaceDirectionMovementAction(u32);
u8 GetAcroWheelieHopDirectionMovementAction(u32);
u8 GetAcroWheelieJumpDirectionMovementAction(u32);
u8 GetJumpInPlaceTurnAroundMovementAction(u32);
u8 GetAcroWheelieInPlaceDirectionMovementAction(u32);
u8 GetAcroPopWheelieMoveDirectionMovementAction(u32);
u8 GetAcroWheelieMoveDirectionMovementAction(u32);
u8 GetAcroEndWheelieMoveDirectionMovementAction(u32);
u8 GetFishingDirectionAnimNum(u8 direction);
u8 GetAcroWheelieDirectionAnimNum(u8 direction);
u8 GetFishingBiteDirectionAnimNum(u8 direction);
u8 GetFishingNoCatchDirectionAnimNum(u8 direction);
bool8 ObjectEventSetHeldMovement(struct ObjectEvent *objectEvent, u8 specialAnimId);
void ObjectEventForceSetHeldMovement(struct ObjectEvent *objectEvent, u8 movementActionId);
bool8 ObjectEventIsMovementOverridden(struct ObjectEvent *objectEvent);
u8 ObjectEventCheckHeldMovementStatus(struct ObjectEvent *objectEvent);
u8 ObjectEventGetHeldMovementActionId(struct ObjectEvent *objectEvent);
void TryOverrideTemplateCoordsForObjectEvent(const struct ObjectEvent *objectEvent, u8 movementType);
void OverrideTemplateCoordsForObjectEvent(const struct ObjectEvent *objectEvent);
void ShiftStillObjectEventCoords(struct ObjectEvent *pObject);
void ObjectEventMoveDestCoords(struct ObjectEvent *pObject, u32 unk_19, s16 *pInt, s16 *pInt1);
u8 AddCameraObject(u8 linkedSpriteId);
void UpdateObjectEventsForCameraUpdate(s16 x, s16 y);
u8 GetWalkSlowMovementAction(u32);
u8 GetJumpMovementAction(u32);
bool8 AreZCoordsCompatible(u8, u8);
u8 ZCoordToPriority(u8);
void ObjectEventUpdateZCoord(struct ObjectEvent *pObject);
void SetObjectSubpriorityByZCoord(u8, struct Sprite *, u8);
bool8 IsZCoordMismatchAt(u8, s16, s16);
void UnfreezeObjectEvent(struct ObjectEvent *);
u8 FindLockedObjectEventIndex(struct ObjectEvent *);
bool8 obj_npc_ministep(struct Sprite *sprite);
bool8 sub_80976EC(struct Sprite *sprite);
void sub_80976DC(struct Sprite *, u8);
void sub_809783C(struct Sprite *, u8, u8, u8);
void DoShadowFieldEffect(struct ObjectEvent *);
u8 sub_809785C(struct Sprite *);
u8 sub_80978E4(struct Sprite *);
void SetAndStartSpriteAnim(struct Sprite *, u8, u8);
bool8 SpriteAnimEnded(struct Sprite *);
void sub_8097750(struct Sprite *);
bool8 sub_8097758(struct Sprite *);
void CreateLevitateMovementTask(struct ObjectEvent *);
void DestroyExtraMovementTask(u8);
void UnfreezeObjectEvents(void);
void FreezeObjectEventsExceptOne(u8 objectEventId);
void sub_8097B78(u8, u8);
void sub_8098074(u8 var1, u8 var2);
void FreezeObjectEvents(void);
bool8 FreezeObjectEvent(struct ObjectEvent *objectEvent);
u8 GetMoveDirectionFastAnimNum(u8);
u8 GetMoveDirectionFasterAnimNum(u8);
u8 GetMoveDirectionFastestAnimNum(u8);
u8 GetLedgeJumpDirection(s16, s16, u8);
void CameraObjectSetFollowedObjectId(u8 objectId);
u16 GetObjectPaletteTag(u8 palSlot);
void UpdateObjectEventSpriteVisibility(struct Sprite *sprite, bool8 invisible);
s16 sub_809773C(s16 a1);
s16 sub_8097728(s16 a1);
void CameraObjectReset2(void);
u8 ObjectEventGetBerryTreeId(u8 objectEventId);
void sub_8092EF0(u8 mapId, u8 mapNumber, u8 mapGroup);
bool8 IsBerryTreeSparkling(u8, u8, u8);

void MovementType_None(struct Sprite *);
void MovementType_LookAround(struct Sprite *);
void MovementType_WanderAround(struct Sprite *);
void MovementType_WanderUpAndDown(struct Sprite *);
void MovementType_WanderLeftAndRight(struct Sprite *);
void MovementType_FaceDirection(struct Sprite *);
void MovementType_Player(struct Sprite *);
void MovementType_BerryTreeGrowth(struct Sprite *);
void MovementType_FaceDownAndUp(struct Sprite *);
void MovementType_FaceLeftAndRight(struct Sprite *);
void MovementType_FaceUpAndLeft(struct Sprite *);
void MovementType_FaceUpAndRight(struct Sprite *);
void MovementType_FaceDownAndLeft(struct Sprite *);
void MovementType_FaceDownAndRight(struct Sprite *);
void MovementType_FaceDownUpAndLeft(struct Sprite *);
void MovementType_FaceDownUpAndRight(struct Sprite *);
void MovementType_FaceUpRightAndLeft(struct Sprite *);
void MovementType_FaceDownRightAndLeft(struct Sprite *);
void MovementType_RotateCounterclockwise(struct Sprite *);
void MovementType_RotateClockwise(struct Sprite *);
void MovementType_WalkBackAndForth(struct Sprite *);
void MovementType_WalkSequenceUpRightLeftDown(struct Sprite *);
void MovementType_WalkSequenceRightLeftDownUp(struct Sprite *);
void MovementType_WalkSequenceDownUpRightLeft(struct Sprite *);
void MovementType_WalkSequenceLeftDownUpRight(struct Sprite *);
void MovementType_WalkSequenceUpLeftRightDown(struct Sprite *);
void MovementType_WalkSequenceLeftRightDownUp(struct Sprite *);
void MovementType_WalkSequenceDownUpLeftRight(struct Sprite *);
void MovementType_WalkSequenceRightDownUpLeft(struct Sprite *);
void MovementType_WalkSequenceLeftUpDownRight(struct Sprite *);
void MovementType_WalkSequenceUpDownRightLeft(struct Sprite *);
void MovementType_WalkSequenceRightLeftUpDown(struct Sprite *);
void MovementType_WalkSequenceDownRightLeftUp(struct Sprite *);
void MovementType_WalkSequenceRightUpDownLeft(struct Sprite *);
void MovementType_WalkSequenceUpDownLeftRight(struct Sprite *);
void MovementType_WalkSequenceLeftRightUpDown(struct Sprite *);
void MovementType_WalkSequenceDownLeftRightUp(struct Sprite *);
void MovementType_WalkSequenceUpLeftDownRight(struct Sprite *);
void MovementType_WalkSequenceDownRightUpLeft(struct Sprite *);
void MovementType_WalkSequenceLeftDownRightUp(struct Sprite *);
void MovementType_WalkSequenceRightUpLeftDown(struct Sprite *);
void MovementType_WalkSequenceUpRightDownLeft(struct Sprite *);
void MovementType_WalkSequenceDownLeftUpRight(struct Sprite *);
void MovementType_WalkSequenceLeftUpRightDown(struct Sprite *);
void MovementType_WalkSequenceRightDownLeftUp(struct Sprite *);
void MovementType_CopyPlayer(struct Sprite *);
void MovementType_TreeDisguise(struct Sprite *);
void MovementType_MountainDisguise(struct Sprite *);
void MovementType_CopyPlayerInGrass(struct Sprite *);
void MovementType_Hidden(struct Sprite *);
void MovementType_WalkInPlace(struct Sprite *);
void MovementType_JogInPlace(struct Sprite *);
void MovementType_RunInPlace(struct Sprite *);
void MovementType_Invisible(struct Sprite *);
void MovementType_WalkSlowlyInPlace(struct Sprite *);
u8 GetSlideMovementAction(u32);
u8 GetJumpInPlaceMovementAction(u32);
u8 GetJumpMovementAction(u32);
u8 GetJump2MovementAction(u32);
u8 CreateCopySpriteAt(struct Sprite *sprite, s16 x, s16 y, u8 subpriority);

u8 MovementType_WanderAround_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step5(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step6(struct ObjectEvent *, struct Sprite *);
u8 GetVectorDirection(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthNorth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_WestEast(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_WestNorth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_EastNorth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_WestSouth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_EastSouth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthNorthWest(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthNorthEast(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_NorthWestEast(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthWestEast(s16, s16, s16, s16);
u8 MovementType_LookAround_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_LookAround_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_LookAround_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_LookAround_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_LookAround_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step5(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step6(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step5(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step6(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDirection_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDirection_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDirection_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateClockwise_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateClockwise_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateClockwise_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateClockwise_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequence_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequence_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpRightLeftDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightLeftDownUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownUpRightLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftDownUpRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpLeftRightDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftRightDownUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownUpLeftRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightDownUpLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftUpDownRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpDownRightLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightLeftUpDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownRightLeftUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightUpDownLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpDownLeftRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftRightUpDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownLeftRightUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpLeftDownRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownRightUpLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftDownRightUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightUpLeftDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpRightDownLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownLeftUpRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftUpRightDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightDownLeftUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_CopyPlayer_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_CopyPlayer_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_CopyPlayer_Step2(struct ObjectEvent *, struct Sprite *);
bool8 CopyablePlayerMovement_None(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_FaceDirection(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed0(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed1(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed2(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_Slide(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 cph_IM_DIFFERENT(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed4(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_Jump(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
u8 MovementType_CopyPlayerInGrass_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_Hidden_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkInPlace_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_MoveInPlace_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSlowlyInPlace_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_JogInPlace_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RunInPlace_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_Invisible_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_Invisible_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_Invisible_Step2(struct ObjectEvent *, struct Sprite *);
void sub_8097C44(u8 var, bool32 var2);
bool32 sub_8097C8C(u8 var);
void sub_8097BB4(u8 var1, u8 graphicsId);
void sub_8097CC4(u8 var1, u8 var2);
bool32 sub_8097D9C(u8 var);
# 12 "src/easy_chat.c" 2
# 1 "include/field_message_box.h" 1



enum
{
    FIELD_MESSAGE_BOX_HIDDEN,
    FIELD_MESSAGE_BOX_UNUSED,
    FIELD_MESSAGE_BOX_NORMAL,
    FIELD_MESSAGE_BOX_AUTO_SCROLL,
};

bool8 ShowFieldMessage(const u8 *message);
bool8 ShowPokenavFieldMessage(const u8 *message);
bool8 ShowFieldMessageFromBuffer(void);
bool8 ShowFieldAutoScrollMessage(const u8 *message);
void HideFieldMessageBox(void);
bool8 IsFieldMessageBoxHidden(void);
u8 GetFieldMessageBoxMode(void);
void StopFieldMessage(void);
void InitFieldMessageBox(void);
# 13 "src/easy_chat.c" 2
# 1 "include/field_weather.h" 1




# 1 "include/constants/field_weather.h" 1
# 6 "include/field_weather.h" 2

struct Weather
{
    union
    {
        struct
        {
            struct Sprite *rainSprites[24];
            struct Sprite *snowflakeSprites[101];
            struct Sprite *cloudSprites[3];
        } s1;
        struct
        {
            u8 filler0[0xA0];
            struct Sprite *fogHSprites[20];
            struct Sprite *ashSprites[20];
            struct Sprite *fogDSprites[20];
            struct Sprite *sandstormSprites1[20];
            struct Sprite *sandstormSprites2[5];
        } s2;
    } sprites;
    u8 gammaShifts[19][32];
    u8 altGammaShifts[19][32];
    s8 gammaIndex;
    s8 gammaTargetIndex;
    u8 gammaStepDelay;
    u8 gammaStepFrameCounter;
    u16 fadeDestColor;
              u8 palProcessingState;
              u8 fadeScreenCounter;
              bool8 readyForInit;
              u8 taskId;
              u8 unknown_6CA;
    u8 unknown_6CB;
    u16 initStep;
    u16 finishStep;
    u8 currWeather;
    u8 nextWeather;
    u8 weatherGfxLoaded;
    bool8 weatherChangeComplete;
    u8 weatherPicSpritePalIndex;
    u8 altGammaSpritePalIndex;
    u16 rainSpriteVisibleCounter;
    u8 curRainSpriteIndex;
    u8 targetRainSpriteCount;
    u8 rainSpriteCount;
    u8 rainSpriteVisibleDelay;
    u8 isDownpour;
    u8 rainStrength;
              u8 cloudSpritesCreated;
    u8 filler_6DF[1];
    u16 snowflakeVisibleCounter;
    u16 unknown_6E2;
    u8 snowflakeSpriteCount;
    u8 targetSnowflakeSpriteCount;
    u16 unknown_6E6;
    u16 thunderCounter;
    u8 unknown_6EA;
    u8 unknown_6EB;
    u8 unknown_6EC;
    u8 thunderTriggered;
    u16 fogHScrollPosX;
    u16 fogHScrollCounter;
    u16 fogHScrollOffset;
    u8 lightenedFogSpritePals[6];
    u8 lightenedFogSpritePalsCount;
    u8 fogHSpritesCreated;
    u16 ashBaseSpritesX;
    u16 unknown_6FE;
    u8 ashSpritesCreated;
    u8 filler_701[3];
    u32 sandstormXOffset;
    u32 sandstormYOffset;
    u8 filler_70C[2];
    u16 sandstormBaseSpritesX;
    u16 sandstormPosY;
    u16 sandstormWaveIndex;
    u16 sandstormWaveCounter;
    u8 sandstormSpritesCreated;
    u8 sandstormSwirlSpritesCreated;
    u16 fogDBaseSpritesX;
    u16 fogDPosY;
    u16 fogDScrollXCounter;
    u16 fogDScrollYCounter;
    u16 fogDXOffset;
    u16 fogDYOffset;
    u8 fogDSpritesCreated;
    u8 filler_725[1];
    u16 bubblesDelayCounter;
    u16 bubblesDelayIndex;
    u16 bubblesCoordsIndex;
    u16 bubblesSpriteCount;
    u8 bubblesSpritesCreated;
    u8 filler_72F;
    u16 currBlendEVA;
    u16 currBlendEVB;
    u16 targetBlendEVA;
    u16 targetBlendEVB;
    u8 blendUpdateCounter;
    u8 blendFrameCounter;
    u8 blendDelay;
    u8 filler_73B[0x3C-0x3B];
    s16 unknown_73C;
    s16 unknown_73E;
    s16 unknown_740;
    s16 unknown_742;
    u8 filler_744[0xD-4];
    s8 loadDroughtPalsIndex;
    u8 loadDroughtPalsOffset;
};


extern struct Weather gWeather;
extern struct Weather *const gWeatherPtr;
extern const u16 gUnknown_083970E8[];


extern const u8 gWeatherFogHorizontalTiles[];

void StartWeather(void);
void SetNextWeather(u8 weather);
void SetCurrentAndNextWeather(u8 weather);
void SetCurrentAndNextWeatherNoDelay(u8 weather);
void sub_80ABC48(s8 gammaIndex);
void sub_80ABC7C(u8 gammaIndex, u8 gammaTargetIndex, u8 gammaStepDelay);
void FadeScreen(u8 mode, s8 delay);
bool8 IsWeatherNotFadingIn(void);
void UpdateSpritePaletteWithWeather(u8 spritePaletteIndex);
void ApplyWeatherGammaShiftToPal(u8 paletteIndex);
u8 sub_80ABF20(void);
void LoadCustomWeatherSpritePalette(const u16 *palette);
void ResetDroughtWeatherPaletteLoading(void);
bool8 LoadDroughtWeatherPalettes(void);
void sub_80ABFE0(s8 gammaIndex);
void sub_80ABFF0(void);
void sub_80AC01C(void);
void Weather_SetBlendCoeffs(u8 eva, u8 evb);
void Weather_SetTargetBlendCoeffs(u8 eva, u8 evb, int delay);
bool8 Weather_UpdateBlend(void);
void sub_80AC274(u8 a);
u8 GetCurrentWeather(void);
void SetRainStrengthFromSoundEffect(u16 soundEffect);
void PlayRainStoppingSoundEffect(void);
u8 IsWeatherChangeComplete(void);
void SetWeatherScreenFadeOut(void);
void sub_80AC3E4(void);
void PreservePaletteInWeather(u8 preservedPalIndex);
void ResetPreservedPalettesInWeather(void);


void Clouds_InitVars(void);
void Clouds_Main(void);
void Clouds_InitAll(void);
bool8 Clouds_Finish(void);
void Sunny_InitVars(void);
void Sunny_Main(void);
void Sunny_InitAll(void);
bool8 Sunny_Finish(void);
void Rain_InitVars(void);
void Rain_Main(void);
void Rain_InitAll(void);
bool8 Rain_Finish(void);
void Snow_InitVars(void);
void Snow_Main(void);
void Snow_InitAll(void);
bool8 Snow_Finish(void);
void Thunderstorm_InitVars(void);
void Thunderstorm_Main(void);
void Thunderstorm_InitAll(void);
bool8 Thunderstorm_Finish(void);
void FogHorizontal_InitVars(void);
void FogHorizontal_Main(void);
void FogHorizontal_InitAll(void);
bool8 FogHorizontal_Finish(void);
void Ash_InitVars(void);
void Ash_Main(void);
void Ash_InitAll(void);
bool8 Ash_Finish(void);
void Sandstorm_InitVars(void);
void Sandstorm_Main(void);
void Sandstorm_InitAll(void);
bool8 Sandstorm_Finish(void);
void FogDiagonal_InitVars(void);
void FogDiagonal_Main(void);
void FogDiagonal_InitAll(void);
bool8 FogDiagonal_Finish(void);
void Shade_InitVars(void);
void Shade_Main(void);
void Shade_InitAll(void);
bool8 Shade_Finish(void);
void Drought_InitVars(void);
void Drought_Main(void);
void Drought_InitAll(void);
bool8 Drought_Finish(void);
void Downpour_InitVars(void);
void Downpour_InitAll(void);
void Bubbles_InitVars(void);
void Bubbles_Main(void);
void Bubbles_InitAll(void);
bool8 Bubbles_Finish(void);

u8 GetSav1Weather(void);
void SetSav1Weather(u32 weather);
void SetSav1WeatherFromCurrMapHeader(void);
void SetWeather(u32 weather);
void DoCurrentWeather(void);
void UpdateWeatherPerDay(u16 increment);
void ResumePausedWeather(void);
# 14 "src/easy_chat.c" 2
# 1 "gflib/gpu_regs.h" 1
# 9 "gflib/gpu_regs.h"
void InitGpuRegManager(void);
void CopyBufferedValuesToGpuRegs(void);
void SetGpuReg(u8 regOffset, u16 value);
void SetGpuReg_ForcedBlank(u8 regOffset, u16 value);
u16 GetGpuReg(u8 regOffset);
void SetGpuRegBits(u8 regOffset, u16 mask);
void ClearGpuRegBits(u8 regOffset, u16 mask);
void EnableInterrupts(u16 mask);
void DisableInterrupts(u16 mask);
# 15 "src/easy_chat.c" 2
# 1 "include/graphics.h" 1




extern const u32 gMessageBox_Gfx[];
extern const u16 gMessageBox_Pal[];


extern const u32 gInterfaceGfx_PokeBall[];
extern const u32 gInterfacePal_PokeBall[];
extern const u32 gInterfaceGfx_GreatBall[];
extern const u32 gInterfacePal_GreatBall[];
extern const u32 gInterfaceGfx_SafariBall[];
extern const u32 gInterfacePal_SafariBall[];
extern const u32 gInterfaceGfx_UltraBall[];
extern const u32 gInterfacePal_UltraBall[];
extern const u32 gInterfaceGfx_MasterBall[];
extern const u32 gInterfacePal_MasterBall[];
extern const u32 gInterfaceGfx_NetBall[];
extern const u32 gInterfacePal_NetBall[];
extern const u32 gInterfaceGfx_DiveBall[];
extern const u32 gInterfacePal_DiveBall[];
extern const u32 gInterfaceGfx_NestBall[];
extern const u32 gInterfacePal_NestBall[];
extern const u32 gInterfaceGfx_RepeatBall[];
extern const u32 gInterfacePal_RepeatBall[];
extern const u32 gInterfaceGfx_TimerBall[];
extern const u32 gInterfacePal_TimerBall[];
extern const u32 gInterfaceGfx_LuxuryBall[];
extern const u32 gInterfacePal_LuxuryBall[];
extern const u32 gInterfaceGfx_PremierBall[];
extern const u32 gInterfacePal_PremierBall[];
extern const u32 gOpenPokeballGfx[];


extern const u32 gMonFrontPic_Bulbasaur[];
extern const u32 gMonPalette_Bulbasaur[];
extern const u32 gMonBackPic_Bulbasaur[];
extern const u32 gMonShinyPalette_Bulbasaur[];
extern const u32 gMonStillFrontPic_Bulbasaur[];
extern const u8 gMonIcon_Bulbasaur[];
extern const u8 gMonFootprint_Bulbasaur[];
extern const u32 gMonFrontPic_Ivysaur[];
extern const u32 gMonPalette_Ivysaur[];
extern const u32 gMonBackPic_Ivysaur[];
extern const u32 gMonShinyPalette_Ivysaur[];
extern const u32 gMonStillFrontPic_Ivysaur[];
extern const u8 gMonIcon_Ivysaur[];
extern const u8 gMonFootprint_Ivysaur[];
extern const u32 gMonFrontPic_Venusaur[];
extern const u32 gMonPalette_Venusaur[];
extern const u32 gMonBackPic_Venusaur[];
extern const u32 gMonShinyPalette_Venusaur[];
extern const u32 gMonStillFrontPic_Venusaur[];
extern const u8 gMonIcon_Venusaur[];
extern const u8 gMonFootprint_Venusaur[];
extern const u32 gMonFrontPic_Charmander[];
extern const u32 gMonPalette_Charmander[];
extern const u32 gMonBackPic_Charmander[];
extern const u32 gMonShinyPalette_Charmander[];
extern const u32 gMonStillFrontPic_Charmander[];
extern const u8 gMonIcon_Charmander[];
extern const u8 gMonFootprint_Charmander[];
extern const u32 gMonFrontPic_Charmeleon[];
extern const u32 gMonPalette_Charmeleon[];
extern const u32 gMonBackPic_Charmeleon[];
extern const u32 gMonShinyPalette_Charmeleon[];
extern const u32 gMonStillFrontPic_Charmeleon[];
extern const u8 gMonIcon_Charmeleon[];
extern const u8 gMonFootprint_Charmeleon[];
extern const u32 gMonFrontPic_Charizard[];
extern const u32 gMonPalette_Charizard[];
extern const u32 gMonBackPic_Charizard[];
extern const u32 gMonShinyPalette_Charizard[];
extern const u32 gMonStillFrontPic_Charizard[];
extern const u8 gMonIcon_Charizard[];
extern const u8 gMonFootprint_Charizard[];
extern const u32 gMonFrontPic_Squirtle[];
extern const u32 gMonPalette_Squirtle[];
extern const u32 gMonBackPic_Squirtle[];
extern const u32 gMonShinyPalette_Squirtle[];
extern const u32 gMonStillFrontPic_Squirtle[];
extern const u8 gMonIcon_Squirtle[];
extern const u8 gMonFootprint_Squirtle[];
extern const u32 gMonFrontPic_Wartortle[];
extern const u32 gMonPalette_Wartortle[];
extern const u32 gMonBackPic_Wartortle[];
extern const u32 gMonShinyPalette_Wartortle[];
extern const u32 gMonStillFrontPic_Wartortle[];
extern const u8 gMonIcon_Wartortle[];
extern const u8 gMonFootprint_Wartortle[];
extern const u32 gMonFrontPic_Blastoise[];
extern const u32 gMonPalette_Blastoise[];
extern const u32 gMonBackPic_Blastoise[];
extern const u32 gMonShinyPalette_Blastoise[];
extern const u32 gMonStillFrontPic_Blastoise[];
extern const u8 gMonIcon_Blastoise[];
extern const u8 gMonFootprint_Blastoise[];
extern const u32 gMonFrontPic_Caterpie[];
extern const u32 gMonPalette_Caterpie[];
extern const u32 gMonBackPic_Caterpie[];
extern const u32 gMonShinyPalette_Caterpie[];
extern const u32 gMonStillFrontPic_Caterpie[];
extern const u8 gMonIcon_Caterpie[];
extern const u8 gMonFootprint_Caterpie[];
extern const u32 gMonFrontPic_Metapod[];
extern const u32 gMonPalette_Metapod[];
extern const u32 gMonBackPic_Metapod[];
extern const u32 gMonShinyPalette_Metapod[];
extern const u32 gMonStillFrontPic_Metapod[];
extern const u8 gMonIcon_Metapod[];
extern const u8 gMonFootprint_Metapod[];
extern const u32 gMonFrontPic_Butterfree[];
extern const u32 gMonPalette_Butterfree[];
extern const u32 gMonBackPic_Butterfree[];
extern const u32 gMonShinyPalette_Butterfree[];
extern const u32 gMonStillFrontPic_Butterfree[];
extern const u8 gMonIcon_Butterfree[];
extern const u8 gMonFootprint_Butterfree[];
extern const u32 gMonFrontPic_Weedle[];
extern const u32 gMonPalette_Weedle[];
extern const u32 gMonBackPic_Weedle[];
extern const u32 gMonShinyPalette_Weedle[];
extern const u32 gMonStillFrontPic_Weedle[];
extern const u8 gMonIcon_Weedle[];
extern const u8 gMonFootprint_Weedle[];
extern const u32 gMonFrontPic_Kakuna[];
extern const u32 gMonPalette_Kakuna[];
extern const u32 gMonBackPic_Kakuna[];
extern const u32 gMonShinyPalette_Kakuna[];
extern const u32 gMonStillFrontPic_Kakuna[];
extern const u8 gMonIcon_Kakuna[];
extern const u8 gMonFootprint_Kakuna[];
extern const u32 gMonFrontPic_Beedrill[];
extern const u32 gMonPalette_Beedrill[];
extern const u32 gMonBackPic_Beedrill[];
extern const u32 gMonShinyPalette_Beedrill[];
extern const u32 gMonStillFrontPic_Beedrill[];
extern const u8 gMonIcon_Beedrill[];
extern const u8 gMonFootprint_Beedrill[];
extern const u32 gMonFrontPic_Pidgey[];
extern const u32 gMonPalette_Pidgey[];
extern const u32 gMonBackPic_Pidgey[];
extern const u32 gMonShinyPalette_Pidgey[];
extern const u32 gMonStillFrontPic_Pidgey[];
extern const u8 gMonIcon_Pidgey[];
extern const u8 gMonFootprint_Pidgey[];
extern const u32 gMonFrontPic_Pidgeotto[];
extern const u32 gMonPalette_Pidgeotto[];
extern const u32 gMonBackPic_Pidgeotto[];
extern const u32 gMonShinyPalette_Pidgeotto[];
extern const u32 gMonStillFrontPic_Pidgeotto[];
extern const u8 gMonIcon_Pidgeotto[];
extern const u8 gMonFootprint_Pidgeotto[];
extern const u32 gMonFrontPic_Pidgeot[];
extern const u32 gMonPalette_Pidgeot[];
extern const u32 gMonBackPic_Pidgeot[];
extern const u32 gMonShinyPalette_Pidgeot[];
extern const u32 gMonStillFrontPic_Pidgeot[];
extern const u8 gMonIcon_Pidgeot[];
extern const u8 gMonFootprint_Pidgeot[];
extern const u32 gMonFrontPic_Rattata[];
extern const u32 gMonPalette_Rattata[];
extern const u32 gMonBackPic_Rattata[];
extern const u32 gMonShinyPalette_Rattata[];
extern const u32 gMonStillFrontPic_Rattata[];
extern const u8 gMonIcon_Rattata[];
extern const u8 gMonFootprint_Rattata[];
extern const u32 gMonFrontPic_Raticate[];
extern const u32 gMonPalette_Raticate[];
extern const u32 gMonBackPic_Raticate[];
extern const u32 gMonShinyPalette_Raticate[];
extern const u32 gMonStillFrontPic_Raticate[];
extern const u8 gMonIcon_Raticate[];
extern const u8 gMonFootprint_Raticate[];
extern const u32 gMonFrontPic_Spearow[];
extern const u32 gMonPalette_Spearow[];
extern const u32 gMonBackPic_Spearow[];
extern const u32 gMonShinyPalette_Spearow[];
extern const u32 gMonStillFrontPic_Spearow[];
extern const u8 gMonIcon_Spearow[];
extern const u8 gMonFootprint_Spearow[];
extern const u32 gMonFrontPic_Fearow[];
extern const u32 gMonPalette_Fearow[];
extern const u32 gMonBackPic_Fearow[];
extern const u32 gMonShinyPalette_Fearow[];
extern const u32 gMonStillFrontPic_Fearow[];
extern const u8 gMonIcon_Fearow[];
extern const u8 gMonFootprint_Fearow[];
extern const u32 gMonFrontPic_Ekans[];
extern const u32 gMonPalette_Ekans[];
extern const u32 gMonBackPic_Ekans[];
extern const u32 gMonShinyPalette_Ekans[];
extern const u32 gMonStillFrontPic_Ekans[];
extern const u8 gMonIcon_Ekans[];
extern const u8 gMonFootprint_Ekans[];
extern const u32 gMonFrontPic_Arbok[];
extern const u32 gMonPalette_Arbok[];
extern const u32 gMonBackPic_Arbok[];
extern const u32 gMonShinyPalette_Arbok[];
extern const u8 gMonIcon_Arbok[];
extern const u8 gMonFootprint_Arbok[];
extern const u32 gMonFrontPic_Pikachu[];
extern const u32 gMonPalette_Pikachu[];
extern const u32 gMonBackPic_Pikachu[];
extern const u32 gMonShinyPalette_Pikachu[];
extern const u32 gMonStillFrontPic_Arbok[];
extern const u8 gMonIcon_Pikachu[];
extern const u8 gMonFootprint_Pikachu[];
extern const u32 gMonStillFrontPic_Pikachu[];
extern const u32 gMonFrontPic_Raichu[];
extern const u32 gMonPalette_Raichu[];
extern const u32 gMonBackPic_Raichu[];
extern const u32 gMonShinyPalette_Raichu[];
extern const u32 gMonStillFrontPic_Raichu[];
extern const u8 gMonIcon_Raichu[];
extern const u8 gMonFootprint_Raichu[];
extern const u32 gMonFrontPic_Sandshrew[];
extern const u32 gMonPalette_Sandshrew[];
extern const u32 gMonBackPic_Sandshrew[];
extern const u32 gMonShinyPalette_Sandshrew[];
extern const u32 gMonStillFrontPic_Sandshrew[];
extern const u8 gMonIcon_Sandshrew[];
extern const u8 gMonFootprint_Sandshrew[];
extern const u32 gMonFrontPic_Sandslash[];
extern const u32 gMonPalette_Sandslash[];
extern const u32 gMonBackPic_Sandslash[];
extern const u32 gMonShinyPalette_Sandslash[];
extern const u32 gMonStillFrontPic_Sandslash[];
extern const u8 gMonIcon_Sandslash[];
extern const u8 gMonFootprint_Sandslash[];
extern const u32 gMonFrontPic_NidoranF[];
extern const u32 gMonPalette_NidoranF[];
extern const u32 gMonBackPic_NidoranF[];
extern const u32 gMonShinyPalette_NidoranF[];
extern const u32 gMonStillFrontPic_NidoranF[];
extern const u8 gMonIcon_NidoranF[];
extern const u8 gMonFootprint_NidoranF[];
extern const u32 gMonFrontPic_Nidorina[];
extern const u32 gMonPalette_Nidorina[];
extern const u32 gMonBackPic_Nidorina[];
extern const u32 gMonShinyPalette_Nidorina[];
extern const u32 gMonStillFrontPic_Nidorina[];
extern const u8 gMonIcon_Nidorina[];
extern const u8 gMonFootprint_Nidorina[];
extern const u32 gMonFrontPic_Nidoqueen[];
extern const u32 gMonPalette_Nidoqueen[];
extern const u32 gMonBackPic_Nidoqueen[];
extern const u32 gMonShinyPalette_Nidoqueen[];
extern const u32 gMonStillFrontPic_Nidoqueen[];
extern const u8 gMonIcon_Nidoqueen[];
extern const u8 gMonFootprint_Nidoqueen[];
extern const u32 gMonFrontPic_NidoranM[];
extern const u32 gMonPalette_NidoranM[];
extern const u32 gMonBackPic_NidoranM[];
extern const u32 gMonShinyPalette_NidoranM[];
extern const u32 gMonStillFrontPic_NidoranM[];
extern const u8 gMonIcon_NidoranM[];
extern const u8 gMonFootprint_NidoranM[];
extern const u32 gMonFrontPic_Nidorino[];
extern const u32 gMonPalette_Nidorino[];
extern const u32 gMonBackPic_Nidorino[];
extern const u32 gMonShinyPalette_Nidorino[];
extern const u32 gMonStillFrontPic_Nidorino[];
extern const u8 gMonIcon_Nidorino[];
extern const u8 gMonFootprint_Nidorino[];
extern const u32 gMonFrontPic_Nidoking[];
extern const u32 gMonPalette_Nidoking[];
extern const u32 gMonBackPic_Nidoking[];
extern const u32 gMonShinyPalette_Nidoking[];
extern const u32 gMonStillFrontPic_Nidoking[];
extern const u8 gMonIcon_Nidoking[];
extern const u8 gMonFootprint_Nidoking[];
extern const u32 gMonFrontPic_Clefairy[];
extern const u32 gMonPalette_Clefairy[];
extern const u32 gMonBackPic_Clefairy[];
extern const u32 gMonShinyPalette_Clefairy[];
extern const u32 gMonStillFrontPic_Clefairy[];
extern const u8 gMonIcon_Clefairy[];
extern const u8 gMonFootprint_Clefairy[];
extern const u32 gMonFrontPic_Clefable[];
extern const u32 gMonPalette_Clefable[];
extern const u32 gMonBackPic_Clefable[];
extern const u32 gMonShinyPalette_Clefable[];
extern const u32 gMonStillFrontPic_Clefable[];
extern const u8 gMonIcon_Clefable[];
extern const u8 gMonFootprint_Clefable[];
extern const u32 gMonFrontPic_Vulpix[];
extern const u32 gMonPalette_Vulpix[];
extern const u32 gMonBackPic_Vulpix[];
extern const u32 gMonShinyPalette_Vulpix[];
extern const u32 gMonStillFrontPic_Vulpix[];
extern const u8 gMonIcon_Vulpix[];
extern const u8 gMonFootprint_Vulpix[];
extern const u32 gMonFrontPic_Ninetales[];
extern const u32 gMonPalette_Ninetales[];
extern const u32 gMonBackPic_Ninetales[];
extern const u32 gMonShinyPalette_Ninetales[];
extern const u32 gMonStillFrontPic_Ninetales[];
extern const u8 gMonIcon_Ninetales[];
extern const u8 gMonFootprint_Ninetales[];
extern const u32 gMonFrontPic_Jigglypuff[];
extern const u32 gMonPalette_Jigglypuff[];
extern const u32 gMonBackPic_Jigglypuff[];
extern const u32 gMonShinyPalette_Jigglypuff[];
extern const u32 gMonStillFrontPic_Jigglypuff[];
extern const u8 gMonIcon_Jigglypuff[];
extern const u8 gMonFootprint_Jigglypuff[];
extern const u32 gMonFrontPic_Wigglytuff[];
extern const u32 gMonPalette_Wigglytuff[];
extern const u32 gMonBackPic_Wigglytuff[];
extern const u32 gMonShinyPalette_Wigglytuff[];
extern const u32 gMonStillFrontPic_Wigglytuff[];
extern const u8 gMonIcon_Wigglytuff[];
extern const u8 gMonFootprint_Wigglytuff[];
extern const u32 gMonFrontPic_Zubat[];
extern const u32 gMonPalette_Zubat[];
extern const u32 gMonBackPic_Zubat[];
extern const u32 gMonShinyPalette_Zubat[];
extern const u32 gMonStillFrontPic_Zubat[];
extern const u8 gMonIcon_Zubat[];
extern const u8 gMonFootprint_Zubat[];
extern const u32 gMonFrontPic_Golbat[];
extern const u32 gMonPalette_Golbat[];
extern const u32 gMonBackPic_Golbat[];
extern const u32 gMonShinyPalette_Golbat[];
extern const u32 gMonStillFrontPic_Golbat[];
extern const u8 gMonIcon_Golbat[];
extern const u8 gMonFootprint_Golbat[];
extern const u32 gMonFrontPic_Oddish[];
extern const u32 gMonPalette_Oddish[];
extern const u32 gMonBackPic_Oddish[];
extern const u32 gMonShinyPalette_Oddish[];
extern const u32 gMonStillFrontPic_Oddish[];
extern const u8 gMonIcon_Oddish[];
extern const u8 gMonFootprint_Oddish[];
extern const u32 gMonFrontPic_Gloom[];
extern const u32 gMonPalette_Gloom[];
extern const u32 gMonBackPic_Gloom[];
extern const u32 gMonShinyPalette_Gloom[];
extern const u32 gMonStillFrontPic_Gloom[];
extern const u8 gMonIcon_Gloom[];
extern const u8 gMonFootprint_Gloom[];
extern const u32 gMonFrontPic_Vileplume[];
extern const u32 gMonPalette_Vileplume[];
extern const u32 gMonBackPic_Vileplume[];
extern const u32 gMonShinyPalette_Vileplume[];
extern const u32 gMonStillFrontPic_Vileplume[];
extern const u8 gMonIcon_Vileplume[];
extern const u8 gMonFootprint_Vileplume[];
extern const u32 gMonFrontPic_Paras[];
extern const u32 gMonPalette_Paras[];
extern const u32 gMonBackPic_Paras[];
extern const u32 gMonShinyPalette_Paras[];
extern const u32 gMonStillFrontPic_Paras[];
extern const u8 gMonIcon_Paras[];
extern const u8 gMonFootprint_Paras[];
extern const u32 gMonFrontPic_Parasect[];
extern const u32 gMonPalette_Parasect[];
extern const u32 gMonBackPic_Parasect[];
extern const u32 gMonShinyPalette_Parasect[];
extern const u32 gMonStillFrontPic_Parasect[];
extern const u8 gMonIcon_Parasect[];
extern const u8 gMonFootprint_Parasect[];
extern const u32 gMonFrontPic_Venonat[];
extern const u32 gMonPalette_Venonat[];
extern const u32 gMonBackPic_Venonat[];
extern const u32 gMonShinyPalette_Venonat[];
extern const u32 gMonStillFrontPic_Venonat[];
extern const u8 gMonIcon_Venonat[];
extern const u8 gMonFootprint_Venonat[];
extern const u32 gMonFrontPic_Venomoth[];
extern const u32 gMonPalette_Venomoth[];
extern const u32 gMonBackPic_Venomoth[];
extern const u32 gMonShinyPalette_Venomoth[];
extern const u32 gMonStillFrontPic_Venomoth[];
extern const u8 gMonIcon_Venomoth[];
extern const u8 gMonFootprint_Venomoth[];
extern const u32 gMonFrontPic_Diglett[];
extern const u32 gMonPalette_Diglett[];
extern const u32 gMonBackPic_Diglett[];
extern const u32 gMonShinyPalette_Diglett[];
extern const u32 gMonStillFrontPic_Diglett[];
extern const u8 gMonIcon_Diglett[];
extern const u8 gMonFootprint_Diglett[];
extern const u32 gMonFrontPic_Dugtrio[];
extern const u32 gMonPalette_Dugtrio[];
extern const u32 gMonBackPic_Dugtrio[];
extern const u32 gMonShinyPalette_Dugtrio[];
extern const u32 gMonStillFrontPic_Dugtrio[];
extern const u8 gMonIcon_Dugtrio[];
extern const u8 gMonFootprint_Dugtrio[];
extern const u32 gMonFrontPic_Meowth[];
extern const u32 gMonPalette_Meowth[];
extern const u32 gMonBackPic_Meowth[];
extern const u32 gMonShinyPalette_Meowth[];
extern const u32 gMonStillFrontPic_Meowth[];
extern const u8 gMonIcon_Meowth[];
extern const u8 gMonFootprint_Meowth[];
extern const u32 gMonFrontPic_Persian[];
extern const u32 gMonPalette_Persian[];
extern const u32 gMonBackPic_Persian[];
extern const u32 gMonShinyPalette_Persian[];
extern const u32 gMonStillFrontPic_Persian[];
extern const u8 gMonIcon_Persian[];
extern const u8 gMonFootprint_Persian[];
extern const u32 gMonFrontPic_Psyduck[];
extern const u32 gMonPalette_Psyduck[];
extern const u32 gMonBackPic_Psyduck[];
extern const u32 gMonShinyPalette_Psyduck[];
extern const u32 gMonStillFrontPic_Psyduck[];
extern const u8 gMonIcon_Psyduck[];
extern const u8 gMonFootprint_Psyduck[];
extern const u32 gMonFrontPic_Golduck[];
extern const u32 gMonPalette_Golduck[];
extern const u32 gMonBackPic_Golduck[];
extern const u32 gMonShinyPalette_Golduck[];
extern const u32 gMonStillFrontPic_Golduck[];
extern const u8 gMonIcon_Golduck[];
extern const u8 gMonFootprint_Golduck[];
extern const u32 gMonFrontPic_Mankey[];
extern const u32 gMonPalette_Mankey[];
extern const u32 gMonBackPic_Mankey[];
extern const u32 gMonShinyPalette_Mankey[];
extern const u32 gMonStillFrontPic_Mankey[];
extern const u8 gMonIcon_Mankey[];
extern const u8 gMonFootprint_Mankey[];
extern const u32 gMonFrontPic_Primeape[];
extern const u32 gMonPalette_Primeape[];
extern const u32 gMonBackPic_Primeape[];
extern const u32 gMonShinyPalette_Primeape[];
extern const u32 gMonStillFrontPic_Primeape[];
extern const u8 gMonIcon_Primeape[];
extern const u8 gMonFootprint_Primeape[];
extern const u32 gMonFrontPic_Growlithe[];
extern const u32 gMonPalette_Growlithe[];
extern const u32 gMonBackPic_Growlithe[];
extern const u32 gMonShinyPalette_Growlithe[];
extern const u32 gMonStillFrontPic_Growlithe[];
extern const u8 gMonIcon_Growlithe[];
extern const u8 gMonFootprint_Growlithe[];
extern const u32 gMonFrontPic_Arcanine[];
extern const u32 gMonPalette_Arcanine[];
extern const u32 gMonBackPic_Arcanine[];
extern const u32 gMonShinyPalette_Arcanine[];
extern const u32 gMonStillFrontPic_Arcanine[];
extern const u8 gMonIcon_Arcanine[];
extern const u8 gMonFootprint_Arcanine[];
extern const u32 gMonFrontPic_Poliwag[];
extern const u32 gMonPalette_Poliwag[];
extern const u32 gMonBackPic_Poliwag[];
extern const u32 gMonShinyPalette_Poliwag[];
extern const u32 gMonStillFrontPic_Poliwag[];
extern const u8 gMonIcon_Poliwag[];
extern const u8 gMonFootprint_Poliwag[];
extern const u32 gMonFrontPic_Poliwhirl[];
extern const u32 gMonPalette_Poliwhirl[];
extern const u32 gMonBackPic_Poliwhirl[];
extern const u32 gMonShinyPalette_Poliwhirl[];
extern const u32 gMonStillFrontPic_Poliwhirl[];
extern const u8 gMonIcon_Poliwhirl[];
extern const u8 gMonFootprint_Poliwhirl[];
extern const u32 gMonFrontPic_Poliwrath[];
extern const u32 gMonPalette_Poliwrath[];
extern const u32 gMonBackPic_Poliwrath[];
extern const u32 gMonShinyPalette_Poliwrath[];
extern const u32 gMonStillFrontPic_Poliwrath[];
extern const u8 gMonIcon_Poliwrath[];
extern const u8 gMonFootprint_Poliwrath[];
extern const u32 gMonFrontPic_Abra[];
extern const u32 gMonPalette_Abra[];
extern const u32 gMonBackPic_Abra[];
extern const u32 gMonShinyPalette_Abra[];
extern const u32 gMonStillFrontPic_Abra[];
extern const u8 gMonIcon_Abra[];
extern const u8 gMonFootprint_Abra[];
extern const u32 gMonFrontPic_Kadabra[];
extern const u32 gMonPalette_Kadabra[];
extern const u32 gMonBackPic_Kadabra[];
extern const u32 gMonShinyPalette_Kadabra[];
extern const u32 gMonStillFrontPic_Kadabra[];
extern const u8 gMonIcon_Kadabra[];
extern const u8 gMonFootprint_Kadabra[];
extern const u32 gMonFrontPic_Alakazam[];
extern const u32 gMonPalette_Alakazam[];
extern const u32 gMonBackPic_Alakazam[];
extern const u32 gMonShinyPalette_Alakazam[];
extern const u32 gMonStillFrontPic_Alakazam[];
extern const u8 gMonIcon_Alakazam[];
extern const u8 gMonFootprint_Alakazam[];
extern const u32 gMonFrontPic_Machop[];
extern const u32 gMonPalette_Machop[];
extern const u32 gMonBackPic_Machop[];
extern const u32 gMonShinyPalette_Machop[];
extern const u32 gMonStillFrontPic_Machop[];
extern const u8 gMonIcon_Machop[];
extern const u8 gMonFootprint_Machop[];
extern const u32 gMonFrontPic_Machoke[];
extern const u32 gMonPalette_Machoke[];
extern const u32 gMonBackPic_Machoke[];
extern const u32 gMonShinyPalette_Machoke[];
extern const u32 gMonStillFrontPic_Machoke[];
extern const u8 gMonIcon_Machoke[];
extern const u8 gMonFootprint_Machoke[];
extern const u32 gMonFrontPic_Machamp[];
extern const u32 gMonPalette_Machamp[];
extern const u32 gMonBackPic_Machamp[];
extern const u32 gMonShinyPalette_Machamp[];
extern const u32 gMonStillFrontPic_Machamp[];
extern const u8 gMonIcon_Machamp[];
extern const u8 gMonFootprint_Machamp[];
extern const u32 gMonFrontPic_Bellsprout[];
extern const u32 gMonPalette_Bellsprout[];
extern const u32 gMonBackPic_Bellsprout[];
extern const u32 gMonShinyPalette_Bellsprout[];
extern const u32 gMonStillFrontPic_Bellsprout[];
extern const u8 gMonIcon_Bellsprout[];
extern const u8 gMonFootprint_Bellsprout[];
extern const u32 gMonFrontPic_Weepinbell[];
extern const u32 gMonPalette_Weepinbell[];
extern const u32 gMonBackPic_Weepinbell[];
extern const u32 gMonShinyPalette_Weepinbell[];
extern const u32 gMonStillFrontPic_Weepinbell[];
extern const u8 gMonIcon_Weepinbell[];
extern const u8 gMonFootprint_Weepinbell[];
extern const u32 gMonFrontPic_Victreebel[];
extern const u32 gMonPalette_Victreebel[];
extern const u32 gMonBackPic_Victreebel[];
extern const u32 gMonShinyPalette_Victreebel[];
extern const u32 gMonStillFrontPic_Victreebel[];
extern const u8 gMonIcon_Victreebel[];
extern const u8 gMonFootprint_Victreebel[];
extern const u32 gMonFrontPic_Tentacool[];
extern const u32 gMonPalette_Tentacool[];
extern const u32 gMonBackPic_Tentacool[];
extern const u32 gMonShinyPalette_Tentacool[];
extern const u32 gMonStillFrontPic_Tentacool[];
extern const u8 gMonIcon_Tentacool[];
extern const u8 gMonFootprint_Tentacool[];
extern const u32 gMonFrontPic_Tentacruel[];
extern const u32 gMonPalette_Tentacruel[];
extern const u32 gMonBackPic_Tentacruel[];
extern const u32 gMonShinyPalette_Tentacruel[];
extern const u32 gMonStillFrontPic_Tentacruel[];
extern const u8 gMonIcon_Tentacruel[];
extern const u8 gMonFootprint_Tentacruel[];
extern const u32 gMonFrontPic_Geodude[];
extern const u32 gMonPalette_Geodude[];
extern const u32 gMonBackPic_Geodude[];
extern const u32 gMonShinyPalette_Geodude[];
extern const u32 gMonStillFrontPic_Geodude[];
extern const u8 gMonIcon_Geodude[];
extern const u8 gMonFootprint_Geodude[];
extern const u32 gMonFrontPic_Graveler[];
extern const u32 gMonPalette_Graveler[];
extern const u32 gMonBackPic_Graveler[];
extern const u32 gMonShinyPalette_Graveler[];
extern const u32 gMonStillFrontPic_Graveler[];
extern const u8 gMonIcon_Graveler[];
extern const u8 gMonFootprint_Graveler[];
extern const u32 gMonFrontPic_Golem[];
extern const u32 gMonPalette_Golem[];
extern const u32 gMonBackPic_Golem[];
extern const u32 gMonShinyPalette_Golem[];
extern const u32 gMonStillFrontPic_Golem[];
extern const u8 gMonIcon_Golem[];
extern const u8 gMonFootprint_Golem[];
extern const u32 gMonFrontPic_Ponyta[];
extern const u32 gMonPalette_Ponyta[];
extern const u32 gMonBackPic_Ponyta[];
extern const u32 gMonShinyPalette_Ponyta[];
extern const u32 gMonStillFrontPic_Ponyta[];
extern const u8 gMonIcon_Ponyta[];
extern const u8 gMonFootprint_Ponyta[];
extern const u32 gMonFrontPic_Rapidash[];
extern const u32 gMonPalette_Rapidash[];
extern const u32 gMonBackPic_Rapidash[];
extern const u32 gMonShinyPalette_Rapidash[];
extern const u32 gMonStillFrontPic_Rapidash[];
extern const u8 gMonIcon_Rapidash[];
extern const u8 gMonFootprint_Rapidash[];
extern const u32 gMonFrontPic_Slowpoke[];
extern const u32 gMonPalette_Slowpoke[];
extern const u32 gMonBackPic_Slowpoke[];
extern const u32 gMonShinyPalette_Slowpoke[];
extern const u32 gMonStillFrontPic_Slowpoke[];
extern const u8 gMonIcon_Slowpoke[];
extern const u8 gMonFootprint_Slowpoke[];
extern const u32 gMonFrontPic_Slowbro[];
extern const u32 gMonPalette_Slowbro[];
extern const u32 gMonBackPic_Slowbro[];
extern const u32 gMonShinyPalette_Slowbro[];
extern const u32 gMonStillFrontPic_Slowbro[];
extern const u8 gMonIcon_Slowbro[];
extern const u8 gMonFootprint_Slowbro[];
extern const u32 gMonFrontPic_Magnemite[];
extern const u32 gMonPalette_Magnemite[];
extern const u32 gMonBackPic_Magnemite[];
extern const u32 gMonShinyPalette_Magnemite[];
extern const u32 gMonStillFrontPic_Magnemite[];
extern const u8 gMonIcon_Magnemite[];
extern const u8 gMonFootprint_Magnemite[];
extern const u32 gMonFrontPic_Magneton[];
extern const u32 gMonPalette_Magneton[];
extern const u32 gMonBackPic_Magneton[];
extern const u32 gMonShinyPalette_Magneton[];
extern const u32 gMonStillFrontPic_Magneton[];
extern const u8 gMonIcon_Magneton[];
extern const u8 gMonFootprint_Magneton[];
extern const u32 gMonFrontPic_Farfetchd[];
extern const u32 gMonPalette_Farfetchd[];
extern const u32 gMonBackPic_Farfetchd[];
extern const u32 gMonShinyPalette_Farfetchd[];
extern const u32 gMonStillFrontPic_Farfetchd[];
extern const u8 gMonIcon_Farfetchd[];
extern const u8 gMonFootprint_Farfetchd[];
extern const u32 gMonFrontPic_Doduo[];
extern const u32 gMonPalette_Doduo[];
extern const u32 gMonBackPic_Doduo[];
extern const u32 gMonShinyPalette_Doduo[];
extern const u32 gMonStillFrontPic_Doduo[];
extern const u8 gMonIcon_Doduo[];
extern const u8 gMonFootprint_Doduo[];
extern const u32 gMonFrontPic_Dodrio[];
extern const u32 gMonPalette_Dodrio[];
extern const u32 gMonBackPic_Dodrio[];
extern const u32 gMonShinyPalette_Dodrio[];
extern const u32 gMonStillFrontPic_Dodrio[];
extern const u8 gMonIcon_Dodrio[];
extern const u8 gMonFootprint_Dodrio[];
extern const u32 gMonFrontPic_Seel[];
extern const u32 gMonPalette_Seel[];
extern const u32 gMonBackPic_Seel[];
extern const u32 gMonShinyPalette_Seel[];
extern const u32 gMonStillFrontPic_Seel[];
extern const u8 gMonIcon_Seel[];
extern const u8 gMonFootprint_Seel[];
extern const u32 gMonFrontPic_Dewgong[];
extern const u32 gMonPalette_Dewgong[];
extern const u32 gMonBackPic_Dewgong[];
extern const u32 gMonShinyPalette_Dewgong[];
extern const u32 gMonStillFrontPic_Dewgong[];
extern const u8 gMonIcon_Dewgong[];
extern const u8 gMonFootprint_Dewgong[];
extern const u32 gMonFrontPic_Grimer[];
extern const u32 gMonPalette_Grimer[];
extern const u32 gMonBackPic_Grimer[];
extern const u32 gMonShinyPalette_Grimer[];
extern const u32 gMonStillFrontPic_Grimer[];
extern const u8 gMonIcon_Grimer[];
extern const u8 gMonFootprint_Grimer[];
extern const u32 gMonStillFrontPic_Muk[];
extern const u32 gMonFrontPic_Muk[];
extern const u32 gMonPalette_Muk[];
extern const u32 gMonBackPic_Muk[];
extern const u32 gMonShinyPalette_Muk[];
extern const u32 gMonStillFrontPic_Shellder[];
extern const u8 gMonIcon_Muk[];
extern const u8 gMonFootprint_Muk[];
extern const u32 gMonFrontPic_Shellder[];
extern const u32 gMonPalette_Shellder[];
extern const u32 gMonBackPic_Shellder[];
extern const u32 gMonShinyPalette_Shellder[];
extern const u32 gMonStillFrontPic_Cloyster[];
extern const u8 gMonIcon_Shellder[];
extern const u8 gMonFootprint_Shellder[];
extern const u32 gMonFrontPic_Cloyster[];
extern const u32 gMonPalette_Cloyster[];
extern const u32 gMonBackPic_Cloyster[];
extern const u32 gMonShinyPalette_Cloyster[];
extern const u32 gMonStillFrontPic_Gastly[];
extern const u8 gMonIcon_Cloyster[];
extern const u8 gMonFootprint_Cloyster[];
extern const u32 gMonFrontPic_Gastly[];
extern const u32 gMonPalette_Gastly[];
extern const u32 gMonBackPic_Gastly[];
extern const u32 gMonShinyPalette_Gastly[];
extern const u32 gMonStillFrontPic_Haunter[];
extern const u8 gMonIcon_Gastly[];
extern const u8 gMonFootprint_Gastly[];
extern const u32 gMonFrontPic_Haunter[];
extern const u32 gMonPalette_Haunter[];
extern const u32 gMonBackPic_Haunter[];
extern const u32 gMonShinyPalette_Haunter[];
extern const u32 gMonStillFrontPic_Haunter[];
extern const u8 gMonIcon_Haunter[];
extern const u8 gMonFootprint_Haunter[];
extern const u32 gMonFrontPic_Gengar[];
extern const u32 gMonPalette_Gengar[];
extern const u32 gMonBackPic_Gengar[];
extern const u32 gMonShinyPalette_Gengar[];
extern const u32 gMonStillFrontPic_Gengar[];
extern const u8 gMonIcon_Gengar[];
extern const u8 gMonFootprint_Gengar[];
extern const u32 gMonFrontPic_Onix[];
extern const u32 gMonPalette_Onix[];
extern const u32 gMonBackPic_Onix[];
extern const u32 gMonShinyPalette_Onix[];
extern const u32 gMonStillFrontPic_Onix[];
extern const u8 gMonIcon_Onix[];
extern const u8 gMonFootprint_Onix[];
extern const u32 gMonFrontPic_Drowzee[];
extern const u32 gMonPalette_Drowzee[];
extern const u32 gMonBackPic_Drowzee[];
extern const u32 gMonShinyPalette_Drowzee[];
extern const u32 gMonStillFrontPic_Drowzee[];
extern const u8 gMonIcon_Drowzee[];
extern const u8 gMonFootprint_Drowzee[];
extern const u32 gMonFrontPic_Hypno[];
extern const u32 gMonPalette_Hypno[];
extern const u32 gMonBackPic_Hypno[];
extern const u32 gMonShinyPalette_Hypno[];
extern const u32 gMonStillFrontPic_Hypno[];
extern const u8 gMonIcon_Hypno[];
extern const u8 gMonFootprint_Hypno[];
extern const u32 gMonFrontPic_Krabby[];
extern const u32 gMonPalette_Krabby[];
extern const u32 gMonBackPic_Krabby[];
extern const u32 gMonShinyPalette_Krabby[];
extern const u32 gMonStillFrontPic_Krabby[];
extern const u8 gMonIcon_Krabby[];
extern const u8 gMonFootprint_Krabby[];
extern const u32 gMonFrontPic_Kingler[];
extern const u32 gMonPalette_Kingler[];
extern const u32 gMonBackPic_Kingler[];
extern const u32 gMonShinyPalette_Kingler[];
extern const u32 gMonStillFrontPic_Kingler[];
extern const u8 gMonIcon_Kingler[];
extern const u8 gMonFootprint_Kingler[];
extern const u32 gMonFrontPic_Voltorb[];
extern const u32 gMonPalette_Voltorb[];
extern const u32 gMonBackPic_Voltorb[];
extern const u32 gMonShinyPalette_Voltorb[];
extern const u32 gMonStillFrontPic_Voltorb[];
extern const u8 gMonIcon_Voltorb[];
extern const u8 gMonFootprint_Voltorb[];
extern const u32 gMonFrontPic_Electrode[];
extern const u32 gMonPalette_Electrode[];
extern const u32 gMonBackPic_Electrode[];
extern const u32 gMonShinyPalette_Electrode[];
extern const u32 gMonStillFrontPic_Electrode[];
extern const u8 gMonIcon_Electrode[];
extern const u8 gMonFootprint_Electrode[];
extern const u32 gMonFrontPic_Exeggcute[];
extern const u32 gMonPalette_Exeggcute[];
extern const u32 gMonBackPic_Exeggcute[];
extern const u32 gMonShinyPalette_Exeggcute[];
extern const u32 gMonStillFrontPic_Exeggcute[];
extern const u8 gMonIcon_Exeggcute[];
extern const u8 gMonFootprint_Exeggcute[];
extern const u32 gMonFrontPic_Exeggutor[];
extern const u32 gMonPalette_Exeggutor[];
extern const u32 gMonBackPic_Exeggutor[];
extern const u32 gMonShinyPalette_Exeggutor[];
extern const u32 gMonStillFrontPic_Exeggutor[];
extern const u8 gMonIcon_Exeggutor[];
extern const u8 gMonFootprint_Exeggutor[];
extern const u32 gMonFrontPic_Cubone[];
extern const u32 gMonPalette_Cubone[];
extern const u32 gMonBackPic_Cubone[];
extern const u32 gMonShinyPalette_Cubone[];
extern const u32 gMonStillFrontPic_Cubone[];
extern const u8 gMonIcon_Cubone[];
extern const u8 gMonFootprint_Cubone[];
extern const u32 gMonFrontPic_Marowak[];
extern const u32 gMonPalette_Marowak[];
extern const u32 gMonBackPic_Marowak[];
extern const u32 gMonShinyPalette_Marowak[];
extern const u32 gMonStillFrontPic_Marowak[];
extern const u8 gMonIcon_Marowak[];
extern const u8 gMonFootprint_Marowak[];
extern const u32 gMonFrontPic_Hitmonlee[];
extern const u32 gMonPalette_Hitmonlee[];
extern const u32 gMonBackPic_Hitmonlee[];
extern const u32 gMonShinyPalette_Hitmonlee[];
extern const u32 gMonStillFrontPic_Hitmonlee[];
extern const u8 gMonIcon_Hitmonlee[];
extern const u8 gMonFootprint_Hitmonlee[];
extern const u32 gMonFrontPic_Hitmonchan[];
extern const u32 gMonPalette_Hitmonchan[];
extern const u32 gMonBackPic_Hitmonchan[];
extern const u32 gMonShinyPalette_Hitmonchan[];
extern const u32 gMonStillFrontPic_Hitmonchan[];
extern const u8 gMonIcon_Hitmonchan[];
extern const u8 gMonFootprint_Hitmonchan[];
extern const u32 gMonFrontPic_Lickitung[];
extern const u32 gMonPalette_Lickitung[];
extern const u32 gMonBackPic_Lickitung[];
extern const u32 gMonShinyPalette_Lickitung[];
extern const u32 gMonStillFrontPic_Lickitung[];
extern const u8 gMonIcon_Lickitung[];
extern const u8 gMonFootprint_Lickitung[];
extern const u32 gMonFrontPic_Koffing[];
extern const u32 gMonPalette_Koffing[];
extern const u32 gMonBackPic_Koffing[];
extern const u32 gMonShinyPalette_Koffing[];
extern const u32 gMonStillFrontPic_Koffing[];
extern const u8 gMonIcon_Koffing[];
extern const u8 gMonFootprint_Koffing[];
extern const u32 gMonFrontPic_Weezing[];
extern const u32 gMonPalette_Weezing[];
extern const u32 gMonBackPic_Weezing[];
extern const u32 gMonShinyPalette_Weezing[];
extern const u32 gMonStillFrontPic_Weezing[];
extern const u8 gMonIcon_Weezing[];
extern const u8 gMonFootprint_Weezing[];
extern const u32 gMonFrontPic_Rhyhorn[];
extern const u32 gMonPalette_Rhyhorn[];
extern const u32 gMonBackPic_Rhyhorn[];
extern const u32 gMonShinyPalette_Rhyhorn[];
extern const u32 gMonStillFrontPic_Rhyhorn[];
extern const u8 gMonIcon_Rhyhorn[];
extern const u8 gMonFootprint_Rhyhorn[];
extern const u32 gMonFrontPic_Rhydon[];
extern const u32 gMonPalette_Rhydon[];
extern const u32 gMonBackPic_Rhydon[];
extern const u32 gMonShinyPalette_Rhydon[];
extern const u32 gMonStillFrontPic_Rhydon[];
extern const u8 gMonIcon_Rhydon[];
extern const u8 gMonFootprint_Rhydon[];
extern const u32 gMonFrontPic_Chansey[];
extern const u32 gMonPalette_Chansey[];
extern const u32 gMonBackPic_Chansey[];
extern const u32 gMonShinyPalette_Chansey[];
extern const u32 gMonStillFrontPic_Chansey[];
extern const u8 gMonIcon_Chansey[];
extern const u8 gMonFootprint_Chansey[];
extern const u32 gMonFrontPic_Tangela[];
extern const u32 gMonPalette_Tangela[];
extern const u32 gMonBackPic_Tangela[];
extern const u32 gMonShinyPalette_Tangela[];
extern const u32 gMonStillFrontPic_Tangela[];
extern const u8 gMonIcon_Tangela[];
extern const u8 gMonFootprint_Tangela[];
extern const u32 gMonFrontPic_Kangaskhan[];
extern const u32 gMonPalette_Kangaskhan[];
extern const u32 gMonBackPic_Kangaskhan[];
extern const u32 gMonShinyPalette_Kangaskhan[];
extern const u32 gMonStillFrontPic_Kangaskhan[];
extern const u8 gMonIcon_Kangaskhan[];
extern const u8 gMonFootprint_Kangaskhan[];
extern const u32 gMonFrontPic_Horsea[];
extern const u32 gMonPalette_Horsea[];
extern const u32 gMonBackPic_Horsea[];
extern const u32 gMonShinyPalette_Horsea[];
extern const u32 gMonStillFrontPic_Horsea[];
extern const u8 gMonIcon_Horsea[];
extern const u8 gMonFootprint_Horsea[];
extern const u32 gMonFrontPic_Seadra[];
extern const u32 gMonPalette_Seadra[];
extern const u32 gMonBackPic_Seadra[];
extern const u32 gMonShinyPalette_Seadra[];
extern const u32 gMonStillFrontPic_Seadra[];
extern const u8 gMonIcon_Seadra[];
extern const u8 gMonFootprint_Seadra[];
extern const u32 gMonFrontPic_Goldeen[];
extern const u32 gMonPalette_Goldeen[];
extern const u32 gMonBackPic_Goldeen[];
extern const u32 gMonShinyPalette_Goldeen[];
extern const u32 gMonStillFrontPic_Goldeen[];
extern const u8 gMonIcon_Goldeen[];
extern const u8 gMonFootprint_Goldeen[];
extern const u32 gMonFrontPic_Seaking[];
extern const u32 gMonPalette_Seaking[];
extern const u32 gMonBackPic_Seaking[];
extern const u32 gMonShinyPalette_Seaking[];
extern const u32 gMonStillFrontPic_Seaking[];
extern const u8 gMonIcon_Seaking[];
extern const u8 gMonFootprint_Seaking[];
extern const u32 gMonFrontPic_Staryu[];
extern const u32 gMonPalette_Staryu[];
extern const u32 gMonBackPic_Staryu[];
extern const u32 gMonShinyPalette_Staryu[];
extern const u32 gMonStillFrontPic_Staryu[];
extern const u8 gMonIcon_Staryu[];
extern const u8 gMonFootprint_Staryu[];
extern const u32 gMonFrontPic_Starmie[];
extern const u32 gMonPalette_Starmie[];
extern const u32 gMonBackPic_Starmie[];
extern const u32 gMonShinyPalette_Starmie[];
extern const u32 gMonStillFrontPic_Starmie[];
extern const u8 gMonIcon_Starmie[];
extern const u8 gMonFootprint_Starmie[];
extern const u32 gMonFrontPic_Mrmime[];
extern const u32 gMonPalette_Mrmime[];
extern const u32 gMonBackPic_Mrmime[];
extern const u32 gMonShinyPalette_Mrmime[];
extern const u32 gMonStillFrontPic_Mrmime[];
extern const u8 gMonIcon_Mrmime[];
extern const u8 gMonFootprint_Mrmime[];
extern const u32 gMonFrontPic_Scyther[];
extern const u32 gMonPalette_Scyther[];
extern const u32 gMonBackPic_Scyther[];
extern const u32 gMonShinyPalette_Scyther[];
extern const u32 gMonStillFrontPic_Scyther[];
extern const u8 gMonIcon_Scyther[];
extern const u8 gMonFootprint_Scyther[];
extern const u32 gMonFrontPic_Jynx[];
extern const u32 gMonPalette_Jynx[];
extern const u32 gMonBackPic_Jynx[];
extern const u32 gMonShinyPalette_Jynx[];
extern const u32 gMonStillFrontPic_Jynx[];
extern const u8 gMonIcon_Jynx[];
extern const u8 gMonFootprint_Jynx[];
extern const u32 gMonFrontPic_Electabuzz[];
extern const u32 gMonPalette_Electabuzz[];
extern const u32 gMonBackPic_Electabuzz[];
extern const u32 gMonShinyPalette_Electabuzz[];
extern const u32 gMonStillFrontPic_Electabuzz[];
extern const u8 gMonIcon_Electabuzz[];
extern const u8 gMonFootprint_Electabuzz[];
extern const u32 gMonFrontPic_Magmar[];
extern const u32 gMonPalette_Magmar[];
extern const u32 gMonBackPic_Magmar[];
extern const u32 gMonShinyPalette_Magmar[];
extern const u32 gMonStillFrontPic_Magmar[];
extern const u8 gMonIcon_Magmar[];
extern const u8 gMonFootprint_Magmar[];
extern const u32 gMonFrontPic_Pinsir[];
extern const u32 gMonPalette_Pinsir[];
extern const u32 gMonBackPic_Pinsir[];
extern const u32 gMonShinyPalette_Pinsir[];
extern const u32 gMonStillFrontPic_Pinsir[];
extern const u8 gMonIcon_Pinsir[];
extern const u8 gMonFootprint_Pinsir[];
extern const u32 gMonFrontPic_Tauros[];
extern const u32 gMonPalette_Tauros[];
extern const u32 gMonBackPic_Tauros[];
extern const u32 gMonShinyPalette_Tauros[];
extern const u32 gMonStillFrontPic_Tauros[];
extern const u8 gMonIcon_Tauros[];
extern const u8 gMonFootprint_Tauros[];
extern const u32 gMonFrontPic_Magikarp[];
extern const u32 gMonPalette_Magikarp[];
extern const u32 gMonBackPic_Magikarp[];
extern const u32 gMonShinyPalette_Magikarp[];
extern const u32 gMonStillFrontPic_Magikarp[];
extern const u8 gMonIcon_Magikarp[];
extern const u8 gMonFootprint_Magikarp[];
extern const u32 gMonFrontPic_Gyarados[];
extern const u32 gMonPalette_Gyarados[];
extern const u32 gMonBackPic_Gyarados[];
extern const u32 gMonShinyPalette_Gyarados[];
extern const u32 gMonStillFrontPic_Gyarados[];
extern const u8 gMonIcon_Gyarados[];
extern const u8 gMonFootprint_Gyarados[];
extern const u32 gMonFrontPic_Lapras[];
extern const u32 gMonPalette_Lapras[];
extern const u32 gMonBackPic_Lapras[];
extern const u32 gMonShinyPalette_Lapras[];
extern const u32 gMonStillFrontPic_Lapras[];
extern const u8 gMonIcon_Lapras[];
extern const u8 gMonFootprint_Lapras[];
extern const u32 gMonFrontPic_Ditto[];
extern const u32 gMonPalette_Ditto[];
extern const u32 gMonBackPic_Ditto[];
extern const u32 gMonShinyPalette_Ditto[];
extern const u32 gMonStillFrontPic_Ditto[];
extern const u8 gMonIcon_Ditto[];
extern const u8 gMonFootprint_Ditto[];
extern const u32 gMonFrontPic_Eevee[];
extern const u32 gMonPalette_Eevee[];
extern const u32 gMonBackPic_Eevee[];
extern const u32 gMonShinyPalette_Eevee[];
extern const u32 gMonStillFrontPic_Eevee[];
extern const u8 gMonIcon_Eevee[];
extern const u8 gMonFootprint_Eevee[];
extern const u32 gMonFrontPic_Vaporeon[];
extern const u32 gMonPalette_Vaporeon[];
extern const u32 gMonBackPic_Vaporeon[];
extern const u32 gMonShinyPalette_Vaporeon[];
extern const u32 gMonStillFrontPic_Vaporeon[];
extern const u8 gMonIcon_Vaporeon[];
extern const u8 gMonFootprint_Vaporeon[];
extern const u32 gMonFrontPic_Jolteon[];
extern const u32 gMonPalette_Jolteon[];
extern const u32 gMonBackPic_Jolteon[];
extern const u32 gMonShinyPalette_Jolteon[];
extern const u32 gMonStillFrontPic_Jolteon[];
extern const u8 gMonIcon_Jolteon[];
extern const u8 gMonFootprint_Jolteon[];
extern const u32 gMonFrontPic_Flareon[];
extern const u32 gMonPalette_Flareon[];
extern const u32 gMonBackPic_Flareon[];
extern const u32 gMonShinyPalette_Flareon[];
extern const u32 gMonStillFrontPic_Flareon[];
extern const u8 gMonIcon_Flareon[];
extern const u8 gMonFootprint_Flareon[];
extern const u32 gMonFrontPic_Porygon[];
extern const u32 gMonPalette_Porygon[];
extern const u32 gMonBackPic_Porygon[];
extern const u32 gMonShinyPalette_Porygon[];
extern const u32 gMonStillFrontPic_Porygon[];
extern const u8 gMonIcon_Porygon[];
extern const u8 gMonFootprint_Porygon[];
extern const u32 gMonFrontPic_Omanyte[];
extern const u32 gMonPalette_Omanyte[];
extern const u32 gMonBackPic_Omanyte[];
extern const u32 gMonShinyPalette_Omanyte[];
extern const u32 gMonStillFrontPic_Omanyte[];
extern const u8 gMonIcon_Omanyte[];
extern const u8 gMonFootprint_Omanyte[];
extern const u32 gMonFrontPic_Omastar[];
extern const u32 gMonPalette_Omastar[];
extern const u32 gMonBackPic_Omastar[];
extern const u32 gMonShinyPalette_Omastar[];
extern const u32 gMonStillFrontPic_Omastar[];
extern const u8 gMonIcon_Omastar[];
extern const u8 gMonFootprint_Omastar[];
extern const u32 gMonFrontPic_Kabuto[];
extern const u32 gMonPalette_Kabuto[];
extern const u32 gMonBackPic_Kabuto[];
extern const u32 gMonShinyPalette_Kabuto[];
extern const u32 gMonStillFrontPic_Kabuto[];
extern const u8 gMonIcon_Kabuto[];
extern const u8 gMonFootprint_Kabuto[];
extern const u32 gMonFrontPic_Kabutops[];
extern const u32 gMonPalette_Kabutops[];
extern const u32 gMonBackPic_Kabutops[];
extern const u32 gMonShinyPalette_Kabutops[];
extern const u32 gMonStillFrontPic_Kabutops[];
extern const u8 gMonIcon_Kabutops[];
extern const u8 gMonFootprint_Kabutops[];
extern const u32 gMonFrontPic_Aerodactyl[];
extern const u32 gMonPalette_Aerodactyl[];
extern const u32 gMonBackPic_Aerodactyl[];
extern const u32 gMonShinyPalette_Aerodactyl[];
extern const u32 gMonStillFrontPic_Aerodactyl[];
extern const u8 gMonIcon_Aerodactyl[];
extern const u8 gMonFootprint_Aerodactyl[];
extern const u32 gMonFrontPic_Snorlax[];
extern const u32 gMonPalette_Snorlax[];
extern const u32 gMonBackPic_Snorlax[];
extern const u32 gMonShinyPalette_Snorlax[];
extern const u32 gMonStillFrontPic_Snorlax[];
extern const u8 gMonIcon_Snorlax[];
extern const u8 gMonFootprint_Snorlax[];
extern const u32 gMonFrontPic_Articuno[];
extern const u32 gMonPalette_Articuno[];
extern const u32 gMonBackPic_Articuno[];
extern const u32 gMonShinyPalette_Articuno[];
extern const u32 gMonStillFrontPic_Articuno[];
extern const u8 gMonIcon_Articuno[];
extern const u8 gMonFootprint_Articuno[];
extern const u32 gMonFrontPic_Zapdos[];
extern const u32 gMonPalette_Zapdos[];
extern const u32 gMonBackPic_Zapdos[];
extern const u32 gMonShinyPalette_Zapdos[];
extern const u32 gMonStillFrontPic_Zapdos[];
extern const u8 gMonIcon_Zapdos[];
extern const u8 gMonFootprint_Zapdos[];
extern const u32 gMonFrontPic_Moltres[];
extern const u32 gMonPalette_Moltres[];
extern const u32 gMonBackPic_Moltres[];
extern const u32 gMonShinyPalette_Moltres[];
extern const u32 gMonStillFrontPic_Moltres[];
extern const u8 gMonIcon_Moltres[];
extern const u8 gMonFootprint_Moltres[];
extern const u32 gMonFrontPic_Dratini[];
extern const u32 gMonPalette_Dratini[];
extern const u32 gMonBackPic_Dratini[];
extern const u32 gMonShinyPalette_Dratini[];
extern const u32 gMonStillFrontPic_Dratini[];
extern const u8 gMonIcon_Dratini[];
extern const u8 gMonFootprint_Dratini[];
extern const u32 gMonFrontPic_Dragonair[];
extern const u32 gMonPalette_Dragonair[];
extern const u32 gMonBackPic_Dragonair[];
extern const u32 gMonShinyPalette_Dragonair[];
extern const u32 gMonStillFrontPic_Dragonair[];
extern const u8 gMonIcon_Dragonair[];
extern const u8 gMonFootprint_Dragonair[];
extern const u32 gMonFrontPic_Dragonite[];
extern const u32 gMonPalette_Dragonite[];
extern const u32 gMonBackPic_Dragonite[];
extern const u32 gMonShinyPalette_Dragonite[];
extern const u32 gMonStillFrontPic_Dragonite[];
extern const u8 gMonIcon_Dragonite[];
extern const u8 gMonFootprint_Dragonite[];
extern const u32 gMonFrontPic_Mewtwo[];
extern const u32 gMonPalette_Mewtwo[];
extern const u32 gMonBackPic_Mewtwo[];
extern const u32 gMonShinyPalette_Mewtwo[];
extern const u32 gMonStillFrontPic_Mewtwo[];
extern const u8 gMonIcon_Mewtwo[];
extern const u8 gMonFootprint_Mewtwo[];
extern const u32 gMonFrontPic_Mew[];
extern const u32 gMonPalette_Mew[];
extern const u32 gMonBackPic_Mew[];
extern const u32 gMonShinyPalette_Mew[];
extern const u32 gMonStillFrontPic_Mew[];
extern const u8 gMonIcon_Mew[];
extern const u8 gMonFootprint_Mew[];
extern const u32 gMonFrontPic_Chikorita[];
extern const u32 gMonPalette_Chikorita[];
extern const u32 gMonBackPic_Chikorita[];
extern const u32 gMonShinyPalette_Chikorita[];
extern const u32 gMonStillFrontPic_Chikorita[];
extern const u8 gMonIcon_Chikorita[];
extern const u8 gMonFootprint_Chikorita[];
extern const u32 gMonFrontPic_Bayleef[];
extern const u32 gMonPalette_Bayleef[];
extern const u32 gMonBackPic_Bayleef[];
extern const u32 gMonShinyPalette_Bayleef[];
extern const u32 gMonStillFrontPic_Bayleef[];
extern const u8 gMonIcon_Bayleef[];
extern const u8 gMonFootprint_Bayleef[];
extern const u32 gMonFrontPic_Meganium[];
extern const u32 gMonPalette_Meganium[];
extern const u32 gMonBackPic_Meganium[];
extern const u32 gMonShinyPalette_Meganium[];
extern const u32 gMonStillFrontPic_Meganium[];
extern const u8 gMonIcon_Meganium[];
extern const u8 gMonFootprint_Meganium[];
extern const u32 gMonFrontPic_Cyndaquil[];
extern const u32 gMonPalette_Cyndaquil[];
extern const u32 gMonBackPic_Cyndaquil[];
extern const u32 gMonShinyPalette_Cyndaquil[];
extern const u32 gMonStillFrontPic_Cyndaquil[];
extern const u8 gMonIcon_Cyndaquil[];
extern const u8 gMonFootprint_Cyndaquil[];
extern const u32 gMonFrontPic_Quilava[];
extern const u32 gMonPalette_Quilava[];
extern const u32 gMonBackPic_Quilava[];
extern const u32 gMonShinyPalette_Quilava[];
extern const u32 gMonStillFrontPic_Quilava[];
extern const u8 gMonIcon_Quilava[];
extern const u8 gMonFootprint_Quilava[];
extern const u32 gMonFrontPic_Typhlosion[];
extern const u32 gMonPalette_Typhlosion[];
extern const u32 gMonBackPic_Typhlosion[];
extern const u32 gMonShinyPalette_Typhlosion[];
extern const u32 gMonStillFrontPic_Typhlosion[];
extern const u8 gMonIcon_Typhlosion[];
extern const u8 gMonFootprint_Typhlosion[];
extern const u32 gMonFrontPic_Totodile[];
extern const u32 gMonPalette_Totodile[];
extern const u32 gMonBackPic_Totodile[];
extern const u32 gMonShinyPalette_Totodile[];
extern const u32 gMonStillFrontPic_Totodile[];
extern const u8 gMonIcon_Totodile[];
extern const u8 gMonFootprint_Totodile[];
extern const u32 gMonFrontPic_Croconaw[];
extern const u32 gMonPalette_Croconaw[];
extern const u32 gMonBackPic_Croconaw[];
extern const u32 gMonShinyPalette_Croconaw[];
extern const u32 gMonStillFrontPic_Croconaw[];
extern const u8 gMonIcon_Croconaw[];
extern const u8 gMonFootprint_Croconaw[];
extern const u32 gMonFrontPic_Feraligatr[];
extern const u32 gMonPalette_Feraligatr[];
extern const u32 gMonBackPic_Feraligatr[];
extern const u32 gMonShinyPalette_Feraligatr[];
extern const u32 gMonStillFrontPic_Feraligatr[];
extern const u8 gMonIcon_Feraligatr[];
extern const u8 gMonFootprint_Feraligatr[];
extern const u32 gMonFrontPic_Sentret[];
extern const u32 gMonPalette_Sentret[];
extern const u32 gMonBackPic_Sentret[];
extern const u32 gMonShinyPalette_Sentret[];
extern const u32 gMonStillFrontPic_Sentret[];
extern const u8 gMonIcon_Sentret[];
extern const u8 gMonFootprint_Sentret[];
extern const u32 gMonFrontPic_Furret[];
extern const u32 gMonPalette_Furret[];
extern const u32 gMonBackPic_Furret[];
extern const u32 gMonShinyPalette_Furret[];
extern const u32 gMonStillFrontPic_Furret[];
extern const u8 gMonIcon_Furret[];
extern const u8 gMonFootprint_Furret[];
extern const u32 gMonFrontPic_Hoothoot[];
extern const u32 gMonPalette_Hoothoot[];
extern const u32 gMonBackPic_Hoothoot[];
extern const u32 gMonShinyPalette_Hoothoot[];
extern const u32 gMonStillFrontPic_Hoothoot[];
extern const u8 gMonIcon_Hoothoot[];
extern const u8 gMonFootprint_Hoothoot[];
extern const u32 gMonFrontPic_Noctowl[];
extern const u32 gMonPalette_Noctowl[];
extern const u32 gMonBackPic_Noctowl[];
extern const u32 gMonShinyPalette_Noctowl[];
extern const u32 gMonStillFrontPic_Noctowl[];
extern const u8 gMonIcon_Noctowl[];
extern const u8 gMonFootprint_Noctowl[];
extern const u32 gMonFrontPic_Ledyba[];
extern const u32 gMonPalette_Ledyba[];
extern const u32 gMonBackPic_Ledyba[];
extern const u32 gMonShinyPalette_Ledyba[];
extern const u32 gMonStillFrontPic_Ledyba[];
extern const u8 gMonIcon_Ledyba[];
extern const u8 gMonFootprint_Ledyba[];
extern const u32 gMonFrontPic_Ledian[];
extern const u32 gMonPalette_Ledian[];
extern const u32 gMonBackPic_Ledian[];
extern const u32 gMonShinyPalette_Ledian[];
extern const u32 gMonStillFrontPic_Ledian[];
extern const u8 gMonIcon_Ledian[];
extern const u8 gMonFootprint_Ledian[];
extern const u32 gMonFrontPic_Spinarak[];
extern const u32 gMonPalette_Spinarak[];
extern const u32 gMonBackPic_Spinarak[];
extern const u32 gMonShinyPalette_Spinarak[];
extern const u32 gMonStillFrontPic_Spinarak[];
extern const u8 gMonIcon_Spinarak[];
extern const u8 gMonFootprint_Spinarak[];
extern const u32 gMonFrontPic_Ariados[];
extern const u32 gMonPalette_Ariados[];
extern const u32 gMonBackPic_Ariados[];
extern const u32 gMonShinyPalette_Ariados[];
extern const u32 gMonStillFrontPic_Ariados[];
extern const u8 gMonIcon_Ariados[];
extern const u8 gMonFootprint_Ariados[];
extern const u32 gMonFrontPic_Crobat[];
extern const u32 gMonPalette_Crobat[];
extern const u32 gMonBackPic_Crobat[];
extern const u32 gMonShinyPalette_Crobat[];
extern const u32 gMonStillFrontPic_Crobat[];
extern const u8 gMonIcon_Crobat[];
extern const u8 gMonFootprint_Crobat[];
extern const u32 gMonFrontPic_Chinchou[];
extern const u32 gMonPalette_Chinchou[];
extern const u32 gMonBackPic_Chinchou[];
extern const u32 gMonShinyPalette_Chinchou[];
extern const u32 gMonStillFrontPic_Chinchou[];
extern const u8 gMonIcon_Chinchou[];
extern const u8 gMonFootprint_Chinchou[];
extern const u32 gMonFrontPic_Lanturn[];
extern const u32 gMonPalette_Lanturn[];
extern const u32 gMonBackPic_Lanturn[];
extern const u32 gMonShinyPalette_Lanturn[];
extern const u32 gMonStillFrontPic_Lanturn[];
extern const u8 gMonIcon_Lanturn[];
extern const u8 gMonFootprint_Lanturn[];
extern const u32 gMonFrontPic_Pichu[];
extern const u32 gMonPalette_Pichu[];
extern const u32 gMonBackPic_Pichu[];
extern const u32 gMonShinyPalette_Pichu[];
extern const u32 gMonStillFrontPic_Pichu[];
extern const u8 gMonIcon_Pichu[];
extern const u8 gMonFootprint_Pichu[];
extern const u32 gMonFrontPic_Cleffa[];
extern const u32 gMonPalette_Cleffa[];
extern const u32 gMonBackPic_Cleffa[];
extern const u32 gMonShinyPalette_Cleffa[];
extern const u32 gMonStillFrontPic_Cleffa[];
extern const u8 gMonIcon_Cleffa[];
extern const u8 gMonFootprint_Cleffa[];
extern const u32 gMonFrontPic_Igglybuff[];
extern const u32 gMonPalette_Igglybuff[];
extern const u32 gMonBackPic_Igglybuff[];
extern const u32 gMonShinyPalette_Igglybuff[];
extern const u32 gMonStillFrontPic_Igglybuff[];
extern const u8 gMonIcon_Igglybuff[];
extern const u8 gMonFootprint_Igglybuff[];
extern const u32 gMonFrontPic_Togepi[];
extern const u32 gMonPalette_Togepi[];
extern const u32 gMonBackPic_Togepi[];
extern const u32 gMonShinyPalette_Togepi[];
extern const u32 gMonStillFrontPic_Togepi[];
extern const u8 gMonIcon_Togepi[];
extern const u8 gMonFootprint_Togepi[];
extern const u32 gMonFrontPic_Togetic[];
extern const u32 gMonPalette_Togetic[];
extern const u32 gMonBackPic_Togetic[];
extern const u32 gMonShinyPalette_Togetic[];
extern const u32 gMonStillFrontPic_Togetic[];
extern const u8 gMonIcon_Togetic[];
extern const u8 gMonFootprint_Togetic[];
extern const u32 gMonFrontPic_Natu[];
extern const u32 gMonPalette_Natu[];
extern const u32 gMonBackPic_Natu[];
extern const u32 gMonShinyPalette_Natu[];
extern const u32 gMonStillFrontPic_Natu[];
extern const u8 gMonIcon_Natu[];
extern const u8 gMonFootprint_Natu[];
extern const u32 gMonFrontPic_Xatu[];
extern const u32 gMonPalette_Xatu[];
extern const u32 gMonBackPic_Xatu[];
extern const u32 gMonShinyPalette_Xatu[];
extern const u32 gMonStillFrontPic_Xatu[];
extern const u8 gMonIcon_Xatu[];
extern const u8 gMonFootprint_Xatu[];
extern const u32 gMonFrontPic_Mareep[];
extern const u32 gMonPalette_Mareep[];
extern const u32 gMonBackPic_Mareep[];
extern const u32 gMonShinyPalette_Mareep[];
extern const u32 gMonStillFrontPic_Mareep[];
extern const u8 gMonIcon_Mareep[];
extern const u8 gMonFootprint_Mareep[];
extern const u32 gMonFrontPic_Flaaffy[];
extern const u32 gMonPalette_Flaaffy[];
extern const u32 gMonBackPic_Flaaffy[];
extern const u32 gMonShinyPalette_Flaaffy[];
extern const u32 gMonStillFrontPic_Flaaffy[];
extern const u8 gMonIcon_Flaaffy[];
extern const u8 gMonFootprint_Flaaffy[];
extern const u32 gMonFrontPic_Ampharos[];
extern const u32 gMonPalette_Ampharos[];
extern const u32 gMonBackPic_Ampharos[];
extern const u32 gMonShinyPalette_Ampharos[];
extern const u32 gMonStillFrontPic_Ampharos[];
extern const u8 gMonIcon_Ampharos[];
extern const u8 gMonFootprint_Ampharos[];
extern const u32 gMonFrontPic_Bellossom[];
extern const u32 gMonPalette_Bellossom[];
extern const u32 gMonBackPic_Bellossom[];
extern const u32 gMonShinyPalette_Bellossom[];
extern const u32 gMonStillFrontPic_Bellossom[];
extern const u8 gMonIcon_Bellossom[];
extern const u8 gMonFootprint_Bellossom[];
extern const u32 gMonFrontPic_Marill[];
extern const u32 gMonPalette_Marill[];
extern const u32 gMonBackPic_Marill[];
extern const u32 gMonShinyPalette_Marill[];
extern const u32 gMonStillFrontPic_Marill[];
extern const u8 gMonIcon_Marill[];
extern const u8 gMonFootprint_Marill[];
extern const u32 gMonFrontPic_Azumarill[];
extern const u32 gMonPalette_Azumarill[];
extern const u32 gMonBackPic_Azumarill[];
extern const u32 gMonShinyPalette_Azumarill[];
extern const u32 gMonStillFrontPic_Azumarill[];
extern const u8 gMonIcon_Azumarill[];
extern const u8 gMonFootprint_Azumarill[];
extern const u32 gMonFrontPic_Sudowoodo[];
extern const u32 gMonPalette_Sudowoodo[];
extern const u32 gMonBackPic_Sudowoodo[];
extern const u32 gMonShinyPalette_Sudowoodo[];
extern const u32 gMonStillFrontPic_Sudowoodo[];
extern const u8 gMonIcon_Sudowoodo[];
extern const u8 gMonFootprint_Sudowoodo[];
extern const u32 gMonFrontPic_Politoed[];
extern const u32 gMonPalette_Politoed[];
extern const u32 gMonBackPic_Politoed[];
extern const u32 gMonShinyPalette_Politoed[];
extern const u32 gMonStillFrontPic_Politoed[];
extern const u8 gMonIcon_Politoed[];
extern const u8 gMonFootprint_Politoed[];
extern const u32 gMonFrontPic_Hoppip[];
extern const u32 gMonPalette_Hoppip[];
extern const u32 gMonBackPic_Hoppip[];
extern const u32 gMonShinyPalette_Hoppip[];
extern const u32 gMonStillFrontPic_Hoppip[];
extern const u8 gMonIcon_Hoppip[];
extern const u8 gMonFootprint_Hoppip[];
extern const u32 gMonFrontPic_Skiploom[];
extern const u32 gMonPalette_Skiploom[];
extern const u32 gMonBackPic_Skiploom[];
extern const u32 gMonShinyPalette_Skiploom[];
extern const u32 gMonStillFrontPic_Skiploom[];
extern const u8 gMonIcon_Skiploom[];
extern const u8 gMonFootprint_Skiploom[];
extern const u32 gMonFrontPic_Jumpluff[];
extern const u32 gMonPalette_Jumpluff[];
extern const u32 gMonBackPic_Jumpluff[];
extern const u32 gMonShinyPalette_Jumpluff[];
extern const u32 gMonStillFrontPic_Jumpluff[];
extern const u8 gMonIcon_Jumpluff[];
extern const u8 gMonFootprint_Jumpluff[];
extern const u32 gMonFrontPic_Aipom[];
extern const u32 gMonPalette_Aipom[];
extern const u32 gMonBackPic_Aipom[];
extern const u32 gMonShinyPalette_Aipom[];
extern const u32 gMonStillFrontPic_Aipom[];
extern const u8 gMonIcon_Aipom[];
extern const u8 gMonFootprint_Aipom[];
extern const u32 gMonFrontPic_Sunkern[];
extern const u32 gMonPalette_Sunkern[];
extern const u32 gMonBackPic_Sunkern[];
extern const u32 gMonShinyPalette_Sunkern[];
extern const u32 gMonStillFrontPic_Sunkern[];
extern const u8 gMonIcon_Sunkern[];
extern const u8 gMonFootprint_Sunkern[];
extern const u32 gMonFrontPic_Sunflora[];
extern const u32 gMonPalette_Sunflora[];
extern const u32 gMonBackPic_Sunflora[];
extern const u32 gMonShinyPalette_Sunflora[];
extern const u32 gMonStillFrontPic_Sunflora[];
extern const u8 gMonIcon_Sunflora[];
extern const u8 gMonFootprint_Sunflora[];
extern const u32 gMonFrontPic_Yanma[];
extern const u32 gMonPalette_Yanma[];
extern const u32 gMonBackPic_Yanma[];
extern const u32 gMonShinyPalette_Yanma[];
extern const u32 gMonStillFrontPic_Yanma[];
extern const u8 gMonIcon_Yanma[];
extern const u8 gMonFootprint_Yanma[];
extern const u32 gMonFrontPic_Wooper[];
extern const u32 gMonPalette_Wooper[];
extern const u32 gMonBackPic_Wooper[];
extern const u32 gMonShinyPalette_Wooper[];
extern const u32 gMonStillFrontPic_Wooper[];
extern const u8 gMonIcon_Wooper[];
extern const u8 gMonFootprint_Wooper[];
extern const u32 gMonFrontPic_Quagsire[];
extern const u32 gMonPalette_Quagsire[];
extern const u32 gMonBackPic_Quagsire[];
extern const u32 gMonShinyPalette_Quagsire[];
extern const u32 gMonStillFrontPic_Quagsire[];
extern const u8 gMonIcon_Quagsire[];
extern const u8 gMonFootprint_Quagsire[];
extern const u32 gMonFrontPic_Espeon[];
extern const u32 gMonPalette_Espeon[];
extern const u32 gMonBackPic_Espeon[];
extern const u32 gMonShinyPalette_Espeon[];
extern const u32 gMonStillFrontPic_Espeon[];
extern const u8 gMonIcon_Espeon[];
extern const u8 gMonFootprint_Espeon[];
extern const u32 gMonFrontPic_Umbreon[];
extern const u32 gMonPalette_Umbreon[];
extern const u32 gMonBackPic_Umbreon[];
extern const u32 gMonShinyPalette_Umbreon[];
extern const u32 gMonStillFrontPic_Umbreon[];
extern const u8 gMonIcon_Umbreon[];
extern const u8 gMonFootprint_Umbreon[];
extern const u32 gMonFrontPic_Murkrow[];
extern const u32 gMonPalette_Murkrow[];
extern const u32 gMonBackPic_Murkrow[];
extern const u32 gMonShinyPalette_Murkrow[];
extern const u32 gMonStillFrontPic_Murkrow[];
extern const u8 gMonIcon_Murkrow[];
extern const u8 gMonFootprint_Murkrow[];
extern const u32 gMonFrontPic_Slowking[];
extern const u32 gMonPalette_Slowking[];
extern const u32 gMonBackPic_Slowking[];
extern const u32 gMonShinyPalette_Slowking[];
extern const u32 gMonStillFrontPic_Slowking[];
extern const u8 gMonIcon_Slowking[];
extern const u8 gMonFootprint_Slowking[];
extern const u32 gMonFrontPic_Misdreavus[];
extern const u32 gMonPalette_Misdreavus[];
extern const u32 gMonBackPic_Misdreavus[];
extern const u32 gMonShinyPalette_Misdreavus[];
extern const u32 gMonStillFrontPic_Misdreavus[];
extern const u8 gMonIcon_Misdreavus[];
extern const u8 gMonFootprint_Misdreavus[];
extern const u32 gMonFrontPic_UnownA[];
extern const u32 gMonPalette_Unown[];
extern const u32 gMonBackPic_UnownA[];
extern const u32 gMonShinyPalette_Unown[];
extern const u32 gMonStillFrontPic_UnownA[];
extern const u8 gMonIcon_UnownA[];
extern const u8 gMonFootprint_Unown[];
extern const u32 gMonFrontPic_Wobbuffet[];
extern const u32 gMonPalette_Wobbuffet[];
extern const u32 gMonBackPic_Wobbuffet[];
extern const u32 gMonShinyPalette_Wobbuffet[];
extern const u32 gMonStillFrontPic_Wobbuffet[];
extern const u8 gMonIcon_Wobbuffet[];
extern const u8 gMonFootprint_Wobbuffet[];
extern const u32 gMonFrontPic_Girafarig[];
extern const u32 gMonPalette_Girafarig[];
extern const u32 gMonBackPic_Girafarig[];
extern const u32 gMonShinyPalette_Girafarig[];
extern const u32 gMonStillFrontPic_Girafarig[];
extern const u8 gMonIcon_Girafarig[];
extern const u8 gMonFootprint_Girafarig[];
extern const u32 gMonFrontPic_Pineco[];
extern const u32 gMonPalette_Pineco[];
extern const u32 gMonBackPic_Pineco[];
extern const u32 gMonShinyPalette_Pineco[];
extern const u32 gMonStillFrontPic_Pineco[];
extern const u8 gMonIcon_Pineco[];
extern const u8 gMonFootprint_Pineco[];
extern const u32 gMonFrontPic_Forretress[];
extern const u32 gMonPalette_Forretress[];
extern const u32 gMonBackPic_Forretress[];
extern const u32 gMonShinyPalette_Forretress[];
extern const u32 gMonStillFrontPic_Forretress[];
extern const u8 gMonIcon_Forretress[];
extern const u8 gMonFootprint_Forretress[];
extern const u32 gMonFrontPic_Dunsparce[];
extern const u32 gMonPalette_Dunsparce[];
extern const u32 gMonBackPic_Dunsparce[];
extern const u32 gMonShinyPalette_Dunsparce[];
extern const u32 gMonStillFrontPic_Dunsparce[];
extern const u8 gMonIcon_Dunsparce[];
extern const u8 gMonFootprint_Dunsparce[];
extern const u32 gMonFrontPic_Gligar[];
extern const u32 gMonPalette_Gligar[];
extern const u32 gMonBackPic_Gligar[];
extern const u32 gMonShinyPalette_Gligar[];
extern const u32 gMonStillFrontPic_Gligar[];
extern const u8 gMonIcon_Gligar[];
extern const u8 gMonFootprint_Gligar[];
extern const u32 gMonFrontPic_Steelix[];
extern const u32 gMonPalette_Steelix[];
extern const u32 gMonBackPic_Steelix[];
extern const u32 gMonShinyPalette_Steelix[];
extern const u32 gMonStillFrontPic_Steelix[];
extern const u8 gMonIcon_Steelix[];
extern const u8 gMonFootprint_Steelix[];
extern const u32 gMonFrontPic_Snubbull[];
extern const u32 gMonPalette_Snubbull[];
extern const u32 gMonBackPic_Snubbull[];
extern const u32 gMonShinyPalette_Snubbull[];
extern const u32 gMonStillFrontPic_Snubbull[];
extern const u8 gMonIcon_Snubbull[];
extern const u8 gMonFootprint_Snubbull[];
extern const u32 gMonFrontPic_Granbull[];
extern const u32 gMonPalette_Granbull[];
extern const u32 gMonBackPic_Granbull[];
extern const u32 gMonShinyPalette_Granbull[];
extern const u32 gMonStillFrontPic_Granbull[];
extern const u8 gMonIcon_Granbull[];
extern const u8 gMonFootprint_Granbull[];
extern const u32 gMonFrontPic_Qwilfish[];
extern const u32 gMonPalette_Qwilfish[];
extern const u32 gMonBackPic_Qwilfish[];
extern const u32 gMonShinyPalette_Qwilfish[];
extern const u32 gMonStillFrontPic_Qwilfish[];
extern const u8 gMonIcon_Qwilfish[];
extern const u8 gMonFootprint_Qwilfish[];
extern const u32 gMonFrontPic_Scizor[];
extern const u32 gMonPalette_Scizor[];
extern const u32 gMonBackPic_Scizor[];
extern const u32 gMonShinyPalette_Scizor[];
extern const u32 gMonStillFrontPic_Scizor[];
extern const u8 gMonIcon_Scizor[];
extern const u8 gMonFootprint_Scizor[];
extern const u32 gMonFrontPic_Shuckle[];
extern const u32 gMonPalette_Shuckle[];
extern const u32 gMonBackPic_Shuckle[];
extern const u32 gMonShinyPalette_Shuckle[];
extern const u32 gMonStillFrontPic_Shuckle[];
extern const u8 gMonIcon_Shuckle[];
extern const u8 gMonFootprint_Shuckle[];
extern const u32 gMonFrontPic_Heracross[];
extern const u32 gMonPalette_Heracross[];
extern const u32 gMonBackPic_Heracross[];
extern const u32 gMonShinyPalette_Heracross[];
extern const u32 gMonStillFrontPic_Heracross[];
extern const u8 gMonIcon_Heracross[];
extern const u8 gMonFootprint_Heracross[];
extern const u32 gMonFrontPic_Sneasel[];
extern const u32 gMonPalette_Sneasel[];
extern const u32 gMonBackPic_Sneasel[];
extern const u32 gMonShinyPalette_Sneasel[];
extern const u32 gMonStillFrontPic_Sneasel[];
extern const u8 gMonIcon_Sneasel[];
extern const u8 gMonFootprint_Sneasel[];
extern const u32 gMonFrontPic_Teddiursa[];
extern const u32 gMonPalette_Teddiursa[];
extern const u32 gMonBackPic_Teddiursa[];
extern const u32 gMonShinyPalette_Teddiursa[];
extern const u32 gMonStillFrontPic_Teddiursa[];
extern const u8 gMonIcon_Teddiursa[];
extern const u8 gMonFootprint_Teddiursa[];
extern const u32 gMonFrontPic_Ursaring[];
extern const u32 gMonPalette_Ursaring[];
extern const u32 gMonBackPic_Ursaring[];
extern const u32 gMonShinyPalette_Ursaring[];
extern const u32 gMonStillFrontPic_Ursaring[];
extern const u8 gMonIcon_Ursaring[];
extern const u8 gMonFootprint_Ursaring[];
extern const u32 gMonFrontPic_Slugma[];
extern const u32 gMonPalette_Slugma[];
extern const u32 gMonBackPic_Slugma[];
extern const u32 gMonShinyPalette_Slugma[];
extern const u32 gMonStillFrontPic_Slugma[];
extern const u8 gMonIcon_Slugma[];
extern const u8 gMonFootprint_Slugma[];
extern const u32 gMonFrontPic_Magcargo[];
extern const u32 gMonPalette_Magcargo[];
extern const u32 gMonBackPic_Magcargo[];
extern const u32 gMonShinyPalette_Magcargo[];
extern const u32 gMonStillFrontPic_Magcargo[];
extern const u8 gMonIcon_Magcargo[];
extern const u8 gMonFootprint_Magcargo[];
extern const u32 gMonFrontPic_Swinub[];
extern const u32 gMonPalette_Swinub[];
extern const u32 gMonBackPic_Swinub[];
extern const u32 gMonShinyPalette_Swinub[];
extern const u32 gMonStillFrontPic_Swinub[];
extern const u8 gMonIcon_Swinub[];
extern const u8 gMonFootprint_Swinub[];
extern const u32 gMonFrontPic_Piloswine[];
extern const u32 gMonPalette_Piloswine[];
extern const u32 gMonBackPic_Piloswine[];
extern const u32 gMonShinyPalette_Piloswine[];
extern const u32 gMonStillFrontPic_Piloswine[];
extern const u8 gMonIcon_Piloswine[];
extern const u8 gMonFootprint_Piloswine[];
extern const u32 gMonFrontPic_Corsola[];
extern const u32 gMonPalette_Corsola[];
extern const u32 gMonBackPic_Corsola[];
extern const u32 gMonShinyPalette_Corsola[];
extern const u32 gMonStillFrontPic_Corsola[];
extern const u8 gMonIcon_Corsola[];
extern const u8 gMonFootprint_Corsola[];
extern const u32 gMonFrontPic_Remoraid[];
extern const u32 gMonPalette_Remoraid[];
extern const u32 gMonBackPic_Remoraid[];
extern const u32 gMonShinyPalette_Remoraid[];
extern const u32 gMonStillFrontPic_Remoraid[];
extern const u8 gMonIcon_Remoraid[];
extern const u8 gMonFootprint_Remoraid[];
extern const u32 gMonFrontPic_Octillery[];
extern const u32 gMonPalette_Octillery[];
extern const u32 gMonBackPic_Octillery[];
extern const u32 gMonShinyPalette_Octillery[];
extern const u32 gMonStillFrontPic_Octillery[];
extern const u8 gMonIcon_Octillery[];
extern const u8 gMonFootprint_Octillery[];
extern const u32 gMonFrontPic_Delibird[];
extern const u32 gMonPalette_Delibird[];
extern const u32 gMonBackPic_Delibird[];
extern const u32 gMonShinyPalette_Delibird[];
extern const u32 gMonStillFrontPic_Delibird[];
extern const u8 gMonIcon_Delibird[];
extern const u8 gMonFootprint_Delibird[];
extern const u32 gMonFrontPic_Mantine[];
extern const u32 gMonPalette_Mantine[];
extern const u32 gMonBackPic_Mantine[];
extern const u32 gMonShinyPalette_Mantine[];
extern const u32 gMonStillFrontPic_Mantine[];
extern const u8 gMonIcon_Mantine[];
extern const u8 gMonFootprint_Mantine[];
extern const u32 gMonFrontPic_Skarmory[];
extern const u32 gMonPalette_Skarmory[];
extern const u32 gMonBackPic_Skarmory[];
extern const u32 gMonShinyPalette_Skarmory[];
extern const u32 gMonStillFrontPic_Skarmory[];
extern const u8 gMonIcon_Skarmory[];
extern const u8 gMonFootprint_Skarmory[];
extern const u32 gMonFrontPic_Houndour[];
extern const u32 gMonPalette_Houndour[];
extern const u32 gMonBackPic_Houndour[];
extern const u32 gMonShinyPalette_Houndour[];
extern const u32 gMonStillFrontPic_Houndour[];
extern const u8 gMonIcon_Houndour[];
extern const u8 gMonFootprint_Houndour[];
extern const u32 gMonFrontPic_Houndoom[];
extern const u32 gMonPalette_Houndoom[];
extern const u32 gMonBackPic_Houndoom[];
extern const u32 gMonShinyPalette_Houndoom[];
extern const u32 gMonStillFrontPic_Houndoom[];
extern const u8 gMonIcon_Houndoom[];
extern const u8 gMonFootprint_Houndoom[];
extern const u32 gMonFrontPic_Kingdra[];
extern const u32 gMonPalette_Kingdra[];
extern const u32 gMonBackPic_Kingdra[];
extern const u32 gMonShinyPalette_Kingdra[];
extern const u32 gMonStillFrontPic_Kingdra[];
extern const u8 gMonIcon_Kingdra[];
extern const u8 gMonFootprint_Kingdra[];
extern const u32 gMonFrontPic_Phanpy[];
extern const u32 gMonPalette_Phanpy[];
extern const u32 gMonBackPic_Phanpy[];
extern const u32 gMonShinyPalette_Phanpy[];
extern const u32 gMonStillFrontPic_Phanpy[];
extern const u8 gMonIcon_Phanpy[];
extern const u8 gMonFootprint_Phanpy[];
extern const u32 gMonFrontPic_Donphan[];
extern const u32 gMonPalette_Donphan[];
extern const u32 gMonBackPic_Donphan[];
extern const u32 gMonShinyPalette_Donphan[];
extern const u32 gMonStillFrontPic_Donphan[];
extern const u8 gMonIcon_Donphan[];
extern const u8 gMonFootprint_Donphan[];
extern const u32 gMonFrontPic_Porygon2[];
extern const u32 gMonPalette_Porygon2[];
extern const u32 gMonBackPic_Porygon2[];
extern const u32 gMonShinyPalette_Porygon2[];
extern const u32 gMonStillFrontPic_Porygon2[];
extern const u8 gMonIcon_Porygon2[];
extern const u8 gMonFootprint_Porygon2[];
extern const u32 gMonFrontPic_Stantler[];
extern const u32 gMonPalette_Stantler[];
extern const u32 gMonBackPic_Stantler[];
extern const u32 gMonShinyPalette_Stantler[];
extern const u32 gMonStillFrontPic_Stantler[];
extern const u8 gMonIcon_Stantler[];
extern const u8 gMonFootprint_Stantler[];
extern const u32 gMonFrontPic_Smeargle[];
extern const u32 gMonPalette_Smeargle[];
extern const u32 gMonBackPic_Smeargle[];
extern const u32 gMonShinyPalette_Smeargle[];
extern const u32 gMonStillFrontPic_Smeargle[];
extern const u8 gMonIcon_Smeargle[];
extern const u8 gMonFootprint_Smeargle[];
extern const u32 gMonFrontPic_Tyrogue[];
extern const u32 gMonPalette_Tyrogue[];
extern const u32 gMonBackPic_Tyrogue[];
extern const u32 gMonShinyPalette_Tyrogue[];
extern const u32 gMonStillFrontPic_Tyrogue[];
extern const u8 gMonIcon_Tyrogue[];
extern const u8 gMonFootprint_Tyrogue[];
extern const u32 gMonFrontPic_Hitmontop[];
extern const u32 gMonPalette_Hitmontop[];
extern const u32 gMonBackPic_Hitmontop[];
extern const u32 gMonShinyPalette_Hitmontop[];
extern const u32 gMonStillFrontPic_Hitmontop[];
extern const u8 gMonIcon_Hitmontop[];
extern const u8 gMonFootprint_Hitmontop[];
extern const u32 gMonFrontPic_Smoochum[];
extern const u32 gMonPalette_Smoochum[];
extern const u32 gMonBackPic_Smoochum[];
extern const u32 gMonShinyPalette_Smoochum[];
extern const u32 gMonStillFrontPic_Smoochum[];
extern const u8 gMonIcon_Smoochum[];
extern const u8 gMonFootprint_Smoochum[];
extern const u32 gMonFrontPic_Elekid[];
extern const u32 gMonPalette_Elekid[];
extern const u32 gMonBackPic_Elekid[];
extern const u32 gMonShinyPalette_Elekid[];
extern const u32 gMonStillFrontPic_Elekid[];
extern const u8 gMonIcon_Elekid[];
extern const u8 gMonFootprint_Elekid[];
extern const u32 gMonFrontPic_Magby[];
extern const u32 gMonPalette_Magby[];
extern const u32 gMonBackPic_Magby[];
extern const u32 gMonShinyPalette_Magby[];
extern const u32 gMonStillFrontPic_Magby[];
extern const u8 gMonIcon_Magby[];
extern const u8 gMonFootprint_Magby[];
extern const u32 gMonFrontPic_Miltank[];
extern const u32 gMonPalette_Miltank[];
extern const u32 gMonBackPic_Miltank[];
extern const u32 gMonShinyPalette_Miltank[];
extern const u32 gMonStillFrontPic_Miltank[];
extern const u8 gMonIcon_Miltank[];
extern const u8 gMonFootprint_Miltank[];
extern const u32 gMonFrontPic_Blissey[];
extern const u32 gMonPalette_Blissey[];
extern const u32 gMonBackPic_Blissey[];
extern const u32 gMonShinyPalette_Blissey[];
extern const u32 gMonStillFrontPic_Blissey[];
extern const u8 gMonIcon_Blissey[];
extern const u8 gMonFootprint_Blissey[];
extern const u32 gMonFrontPic_Raikou[];
extern const u32 gMonPalette_Raikou[];
extern const u32 gMonBackPic_Raikou[];
extern const u32 gMonShinyPalette_Raikou[];
extern const u32 gMonStillFrontPic_Raikou[];
extern const u8 gMonIcon_Raikou[];
extern const u8 gMonFootprint_Raikou[];
extern const u32 gMonFrontPic_Entei[];
extern const u32 gMonPalette_Entei[];
extern const u32 gMonBackPic_Entei[];
extern const u32 gMonShinyPalette_Entei[];
extern const u32 gMonStillFrontPic_Entei[];
extern const u8 gMonIcon_Entei[];
extern const u8 gMonFootprint_Entei[];
extern const u32 gMonFrontPic_Suicune[];
extern const u32 gMonPalette_Suicune[];
extern const u32 gMonBackPic_Suicune[];
extern const u32 gMonShinyPalette_Suicune[];
extern const u32 gMonStillFrontPic_Suicune[];
extern const u8 gMonIcon_Suicune[];
extern const u8 gMonFootprint_Suicune[];
extern const u32 gMonFrontPic_Larvitar[];
extern const u32 gMonPalette_Larvitar[];
extern const u32 gMonBackPic_Larvitar[];
extern const u32 gMonShinyPalette_Larvitar[];
extern const u32 gMonStillFrontPic_Larvitar[];
extern const u8 gMonIcon_Larvitar[];
extern const u8 gMonFootprint_Larvitar[];
extern const u32 gMonFrontPic_Pupitar[];
extern const u32 gMonPalette_Pupitar[];
extern const u32 gMonBackPic_Pupitar[];
extern const u32 gMonShinyPalette_Pupitar[];
extern const u32 gMonStillFrontPic_Pupitar[];
extern const u8 gMonIcon_Pupitar[];
extern const u8 gMonFootprint_Pupitar[];
extern const u32 gMonFrontPic_Tyranitar[];
extern const u32 gMonPalette_Tyranitar[];
extern const u32 gMonBackPic_Tyranitar[];
extern const u32 gMonShinyPalette_Tyranitar[];
extern const u32 gMonStillFrontPic_Tyranitar[];
extern const u8 gMonIcon_Tyranitar[];
extern const u8 gMonFootprint_Tyranitar[];
extern const u32 gMonFrontPic_Lugia[];
extern const u32 gMonPalette_Lugia[];
extern const u32 gMonBackPic_Lugia[];
extern const u32 gMonShinyPalette_Lugia[];
extern const u32 gMonStillFrontPic_Lugia[];
extern const u8 gMonIcon_Lugia[];
extern const u8 gMonFootprint_Lugia[];
extern const u32 gMonFrontPic_HoOh[];
extern const u32 gMonPalette_HoOh[];
extern const u32 gMonBackPic_HoOh[];
extern const u32 gMonShinyPalette_HoOh[];
extern const u32 gMonStillFrontPic_HoOh[];
extern const u8 gMonIcon_HoOh[];
extern const u8 gMonFootprint_HoOh[];
extern const u32 gMonFrontPic_Celebi[];
extern const u32 gMonPalette_Celebi[];
extern const u32 gMonBackPic_Celebi[];
extern const u32 gMonShinyPalette_Celebi[];
extern const u32 gMonStillFrontPic_Celebi[];
extern const u8 gMonIcon_Celebi[];
extern const u8 gMonFootprint_Celebi[];
extern const u32 gMonFrontPic_QuestionMark[];
extern const u32 gMonPalette_QuestionMark[];
extern const u32 gMonBackPic_QuestionMark[];
extern const u32 gMonShinyPalette_QuestionMark[];
extern const u32 gMonFrontPic_Treecko[];
extern const u32 gMonPalette_Treecko[];
extern const u32 gMonBackPic_Treecko[];
extern const u32 gMonShinyPalette_Treecko[];
extern const u32 gMonStillFrontPic_Treecko[];
extern const u8 gMonIcon_Treecko[];
extern const u8 gMonFootprint_Treecko[];
extern const u32 gMonFrontPic_Grovyle[];
extern const u32 gMonPalette_Grovyle[];
extern const u32 gMonBackPic_Grovyle[];
extern const u32 gMonShinyPalette_Grovyle[];
extern const u32 gMonStillFrontPic_Grovyle[];
extern const u8 gMonIcon_Grovyle[];
extern const u8 gMonFootprint_Grovyle[];
extern const u32 gMonFrontPic_Sceptile[];
extern const u32 gMonPalette_Sceptile[];
extern const u32 gMonBackPic_Sceptile[];
extern const u32 gMonShinyPalette_Sceptile[];
extern const u32 gMonStillFrontPic_Sceptile[];
extern const u8 gMonIcon_Sceptile[];
extern const u8 gMonFootprint_Sceptile[];
extern const u32 gMonFrontPic_Torchic[];
extern const u32 gMonPalette_Torchic[];
extern const u32 gMonBackPic_Torchic[];
extern const u32 gMonShinyPalette_Torchic[];
extern const u32 gMonStillFrontPic_Torchic[];
extern const u8 gMonIcon_Torchic[];
extern const u8 gMonFootprint_Torchic[];
extern const u32 gMonFrontPic_Combusken[];
extern const u32 gMonPalette_Combusken[];
extern const u32 gMonBackPic_Combusken[];
extern const u32 gMonShinyPalette_Combusken[];
extern const u32 gMonStillFrontPic_Combusken[];
extern const u8 gMonIcon_Combusken[];
extern const u8 gMonFootprint_Combusken[];
extern const u32 gMonFrontPic_Blaziken[];
extern const u32 gMonPalette_Blaziken[];
extern const u32 gMonBackPic_Blaziken[];
extern const u32 gMonShinyPalette_Blaziken[];
extern const u32 gMonStillFrontPic_Blaziken[];
extern const u8 gMonIcon_Blaziken[];
extern const u8 gMonFootprint_Blaziken[];
extern const u32 gMonFrontPic_Mudkip[];
extern const u32 gMonPalette_Mudkip[];
extern const u32 gMonBackPic_Mudkip[];
extern const u32 gMonShinyPalette_Mudkip[];
extern const u32 gMonStillFrontPic_Mudkip[];
extern const u8 gMonIcon_Mudkip[];
extern const u8 gMonFootprint_Mudkip[];
extern const u32 gMonFrontPic_Marshtomp[];
extern const u32 gMonPalette_Marshtomp[];
extern const u32 gMonBackPic_Marshtomp[];
extern const u32 gMonShinyPalette_Marshtomp[];
extern const u32 gMonStillFrontPic_Marshtomp[];
extern const u8 gMonIcon_Marshtomp[];
extern const u8 gMonFootprint_Marshtomp[];
extern const u32 gMonFrontPic_Swampert[];
extern const u32 gMonPalette_Swampert[];
extern const u32 gMonBackPic_Swampert[];
extern const u32 gMonShinyPalette_Swampert[];
extern const u32 gMonStillFrontPic_Swampert[];
extern const u8 gMonIcon_Swampert[];
extern const u8 gMonFootprint_Swampert[];
extern const u32 gMonFrontPic_Poochyena[];
extern const u32 gMonPalette_Poochyena[];
extern const u32 gMonBackPic_Poochyena[];
extern const u32 gMonShinyPalette_Poochyena[];
extern const u32 gMonStillFrontPic_Poochyena[];
extern const u8 gMonIcon_Poochyena[];
extern const u8 gMonFootprint_Poochyena[];
extern const u32 gMonFrontPic_Mightyena[];
extern const u32 gMonPalette_Mightyena[];
extern const u32 gMonBackPic_Mightyena[];
extern const u32 gMonShinyPalette_Mightyena[];
extern const u32 gMonStillFrontPic_Mightyena[];
extern const u8 gMonIcon_Mightyena[];
extern const u8 gMonFootprint_Mightyena[];
extern const u32 gMonFrontPic_Zigzagoon[];
extern const u32 gMonPalette_Zigzagoon[];
extern const u32 gMonBackPic_Zigzagoon[];
extern const u32 gMonShinyPalette_Zigzagoon[];
extern const u32 gMonStillFrontPic_Zigzagoon[];
extern const u8 gMonIcon_Zigzagoon[];
extern const u8 gMonFootprint_Zigzagoon[];
extern const u32 gMonFrontPic_Linoone[];
extern const u32 gMonPalette_Linoone[];
extern const u32 gMonBackPic_Linoone[];
extern const u32 gMonShinyPalette_Linoone[];
extern const u32 gMonStillFrontPic_Linoone[];
extern const u8 gMonIcon_Linoone[];
extern const u8 gMonFootprint_Linoone[];
extern const u32 gMonFrontPic_Wurmple[];
extern const u32 gMonPalette_Wurmple[];
extern const u32 gMonBackPic_Wurmple[];
extern const u32 gMonShinyPalette_Wurmple[];
extern const u32 gMonStillFrontPic_Wurmple[];
extern const u8 gMonIcon_Wurmple[];
extern const u8 gMonFootprint_Wurmple[];
extern const u32 gMonFrontPic_Silcoon[];
extern const u32 gMonPalette_Silcoon[];
extern const u32 gMonBackPic_Silcoon[];
extern const u32 gMonShinyPalette_Silcoon[];
extern const u32 gMonStillFrontPic_Silcoon[];
extern const u8 gMonIcon_Silcoon[];
extern const u8 gMonFootprint_Silcoon[];
extern const u32 gMonFrontPic_Beautifly[];
extern const u32 gMonPalette_Beautifly[];
extern const u32 gMonBackPic_Beautifly[];
extern const u32 gMonShinyPalette_Beautifly[];
extern const u32 gMonStillFrontPic_Beautifly[];
extern const u8 gMonIcon_Beautifly[];
extern const u8 gMonFootprint_Beautifly[];
extern const u32 gMonFrontPic_Cascoon[];
extern const u32 gMonPalette_Cascoon[];
extern const u32 gMonBackPic_Cascoon[];
extern const u32 gMonShinyPalette_Cascoon[];
extern const u32 gMonStillFrontPic_Cascoon[];
extern const u8 gMonIcon_Cascoon[];
extern const u8 gMonFootprint_Cascoon[];
extern const u32 gMonFrontPic_Dustox[];
extern const u32 gMonPalette_Dustox[];
extern const u32 gMonBackPic_Dustox[];
extern const u32 gMonShinyPalette_Dustox[];
extern const u32 gMonStillFrontPic_Dustox[];
extern const u8 gMonIcon_Dustox[];
extern const u8 gMonFootprint_Dustox[];
extern const u32 gMonFrontPic_Lotad[];
extern const u32 gMonPalette_Lotad[];
extern const u32 gMonBackPic_Lotad[];
extern const u32 gMonShinyPalette_Lotad[];
extern const u32 gMonStillFrontPic_Lotad[];
extern const u8 gMonIcon_Lotad[];
extern const u8 gMonFootprint_Lotad[];
extern const u32 gMonFrontPic_Lombre[];
extern const u32 gMonPalette_Lombre[];
extern const u32 gMonBackPic_Lombre[];
extern const u32 gMonShinyPalette_Lombre[];
extern const u32 gMonStillFrontPic_Lombre[];
extern const u8 gMonIcon_Lombre[];
extern const u8 gMonFootprint_Lombre[];
extern const u32 gMonFrontPic_Ludicolo[];
extern const u32 gMonPalette_Ludicolo[];
extern const u32 gMonBackPic_Ludicolo[];
extern const u32 gMonShinyPalette_Ludicolo[];
extern const u32 gMonStillFrontPic_Ludicolo[];
extern const u8 gMonIcon_Ludicolo[];
extern const u8 gMonFootprint_Ludicolo[];
extern const u32 gMonFrontPic_Seedot[];
extern const u32 gMonPalette_Seedot[];
extern const u32 gMonBackPic_Seedot[];
extern const u32 gMonShinyPalette_Seedot[];
extern const u32 gMonStillFrontPic_Seedot[];
extern const u8 gMonIcon_Seedot[];
extern const u8 gMonFootprint_Seedot[];
extern const u32 gMonFrontPic_Nuzleaf[];
extern const u32 gMonPalette_Nuzleaf[];
extern const u32 gMonBackPic_Nuzleaf[];
extern const u32 gMonShinyPalette_Nuzleaf[];
extern const u32 gMonStillFrontPic_Nuzleaf[];
extern const u8 gMonIcon_Nuzleaf[];
extern const u8 gMonFootprint_Nuzleaf[];
extern const u32 gMonFrontPic_Shiftry[];
extern const u32 gMonPalette_Shiftry[];
extern const u32 gMonBackPic_Shiftry[];
extern const u32 gMonShinyPalette_Shiftry[];
extern const u32 gMonStillFrontPic_Shiftry[];
extern const u8 gMonIcon_Shiftry[];
extern const u8 gMonFootprint_Shiftry[];
extern const u32 gMonFrontPic_Nincada[];
extern const u32 gMonPalette_Nincada[];
extern const u32 gMonBackPic_Nincada[];
extern const u32 gMonShinyPalette_Nincada[];
extern const u32 gMonStillFrontPic_Nincada[];
extern const u8 gMonIcon_Nincada[];
extern const u8 gMonFootprint_Nincada[];
extern const u32 gMonFrontPic_Ninjask[];
extern const u32 gMonPalette_Ninjask[];
extern const u32 gMonBackPic_Ninjask[];
extern const u32 gMonShinyPalette_Ninjask[];
extern const u32 gMonStillFrontPic_Ninjask[];
extern const u8 gMonIcon_Ninjask[];
extern const u8 gMonFootprint_Ninjask[];
extern const u32 gMonFrontPic_Shedinja[];
extern const u32 gMonPalette_Shedinja[];
extern const u32 gMonBackPic_Shedinja[];
extern const u32 gMonShinyPalette_Shedinja[];
extern const u32 gMonStillFrontPic_Shedinja[];
extern const u8 gMonIcon_Shedinja[];
extern const u8 gMonFootprint_Shedinja[];
extern const u32 gMonFrontPic_Taillow[];
extern const u32 gMonPalette_Taillow[];
extern const u32 gMonBackPic_Taillow[];
extern const u32 gMonShinyPalette_Taillow[];
extern const u32 gMonStillFrontPic_Taillow[];
extern const u8 gMonIcon_Taillow[];
extern const u8 gMonFootprint_Taillow[];
extern const u32 gMonFrontPic_Swellow[];
extern const u32 gMonPalette_Swellow[];
extern const u32 gMonBackPic_Swellow[];
extern const u32 gMonShinyPalette_Swellow[];
extern const u32 gMonStillFrontPic_Swellow[];
extern const u8 gMonIcon_Swellow[];
extern const u8 gMonFootprint_Swellow[];
extern const u32 gMonFrontPic_Shroomish[];
extern const u32 gMonPalette_Shroomish[];
extern const u32 gMonBackPic_Shroomish[];
extern const u32 gMonShinyPalette_Shroomish[];
extern const u32 gMonStillFrontPic_Shroomish[];
extern const u8 gMonIcon_Shroomish[];
extern const u8 gMonFootprint_Shroomish[];
extern const u32 gMonFrontPic_Breloom[];
extern const u32 gMonPalette_Breloom[];
extern const u32 gMonBackPic_Breloom[];
extern const u32 gMonShinyPalette_Breloom[];
extern const u32 gMonStillFrontPic_Breloom[];
extern const u8 gMonIcon_Breloom[];
extern const u8 gMonFootprint_Breloom[];
extern const u32 gMonFrontPic_Spinda[];
extern const u32 gMonPalette_Spinda[];
extern const u32 gMonBackPic_Spinda[];
extern const u32 gMonShinyPalette_Spinda[];
extern const u32 gMonStillFrontPic_Spinda[];
extern const u8 gMonIcon_Spinda[];
extern const u8 gMonFootprint_Spinda[];
extern const u32 gMonFrontPic_Wingull[];
extern const u32 gMonPalette_Wingull[];
extern const u32 gMonBackPic_Wingull[];
extern const u32 gMonShinyPalette_Wingull[];
extern const u32 gMonStillFrontPic_Wingull[];
extern const u8 gMonIcon_Wingull[];
extern const u8 gMonFootprint_Wingull[];
extern const u32 gMonFrontPic_Pelipper[];
extern const u32 gMonPalette_Pelipper[];
extern const u32 gMonBackPic_Pelipper[];
extern const u32 gMonShinyPalette_Pelipper[];
extern const u32 gMonStillFrontPic_Pelipper[];
extern const u8 gMonIcon_Pelipper[];
extern const u8 gMonFootprint_Pelipper[];
extern const u32 gMonFrontPic_Surskit[];
extern const u32 gMonPalette_Surskit[];
extern const u32 gMonBackPic_Surskit[];
extern const u32 gMonShinyPalette_Surskit[];
extern const u32 gMonStillFrontPic_Surskit[];
extern const u8 gMonIcon_Surskit[];
extern const u8 gMonFootprint_Surskit[];
extern const u32 gMonFrontPic_Masquerain[];
extern const u32 gMonPalette_Masquerain[];
extern const u32 gMonBackPic_Masquerain[];
extern const u32 gMonShinyPalette_Masquerain[];
extern const u32 gMonStillFrontPic_Masquerain[];
extern const u8 gMonIcon_Masquerain[];
extern const u8 gMonFootprint_Masquerain[];
extern const u32 gMonFrontPic_Wailmer[];
extern const u32 gMonPalette_Wailmer[];
extern const u32 gMonBackPic_Wailmer[];
extern const u32 gMonShinyPalette_Wailmer[];
extern const u32 gMonStillFrontPic_Wailmer[];
extern const u8 gMonIcon_Wailmer[];
extern const u8 gMonFootprint_Wailmer[];
extern const u32 gMonFrontPic_Wailord[];
extern const u32 gMonPalette_Wailord[];
extern const u32 gMonBackPic_Wailord[];
extern const u32 gMonShinyPalette_Wailord[];
extern const u32 gMonStillFrontPic_Wailord[];
extern const u8 gMonIcon_Wailord[];
extern const u8 gMonFootprint_Wailord[];
extern const u32 gMonFrontPic_Skitty[];
extern const u32 gMonPalette_Skitty[];
extern const u32 gMonBackPic_Skitty[];
extern const u32 gMonShinyPalette_Skitty[];
extern const u32 gMonStillFrontPic_Skitty[];
extern const u8 gMonIcon_Skitty[];
extern const u8 gMonFootprint_Skitty[];
extern const u32 gMonFrontPic_Delcatty[];
extern const u32 gMonPalette_Delcatty[];
extern const u32 gMonBackPic_Delcatty[];
extern const u32 gMonShinyPalette_Delcatty[];
extern const u32 gMonStillFrontPic_Delcatty[];
extern const u8 gMonIcon_Delcatty[];
extern const u8 gMonFootprint_Delcatty[];
extern const u32 gMonFrontPic_Kecleon[];
extern const u32 gMonPalette_Kecleon[];
extern const u32 gMonBackPic_Kecleon[];
extern const u32 gMonShinyPalette_Kecleon[];
extern const u32 gMonStillFrontPic_Kecleon[];
extern const u8 gMonIcon_Kecleon[];
extern const u8 gMonFootprint_Kecleon[];
extern const u32 gMonFrontPic_Baltoy[];
extern const u32 gMonPalette_Baltoy[];
extern const u32 gMonBackPic_Baltoy[];
extern const u32 gMonShinyPalette_Baltoy[];
extern const u32 gMonStillFrontPic_Baltoy[];
extern const u8 gMonIcon_Baltoy[];
extern const u8 gMonFootprint_Baltoy[];
extern const u32 gMonFrontPic_Claydol[];
extern const u32 gMonPalette_Claydol[];
extern const u32 gMonBackPic_Claydol[];
extern const u32 gMonShinyPalette_Claydol[];
extern const u32 gMonStillFrontPic_Claydol[];
extern const u8 gMonIcon_Claydol[];
extern const u8 gMonFootprint_Claydol[];
extern const u32 gMonFrontPic_Nosepass[];
extern const u32 gMonPalette_Nosepass[];
extern const u32 gMonBackPic_Nosepass[];
extern const u32 gMonShinyPalette_Nosepass[];
extern const u32 gMonStillFrontPic_Nosepass[];
extern const u8 gMonIcon_Nosepass[];
extern const u8 gMonFootprint_Nosepass[];
extern const u32 gMonFrontPic_Torkoal[];
extern const u32 gMonPalette_Torkoal[];
extern const u32 gMonBackPic_Torkoal[];
extern const u32 gMonShinyPalette_Torkoal[];
extern const u32 gMonStillFrontPic_Torkoal[];
extern const u8 gMonIcon_Torkoal[];
extern const u8 gMonFootprint_Torkoal[];
extern const u32 gMonFrontPic_Sableye[];
extern const u32 gMonPalette_Sableye[];
extern const u32 gMonBackPic_Sableye[];
extern const u32 gMonShinyPalette_Sableye[];
extern const u32 gMonStillFrontPic_Sableye[];
extern const u8 gMonIcon_Sableye[];
extern const u8 gMonFootprint_Sableye[];
extern const u32 gMonFrontPic_Barboach[];
extern const u32 gMonPalette_Barboach[];
extern const u32 gMonBackPic_Barboach[];
extern const u32 gMonShinyPalette_Barboach[];
extern const u32 gMonStillFrontPic_Barboach[];
extern const u8 gMonIcon_Barboach[];
extern const u8 gMonFootprint_Barboach[];
extern const u32 gMonFrontPic_Whiscash[];
extern const u32 gMonPalette_Whiscash[];
extern const u32 gMonBackPic_Whiscash[];
extern const u32 gMonShinyPalette_Whiscash[];
extern const u32 gMonStillFrontPic_Whiscash[];
extern const u8 gMonIcon_Whiscash[];
extern const u8 gMonFootprint_Whiscash[];
extern const u32 gMonFrontPic_Luvdisc[];
extern const u32 gMonPalette_Luvdisc[];
extern const u32 gMonBackPic_Luvdisc[];
extern const u32 gMonShinyPalette_Luvdisc[];
extern const u32 gMonStillFrontPic_Luvdisc[];
extern const u8 gMonIcon_Luvdisc[];
extern const u8 gMonFootprint_Luvdisc[];
extern const u32 gMonFrontPic_Corphish[];
extern const u32 gMonPalette_Corphish[];
extern const u32 gMonBackPic_Corphish[];
extern const u32 gMonShinyPalette_Corphish[];
extern const u32 gMonStillFrontPic_Corphish[];
extern const u8 gMonIcon_Corphish[];
extern const u8 gMonFootprint_Corphish[];
extern const u32 gMonFrontPic_Crawdaunt[];
extern const u32 gMonPalette_Crawdaunt[];
extern const u32 gMonBackPic_Crawdaunt[];
extern const u32 gMonShinyPalette_Crawdaunt[];
extern const u32 gMonStillFrontPic_Crawdaunt[];
extern const u8 gMonIcon_Crawdaunt[];
extern const u8 gMonFootprint_Crawdaunt[];
extern const u32 gMonFrontPic_Feebas[];
extern const u32 gMonPalette_Feebas[];
extern const u32 gMonBackPic_Feebas[];
extern const u32 gMonShinyPalette_Feebas[];
extern const u32 gMonStillFrontPic_Feebas[];
extern const u8 gMonIcon_Feebas[];
extern const u8 gMonFootprint_Feebas[];
extern const u32 gMonFrontPic_Milotic[];
extern const u32 gMonPalette_Milotic[];
extern const u32 gMonBackPic_Milotic[];
extern const u32 gMonShinyPalette_Milotic[];
extern const u32 gMonStillFrontPic_Milotic[];
extern const u8 gMonIcon_Milotic[];
extern const u8 gMonFootprint_Milotic[];
extern const u32 gMonFrontPic_Carvanha[];
extern const u32 gMonPalette_Carvanha[];
extern const u32 gMonBackPic_Carvanha[];
extern const u32 gMonShinyPalette_Carvanha[];
extern const u32 gMonStillFrontPic_Carvanha[];
extern const u8 gMonIcon_Carvanha[];
extern const u8 gMonFootprint_Carvanha[];
extern const u32 gMonFrontPic_Sharpedo[];
extern const u32 gMonPalette_Sharpedo[];
extern const u32 gMonBackPic_Sharpedo[];
extern const u32 gMonShinyPalette_Sharpedo[];
extern const u32 gMonStillFrontPic_Sharpedo[];
extern const u8 gMonIcon_Sharpedo[];
extern const u8 gMonFootprint_Sharpedo[];
extern const u32 gMonFrontPic_Trapinch[];
extern const u32 gMonPalette_Trapinch[];
extern const u32 gMonBackPic_Trapinch[];
extern const u32 gMonShinyPalette_Trapinch[];
extern const u32 gMonStillFrontPic_Trapinch[];
extern const u8 gMonIcon_Trapinch[];
extern const u8 gMonFootprint_Trapinch[];
extern const u32 gMonFrontPic_Vibrava[];
extern const u32 gMonPalette_Vibrava[];
extern const u32 gMonBackPic_Vibrava[];
extern const u32 gMonShinyPalette_Vibrava[];
extern const u32 gMonStillFrontPic_Vibrava[];
extern const u8 gMonIcon_Vibrava[];
extern const u8 gMonFootprint_Vibrava[];
extern const u32 gMonFrontPic_Flygon[];
extern const u32 gMonPalette_Flygon[];
extern const u32 gMonBackPic_Flygon[];
extern const u32 gMonShinyPalette_Flygon[];
extern const u32 gMonStillFrontPic_Flygon[];
extern const u8 gMonIcon_Flygon[];
extern const u8 gMonFootprint_Flygon[];
extern const u32 gMonFrontPic_Makuhita[];
extern const u32 gMonPalette_Makuhita[];
extern const u32 gMonBackPic_Makuhita[];
extern const u32 gMonShinyPalette_Makuhita[];
extern const u32 gMonStillFrontPic_Makuhita[];
extern const u8 gMonIcon_Makuhita[];
extern const u8 gMonFootprint_Makuhita[];
extern const u32 gMonFrontPic_Hariyama[];
extern const u32 gMonPalette_Hariyama[];
extern const u32 gMonBackPic_Hariyama[];
extern const u32 gMonShinyPalette_Hariyama[];
extern const u32 gMonStillFrontPic_Hariyama[];
extern const u8 gMonIcon_Hariyama[];
extern const u8 gMonFootprint_Hariyama[];
extern const u32 gMonFrontPic_Electrike[];
extern const u32 gMonPalette_Electrike[];
extern const u32 gMonBackPic_Electrike[];
extern const u32 gMonShinyPalette_Electrike[];
extern const u32 gMonStillFrontPic_Electrike[];
extern const u8 gMonIcon_Electrike[];
extern const u8 gMonFootprint_Electrike[];
extern const u32 gMonFrontPic_Manectric[];
extern const u32 gMonPalette_Manectric[];
extern const u32 gMonBackPic_Manectric[];
extern const u32 gMonShinyPalette_Manectric[];
extern const u32 gMonStillFrontPic_Manectric[];
extern const u8 gMonIcon_Manectric[];
extern const u8 gMonFootprint_Manectric[];
extern const u32 gMonFrontPic_Numel[];
extern const u32 gMonPalette_Numel[];
extern const u32 gMonBackPic_Numel[];
extern const u32 gMonShinyPalette_Numel[];
extern const u32 gMonStillFrontPic_Numel[];
extern const u8 gMonIcon_Numel[];
extern const u8 gMonFootprint_Numel[];
extern const u32 gMonFrontPic_Camerupt[];
extern const u32 gMonPalette_Camerupt[];
extern const u32 gMonBackPic_Camerupt[];
extern const u32 gMonShinyPalette_Camerupt[];
extern const u32 gMonStillFrontPic_Camerupt[];
extern const u8 gMonIcon_Camerupt[];
extern const u8 gMonFootprint_Camerupt[];
extern const u32 gMonFrontPic_Spheal[];
extern const u32 gMonPalette_Spheal[];
extern const u32 gMonBackPic_Spheal[];
extern const u32 gMonShinyPalette_Spheal[];
extern const u32 gMonStillFrontPic_Spheal[];
extern const u8 gMonIcon_Spheal[];
extern const u8 gMonFootprint_Spheal[];
extern const u32 gMonFrontPic_Sealeo[];
extern const u32 gMonPalette_Sealeo[];
extern const u32 gMonBackPic_Sealeo[];
extern const u32 gMonShinyPalette_Sealeo[];
extern const u32 gMonStillFrontPic_Sealeo[];
extern const u8 gMonIcon_Sealeo[];
extern const u8 gMonFootprint_Sealeo[];
extern const u32 gMonFrontPic_Walrein[];
extern const u32 gMonPalette_Walrein[];
extern const u32 gMonBackPic_Walrein[];
extern const u32 gMonShinyPalette_Walrein[];
extern const u32 gMonStillFrontPic_Walrein[];
extern const u8 gMonIcon_Walrein[];
extern const u8 gMonFootprint_Walrein[];
extern const u32 gMonFrontPic_Cacnea[];
extern const u32 gMonPalette_Cacnea[];
extern const u32 gMonBackPic_Cacnea[];
extern const u32 gMonShinyPalette_Cacnea[];
extern const u32 gMonStillFrontPic_Cacnea[];
extern const u8 gMonIcon_Cacnea[];
extern const u8 gMonFootprint_Cacnea[];
extern const u32 gMonFrontPic_Cacturne[];
extern const u32 gMonPalette_Cacturne[];
extern const u32 gMonBackPic_Cacturne[];
extern const u32 gMonShinyPalette_Cacturne[];
extern const u32 gMonStillFrontPic_Cacturne[];
extern const u8 gMonIcon_Cacturne[];
extern const u8 gMonFootprint_Cacturne[];
extern const u32 gMonFrontPic_Snorunt[];
extern const u32 gMonPalette_Snorunt[];
extern const u32 gMonBackPic_Snorunt[];
extern const u32 gMonShinyPalette_Snorunt[];
extern const u32 gMonStillFrontPic_Snorunt[];
extern const u8 gMonIcon_Snorunt[];
extern const u8 gMonFootprint_Snorunt[];
extern const u32 gMonFrontPic_Glalie[];
extern const u32 gMonPalette_Glalie[];
extern const u32 gMonBackPic_Glalie[];
extern const u32 gMonShinyPalette_Glalie[];
extern const u32 gMonStillFrontPic_Glalie[];
extern const u8 gMonIcon_Glalie[];
extern const u8 gMonFootprint_Glalie[];
extern const u32 gMonFrontPic_Lunatone[];
extern const u32 gMonPalette_Lunatone[];
extern const u32 gMonBackPic_Lunatone[];
extern const u32 gMonShinyPalette_Lunatone[];
extern const u32 gMonStillFrontPic_Lunatone[];
extern const u8 gMonIcon_Lunatone[];
extern const u8 gMonFootprint_Lunatone[];
extern const u32 gMonFrontPic_Solrock[];
extern const u32 gMonPalette_Solrock[];
extern const u32 gMonBackPic_Solrock[];
extern const u32 gMonShinyPalette_Solrock[];
extern const u32 gMonStillFrontPic_Solrock[];
extern const u8 gMonIcon_Solrock[];
extern const u8 gMonFootprint_Solrock[];
extern const u32 gMonFrontPic_Azurill[];
extern const u32 gMonPalette_Azurill[];
extern const u32 gMonBackPic_Azurill[];
extern const u32 gMonShinyPalette_Azurill[];
extern const u32 gMonStillFrontPic_Azurill[];
extern const u8 gMonIcon_Azurill[];
extern const u8 gMonFootprint_Azurill[];
extern const u32 gMonFrontPic_Spoink[];
extern const u32 gMonPalette_Spoink[];
extern const u32 gMonBackPic_Spoink[];
extern const u32 gMonShinyPalette_Spoink[];
extern const u32 gMonStillFrontPic_Spoink[];
extern const u8 gMonIcon_Spoink[];
extern const u8 gMonFootprint_Spoink[];
extern const u32 gMonFrontPic_Grumpig[];
extern const u32 gMonPalette_Grumpig[];
extern const u32 gMonBackPic_Grumpig[];
extern const u32 gMonShinyPalette_Grumpig[];
extern const u32 gMonStillFrontPic_Grumpig[];
extern const u8 gMonIcon_Grumpig[];
extern const u8 gMonFootprint_Grumpig[];
extern const u32 gMonFrontPic_Plusle[];
extern const u32 gMonPalette_Plusle[];
extern const u32 gMonBackPic_Plusle[];
extern const u32 gMonShinyPalette_Plusle[];
extern const u32 gMonStillFrontPic_Plusle[];
extern const u8 gMonIcon_Plusle[];
extern const u8 gMonFootprint_Plusle[];
extern const u32 gMonFrontPic_Minun[];
extern const u32 gMonPalette_Minun[];
extern const u32 gMonBackPic_Minun[];
extern const u32 gMonShinyPalette_Minun[];
extern const u32 gMonStillFrontPic_Minun[];
extern const u8 gMonIcon_Minun[];
extern const u8 gMonFootprint_Minun[];
extern const u32 gMonFrontPic_Mawile[];
extern const u32 gMonPalette_Mawile[];
extern const u32 gMonBackPic_Mawile[];
extern const u32 gMonShinyPalette_Mawile[];
extern const u32 gMonStillFrontPic_Mawile[];
extern const u8 gMonIcon_Mawile[];
extern const u8 gMonFootprint_Mawile[];
extern const u32 gMonFrontPic_Meditite[];
extern const u32 gMonPalette_Meditite[];
extern const u32 gMonBackPic_Meditite[];
extern const u32 gMonShinyPalette_Meditite[];
extern const u32 gMonStillFrontPic_Meditite[];
extern const u8 gMonIcon_Meditite[];
extern const u8 gMonFootprint_Meditite[];
extern const u32 gMonFrontPic_Medicham[];
extern const u32 gMonPalette_Medicham[];
extern const u32 gMonBackPic_Medicham[];
extern const u32 gMonShinyPalette_Medicham[];
extern const u32 gMonStillFrontPic_Medicham[];
extern const u8 gMonIcon_Medicham[];
extern const u8 gMonFootprint_Medicham[];
extern const u32 gMonFrontPic_Swablu[];
extern const u32 gMonPalette_Swablu[];
extern const u32 gMonBackPic_Swablu[];
extern const u32 gMonShinyPalette_Swablu[];
extern const u32 gMonStillFrontPic_Swablu[];
extern const u8 gMonIcon_Swablu[];
extern const u8 gMonFootprint_Swablu[];
extern const u32 gMonFrontPic_Altaria[];
extern const u32 gMonPalette_Altaria[];
extern const u32 gMonBackPic_Altaria[];
extern const u32 gMonShinyPalette_Altaria[];
extern const u32 gMonStillFrontPic_Altaria[];
extern const u8 gMonIcon_Altaria[];
extern const u8 gMonFootprint_Altaria[];
extern const u32 gMonFrontPic_Wynaut[];
extern const u32 gMonPalette_Wynaut[];
extern const u32 gMonBackPic_Wynaut[];
extern const u32 gMonShinyPalette_Wynaut[];
extern const u32 gMonStillFrontPic_Wynaut[];
extern const u8 gMonIcon_Wynaut[];
extern const u8 gMonFootprint_Wynaut[];
extern const u32 gMonFrontPic_Duskull[];
extern const u32 gMonPalette_Duskull[];
extern const u32 gMonBackPic_Duskull[];
extern const u32 gMonShinyPalette_Duskull[];
extern const u32 gMonStillFrontPic_Duskull[];
extern const u8 gMonIcon_Duskull[];
extern const u8 gMonFootprint_Duskull[];
extern const u32 gMonFrontPic_Dusclops[];
extern const u32 gMonPalette_Dusclops[];
extern const u32 gMonBackPic_Dusclops[];
extern const u32 gMonShinyPalette_Dusclops[];
extern const u32 gMonStillFrontPic_Dusclops[];
extern const u8 gMonIcon_Dusclops[];
extern const u8 gMonFootprint_Dusclops[];
extern const u32 gMonFrontPic_Roselia[];
extern const u32 gMonPalette_Roselia[];
extern const u32 gMonBackPic_Roselia[];
extern const u32 gMonShinyPalette_Roselia[];
extern const u32 gMonStillFrontPic_Roselia[];
extern const u8 gMonIcon_Roselia[];
extern const u8 gMonFootprint_Roselia[];
extern const u32 gMonFrontPic_Slakoth[];
extern const u32 gMonPalette_Slakoth[];
extern const u32 gMonBackPic_Slakoth[];
extern const u32 gMonShinyPalette_Slakoth[];
extern const u32 gMonStillFrontPic_Slakoth[];
extern const u8 gMonIcon_Slakoth[];
extern const u8 gMonFootprint_Slakoth[];
extern const u32 gMonFrontPic_Vigoroth[];
extern const u32 gMonPalette_Vigoroth[];
extern const u32 gMonBackPic_Vigoroth[];
extern const u32 gMonShinyPalette_Vigoroth[];
extern const u32 gMonStillFrontPic_Vigoroth[];
extern const u8 gMonIcon_Vigoroth[];
extern const u8 gMonFootprint_Vigoroth[];
extern const u32 gMonFrontPic_Slaking[];
extern const u32 gMonPalette_Slaking[];
extern const u32 gMonBackPic_Slaking[];
extern const u32 gMonShinyPalette_Slaking[];
extern const u32 gMonStillFrontPic_Slaking[];
extern const u8 gMonIcon_Slaking[];
extern const u8 gMonFootprint_Slaking[];
extern const u32 gMonFrontPic_Gulpin[];
extern const u32 gMonPalette_Gulpin[];
extern const u32 gMonBackPic_Gulpin[];
extern const u32 gMonShinyPalette_Gulpin[];
extern const u32 gMonStillFrontPic_Gulpin[];
extern const u8 gMonIcon_Gulpin[];
extern const u8 gMonFootprint_Gulpin[];
extern const u32 gMonFrontPic_Swalot[];
extern const u32 gMonPalette_Swalot[];
extern const u32 gMonBackPic_Swalot[];
extern const u32 gMonShinyPalette_Swalot[];
extern const u32 gMonStillFrontPic_Swalot[];
extern const u8 gMonIcon_Swalot[];
extern const u8 gMonFootprint_Swalot[];
extern const u32 gMonFrontPic_Tropius[];
extern const u32 gMonPalette_Tropius[];
extern const u32 gMonBackPic_Tropius[];
extern const u32 gMonShinyPalette_Tropius[];
extern const u32 gMonStillFrontPic_Tropius[];
extern const u8 gMonIcon_Tropius[];
extern const u8 gMonFootprint_Tropius[];
extern const u32 gMonFrontPic_Whismur[];
extern const u32 gMonPalette_Whismur[];
extern const u32 gMonBackPic_Whismur[];
extern const u32 gMonShinyPalette_Whismur[];
extern const u32 gMonStillFrontPic_Whismur[];
extern const u8 gMonIcon_Whismur[];
extern const u8 gMonFootprint_Whismur[];
extern const u32 gMonFrontPic_Loudred[];
extern const u32 gMonPalette_Loudred[];
extern const u32 gMonBackPic_Loudred[];
extern const u32 gMonShinyPalette_Loudred[];
extern const u32 gMonStillFrontPic_Loudred[];
extern const u8 gMonIcon_Loudred[];
extern const u8 gMonFootprint_Loudred[];
extern const u32 gMonFrontPic_Exploud[];
extern const u32 gMonPalette_Exploud[];
extern const u32 gMonBackPic_Exploud[];
extern const u32 gMonShinyPalette_Exploud[];
extern const u32 gMonStillFrontPic_Exploud[];
extern const u8 gMonIcon_Exploud[];
extern const u8 gMonFootprint_Exploud[];
extern const u32 gMonFrontPic_Clamperl[];
extern const u32 gMonPalette_Clamperl[];
extern const u32 gMonBackPic_Clamperl[];
extern const u32 gMonShinyPalette_Clamperl[];
extern const u32 gMonStillFrontPic_Clamperl[];
extern const u8 gMonIcon_Clamperl[];
extern const u8 gMonFootprint_Clamperl[];
extern const u32 gMonFrontPic_Huntail[];
extern const u32 gMonPalette_Huntail[];
extern const u32 gMonBackPic_Huntail[];
extern const u32 gMonShinyPalette_Huntail[];
extern const u32 gMonStillFrontPic_Huntail[];
extern const u8 gMonIcon_Huntail[];
extern const u8 gMonFootprint_Huntail[];
extern const u32 gMonFrontPic_Gorebyss[];
extern const u32 gMonPalette_Gorebyss[];
extern const u32 gMonBackPic_Gorebyss[];
extern const u32 gMonShinyPalette_Gorebyss[];
extern const u32 gMonStillFrontPic_Gorebyss[];
extern const u8 gMonIcon_Gorebyss[];
extern const u8 gMonFootprint_Gorebyss[];
extern const u32 gMonFrontPic_Absol[];
extern const u32 gMonPalette_Absol[];
extern const u32 gMonBackPic_Absol[];
extern const u32 gMonShinyPalette_Absol[];
extern const u32 gMonStillFrontPic_Absol[];
extern const u8 gMonIcon_Absol[];
extern const u8 gMonFootprint_Absol[];
extern const u32 gMonFrontPic_Shuppet[];
extern const u32 gMonPalette_Shuppet[];
extern const u32 gMonBackPic_Shuppet[];
extern const u32 gMonShinyPalette_Shuppet[];
extern const u32 gMonStillFrontPic_Shuppet[];
extern const u8 gMonIcon_Shuppet[];
extern const u8 gMonFootprint_Shuppet[];
extern const u32 gMonFrontPic_Banette[];
extern const u32 gMonPalette_Banette[];
extern const u32 gMonBackPic_Banette[];
extern const u32 gMonShinyPalette_Banette[];
extern const u32 gMonStillFrontPic_Banette[];
extern const u8 gMonIcon_Banette[];
extern const u8 gMonFootprint_Banette[];
extern const u32 gMonFrontPic_Seviper[];
extern const u32 gMonPalette_Seviper[];
extern const u32 gMonBackPic_Seviper[];
extern const u32 gMonShinyPalette_Seviper[];
extern const u32 gMonStillFrontPic_Seviper[];
extern const u8 gMonIcon_Seviper[];
extern const u8 gMonFootprint_Seviper[];
extern const u32 gMonFrontPic_Zangoose[];
extern const u32 gMonPalette_Zangoose[];
extern const u32 gMonBackPic_Zangoose[];
extern const u32 gMonShinyPalette_Zangoose[];
extern const u32 gMonStillFrontPic_Zangoose[];
extern const u8 gMonIcon_Zangoose[];
extern const u8 gMonFootprint_Zangoose[];
extern const u32 gMonFrontPic_Relicanth[];
extern const u32 gMonPalette_Relicanth[];
extern const u32 gMonBackPic_Relicanth[];
extern const u32 gMonShinyPalette_Relicanth[];
extern const u32 gMonStillFrontPic_Relicanth[];
extern const u8 gMonIcon_Relicanth[];
extern const u8 gMonFootprint_Relicanth[];
extern const u32 gMonFrontPic_Aron[];
extern const u32 gMonPalette_Aron[];
extern const u32 gMonBackPic_Aron[];
extern const u32 gMonShinyPalette_Aron[];
extern const u32 gMonStillFrontPic_Aron[];
extern const u8 gMonIcon_Aron[];
extern const u8 gMonFootprint_Aron[];
extern const u32 gMonFrontPic_Lairon[];
extern const u32 gMonPalette_Lairon[];
extern const u32 gMonBackPic_Lairon[];
extern const u32 gMonShinyPalette_Lairon[];
extern const u32 gMonStillFrontPic_Lairon[];
extern const u8 gMonIcon_Lairon[];
extern const u8 gMonFootprint_Lairon[];
extern const u32 gMonFrontPic_Aggron[];
extern const u32 gMonPalette_Aggron[];
extern const u32 gMonBackPic_Aggron[];
extern const u32 gMonShinyPalette_Aggron[];
extern const u32 gMonStillFrontPic_Aggron[];
extern const u8 gMonIcon_Aggron[];
extern const u8 gMonFootprint_Aggron[];
extern const u32 gMonFrontPic_Castform[];
extern const u32 gMonPalette_Castform[];
extern const u32 gMonBackPic_Castform[];
extern const u32 gMonShinyPalette_Castform[];
extern const u32 gMonStillFrontPic_Castform[];
extern const u8 gMonIcon_Castform[];
extern const u8 gMonFootprint_Castform[];
extern const u32 gMonFrontPic_Volbeat[];
extern const u32 gMonPalette_Volbeat[];
extern const u32 gMonBackPic_Volbeat[];
extern const u32 gMonShinyPalette_Volbeat[];
extern const u32 gMonStillFrontPic_Volbeat[];
extern const u8 gMonIcon_Volbeat[];
extern const u8 gMonFootprint_Volbeat[];
extern const u32 gMonFrontPic_Illumise[];
extern const u32 gMonPalette_Illumise[];
extern const u32 gMonBackPic_Illumise[];
extern const u32 gMonShinyPalette_Illumise[];
extern const u32 gMonStillFrontPic_Illumise[];
extern const u8 gMonIcon_Illumise[];
extern const u8 gMonFootprint_Illumise[];
extern const u32 gMonFrontPic_Lileep[];
extern const u32 gMonPalette_Lileep[];
extern const u32 gMonBackPic_Lileep[];
extern const u32 gMonShinyPalette_Lileep[];
extern const u32 gMonStillFrontPic_Lileep[];
extern const u8 gMonIcon_Lileep[];
extern const u8 gMonFootprint_Lileep[];
extern const u32 gMonFrontPic_Cradily[];
extern const u32 gMonPalette_Cradily[];
extern const u32 gMonBackPic_Cradily[];
extern const u32 gMonShinyPalette_Cradily[];
extern const u32 gMonStillFrontPic_Cradily[];
extern const u8 gMonIcon_Cradily[];
extern const u8 gMonFootprint_Cradily[];
extern const u32 gMonFrontPic_Anorith[];
extern const u32 gMonPalette_Anorith[];
extern const u32 gMonBackPic_Anorith[];
extern const u32 gMonShinyPalette_Anorith[];
extern const u32 gMonStillFrontPic_Anorith[];
extern const u8 gMonIcon_Anorith[];
extern const u8 gMonFootprint_Anorith[];
extern const u32 gMonFrontPic_Armaldo[];
extern const u32 gMonPalette_Armaldo[];
extern const u32 gMonBackPic_Armaldo[];
extern const u32 gMonShinyPalette_Armaldo[];
extern const u32 gMonStillFrontPic_Armaldo[];
extern const u8 gMonIcon_Armaldo[];
extern const u8 gMonFootprint_Armaldo[];
extern const u32 gMonFrontPic_Ralts[];
extern const u32 gMonPalette_Ralts[];
extern const u32 gMonBackPic_Ralts[];
extern const u32 gMonShinyPalette_Ralts[];
extern const u32 gMonStillFrontPic_Ralts[];
extern const u8 gMonIcon_Ralts[];
extern const u8 gMonFootprint_Ralts[];
extern const u32 gMonFrontPic_Kirlia[];
extern const u32 gMonPalette_Kirlia[];
extern const u32 gMonBackPic_Kirlia[];
extern const u32 gMonShinyPalette_Kirlia[];
extern const u32 gMonStillFrontPic_Kirlia[];
extern const u8 gMonIcon_Kirlia[];
extern const u8 gMonFootprint_Kirlia[];
extern const u32 gMonFrontPic_Gardevoir[];
extern const u32 gMonPalette_Gardevoir[];
extern const u32 gMonBackPic_Gardevoir[];
extern const u32 gMonShinyPalette_Gardevoir[];
extern const u32 gMonStillFrontPic_Gardevoir[];
extern const u8 gMonIcon_Gardevoir[];
extern const u8 gMonFootprint_Gardevoir[];
extern const u32 gMonFrontPic_Bagon[];
extern const u32 gMonPalette_Bagon[];
extern const u32 gMonBackPic_Bagon[];
extern const u32 gMonShinyPalette_Bagon[];
extern const u32 gMonStillFrontPic_Bagon[];
extern const u8 gMonIcon_Bagon[];
extern const u8 gMonFootprint_Bagon[];
extern const u32 gMonFrontPic_Shelgon[];
extern const u32 gMonPalette_Shelgon[];
extern const u32 gMonBackPic_Shelgon[];
extern const u32 gMonShinyPalette_Shelgon[];
extern const u32 gMonStillFrontPic_Shelgon[];
extern const u8 gMonIcon_Shelgon[];
extern const u8 gMonFootprint_Shelgon[];
extern const u32 gMonFrontPic_Salamence[];
extern const u32 gMonPalette_Salamence[];
extern const u32 gMonBackPic_Salamence[];
extern const u32 gMonShinyPalette_Salamence[];
extern const u32 gMonStillFrontPic_Salamence[];
extern const u8 gMonIcon_Salamence[];
extern const u8 gMonFootprint_Salamence[];
extern const u32 gMonFrontPic_Beldum[];
extern const u32 gMonPalette_Beldum[];
extern const u32 gMonBackPic_Beldum[];
extern const u32 gMonShinyPalette_Beldum[];
extern const u32 gMonStillFrontPic_Beldum[];
extern const u8 gMonIcon_Beldum[];
extern const u8 gMonFootprint_Beldum[];
extern const u32 gMonFrontPic_Metang[];
extern const u32 gMonPalette_Metang[];
extern const u32 gMonBackPic_Metang[];
extern const u32 gMonShinyPalette_Metang[];
extern const u32 gMonStillFrontPic_Metang[];
extern const u8 gMonIcon_Metang[];
extern const u8 gMonFootprint_Metang[];
extern const u32 gMonFrontPic_Metagross[];
extern const u32 gMonPalette_Metagross[];
extern const u32 gMonBackPic_Metagross[];
extern const u32 gMonShinyPalette_Metagross[];
extern const u32 gMonStillFrontPic_Metagross[];
extern const u8 gMonIcon_Metagross[];
extern const u8 gMonFootprint_Metagross[];
extern const u32 gMonFrontPic_Regirock[];
extern const u32 gMonPalette_Regirock[];
extern const u32 gMonBackPic_Regirock[];
extern const u32 gMonShinyPalette_Regirock[];
extern const u32 gMonStillFrontPic_Regirock[];
extern const u8 gMonIcon_Regirock[];
extern const u8 gMonFootprint_Regirock[];
extern const u32 gMonFrontPic_Regice[];
extern const u32 gMonPalette_Regice[];
extern const u32 gMonBackPic_Regice[];
extern const u32 gMonShinyPalette_Regice[];
extern const u32 gMonStillFrontPic_Regice[];
extern const u8 gMonIcon_Regice[];
extern const u8 gMonFootprint_Regice[];
extern const u32 gMonFrontPic_Registeel[];
extern const u32 gMonPalette_Registeel[];
extern const u32 gMonBackPic_Registeel[];
extern const u32 gMonShinyPalette_Registeel[];
extern const u32 gMonStillFrontPic_Registeel[];
extern const u8 gMonIcon_Registeel[];
extern const u8 gMonFootprint_Registeel[];
extern const u32 gMonFrontPic_Kyogre[];
extern const u32 gMonPalette_Kyogre[];
extern const u32 gMonBackPic_Kyogre[];
extern const u32 gMonShinyPalette_Kyogre[];
extern const u32 gMonStillFrontPic_Kyogre[];
extern const u8 gMonIcon_Kyogre[];
extern const u8 gMonFootprint_Kyogre[];
extern const u32 gMonFrontPic_Groudon[];
extern const u32 gMonPalette_Groudon[];
extern const u32 gMonBackPic_Groudon[];
extern const u32 gMonShinyPalette_Groudon[];
extern const u32 gMonStillFrontPic_Groudon[];
extern const u8 gMonIcon_Groudon[];
extern const u8 gMonFootprint_Groudon[];
extern const u32 gMonFrontPic_Rayquaza[];
extern const u32 gMonPalette_Rayquaza[];
extern const u32 gMonBackPic_Rayquaza[];
extern const u32 gMonShinyPalette_Rayquaza[];
extern const u32 gMonStillFrontPic_Rayquaza[];
extern const u8 gMonIcon_Rayquaza[];
extern const u8 gMonFootprint_Rayquaza[];
extern const u32 gMonFrontPic_Latias[];
extern const u32 gMonPalette_Latias[];
extern const u32 gMonBackPic_Latias[];
extern const u32 gMonShinyPalette_Latias[];
extern const u32 gMonStillFrontPic_Latias[];
extern const u8 gMonIcon_Latias[];
extern const u8 gMonFootprint_Latias[];
extern const u32 gMonFrontPic_Latios[];
extern const u32 gMonPalette_Latios[];
extern const u32 gMonBackPic_Latios[];
extern const u32 gMonShinyPalette_Latios[];
extern const u32 gMonStillFrontPic_Latios[];
extern const u8 gMonIcon_Latios[];
extern const u8 gMonFootprint_Latios[];
extern const u32 gMonFrontPic_Jirachi[];
extern const u32 gMonPalette_Jirachi[];
extern const u32 gMonBackPic_Jirachi[];
extern const u32 gMonShinyPalette_Jirachi[];
extern const u32 gMonStillFrontPic_Jirachi[];
extern const u8 gMonIcon_Jirachi[];
extern const u8 gMonFootprint_Jirachi[];
extern const u32 gMonFrontPic_Deoxys[];
extern const u32 gMonPalette_Deoxys[];
extern const u32 gMonBackPic_Deoxys[];
extern const u32 gMonShinyPalette_Deoxys[];
extern const u32 gMonStillFrontPic_Deoxys[];
extern const u8 gMonIcon_Deoxys[];
extern const u8 gMonFootprint_Deoxys[];
extern const u32 gMonFrontPic_Chimecho[];
extern const u32 gMonPalette_Chimecho[];
extern const u32 gMonBackPic_Chimecho[];
extern const u32 gMonShinyPalette_Chimecho[];
extern const u32 gMonStillFrontPic_Chimecho[];
extern const u8 gMonIcon_Chimecho[];
extern const u8 gMonFootprint_Chimecho[];
extern const u32 gMonPic_Egg[];
extern const u32 gMonPalette_Egg[];
extern const u32 gMonFrontPic_Egg[];
extern const u32 gMonStillFrontPic_Egg[];
extern const u8 gMonIcon_Egg[];
extern const u32 gMonFrontPic_UnownB[];
extern const u32 gMonBackPic_UnownB[];
extern const u32 gMonStillFrontPic_UnownB[];
extern const u8 gMonIcon_UnownB[];
extern const u32 gMonFrontPic_UnownC[];
extern const u32 gMonBackPic_UnownC[];
extern const u32 gMonStillFrontPic_UnownC[];
extern const u8 gMonIcon_UnownC[];
extern const u32 gMonFrontPic_UnownD[];
extern const u32 gMonBackPic_UnownD[];
extern const u32 gMonStillFrontPic_UnownD[];
extern const u8 gMonIcon_UnownD[];
extern const u32 gMonFrontPic_UnownE[];
extern const u32 gMonBackPic_UnownE[];
extern const u32 gMonStillFrontPic_UnownE[];
extern const u8 gMonIcon_UnownE[];
extern const u32 gMonFrontPic_UnownF[];
extern const u32 gMonBackPic_UnownF[];
extern const u32 gMonStillFrontPic_UnownF[];
extern const u8 gMonIcon_UnownF[];
extern const u32 gMonFrontPic_UnownG[];
extern const u32 gMonBackPic_UnownG[];
extern const u32 gMonStillFrontPic_UnownG[];
extern const u8 gMonIcon_UnownG[];
extern const u32 gMonFrontPic_UnownH[];
extern const u32 gMonBackPic_UnownH[];
extern const u32 gMonStillFrontPic_UnownH[];
extern const u8 gMonIcon_UnownH[];
extern const u32 gMonFrontPic_UnownI[];
extern const u32 gMonBackPic_UnownI[];
extern const u32 gMonStillFrontPic_UnownI[];
extern const u8 gMonIcon_UnownI[];
extern const u32 gMonFrontPic_UnownJ[];
extern const u32 gMonBackPic_UnownJ[];
extern const u32 gMonStillFrontPic_UnownJ[];
extern const u8 gMonIcon_UnownJ[];
extern const u32 gMonFrontPic_UnownK[];
extern const u32 gMonBackPic_UnownK[];
extern const u32 gMonStillFrontPic_UnownK[];
extern const u8 gMonIcon_UnownK[];
extern const u32 gMonFrontPic_UnownL[];
extern const u32 gMonBackPic_UnownL[];
extern const u32 gMonStillFrontPic_UnownL[];
extern const u8 gMonIcon_UnownL[];
extern const u32 gMonFrontPic_UnownM[];
extern const u32 gMonBackPic_UnownM[];
extern const u32 gMonStillFrontPic_UnownM[];
extern const u8 gMonIcon_UnownM[];
extern const u32 gMonFrontPic_UnownN[];
extern const u32 gMonBackPic_UnownN[];
extern const u32 gMonStillFrontPic_UnownN[];
extern const u8 gMonIcon_UnownN[];
extern const u32 gMonFrontPic_UnownO[];
extern const u32 gMonBackPic_UnownO[];
extern const u32 gMonStillFrontPic_UnownO[];
extern const u8 gMonIcon_UnownO[];
extern const u32 gMonFrontPic_UnownP[];
extern const u32 gMonBackPic_UnownP[];
extern const u32 gMonStillFrontPic_UnownP[];
extern const u8 gMonIcon_UnownP[];
extern const u32 gMonFrontPic_UnownQ[];
extern const u32 gMonBackPic_UnownQ[];
extern const u32 gMonStillFrontPic_UnownQ[];
extern const u8 gMonIcon_UnownQ[];
extern const u32 gMonFrontPic_UnownR[];
extern const u32 gMonBackPic_UnownR[];
extern const u32 gMonStillFrontPic_UnownR[];
extern const u8 gMonIcon_UnownR[];
extern const u32 gMonFrontPic_UnownS[];
extern const u32 gMonBackPic_UnownS[];
extern const u32 gMonStillFrontPic_UnownS[];
extern const u8 gMonIcon_UnownS[];
extern const u32 gMonFrontPic_UnownT[];
extern const u32 gMonBackPic_UnownT[];
extern const u32 gMonStillFrontPic_UnownT[];
extern const u8 gMonIcon_UnownT[];
extern const u32 gMonFrontPic_UnownU[];
extern const u32 gMonBackPic_UnownU[];
extern const u32 gMonStillFrontPic_UnownU[];
extern const u8 gMonIcon_UnownU[];
extern const u32 gMonFrontPic_UnownV[];
extern const u32 gMonBackPic_UnownV[];
extern const u32 gMonStillFrontPic_UnownV[];
extern const u8 gMonIcon_UnownV[];
extern const u32 gMonFrontPic_UnownW[];
extern const u32 gMonBackPic_UnownW[];
extern const u32 gMonStillFrontPic_UnownW[];
extern const u8 gMonIcon_UnownW[];
extern const u32 gMonFrontPic_UnownX[];
extern const u32 gMonBackPic_UnownX[];
extern const u32 gMonStillFrontPic_UnownX[];
extern const u8 gMonIcon_UnownX[];
extern const u32 gMonFrontPic_UnownY[];
extern const u32 gMonBackPic_UnownY[];
extern const u32 gMonStillFrontPic_UnownY[];
extern const u8 gMonIcon_UnownY[];
extern const u32 gMonFrontPic_UnownZ[];
extern const u32 gMonBackPic_UnownZ[];
extern const u32 gMonStillFrontPic_UnownZ[];
extern const u8 gMonIcon_UnownZ[];
extern const u32 gMonFrontPic_UnownExclamationMark[];
extern const u32 gMonBackPic_UnownExclamationMark[];
extern const u32 gMonStillFrontPic_UnownExclamationMark[];
extern const u8 gMonIcon_UnownExclamationMark[];
extern const u32 gMonFrontPic_UnownQuestionMark[];
extern const u32 gMonStillFrontPic_UnownQuestionMark[];
extern const u32 gMonBackPic_UnownQuestionMark[];
extern const u8 gMonIcon_UnownQuestionMark[];

extern const u32 gMonFrontPic_CircledQuestionMark[];
extern const u32 gMonBackPic_CircledQuestionMark[];
extern const u32 gMonPalette_CircledQuestionMark[];
extern const u32 gMonShinyPalette_CircledQuestionMark[];
extern const u32 gMonStillFrontPic_CircledQuestionMark[];
extern const u8 gMonIcon_QuestionMark[];
extern const u8 gMonFootprint_QuestionMark[];
extern const u32 gMonFrontPic_DoubleQuestionMark[];
extern const u32 gMonBackPic_DoubleQuestionMark[];
extern const u32 gMonPalette_DoubleQuestionMark[];
extern const u32 gMonShinyPalette_DoubleQuestionMark[];
extern const u32 gMonStillFrontPic_DoubleQuestionMark[];
extern const u16 gMonIconPalettes[][16];


extern const u32 gTrainerFrontPic_Hiker[];
extern const u32 gTrainerFrontPic_AquaGruntM[];
extern const u32 gTrainerFrontPic_PokemonBreederF[];
extern const u32 gTrainerFrontPic_CoolTrainerM[];
extern const u32 gTrainerFrontPic_BirdKeeper[];
extern const u32 gTrainerFrontPic_Collector[];
extern const u32 gTrainerFrontPic_AquaGruntF[];
extern const u32 gTrainerFrontPic_SwimmerM[];
extern const u32 gTrainerFrontPic_MagmaGruntM[];
extern const u32 gTrainerFrontPic_ExpertM[];
extern const u32 gTrainerFrontPic_AquaAdminM[];
extern const u32 gTrainerFrontPic_BlackBelt[];
extern const u32 gTrainerFrontPic_AquaAdminF[];
extern const u32 gTrainerFrontPic_AquaLeaderArchie[];
extern const u32 gTrainerFrontPic_HexManiac[];
extern const u32 gTrainerFrontPic_AromaLady[];
extern const u32 gTrainerFrontPic_RuinManiac[];
extern const u32 gTrainerFrontPic_Interviewer[];
extern const u32 gTrainerFrontPic_TuberF[];
extern const u32 gTrainerFrontPic_TuberM[];
extern const u32 gTrainerFrontPic_CoolTrainerF[];
extern const u32 gTrainerFrontPic_Lady[];
extern const u32 gTrainerFrontPic_Beauty[];
extern const u32 gTrainerFrontPic_RichBoy[];
extern const u32 gTrainerFrontPic_ExpertF[];
extern const u32 gTrainerFrontPic_Pokemaniac[];
extern const u32 gTrainerFrontPic_MagmaGruntF[];
extern const u32 gTrainerFrontPic_Guitarist[];
extern const u32 gTrainerFrontPic_Kindler[];
extern const u32 gTrainerFrontPic_Camper[];
extern const u32 gTrainerFrontPic_Picnicker[];
extern const u32 gTrainerFrontPic_BugManiac[];
extern const u32 gTrainerFrontPic_PokemonBreederM[];
extern const u32 gTrainerFrontPic_PsychicM[];
extern const u32 gTrainerFrontPic_PsychicF[];
extern const u32 gTrainerFrontPic_Gentleman[];
extern const u32 gTrainerFrontPic_EliteFourSidney[];
extern const u32 gTrainerFrontPic_EliteFourPhoebe[];
extern const u32 gTrainerFrontPic_EliteFourGlacia[];
extern const u32 gTrainerFrontPic_EliteFourDrake[];
extern const u32 gTrainerFrontPic_LeaderRoxanne[];
extern const u32 gTrainerFrontPic_LeaderBrawly[];
extern const u32 gTrainerFrontPic_LeaderWattson[];
extern const u32 gTrainerFrontPic_LeaderFlannery[];
extern const u32 gTrainerFrontPic_LeaderNorman[];
extern const u32 gTrainerFrontPic_LeaderWinona[];
extern const u32 gTrainerFrontPic_LeaderTateAndLiza[];
extern const u32 gTrainerFrontPic_LeaderJuan[];
extern const u32 gTrainerFrontPic_SchoolKidM[];
extern const u32 gTrainerFrontPic_SchoolKidF[];
extern const u32 gTrainerFrontPic_SrAndJr[];
extern const u32 gTrainerFrontPic_PokefanM[];
extern const u32 gTrainerFrontPic_PokefanF[];
extern const u32 gTrainerFrontPic_Youngster[];
extern const u32 gTrainerFrontPic_ChampionWallace[];
extern const u32 gTrainerFrontPic_Fisherman[];
extern const u32 gTrainerFrontPic_CyclingTriathleteM[];
extern const u32 gTrainerFrontPic_CyclingTriathleteF[];
extern const u32 gTrainerFrontPic_RunningTriathleteM[];
extern const u32 gTrainerFrontPic_RunningTriathleteF[];
extern const u32 gTrainerFrontPic_SwimmingTriathleteM[];
extern const u32 gTrainerFrontPic_SwimmingTriathleteF[];
extern const u32 gTrainerFrontPic_DragonTamer[];
extern const u32 gTrainerFrontPic_NinjaBoy[];
extern const u32 gTrainerFrontPic_BattleGirl[];
extern const u32 gTrainerFrontPic_ParasolLady[];
extern const u32 gTrainerFrontPic_SwimmerF[];
extern const u32 gTrainerFrontPic_Twins[];
extern const u32 gTrainerFrontPic_Sailor[];
extern const u32 gTrainerFrontPic_MagmaAdmin[];
extern const u32 gTrainerFrontPic_Wally[];
extern const u32 gTrainerFrontPic_Brendan[];
extern const u32 gTrainerFrontPic_May[];
extern const u32 gTrainerFrontPic_BugCatcher[];
extern const u32 gTrainerFrontPic_PokemonRangerM[];
extern const u32 gTrainerFrontPic_PokemonRangerF[];
extern const u32 gTrainerFrontPic_MagmaLeaderMaxie[];
extern const u32 gTrainerFrontPic_Lass[];
extern const u32 gTrainerFrontPic_YoungCouple[];
extern const u32 gTrainerFrontPic_OldCouple[];
extern const u32 gTrainerFrontPic_SisAndBro[];
extern const u32 gTrainerFrontPic_Steven[];
extern const u32 gTrainerFrontPic_SalonMaidenAnabel[];
extern const u32 gTrainerFrontPic_DomeAceTucker[];
extern const u32 gTrainerFrontPic_PalaceMavenSpenser[];
extern const u32 gTrainerFrontPic_ArenaTycoonGreta[];
extern const u32 gTrainerFrontPic_FactoryHeadNoland[];
extern const u32 gTrainerFrontPic_PikeQueenLucy[];
extern const u32 gTrainerFrontPic_PyramidKingBrandon[];
extern const u32 gTrainerFrontPic_Red[];
extern const u32 gTrainerFrontPic_Leaf[];
extern const u32 gTrainerFrontPic_RubySapphireBrendan[];
extern const u32 gTrainerFrontPic_RubySapphireMay[];

extern const u32 gTrainerPalette_Hiker[];
extern const u32 gTrainerPalette_AquaGruntM[];
extern const u32 gTrainerPalette_PokemonBreederF[];
extern const u32 gTrainerPalette_CoolTrainerM[];
extern const u32 gTrainerPalette_BirdKeeper[];
extern const u32 gTrainerPalette_Collector[];
extern const u32 gTrainerPalette_AquaGruntF[];
extern const u32 gTrainerPalette_SwimmerM[];
extern const u32 gTrainerPalette_MagmaGruntM[];
extern const u32 gTrainerPalette_ExpertM[];
extern const u32 gTrainerPalette_AquaAdminM[];
extern const u32 gTrainerPalette_BlackBelt[];
extern const u32 gTrainerPalette_AquaAdminF[];
extern const u32 gTrainerPalette_AquaLeaderArchie[];
extern const u32 gTrainerPalette_HexManiac[];
extern const u32 gTrainerPalette_AromaLady[];
extern const u32 gTrainerPalette_RuinManiac[];
extern const u32 gTrainerPalette_Interviewer[];
extern const u32 gTrainerPalette_TuberF[];
extern const u32 gTrainerPalette_TuberM[];
extern const u32 gTrainerPalette_CoolTrainerF[];
extern const u32 gTrainerPalette_Lady[];
extern const u32 gTrainerPalette_Beauty[];
extern const u32 gTrainerPalette_RichBoy[];
extern const u32 gTrainerPalette_ExpertF[];
extern const u32 gTrainerPalette_Pokemaniac[];
extern const u32 gTrainerPalette_MagmaGruntF[];
extern const u32 gTrainerPalette_Guitarist[];
extern const u32 gTrainerPalette_Kindler[];
extern const u32 gTrainerPalette_Camper[];
extern const u32 gTrainerPalette_Picnicker[];
extern const u32 gTrainerPalette_BugManiac[];
extern const u32 gTrainerPalette_PokemonBreederM[];
extern const u32 gTrainerPalette_PsychicM[];
extern const u32 gTrainerPalette_PsychicF[];
extern const u32 gTrainerPalette_Gentleman[];
extern const u32 gTrainerPalette_EliteFourSidney[];
extern const u32 gTrainerPalette_EliteFourPhoebe[];
extern const u32 gTrainerPalette_EliteFourGlacia[];
extern const u32 gTrainerPalette_EliteFourDrake[];
extern const u32 gTrainerPalette_LeaderRoxanne[];
extern const u32 gTrainerPalette_LeaderBrawly[];
extern const u32 gTrainerPalette_LeaderWattson[];
extern const u32 gTrainerPalette_LeaderFlannery[];
extern const u32 gTrainerPalette_LeaderNorman[];
extern const u32 gTrainerPalette_LeaderWinona[];
extern const u32 gTrainerPalette_LeaderTateAndLiza[];
extern const u32 gTrainerPalette_LeaderJuan[];
extern const u32 gTrainerPalette_SchoolKidM[];
extern const u32 gTrainerPalette_SchoolKidF[];
extern const u32 gTrainerPalette_SrAndJr[];
extern const u32 gTrainerPalette_PokefanM[];
extern const u32 gTrainerPalette_PokefanF[];
extern const u32 gTrainerPalette_Youngster[];
extern const u32 gTrainerPalette_ChampionWallace[];
extern const u32 gTrainerPalette_Fisherman[];
extern const u32 gTrainerPalette_CyclingTriathleteM[];
extern const u32 gTrainerPalette_CyclingTriathleteF[];
extern const u32 gTrainerPalette_RunningTriathleteM[];
extern const u32 gTrainerPalette_RunningTriathleteF[];
extern const u32 gTrainerPalette_SwimmingTriathleteM[];
extern const u32 gTrainerPalette_SwimmingTriathleteF[];
extern const u32 gTrainerPalette_DragonTamer[];
extern const u32 gTrainerPalette_NinjaBoy[];
extern const u32 gTrainerPalette_BattleGirl[];
extern const u32 gTrainerPalette_ParasolLady[];
extern const u32 gTrainerPalette_SwimmerF[];
extern const u32 gTrainerPalette_Twins[];
extern const u32 gTrainerPalette_Sailor[];
extern const u32 gTrainerPalette_MagmaAdmin[];
extern const u32 gTrainerPalette_Wally[];
extern const u32 gTrainerPalette_Brendan[];
extern const u32 gTrainerPalette_May[];
extern const u32 gTrainerPalette_BugCatcher[];
extern const u32 gTrainerPalette_PokemonRangerM[];
extern const u32 gTrainerPalette_PokemonRangerF[];
extern const u32 gTrainerPalette_MagmaLeaderMaxie[];
extern const u32 gTrainerPalette_Lass[];
extern const u32 gTrainerPalette_YoungCouple[];
extern const u32 gTrainerPalette_OldCouple[];
extern const u32 gTrainerPalette_SisAndBro[];
extern const u32 gTrainerPalette_Steven[];
extern const u32 gTrainerPalette_SalonMaidenAnabel[];
extern const u32 gTrainerPalette_DomeAceTucker[];
extern const u32 gTrainerPalette_PalaceMavenSpenser[];
extern const u32 gTrainerPalette_ArenaTycoonGreta[];
extern const u32 gTrainerPalette_FactoryHeadNoland[];
extern const u32 gTrainerPalette_PikeQueenLucy[];
extern const u32 gTrainerPalette_PyramidKingBrandon[];
extern const u32 gTrainerPalette_Red[];
extern const u32 gTrainerPalette_Leaf[];
extern const u32 gTrainerPalette_RubySapphireBrendan[];
extern const u32 gTrainerPalette_RubySapphireMay[];

extern const u8 gTrainerBackPic_Brendan[];
extern const u8 gTrainerBackPic_May[];
extern const u8 gTrainerBackPic_Red[];
extern const u8 gTrainerBackPic_Leaf[];
extern const u8 gTrainerBackPic_RubySapphireBrendan[];
extern const u8 gTrainerBackPic_RubySapphireMay[];
extern const u8 gTrainerBackPic_Wally[];
extern const u8 gTrainerBackPic_Steven[];

extern const u32 gTrainerBackPicPalette_Red[];
extern const u32 gTrainerBackPicPalette_Leaf[];


extern const u32 gMenuPokeblock_Gfx[];
extern const u32 gMenuPokeblock_Pal[];
extern const u32 gMenuPokeblock_Tilemap[];
extern const u32 gMenuPokeblockDevice_Gfx[];
extern const u32 gMenuPokeblockDevice_Pal[];
extern const u32 gPokeblockRed_Pal[];
extern const u32 gPokeblockBlue_Pal[];
extern const u32 gPokeblockPink_Pal[];
extern const u32 gPokeblockGreen_Pal[];
extern const u32 gPokeblockYellow_Pal[];
extern const u32 gPokeblockPurple_Pal[];
extern const u32 gPokeblockIndigo_Pal[];
extern const u32 gPokeblockBrown_Pal[];
extern const u32 gPokeblockLiteBlue_Pal[];
extern const u32 gPokeblockOlive_Pal[];
extern const u32 gPokeblockGray_Pal[];
extern const u32 gPokeblockBlack_Pal[];
extern const u32 gPokeblockWhite_Pal[];
extern const u32 gPokeblockGold_Pal[];
extern const u32 gPokeblock_Gfx[];

extern const u32 gItemIcon_QuestionMark[];
extern const u32 gItemIconPalette_QuestionMark[];


extern const u32 gDecorIcon_HeavyDesk[];
extern const u32 gDecorIconPalette_HeavyDesk[];
extern const u32 gDecorIcon_RaggedDesk[];
extern const u32 gDecorIconPalette_RaggedDesk[];
extern const u32 gDecorIcon_ComfortDesk[];
extern const u32 gDecorIconPalette_ComfortDesk[];
extern const u32 gDecorIcon_PrettyDesk[];
extern const u32 gDecorIconPalette_PrettyDesk[];
extern const u32 gDecorIcon_BrickDesk[];
extern const u32 gDecorIconPalette_BrickDesk[];
extern const u32 gDecorIcon_CampDesk[];
extern const u32 gDecorIconPalette_CampDesk[];
extern const u32 gDecorIcon_HardDesk[];
extern const u32 gDecorIconPalette_HardDesk[];
extern const u32 gDecorIcon_RedPlant[];
extern const u32 gDecorIconPalette_RedPlant[];
extern const u32 gDecorIcon_TropicalPlant[];
extern const u32 gDecorIconPalette_TropicalPlant[];
extern const u32 gDecorIcon_PrettyFlowers[];
extern const u32 gDecorIconPalette_PrettyFlowers[];
extern const u32 gDecorIcon_ColorfulPlant[];
extern const u32 gDecorIconPalette_ColorfulPlant[];
extern const u32 gDecorIcon_BigPlant[];
extern const u32 gDecorIconPalette_BigPlant[];
extern const u32 gDecorIcon_GorgeousPlant[];
extern const u32 gDecorIconPalette_GorgeousPlant[];
extern const u32 gDecorIcon_RedBrick[];
extern const u32 gDecorIconPalette_RedBrick[];
extern const u32 gDecorIcon_YellowBrick[];
extern const u32 gDecorIconPalette_YellowBrick[];
extern const u32 gDecorIcon_BlueBrick[];
extern const u32 gDecorIconPalette_BlueBrick[];
extern const u32 gDecorIcon_RedTent[];
extern const u32 gDecorIconPalette_RedTent[];
extern const u32 gDecorIcon_BlueTent[];
extern const u32 gDecorIconPalette_BlueTent[];
extern const u32 gDecorIcon_SolidBoard[];
extern const u32 gDecorIconPalette_SolidBoard[];
extern const u32 gDecorIcon_Slide[];
extern const u32 gDecorIconPalette_Slide[];
extern const u32 gDecorIcon_Tire[];
extern const u32 gDecorIconPalette_Tire[];
extern const u32 gDecorIcon_Stand[];
extern const u32 gDecorIconPalette_Stand[];
extern const u32 gDecorIcon_BreakableDoor[];
extern const u32 gDecorIconPalette_BreakableDoor[];
extern const u32 gDecorIcon_SandOrnament[];
extern const u32 gDecorIconPalette_SandOrnament[];
extern const u32 gDecorIcon_GlassOrnament[];
extern const u32 gDecorIconPalette_GlassOrnament[];
extern const u32 gDecorIcon_SurfMat[];
extern const u32 gDecorIconPalette_SurfMat[];
extern const u32 gDecorIcon_ThunderMat[];
extern const u32 gDecorIconPalette_ThunderMat[];
extern const u32 gDecorIcon_FireBlastMat[];
extern const u32 gDecorIconPalette_FireBlastMat[];
extern const u32 gDecorIcon_PowderSnowMat[];
extern const u32 gDecorIconPalette_PowderSnowMat[];
extern const u32 gDecorIcon_AttractMat[];
extern const u32 gDecorIconPalette_AttractMat[];
extern const u32 gDecorIcon_FissureMat[];
extern const u32 gDecorIconPalette_FissureMat[];
extern const u32 gDecorIcon_SpikesMat[];
extern const u32 gDecorIconPalette_SpikesMat[];
extern const u32 gDecorIcon_SnorlaxDoll[];
extern const u32 gDecorIconPalette_SnorlaxDoll[];
extern const u32 gDecorIcon_RhydonDoll[];
extern const u32 gDecorIconPalette_RhydonDoll[];
extern const u32 gDecorIcon_LaprasDoll[];
extern const u32 gDecorIconPalette_LaprasDoll[];
extern const u32 gDecorIcon_VenusaurDoll[];
extern const u32 gDecorIconPalette_VenusaurDoll[];
extern const u32 gDecorIcon_CharizardDoll[];
extern const u32 gDecorIconPalette_CharizardDoll[];
extern const u32 gDecorIcon_BlastoiseDoll[];
extern const u32 gDecorIconPalette_BlastoiseDoll[];
extern const u32 gDecorIcon_WailmerDoll[];
extern const u32 gDecorIconPalette_WailmerDoll[];
extern const u32 gDecorIcon_RegirockDoll[];
extern const u32 gDecorIconPalette_RegirockDoll[];
extern const u32 gDecorIcon_RegiceDoll[];
extern const u32 gDecorIconPalette_RegiceDoll[];
extern const u32 gDecorIcon_RegisteelDoll[];
extern const u32 gDecorIconPalette_RegisteelDoll[];

extern const u32 gWallclock_Gfx[];
extern const u16 gWallclockMale_Pal[];
extern const u16 gWallclockFemale_Pal[];
extern const u32 gUnknown_08DCC648[];
extern const u32 gUnknown_08DCC908[];
extern const u32 gBerryFixGameboy_Gfx[];
extern const u32 gBerryFixGameboy_Tilemap[];
extern const u16 gBerryFixGameboy_Pal[];
extern const u32 gBerryFixGameboyLogo_Gfx[];
extern const u32 gBerryFixGameboyLogo_Tilemap[];
extern const u16 gBerryFixGameboyLogo_Pal[];
extern const u32 gBerryFixGbaTransfer_Gfx[];
extern const u32 gBerryFixGbaTransfer_Tilemap[];
extern const u16 gBerryFixGbaTransfer_Pal[];
extern const u32 gBerryFixGbaTransferHighlight_Gfx[];
extern const u32 gBerryFixGbaTransferHighlight_Tilemap[];
extern const u16 gBerryFixGbaTransferHighlight_Pal[];
extern const u32 gBerryFixGbaTransferError_Gfx[];
extern const u32 gBerryFixGbaTransferError_Tilemap[];
extern const u16 gBerryFixGbaTransferError_Pal[];
extern const u32 gBerryFixWindow_Gfx[];
extern const u32 gBerryFixWindow_Tilemap[];
extern const u16 gBerryFixWindow_Pal[];

extern const u32 gBattleTextboxTiles[];
extern const u32 gBattleTextboxTilemap[];
extern const u32 gBattleTextboxPalette[];
extern const u32 gUnknown_08D778F0[];
extern const u32 gVsLettersGfx[];
extern const u32 gUnknown_08D77AE4[];
extern const u32 gUnknown_08D779D8[];
extern const u32 gUnknown_08D857A8[];
extern const u32 gUnknown_08D85A1C[];


extern const u32 gBattleTerrainTiles_TallGrass[];
extern const u32 gBattleTerrainTilemap_TallGrass[];
extern const u32 gBattleTerrainAnimTiles_TallGrass[];
extern const u32 gBattleTerrainAnimTilemap_TallGrass[];
extern const u32 gBattleTerrainPalette_TallGrass[];
extern const u32 gBattleTerrainTiles_LongGrass[];
extern const u32 gBattleTerrainTilemap_LongGrass[];
extern const u32 gBattleTerrainAnimTiles_LongGrass[];
extern const u32 gBattleTerrainAnimTilemap_LongGrass[];
extern const u32 gBattleTerrainPalette_LongGrass[];
extern const u32 gBattleTerrainTiles_Sand[];
extern const u32 gBattleTerrainTilemap_Sand[];
extern const u32 gBattleTerrainAnimTiles_Sand[];
extern const u32 gBattleTerrainAnimTilemap_Sand[];
extern const u32 gBattleTerrainPalette_Sand[];
extern const u32 gBattleTerrainTiles_Underwater[];
extern const u32 gBattleTerrainTilemap_Underwater[];
extern const u32 gBattleTerrainAnimTiles_Underwater[];
extern const u32 gBattleTerrainAnimTilemap_Underwater[];
extern const u32 gBattleTerrainPalette_Underwater[];
extern const u32 gBattleTerrainTiles_Water[];
extern const u32 gBattleTerrainTilemap_Water[];
extern const u32 gBattleTerrainAnimTiles_Water[];
extern const u32 gBattleTerrainAnimTilemap_Water[];
extern const u32 gBattleTerrainPalette_Water[];
extern const u32 gBattleTerrainTiles_PondWater[];
extern const u32 gBattleTerrainTilemap_PondWater[];
extern const u32 gBattleTerrainAnimTiles_PondWater[];
extern const u32 gBattleTerrainAnimTilemap_PondWater[];
extern const u32 gBattleTerrainPalette_PondWater[];
extern const u32 gBattleTerrainTiles_Rock[];
extern const u32 gBattleTerrainTilemap_Rock[];
extern const u32 gBattleTerrainAnimTiles_Rock[];
extern const u32 gBattleTerrainAnimTilemap_Rock[];
extern const u32 gBattleTerrainPalette_Rock[];
extern const u32 gBattleTerrainTiles_Cave[];
extern const u32 gBattleTerrainTilemap_Cave[];
extern const u32 gBattleTerrainAnimTiles_Cave[];
extern const u32 gBattleTerrainAnimTilemap_Cave[];
extern const u32 gBattleTerrainPalette_Cave[];
extern const u32 gBattleTerrainTiles_Building[];
extern const u32 gBattleTerrainTilemap_Building[];
extern const u32 gBattleTerrainAnimTiles_Building[];
extern const u32 gBattleTerrainAnimTilemap_Building[];
extern const u32 gBattleTerrainPalette_Building[];
extern const u32 gBattleTerrainPalette_Plain[];
extern const u32 gBattleTerrainPalette_Frontier[];
extern const u32 gBattleTerrainTiles_Stadium[];
extern const u32 gBattleTerrainTilemap_Stadium[];
extern const u32 gBattleTerrainTiles_Rayquaza[];
extern const u32 gBattleTerrainTilemap_Rayquaza[];
extern const u32 gBattleTerrainAnimTiles_Rayquaza[];
extern const u32 gBattleTerrainAnimTilemap_Rayquaza[];
extern const u32 gBattleTerrainPalette_Rayquaza[];
extern const u32 gBattleTerrainPalette_Kyogre[];
extern const u32 gBattleTerrainPalette_Groudon[];
extern const u32 gBattleTerrainPalette_BuildingGym[];
extern const u32 gBattleTerrainPalette_BuildingLeader[];
extern const u32 gBattleTerrainPalette_StadiumAqua[];
extern const u32 gBattleTerrainPalette_StadiumMagma[];
extern const u32 gBattleTerrainPalette_StadiumSidney[];
extern const u32 gBattleTerrainPalette_StadiumPhoebe[];
extern const u32 gBattleTerrainPalette_StadiumGlacia[];
extern const u32 gBattleTerrainPalette_StadiumDrake[];
extern const u32 gBattleTerrainPalette_StadiumWallace[];


extern const u32 gPokedexInterface_Gfx[];
extern const u16 gPokedexBgHoenn_Pal[];
extern const u32 gPokedexMenu_Gfx[];
extern const u8 gPokedexList_Tilemap[];
extern const u8 gPokedexListUnderlay_Tilemap[];
extern const u8 gPokedexStartMenuMain_Tilemap[];
extern const u8 gPokedexStartMenuSearchResults_Tilemap[];
extern const u16 gPokedexSearchResults_Pal[];
extern const u16 gPokedexBgNational_Pal[];
extern const u8 gPokedexInfoScreen_Tilemap[];
extern const u8 gPokedexCryScreen_Tilemap[];
extern const u8 gPokedexSizeScreen_Tilemap[];
extern const u8 gPokedexScreenSelectBarMain_Tilemap[];
extern const u8 gPokedexScreenSelectBarSubmenu_Tilemap[];
extern const u16 gPokedexCaughtScreen_Pal[];
extern const u32 gPokedexSearchMenu_Gfx[];
extern const u32 gPokedexSearchMenuHoenn_Tilemap[];
extern const u32 gPokedexSearchMenuNational_Tilemap[];
extern const u16 gPokedexSearchMenu_Pal[];


extern const u32 gBerryCheck_Gfx[];
extern const u32 gBerryCheck_Pal[];
extern const u32 gBerryTag_Gfx[];
extern const u32 gBerryTag_Pal[];


extern const u32 gRaySceneGroudon_Gfx[];
extern const u32 gRaySceneGroudon2_Gfx[];
extern const u32 gRaySceneGroudon3_Gfx[];
extern const u32 gRaySceneKyogre_Gfx[];
extern const u32 gRaySceneKyogre2_Gfx[];
extern const u32 gRaySceneKyogre3_Gfx[];
extern const u32 gRaySceneGroudon_Pal[];
extern const u32 gRaySceneKyogre_Pal[];
extern const u32 gRaySceneSmoke_Gfx[];
extern const u32 gRaySceneSmoke_Pal[];
extern const u32 gRaySceneRayquaza_Pal[];
extern const u32 gRaySceneRayquazaFly1_Gfx[];
extern const u32 gRaySceneRayquazaTail_Gfx[];
extern const u32 gRaySceneGroudonLeft_Gfx[];
extern const u32 gRaySceneGroudonTail_Gfx[];
extern const u32 gRaySceneKyogreRight_Gfx[];
extern const u32 gRaySceneRayquazaHover_Gfx[];
extern const u32 gRaySceneRayquazaFlyIn_Gfx[];
extern const u32 gRaySceneOvercast_Gfx[];
extern const u32 gRaySceneOvercast_Tilemap[];
extern const u32 gRaySceneRayquaza_Gfx[];
extern const u32 gRaySceneRayquaza_Tilemap[];
extern const u32 gRaySceneSplash_Gfx[];
extern const u32 gRaySceneGroudonLeft_Pal[];
extern const u32 gRaySceneKyogreRight_Pal[];
extern const u32 gRaySceneRayquazaHover_Pal[];
extern const u32 gRaySceneSplash_Pal[];
extern const u32 gRaySceneClouds_Gfx[];
extern const u32 gRaySceneClouds_Pal[];
extern const u32 gRaySceneClouds2_Tilemap[];
extern const u32 gRaySceneClouds1_Tilemap[];
extern const u32 gRaySceneClouds3_Tilemap[];
extern const u32 gRaySceneRayquazaLight_Gfx[];
extern const u32 gRaySceneRayquazaLight_Tilemap[];
extern const u32 gRaySceneOvercast2_Gfx[];
extern const u32 gRaySceneOvercast2_Tilemap[];
extern const u32 gRaySceneOvercast2_Pal[];
extern const u32 gRaySceneRayquazaChase_Gfx[];
extern const u32 gRaySceneChaseStreaks_Gfx[];
extern const u32 gRaySceneChaseBg_Gfx[];
extern const u32 gRayChaseRayquazaChase2_Tilemap[];
extern const u32 gRayChaseRayquazaChase_Tilemap[];
extern const u32 gRaySceneChaseStreaks_Tilemap[];
extern const u32 gRaySceneChaseBg_Tilemap[];
extern const u32 gRaySceneChase_Pal[];
extern const u32 gRaySceneHushRing_Tilemap[];
extern const u32 gRaySceneHushBg_Tilemap[];
extern const u32 gRaySceneHushRing_Map[];
extern const u32 gRaySceneHushBg_Pal[];
extern const u32 gRaySceneHushBg_Gfx[];
extern const u32 gRaySceneHushRing_Gfx[];


extern const u32 gItemIcon_MasterBall[];
extern const u32 gItemIconPalette_MasterBall[];
extern const u32 gItemIcon_UltraBall[];
extern const u32 gItemIconPalette_UltraBall[];
extern const u32 gItemIcon_GreatBall[];
extern const u32 gItemIconPalette_GreatBall[];
extern const u32 gItemIcon_PokeBall[];
extern const u32 gItemIconPalette_PokeBall[];
extern const u32 gItemIcon_SafariBall[];
extern const u32 gItemIconPalette_SafariBall[];
extern const u32 gItemIcon_NetBall[];
extern const u32 gItemIconPalette_NetBall[];
extern const u32 gItemIcon_DiveBall[];
extern const u32 gItemIconPalette_DiveBall[];
extern const u32 gItemIcon_NestBall[];
extern const u32 gItemIconPalette_NestBall[];
extern const u32 gItemIcon_RepeatBall[];
extern const u32 gItemIconPalette_RepeatBall[];
extern const u32 gItemIcon_TimerBall[];
extern const u32 gItemIcon_LuxuryBall[];
extern const u32 gItemIconPalette_LuxuryBall[];
extern const u32 gItemIcon_PremierBall[];

extern const u32 gItemIcon_Potion[];
extern const u32 gItemIconPalette_Potion[];
extern const u32 gItemIcon_Antidote[];
extern const u32 gItemIconPalette_Antidote[];
extern const u32 gItemIcon_StatusHeal[];
extern const u32 gItemIconPalette_BurnHeal[];
extern const u32 gItemIconPalette_IceHeal[];
extern const u32 gItemIconPalette_Awakening[];
extern const u32 gItemIconPalette_ParalyzeHeal[];
extern const u32 gItemIcon_LargePotion[];
extern const u32 gItemIconPalette_FullRestore[];
extern const u32 gItemIconPalette_MaxPotion[];
extern const u32 gItemIconPalette_HyperPotion[];
extern const u32 gItemIconPalette_SuperPotion[];
extern const u32 gItemIcon_FullHeal[];
extern const u32 gItemIconPalette_FullHeal[];
extern const u32 gItemIcon_Revive[];
extern const u32 gItemIconPalette_Revive[];
extern const u32 gItemIcon_MaxRevive[];
extern const u32 gItemIcon_FreshWater[];
extern const u32 gItemIconPalette_FreshWater[];
extern const u32 gItemIcon_SodaPop[];
extern const u32 gItemIconPalette_SodaPop[];
extern const u32 gItemIcon_Lemonade[];
extern const u32 gItemIconPalette_Lemonade[];
extern const u32 gItemIcon_MoomooMilk[];
extern const u32 gItemIconPalette_MoomooMilk[];
extern const u32 gItemIcon_Powder[];
extern const u32 gItemIconPalette_EnergyPowder[];
extern const u32 gItemIcon_EnergyRoot[];
extern const u32 gItemIconPalette_EnergyRoot[];
extern const u32 gItemIconPalette_HealPowder[];
extern const u32 gItemIcon_RevivalHerb[];
extern const u32 gItemIconPalette_RevivalHerb[];
extern const u32 gItemIcon_Ether[];
extern const u32 gItemIconPalette_Ether[];
extern const u32 gItemIconPalette_MaxEther[];
extern const u32 gItemIconPalette_Elixir[];
extern const u32 gItemIconPalette_MaxElixir[];
extern const u32 gItemIcon_LavaCookie[];
extern const u32 gItemIconPalette_LavaCookieAndLetter[];
extern const u32 gItemIcon_Flute[];
extern const u32 gItemIconPalette_BlueFlute[];
extern const u32 gItemIconPalette_YellowFlute[];
extern const u32 gItemIconPalette_RedFlute[];
extern const u32 gItemIconPalette_BlackFlute[];
extern const u32 gItemIconPalette_WhiteFlute[];
extern const u32 gItemIcon_BerryJuice[];
extern const u32 gItemIconPalette_BerryJuice[];
extern const u32 gItemIcon_SacredAsh[];
extern const u32 gItemIconPalette_SacredAsh[];

extern const u32 gItemIconPalette_ShoalSalt[];
extern const u32 gItemIcon_ShoalShell[];
extern const u32 gItemIconPalette_Shell[];
extern const u32 gItemIcon_Shard[];
extern const u32 gItemIconPalette_RedShard[];
extern const u32 gItemIconPalette_BlueShard[];
extern const u32 gItemIconPalette_YellowShard[];
extern const u32 gItemIconPalette_GreenShard[];

extern const u32 gItemIcon_HPUp[];
extern const u32 gItemIconPalette_HPUp[];
extern const u32 gItemIcon_Vitamin[];
extern const u32 gItemIconPalette_Protein[];
extern const u32 gItemIconPalette_Iron[];
extern const u32 gItemIconPalette_Carbos[];
extern const u32 gItemIconPalette_Calcium[];
extern const u32 gItemIcon_RareCandy[];
extern const u32 gItemIconPalette_RareCandy[];
extern const u32 gItemIcon_PPUp[];
extern const u32 gItemIconPalette_PPUp[];
extern const u32 gItemIconPalette_Zinc[];
extern const u32 gItemIcon_PPMax[];
extern const u32 gItemIconPalette_PPMax[];

extern const u32 gItemIcon_BattleStatItem[];
extern const u32 gItemIconPalette_GuardSpec[];
extern const u32 gItemIconPalette_DireHit[];
extern const u32 gItemIconPalette_XAttack[];
extern const u32 gItemIconPalette_XDefend[];
extern const u32 gItemIconPalette_XSpeed[];
extern const u32 gItemIconPalette_XAccuracy[];
extern const u32 gItemIconPalette_XSpecial[];
extern const u32 gItemIcon_PokeDoll[];
extern const u32 gItemIconPalette_PokeDoll[];
extern const u32 gItemIcon_FluffyTail[];
extern const u32 gItemIconPalette_FluffyTail[];

extern const u32 gItemIcon_Repel[];
extern const u32 gItemIconPalette_SuperRepel[];
extern const u32 gItemIconPalette_MaxRepel[];
extern const u32 gItemIcon_EscapeRope[];
extern const u32 gItemIconPalette_EscapeRope[];
extern const u32 gItemIcon_Repel[];
extern const u32 gItemIconPalette_Repel[];

extern const u32 gItemIcon_SunStone[];
extern const u32 gItemIconPalette_SunStone[];
extern const u32 gItemIcon_MoonStone[];
extern const u32 gItemIconPalette_MoonStone[];
extern const u32 gItemIcon_FireStone[];
extern const u32 gItemIconPalette_FireStone[];
extern const u32 gItemIcon_ThunderStone[];
extern const u32 gItemIconPalette_ThunderStone[];
extern const u32 gItemIcon_WaterStone[];
extern const u32 gItemIconPalette_WaterStone[];
extern const u32 gItemIcon_LeafStone[];
extern const u32 gItemIconPalette_LeafStone[];

extern const u32 gItemIcon_TinyMushroom[];
extern const u32 gItemIconPalette_Mushroom[];
extern const u32 gItemIcon_BigMushroom[];
extern const u32 gItemIcon_Pearl[];
extern const u32 gItemIconPalette_Pearl[];
extern const u32 gItemIcon_BigPearl[];
extern const u32 gItemIcon_Stardust[];
extern const u32 gItemIconPalette_Star[];
extern const u32 gItemIcon_StarPiece[];
extern const u32 gItemIcon_Nugget[];
extern const u32 gItemIconPalette_Nugget[];
extern const u32 gItemIcon_HeartScale[];
extern const u32 gItemIconPalette_HeartScale[];

extern const u32 gItemIcon_OrangeMail[];
extern const u32 gItemIconPalette_OrangeMail[];
extern const u32 gItemIcon_HarborMail[];
extern const u32 gItemIconPalette_HarborMail[];
extern const u32 gItemIcon_GlitterMail[];
extern const u32 gItemIconPalette_GlitterMail[];
extern const u32 gItemIcon_MechMail[];
extern const u32 gItemIconPalette_MechMail[];
extern const u32 gItemIcon_WoodMail[];
extern const u32 gItemIconPalette_WoodMail[];
extern const u32 gItemIcon_WaveMail[];
extern const u32 gItemIconPalette_WaveMail[];
extern const u32 gItemIcon_BeadMail[];
extern const u32 gItemIconPalette_BeadMail[];
extern const u32 gItemIcon_ShadowMail[];
extern const u32 gItemIconPalette_ShadowMail[];
extern const u32 gItemIcon_TropicMail[];
extern const u32 gItemIconPalette_TropicMail[];
extern const u32 gItemIcon_DreamMail[];
extern const u32 gItemIconPalette_DreamMail[];
extern const u32 gItemIcon_FabMail[];
extern const u32 gItemIconPalette_FabMail[];
extern const u32 gItemIcon_RetroMail[];
extern const u32 gItemIconPalette_RetroMail[];

extern const u32 gItemIcon_CheriBerry[];
extern const u32 gItemIconPalette_CheriBerry[];
extern const u32 gItemIcon_ChestoBerry[];
extern const u32 gItemIconPalette_ChestoBerry[];
extern const u32 gItemIcon_PechaBerry[];
extern const u32 gItemIconPalette_PechaBerry[];
extern const u32 gItemIcon_RawstBerry[];
extern const u32 gItemIconPalette_RawstBerry[];
extern const u32 gItemIcon_AspearBerry[];
extern const u32 gItemIconPalette_AspearBerry[];
extern const u32 gItemIcon_LeppaBerry[];
extern const u32 gItemIconPalette_LeppaBerry[];
extern const u32 gItemIcon_OranBerry[];
extern const u32 gItemIconPalette_OranBerry[];
extern const u32 gItemIcon_PersimBerry[];
extern const u32 gItemIconPalette_PersimBerry[];
extern const u32 gItemIcon_LumBerry[];
extern const u32 gItemIconPalette_LumBerry[];
extern const u32 gItemIcon_SitrusBerry[];
extern const u32 gItemIconPalette_SitrusBerry[];
extern const u32 gItemIcon_FigyBerry[];
extern const u32 gItemIconPalette_FigyBerry[];
extern const u32 gItemIcon_WikiBerry[];
extern const u32 gItemIconPalette_WikiBerry[];
extern const u32 gItemIcon_MagoBerry[];
extern const u32 gItemIconPalette_MagoBerry[];
extern const u32 gItemIcon_AguavBerry[];
extern const u32 gItemIconPalette_AguavBerry[];
extern const u32 gItemIcon_IapapaBerry[];
extern const u32 gItemIconPalette_IapapaBerry[];
extern const u32 gItemIcon_RazzBerry[];
extern const u32 gItemIconPalette_RazzBerry[];
extern const u32 gItemIcon_BlukBerry[];
extern const u32 gItemIconPalette_BlukBerry[];
extern const u32 gItemIcon_NanabBerry[];
extern const u32 gItemIconPalette_NanabBerry[];
extern const u32 gItemIcon_WepearBerry[];
extern const u32 gItemIconPalette_WepearBerry[];
extern const u32 gItemIcon_PinapBerry[];
extern const u32 gItemIconPalette_PinapBerry[];
extern const u32 gItemIcon_PomegBerry[];
extern const u32 gItemIconPalette_PomegBerry[];
extern const u32 gItemIcon_KelpsyBerry[];
extern const u32 gItemIconPalette_KelpsyBerry[];
extern const u32 gItemIcon_QualotBerry[];
extern const u32 gItemIconPalette_QualotBerry[];
extern const u32 gItemIcon_HondewBerry[];
extern const u32 gItemIconPalette_HondewBerry[];
extern const u32 gItemIcon_GrepaBerry[];
extern const u32 gItemIconPalette_GrepaBerry[];
extern const u32 gItemIcon_TamatoBerry[];
extern const u32 gItemIconPalette_TamatoBerry[];
extern const u32 gItemIcon_CornnBerry[];
extern const u32 gItemIconPalette_CornnBerry[];
extern const u32 gItemIcon_MagostBerry[];
extern const u32 gItemIconPalette_MagostBerry[];
extern const u32 gItemIcon_RabutaBerry[];
extern const u32 gItemIconPalette_RabutaBerry[];
extern const u32 gItemIcon_NomelBerry[];
extern const u32 gItemIconPalette_NomelBerry[];
extern const u32 gItemIcon_SpelonBerry[];
extern const u32 gItemIconPalette_SpelonBerry[];
extern const u32 gItemIcon_PamtreBerry[];
extern const u32 gItemIconPalette_PamtreBerry[];
extern const u32 gItemIcon_WatmelBerry[];
extern const u32 gItemIconPalette_WatmelBerry[];
extern const u32 gItemIcon_DurinBerry[];
extern const u32 gItemIconPalette_DurinBerry[];
extern const u32 gItemIcon_BelueBerry[];
extern const u32 gItemIconPalette_BelueBerry[];
extern const u32 gItemIcon_LiechiBerry[];
extern const u32 gItemIconPalette_LiechiBerry[];
extern const u32 gItemIcon_GanlonBerry[];
extern const u32 gItemIconPalette_GanlonBerry[];
extern const u32 gItemIcon_SalacBerry[];
extern const u32 gItemIconPalette_SalacBerry[];
extern const u32 gItemIcon_PetayaBerry[];
extern const u32 gItemIconPalette_PetayaBerry[];
extern const u32 gItemIcon_ApicotBerry[];
extern const u32 gItemIconPalette_ApicotBerry[];
extern const u32 gItemIcon_LansatBerry[];
extern const u32 gItemIconPalette_LansatBerry[];
extern const u32 gItemIcon_StarfBerry[];
extern const u32 gItemIconPalette_StarfBerry[];
extern const u32 gItemIcon_EnigmaBerry[];
extern const u32 gItemIconPalette_EnigmaBerry[];

extern const u32 gItemIcon_BrightPowder[];
extern const u32 gItemIconPalette_BrightPowder[];
extern const u32 gItemIcon_InBattleHerb[];
extern const u32 gItemIconPalette_WhiteHerb[];
extern const u32 gItemIcon_MachoBrace[];
extern const u32 gItemIconPalette_MachoBrace[];
extern const u32 gItemIcon_ExpShare[];
extern const u32 gItemIconPalette_ExpShare[];
extern const u32 gItemIcon_QuickClaw[];
extern const u32 gItemIconPalette_QuickClaw[];
extern const u32 gItemIcon_SootheBell[];
extern const u32 gItemIconPalette_SootheBell[];
extern const u32 gItemIcon_InBattleHerb[];
extern const u32 gItemIconPalette_MentalHerb[];
extern const u32 gItemIcon_ChoiceBand[];
extern const u32 gItemIconPalette_ChoiceBand[];
extern const u32 gItemIcon_KingsRock[];
extern const u32 gItemIconPalette_KingsRock[];
extern const u32 gItemIcon_SilverPowder[];
extern const u32 gItemIconPalette_SilverPowder[];
extern const u32 gItemIcon_AmuletCoin[];
extern const u32 gItemIconPalette_AmuletCoin[];
extern const u32 gItemIcon_CleanseTag[];
extern const u32 gItemIconPalette_CleanseTag[];
extern const u32 gItemIcon_SoulDew[];
extern const u32 gItemIconPalette_SoulDew[];
extern const u32 gItemIcon_DeepSeaTooth[];
extern const u32 gItemIconPalette_DeepSeaTooth[];
extern const u32 gItemIcon_DeepSeaScale[];
extern const u32 gItemIconPalette_DeepSeaScale[];
extern const u32 gItemIcon_SmokeBall[];
extern const u32 gItemIconPalette_SmokeBall[];
extern const u32 gItemIcon_Everstone[];
extern const u32 gItemIconPalette_Everstone[];
extern const u32 gItemIcon_FocusBand[];
extern const u32 gItemIconPalette_FocusBand[];
extern const u32 gItemIcon_LuckyEgg[];
extern const u32 gItemIconPalette_LuckyEgg[];
extern const u32 gItemIcon_ScopeLens[];
extern const u32 gItemIconPalette_ScopeLens[];
extern const u32 gItemIcon_MetalCoat[];
extern const u32 gItemIconPalette_MetalCoat[];
extern const u32 gItemIcon_Leftovers[];
extern const u32 gItemIconPalette_Leftovers[];
extern const u32 gItemIcon_DragonScale[];
extern const u32 gItemIconPalette_DragonScale[];
extern const u32 gItemIcon_LightBall[];
extern const u32 gItemIconPalette_LightBall[];
extern const u32 gItemIcon_SoftSand[];
extern const u32 gItemIconPalette_SoftSand[];
extern const u32 gItemIcon_HardStone[];
extern const u32 gItemIconPalette_HardStone[];
extern const u32 gItemIcon_MiracleSeed[];
extern const u32 gItemIconPalette_MiracleSeed[];
extern const u32 gItemIcon_BlackGlasses[];
extern const u32 gItemIconPalette_BlackTypeEnhancingItem[];
extern const u32 gItemIcon_BlackBelt[];
extern const u32 gItemIconPalette_BlackTypeEnhancingItem[];
extern const u32 gItemIcon_Magnet[];
extern const u32 gItemIconPalette_Magnet[];
extern const u32 gItemIcon_MysticWater[];
extern const u32 gItemIconPalette_MysticWater[];
extern const u32 gItemIcon_SharpBeak[];
extern const u32 gItemIconPalette_SharpBeak[];
extern const u32 gItemIcon_PoisonBarb[];
extern const u32 gItemIconPalette_PoisonBarb[];
extern const u32 gItemIcon_NeverMeltIce[];
extern const u32 gItemIconPalette_NeverMeltIce[];
extern const u32 gItemIcon_SpellTag[];
extern const u32 gItemIconPalette_SpellTag[];
extern const u32 gItemIcon_TwistedSpoon[];
extern const u32 gItemIconPalette_TwistedSpoon[];
extern const u32 gItemIcon_Charcoal[];
extern const u32 gItemIconPalette_Charcoal[];
extern const u32 gItemIcon_DragonFang[];
extern const u32 gItemIconPalette_DragonFang[];
extern const u32 gItemIcon_SilkScarf[];
extern const u32 gItemIconPalette_SilkScarf[];
extern const u32 gItemIcon_UpGrade[];
extern const u32 gItemIconPalette_UpGrade[];
extern const u32 gItemIcon_ShellBell[];
extern const u32 gItemIconPalette_Shell[];
extern const u32 gItemIcon_SeaIncense[];
extern const u32 gItemIconPalette_SeaIncense[];
extern const u32 gItemIcon_LaxIncense[];
extern const u32 gItemIconPalette_LaxIncense[];
extern const u32 gItemIcon_LuckyPunch[];
extern const u32 gItemIconPalette_LuckyPunch[];
extern const u32 gItemIcon_MetalPowder[];
extern const u32 gItemIconPalette_MetalPowder[];
extern const u32 gItemIcon_ThickClub[];
extern const u32 gItemIconPalette_ThickClub[];
extern const u32 gItemIcon_Stick[];
extern const u32 gItemIconPalette_Stick[];

extern const u32 gItemIcon_Scarf[];
extern const u32 gItemIconPalette_RedScarf[];
extern const u32 gItemIconPalette_BlueScarf[];
extern const u32 gItemIconPalette_PinkScarf[];
extern const u32 gItemIconPalette_GreenScarf[];
extern const u32 gItemIconPalette_YellowScarf[];

extern const u32 gItemIcon_MachBike[];
extern const u32 gItemIconPalette_MachBike[];
extern const u32 gItemIcon_CoinCase[];
extern const u32 gItemIconPalette_CoinCase[];
extern const u32 gItemIcon_Itemfinder[];
extern const u32 gItemIconPalette_Itemfinder[];
extern const u32 gItemIcon_OldRod[];
extern const u32 gItemIconPalette_OldRod[];
extern const u32 gItemIcon_GoodRod[];
extern const u32 gItemIconPalette_GoodRod[];
extern const u32 gItemIcon_SuperRod[];
extern const u32 gItemIconPalette_SuperRod[];
extern const u32 gItemIcon_SSTicket[];
extern const u32 gItemIconPalette_SSTicket[];
extern const u32 gItemIcon_ContestPass[];
extern const u32 gItemIconPalette_ContestPass[];
extern const u32 gItemIcon_WailmerPail[];
extern const u32 gItemIconPalette_WailmerPail[];
extern const u32 gItemIcon_DevonGoods[];
extern const u32 gItemIconPalette_DevonGoods[];
extern const u32 gItemIcon_SootSack[];
extern const u32 gItemIconPalette_SootSack[];
extern const u32 gItemIcon_BasementKey[];
extern const u32 gItemIconPalette_OldKey[];
extern const u32 gItemIcon_AcroBike[];
extern const u32 gItemIconPalette_AcroBike[];
extern const u32 gItemIcon_PokeblockCase[];
extern const u32 gItemIconPalette_PokeblockCase[];
extern const u32 gItemIcon_Letter[];
extern const u32 gItemIcon_EonTicket[];
extern const u32 gItemIconPalette_EonTicket[];
extern const u32 gItemIcon_Orb[];
extern const u32 gItemIconPalette_RedOrb[];
extern const u32 gItemIconPalette_BlueOrb[];
extern const u32 gItemIcon_Scanner[];
extern const u32 gItemIconPalette_Scanner[];
extern const u32 gItemIcon_GoGoggles[];
extern const u32 gItemIconPalette_GoGoggles[];
extern const u32 gItemIcon_Meteorite[];
extern const u32 gItemIconPalette_Meteorite[];
extern const u32 gItemIcon_Room1Key[];
extern const u32 gItemIconPalette_Key[];
extern const u32 gItemIcon_Room2Key[];
extern const u32 gItemIcon_Room4Key[];
extern const u32 gItemIcon_Room6Key[];
extern const u32 gItemIcon_StorageKey[];
extern const u32 gItemIcon_RootFossil[];
extern const u32 gItemIconPalette_HoennFossil[];
extern const u32 gItemIcon_ClawFossil[];
extern const u32 gItemIcon_DevonScope[];
extern const u32 gItemIconPalette_DevonScope[];

extern const u32 gItemIcon_TM[];
extern const u32 gItemIconPalette_FightingTMHM[];
extern const u32 gItemIconPalette_DragonTMHM[];
extern const u32 gItemIconPalette_WaterTMHM[];
extern const u32 gItemIconPalette_PsychicTMHM[];
extern const u32 gItemIconPalette_NormalTMHM[];
extern const u32 gItemIconPalette_PoisonTMHM[];
extern const u32 gItemIconPalette_IceTMHM[];
extern const u32 gItemIconPalette_GrassTMHM[];
extern const u32 gItemIconPalette_FireTMHM[];
extern const u32 gItemIconPalette_DarkTMHM[];
extern const u32 gItemIconPalette_SteelTMHM[];
extern const u32 gItemIconPalette_ElectricTMHM[];
extern const u32 gItemIconPalette_GroundTMHM[];
extern const u32 gItemIconPalette_GhostTMHM[];
extern const u32 gItemIconPalette_RockTMHM[];
extern const u32 gItemIconPalette_FlyingTMHM[];
extern const u32 gItemIcon_HM[];

extern const u32 gItemIcon_OaksParcel[];
extern const u32 gItemIconPalette_OaksParcel[];
extern const u32 gItemIcon_PokeFlute[];
extern const u32 gItemIconPalette_PokeFlute[];
extern const u32 gItemIcon_SecretKey[];
extern const u32 gItemIconPalette_SecretKey[];
extern const u32 gItemIcon_BikeVoucher[];
extern const u32 gItemIconPalette_BikeVoucher[];
extern const u32 gItemIcon_GoldTeeth[];
extern const u32 gItemIconPalette_GoldTeeth[];
extern const u32 gItemIcon_OldAmber[];
extern const u32 gItemIconPalette_OldAmber[];
extern const u32 gItemIcon_CardKey[];
extern const u32 gItemIconPalette_CardKey[];
extern const u32 gItemIcon_LiftKey[];
extern const u32 gItemIconPalette_Key[];
extern const u32 gItemIcon_HelixFossil[];
extern const u32 gItemIconPalette_KantoFossil[];
extern const u32 gItemIcon_DomeFossil[];
extern const u32 gItemIcon_SilphScope[];
extern const u32 gItemIconPalette_SilphScope[];
extern const u32 gItemIcon_Bicycle[];
extern const u32 gItemIconPalette_Bicycle[];
extern const u32 gItemIcon_TownMap[];
extern const u32 gItemIconPalette_TownMap[];
extern const u32 gItemIcon_VSSeeker[];
extern const u32 gItemIconPalette_VSSeeker[];
extern const u32 gItemIcon_FameChecker[];
extern const u32 gItemIconPalette_FameChecker[];
extern const u32 gItemIcon_TMCase[];
extern const u32 gItemIconPalette_TMCase[];
extern const u32 gItemIcon_BerryPouch[];
extern const u32 gItemIconPalette_BerryPouch[];
extern const u32 gItemIcon_TeachyTV[];
extern const u32 gItemIconPalette_TeachyTV[];
extern const u32 gItemIcon_TriPass[];
extern const u32 gItemIconPalette_TriPass[];
extern const u32 gItemIcon_RainbowPass[];
extern const u32 gItemIconPalette_RainbowPass[];
extern const u32 gItemIcon_Tea[];
extern const u32 gItemIconPalette_Tea[];
extern const u32 gItemIcon_MysticTicket[];
extern const u32 gItemIconPalette_MysticTicket[];
extern const u32 gItemIcon_AuroraTicket[];
extern const u32 gItemIconPalette_AuroraTicket[];
extern const u32 gItemIcon_PowderJar[];
extern const u32 gItemIconPalette_PowderJar[];
extern const u32 gItemIcon_Gem[];
extern const u32 gItemIconPalette_Ruby[];
extern const u32 gItemIconPalette_Sapphire[];

extern const u32 gItemIcon_MagmaEmblem[];
extern const u32 gItemIconPalette_MagmaEmblem[];
extern const u32 gItemIcon_OldSeaMap[];
extern const u32 gItemIconPalette_OldSeaMap[];

extern const u32 gItemIcon_ReturnToFieldArrow[];
extern const u32 gItemIconPalette_ReturnToFieldArrow[];


extern const u16 gFireRedMenuElements1_Pal[16];
extern const u16 gFireRedMenuElements2_Pal[16];
extern const u16 gFireRedMenuElements3_Pal[16];
extern const u8 gFireRedMenuElements_Gfx[];


extern const u32 gBagScreen_Gfx[];
extern const u32 gBagScreen_GfxTileMap[];
extern const u32 gBagScreenFemale_Pal[];
extern const u32 gBagScreenMale_Pal[];
extern const u8 gBagMenuHMIcon_Gfx[];


extern const u32 gBagMaleTiles[];
extern const u32 gBagFemaleTiles[];
extern const u32 gBagPalette[];
extern const u32 gBerryCheckCircle_Gfx[];


extern const u32 gIntro1SparkleGfx[];
extern const u32 gIntro1FlygonGfx[];
extern const u16 gIntro3LightningPal[];
extern const u32 gIntroCopyright_Gfx[];
extern const u32 gIntroCopyright_Tilemap[];
extern const u16 gIntroCopyright_Pal[16];
extern const u32 gIntro2VolbeatGfx[];
extern const u32 gIntro2TorchicGfx[];
extern const u32 gIntro2ManectricGfx[];
extern const u16 gIntro2VolbeatPal[];
extern const u16 gIntro2TorchicPal[];
extern const u16 gIntro2ManectricPal[];
extern const u32 gIntro2BubblesGfx[];
extern const u16 gIntro2BubblesPal[];
extern const u32 gIntro3LightningGfx[];
extern const u32 gIntro3GroudonGfx[];
extern const u32 gIntro3GroudonTilemap[];
extern const u32 gIntro3LegendBgGfx[];
extern const u32 gIntro3GroudonBgTilemap[];
extern const u32 gIntro3GroudonBgTilemap[];
extern const u8 gIntro3BgPal[0x200];
extern const u32 gIntro3KyogreGfx[];
extern const u32 gIntro3KyogreTilemap[];
extern const u32 gIntro3KyogreBgTilemap[];
extern const u32 gIntro3CloudsGfx[];
extern const u32 gIntro3Clouds1Tilemap[];
extern const u32 gIntro3Clouds2Tilemap[];
extern const u32 gIntro3Clouds3Tilemap[];
extern const u32 gIntro3Clouds4Tilemap[];
extern const u32 gIntro3RayquazaTilemap[];
extern const u32 gIntro3RayquazaGfx[];
extern const u32 gIntro3Clouds2Gfx[];
extern const u16 gIntro1GameFreakTextFadePal[];


extern const u32 gIntro2BrendanNoTurnGfx[];
extern const u32 gIntro2MayNoTurnGfx[];
extern const u16 gIntro2BrendanNoTurnPal[];
extern const u16 gIntro2FlygonPal[];
extern const u32 gIntro2FlygonGfx[];


extern const u32 gPartyMenuBg_Gfx[];
extern const u32 gPartyMenuBg_Tilemap[];
extern const u32 gPartyMenuBg_Pal[];


extern const u32 gBerryPic_Cheri[];
extern const u32 gBerryPalette_Cheri[];
extern const u32 gBerryPic_Chesto[];
extern const u32 gBerryPalette_Chesto[];
extern const u32 gBerryPic_Pecha[];
extern const u32 gBerryPalette_Pecha[];
extern const u32 gBerryPic_Rawst[];
extern const u32 gBerryPalette_Rawst[];
extern const u32 gBerryPic_Aspear[];
extern const u32 gBerryPalette_Aspear[];
extern const u32 gBerryPic_Leppa[];
extern const u32 gBerryPalette_Leppa[];
extern const u32 gBerryPic_Oran[];
extern const u32 gBerryPalette_Oran[];
extern const u32 gBerryPic_Persim[];
extern const u32 gBerryPalette_Persim[];
extern const u32 gBerryPic_Lum[];
extern const u32 gBerryPalette_Lum[];
extern const u32 gBerryPic_Sitrus[];
extern const u32 gBerryPalette_Sitrus[];
extern const u32 gBerryPic_Figy[];
extern const u32 gBerryPalette_Figy[];
extern const u32 gBerryPic_Wiki[];
extern const u32 gBerryPalette_Wiki[];
extern const u32 gBerryPic_Mago[];
extern const u32 gBerryPalette_Mago[];
extern const u32 gBerryPic_Aguav[];
extern const u32 gBerryPalette_Aguav[];
extern const u32 gBerryPic_Iapapa[];
extern const u32 gBerryPalette_Iapapa[];
extern const u32 gBerryPic_Razz[];
extern const u32 gBerryPalette_Razz[];
extern const u32 gBerryPic_Bluk[];
extern const u32 gBerryPalette_Bluk[];
extern const u32 gBerryPic_Nanab[];
extern const u32 gBerryPalette_Nanab[];
extern const u32 gBerryPic_Wepear[];
extern const u32 gBerryPalette_Wepear[];
extern const u32 gBerryPic_Pinap[];
extern const u32 gBerryPalette_Pinap[];
extern const u32 gBerryPic_Pomeg[];
extern const u32 gBerryPalette_Pomeg[];
extern const u32 gBerryPic_Kelpsy[];
extern const u32 gBerryPalette_Kelpsy[];
extern const u32 gBerryPic_Qualot[];
extern const u32 gBerryPalette_Qualot[];
extern const u32 gBerryPic_Hondew[];
extern const u32 gBerryPalette_Hondew[];
extern const u32 gBerryPic_Grepa[];
extern const u32 gBerryPalette_Grepa[];
extern const u32 gBerryPic_Tamato[];
extern const u32 gBerryPalette_Tamato[];
extern const u32 gBerryPic_Cornn[];
extern const u32 gBerryPalette_Cornn[];
extern const u32 gBerryPic_Magost[];
extern const u32 gBerryPalette_Magost[];
extern const u32 gBerryPic_Rabuta[];
extern const u32 gBerryPalette_Rabuta[];
extern const u32 gBerryPic_Nomel[];
extern const u32 gBerryPalette_Nomel[];
extern const u32 gBerryPic_Spelon[];
extern const u32 gBerryPalette_Spelon[];
extern const u32 gBerryPic_Pamtre[];
extern const u32 gBerryPalette_Pamtre[];
extern const u32 gBerryPic_Watmel[];
extern const u32 gBerryPalette_Watmel[];
extern const u32 gBerryPic_Durin[];
extern const u32 gBerryPalette_Durin[];
extern const u32 gBerryPic_Belue[];
extern const u32 gBerryPalette_Belue[];
extern const u32 gBerryPic_Liechi[];
extern const u32 gBerryPalette_Liechi[];
extern const u32 gBerryPic_Ganlon[];
extern const u32 gBerryPalette_Ganlon[];
extern const u32 gBerryPic_Salac[];
extern const u32 gBerryPalette_Salac[];
extern const u32 gBerryPic_Petaya[];
extern const u32 gBerryPalette_Petaya[];
extern const u32 gBerryPic_Apicot[];
extern const u32 gBerryPalette_Apicot[];
extern const u32 gBerryPic_Lansat[];
extern const u32 gBerryPalette_Lansat[];
extern const u32 gBerryPic_Starf[];
extern const u32 gBerryPalette_Starf[];
extern const u32 gBerryPic_Enigma[];
extern const u32 gBerryPalette_Enigma[];


extern const u16 gPokenavCondition_Pal[];
extern const u32 gPokenavCondition_Gfx[];
extern const u32 gPokenavCondition_Tilemap[];
extern const u16 gPokenavOptions_Tilemap[];
extern const u32 gPokenavOptions_Gfx[];
extern const u16 gPokenavOptions_Pal[];
extern const u8 gPokenavConditionMarker_Gfx[];
extern const u16 gPokenavConditionMarker_Pal[];
extern const u16 gPokenavLeftHeader_Pal[];
extern const u16 gPokenavHeader_Pal[];
extern const u32 gPokenavHeader_Gfx[];
extern const u32 gPokenavHeader_Tilemap[];
extern const u32 gPokenavLeftHeaderHoennMap_Gfx[];
extern const u32 gPokenavLeftHeaderMainMenu_Gfx[];
extern const u32 gPokenavLeftHeaderCondition_Gfx[];
extern const u32 gPokenavLeftHeaderRibbons_Gfx[];
extern const u32 gPokenavLeftHeaderMatchCall_Gfx[];
extern const u32 gPokenavLeftHeaderParty_Gfx[];
extern const u32 gPokenavLeftHeaderSearch_Gfx[];
extern const u32 gPokenavLeftHeaderCool_Gfx[];
extern const u32 gPokenavLeftHeaderBeauty_Gfx[];
extern const u32 gPokenavLeftHeaderCute_Gfx[];
extern const u32 gPokenavLeftHeaderSmart_Gfx[];
extern const u32 gPokenavLeftHeaderTough_Gfx[];
extern const u16 gUnknown_08DDE010[];
extern const u32 gUnknown_08DDE030[];
extern const u32 gUnknown_08DDE12C[];

extern const u32 gPageInfoTilemap[];
extern const u32 gUnknown_08D98CC8[];
extern const u32 gPageSkillsTilemap[];
extern const u32 gPageBattleMovesTilemap[];
extern const u32 gPageContestMovesTilemap[];
extern const u32 gStatusScreenPalette[];
extern const u16 gUnknown_08D85620[];
extern const u16 gSummaryScreenWindow_Tilemap[];
extern const u32 gMoveTypes_Pal[];
extern const u32 gStatusScreenBitmap[];

extern const u16 gSummaryScreenPowAcc_Tilemap[];
extern const u16 gSummaryScreenAppealJam_Tilemap[];

extern const u32 gMoveTypes_Gfx[];
extern const u32 gSummaryMoveSelect_Gfx[];
extern const u32 gSummaryMoveSelect_Pal[];
extern const u32 gStatusGfx_Icons[];
extern const u32 gStatusPal_Icons[];

extern const u32 gBuyMenuFrame_Gfx[];
extern const u32 gBuyMenuFrame_Tilemap[];
extern const u32 gMenuMoneyGfx[];
extern const u32 gMenuMoneyPal[];

extern const u32 gBattleInterface_BallStatusBarGfx[];
extern const u8 gBattleInterface_BallDisplayGfx[];
extern const u16 gBattleInterface_BallStatusBarPal[];
extern const u16 gBattleInterface_BallDisplayPal[];
extern const u8 gHealthboxElementsGfxTable[][32];

extern const u16 gNamingScreenMenu_Pal[];
extern const u32 gNamingScreenMenu_Gfx[];
extern const u32 gUnknown_08DD4544[];
extern const u8 gUnknown_08DD4620[];
extern const u8 gUnknown_08DD46E0[];
extern const u8 gUnknown_08DD47A0[];
extern const u8 gNamingScreenRWindow_Gfx[];
extern const u8 gNamingScreenKeyboardButton_Gfx[];
extern const u8 gNamingScreenROptions_Gfx[];
extern const u8 gNamingScreenCursor_Gfx[];
extern const u8 gNamingScreenRightPointingTriangleTiles[];
extern const u8 gNamingScreenUnderscoreTiles[];

extern const u32 gUnknown_08D9BA44[];

extern const u32 gContestConfetti_Gfx[];
extern const u32 gContestConfetti_Pal[];

extern const u32 gUnknown_08C093F0[];
extern const u32 gSubstituteDollTilemap[];
extern const u32 gSubstituteDollGfx[];
extern const u32 gSubstituteDollPal[];
extern const u32 gHealthboxSinglesPlayerGfx[];
extern const u32 gHealthboxSinglesOpponentGfx[];
extern const u32 gHealthboxDoublesPlayerGfx[];
extern const u32 gHealthboxDoublesOpponentGfx[];
extern const u32 gHealthboxSafariGfx[];
extern const u32 gBlankGfxCompressed[];
extern const u16 gBattleInterface_BallStatusBarPal[];
extern const u16 gBattleInterface_BallDisplayPal[];

extern const u32 gBagSwapLineGfx[];
extern const u32 gBagSwapLinePal[];

extern const u32 gBattleFrontierGfx_PyramidBag[];
extern const u32 gBattleFrontierGfx_PyramidBag_Pal[];
extern const u32 gBattleFrontierGfx_PyramidBagTileMap[];
extern const u32 gUnknown_08D9AF44[];
extern const u16 gUnknown_0860F074[];

extern const u32 gTitleScreenEmeraldVersionGfx[];
extern const u32 gTitleScreenPressStartGfx[];
extern const u32 gTitleScreenPokemonLogoGfx[];
extern const u32 gUnknown_08DE0644[];
extern const u32 gUnknown_08DDE458[];
extern const u16 gTitleScreenBgPalettes[];
extern const u16 gTitleScreenPressStartPal[];
extern const u16 gTitleScreenEmeraldVersionPal[];


extern const u32 gDomeTourneyInfoCard_Gfx[];
extern const u32 gDomeTourneyInfoCard_Tilemap[];
extern const u32 gDomeTourneyInfoCardBg_Tilemap[];
extern const u32 gDomeTourneyTree_Pal[];
extern const u32 gDomeTourneyTreeButtons_Pal[];
extern const u32 gDomeTourneyMatchCardBg_Pal[];
extern const u32 gDomeTourneyBg_Gfx[];
extern const u32 gDomeTourneyLine_Gfx[];
extern const u32 gDomeTourneyLineDown_Tilemap[];
extern const u32 gDomeTourneyLineUp_Tilemap[];
extern const u32 gDomeTourneyLineMask_Tilemap[];
extern const u32 gDomeTourneyTreeButtons_Gfx[];
extern const u16 gTilesetAnims_BattleDomePals0_0[];
extern const u16 gTilesetAnims_BattleDomePals0_1[];
extern const u16 gTilesetAnims_BattleDomePals0_2[];
extern const u16 gTilesetAnims_BattleDomePals0_3[];

extern const u32 gBattleArenaJudgementSymbolsGfx[];
extern const u32 gBattleArenaJudgementSymbolsPalette[];

extern const u32 gBattleWindowTextPalette[];

extern const u32 gContest2Pal[];

extern const u32 gSmokescreenImpactTiles[];
extern const u32 gSmokescreenImpactPalette[];

extern const u32 gBattleAnimSpriteGfx_Bone[];
extern const u32 gBattleAnimSpriteGfx_Spark[];
extern const u32 gBattleAnimSpriteGfx_Pencil[];
extern const u32 gBattleAnimSpriteGfx_AirWave[];
extern const u32 gBattleAnimSpriteGfx_Orb[];
extern const u32 gBattleAnimSpriteGfx_Sword[];
extern const u32 gBattleAnimSpriteGfx_Seed[];
extern const u32 gBattleAnimSpriteGfx_Explosion6[];
extern const u32 gBattleAnimSpriteGfx_PinkOrb[];
extern const u32 gBattleAnimSpriteGfx_Gust[];
extern const u32 gBattleAnimSpriteGfx_IceCube[];
extern const u32 gBattleAnimSpriteGfx_Spark2[];
extern const u32 gBattleAnimSpriteGfx_Orange[];
extern const u32 gBattleAnimSpriteGfx_YellowBall[];
extern const u32 gBattleAnimSpriteGfx_LockOn[];
extern const u32 gBattleAnimSpriteGfx_TiedBag[];
extern const u32 gBattleAnimSpriteGfx_BlackSmoke[];
extern const u32 gBattleAnimSpriteGfx_BlackBall[];
extern const u32 gBattleAnimSpriteGfx_Conversion[];
extern const u32 gBattleAnimSpriteGfx_Glass[];
extern const u32 gBattleAnimSpriteGfx_HornHit[];
extern const u32 gBattleAnimSpriteGfx_Hit[];
extern const u32 gBattleAnimSpriteGfx_Hit[];
extern const u32 gBattleAnimSpriteGfx_BlueShards[];
extern const u32 gBattleAnimSpriteGfx_ClosingEye[];
extern const u32 gBattleAnimSpriteGfx_WavingHand[];
extern const u32 gBattleAnimSpriteGfx_HitDuplicate[];
extern const u32 gBattleAnimSpriteGfx_Leer[];
extern const u32 gBattleAnimSpriteGfx_BlueBurst[];
extern const u32 gBattleAnimSpriteGfx_SmallEmber[];
extern const u32 gBattleAnimSpriteGfx_GraySmoke[];
extern const u32 gBattleAnimSpriteGfx_BlueStar[];
extern const u32 gBattleAnimSpriteGfx_BubbleBurst[];
extern const u32 gBattleAnimSpriteGfx_Fire[];
extern const u32 gBattleAnimSpriteGfx_SpinningFire[];
extern const u32 gBattleAnimSpriteGfx_FirePlume[];
extern const u32 gBattleAnimSpriteGfx_Lightning2[];
extern const u32 gBattleAnimSpriteGfx_Lightning[];
extern const u32 gBattleAnimSpriteGfx_ClawSlash2[];
extern const u32 gBattleAnimSpriteGfx_ClawSlash[];
extern const u32 gBattleAnimSpriteGfx_Scratch3[];
extern const u32 gBattleAnimSpriteGfx_Scratch2[];
extern const u32 gBattleAnimSpriteGfx_BubbleBurst2[];
extern const u32 gBattleAnimSpriteGfx_IceChunk[];
extern const u32 gBattleAnimSpriteGfx_Glass2[];
extern const u32 gBattleAnimSpriteGfx_PinkHeart2[];
extern const u32 gBattleAnimSpriteGfx_SapDrip[];
extern const u32 gBattleAnimSpriteGfx_SapDrip[];
extern const u32 gBattleAnimSpriteGfx_Sparkle1[];
extern const u32 gBattleAnimSpriteGfx_Sparkle1[];
extern const u32 gBattleAnimSpriteGfx_HumanoidFoot[];
extern const u32 gBattleAnimSpriteGfx_MonsterFoot[];
extern const u32 gBattleAnimSpriteGfx_HumanoidHand[];
extern const u32 gBattleAnimSpriteGfx_NoiseLine[];
extern const u32 gUnknown_08C2EA50[];
extern const u32 gUnknown_08C2EA9C[];
extern const u32 gBattleAnimSpriteGfx_YellowUnk[];
extern const u32 gBattleAnimSpriteGfx_RedFist[];
extern const u32 gBattleAnimSpriteGfx_SlamHit[];
extern const u32 gBattleAnimSpriteGfx_Ring[];
extern const u32 gBattleAnimSpriteGfx_Rocks[];
extern const u32 gBattleAnimSpriteGfx_Z[];
extern const u32 gBattleAnimSpriteGfx_YellowUnk2[];
extern const u32 gBattleAnimSpriteGfx_AirSlash[];
extern const u32 gBattleAnimSpriteGfx_SpinningGreenOrbs[];
extern const u32 gBattleAnimSpriteGfx_Leaf[];
extern const u32 gBattleAnimSpriteGfx_Finger[];
extern const u32 gBattleAnimSpriteGfx_PoisonPowder[];
extern const u32 gBattleAnimSpriteGfx_BrownTriangle[];
extern const u32 gBattleAnimSpriteGfx_Sparkle3[];
extern const u32 gBattleAnimSpriteGfx_Sparkle4[];
extern const u32 gBattleAnimSpriteGfx_MusicNotes[];
extern const u32 gBattleAnimSpriteGfx_Duck[];
extern const u32 gBattleAnimSpriteGfx_MudSand[];
extern const u32 gBattleAnimSpriteGfx_Alert[];
extern const u32 gBattleAnimSpriteGfx_BlueFlames[];
extern const u32 gBattleAnimSpriteGfx_BlueFlames2[];
extern const u32 gBattleAnimSpriteGfx_Shock4[];
extern const u32 gBattleAnimSpriteGfx_Shock[];
extern const u32 gBattleAnimSpriteGfx_Bell2[];
extern const u32 gBattleAnimSpriteGfx_PinkGlove[];
extern const u32 gBattleAnimSpriteGfx_BlueLines[];
extern const u32 gBattleAnimSpriteGfx_Impact3[];
extern const u32 gBattleAnimSpriteGfx_Impact2[];
extern const u32 gBattleAnimSpriteGfx_Reticle[];
extern const u32 gBattleAnimSpriteGfx_Breath[];
extern const u32 gBattleAnimSpriteGfx_Anger[];
extern const u32 gBattleAnimSpriteGfx_Snowball[];
extern const u32 gBattleAnimSpriteGfx_Vine[];
extern const u32 gBattleAnimSpriteGfx_Sword2[];
extern const u32 gBattleAnimSpriteGfx_Clapping[];
extern const u32 gBattleAnimSpriteGfx_RedTube[];
extern const u32 gBattleAnimSpriteGfx_Amnesia[];
extern const u32 gBattleAnimSpriteGfx_String2[];
extern const u32 gBattleAnimSpriteGfx_Pencil2[];
extern const u32 gBattleAnimSpriteGfx_Petal[];
extern const u32 gBattleAnimSpriteGfx_BentSpoon[];
extern const u32 gBattleAnimSpriteGfx_Web[];
extern const u32 gBattleAnimSpriteGfx_MilkBottle[];
extern const u32 gBattleAnimSpriteGfx_Coin[];
extern const u32 gBattleAnimSpriteGfx_CrackedEgg[];
extern const u32 gBattleAnimSpriteGfx_HatchedEgg[];
extern const u32 gBattleAnimSpriteGfx_FreshEgg[];
extern const u32 gBattleAnimSpriteGfx_Fangs[];
extern const u32 gBattleAnimSpriteGfx_Explosion2[];
extern const u32 gBattleAnimSpriteGfx_Explosion3[];
extern const u32 gBattleAnimSpriteGfx_WaterDroplet[];
extern const u32 gBattleAnimSpriteGfx_WaterDroplet2[];
extern const u32 gBattleAnimSpriteGfx_Seed2[];
extern const u32 gBattleAnimSpriteGfx_Sprout[];
extern const u32 gBattleAnimSpriteGfx_RedWand[];
extern const u32 gBattleAnimSpriteGfx_PurpleGreenUnk[];
extern const u32 gBattleAnimSpriteGfx_WaterColumn[];
extern const u32 gBattleAnimSpriteGfx_MudUnk[];
extern const u32 gBattleAnimSpriteGfx_RainDrops[];
extern const u32 gBattleAnimSpriteGfx_FurySwipes[];
extern const u32 gBattleAnimSpriteGfx_Vine2[];
extern const u32 gBattleAnimSpriteGfx_Teeth[];
extern const u32 gBattleAnimSpriteGfx_Bone2[];
extern const u32 gBattleAnimSpriteGfx_WhiteBag[];
extern const u32 gBattleAnimSpriteGfx_Unknown[];
extern const u32 gBattleAnimSpriteGfx_PurpleCoral[];
extern const u32 gBattleAnimSpriteGfx_PurpleDroplet[];
extern const u32 gBattleAnimSpriteGfx_Shock2[];
extern const u32 gBattleAnimSpriteGfx_ClosingEye2[];
extern const u32 gBattleAnimSpriteGfx_MetalBall[];
extern const u32 gBattleAnimSpriteGfx_MonsterDoll[];
extern const u32 gBattleAnimSpriteGfx_Whirlwind[];
extern const u32 gBattleAnimSpriteGfx_Whirlwind2[];
extern const u32 gBattleAnimSpriteGfx_Explosion4[];
extern const u32 gBattleAnimSpriteGfx_Explosion5[];
extern const u32 gBattleAnimSpriteGfx_Tongue[];
extern const u32 gBattleAnimSpriteGfx_Smoke[];
extern const u32 gBattleAnimSpriteGfx_Smoke2[];
extern const u32 gBattleAnimSpriteGfx_Impact[];
extern const u32 gBattleAnimSpriteGfx_Particles[];
extern const u32 gBattleAnimSpriteGfx_CircleImpact[];
extern const u32 gBattleAnimSpriteGfx_Scratch[];
extern const u32 gBattleAnimSpriteGfx_Cut[];
extern const u32 gBattleAnimSpriteGfx_SharpTeeth[];
extern const u32 gBattleAnimSpriteGfx_RainbowRings[];
extern const u32 gBattleAnimSpriteGfx_IceCrystals[];
extern const u32 gBattleAnimSpriteGfx_IceSpikes[];
extern const u32 gBattleAnimSpriteGfx_HandsAndFeet[];
extern const u32 gBattleAnimSpriteGfx_MistCloud[];
extern const u32 gBattleAnimSpriteGfx_Clamp[];

extern const u32 gBattleAnimSpriteGfx_Bubble[];
extern const u32 gBattleAnimSpriteGfx_Orbs[];
extern const u32 gBattleAnimSpriteGfx_WaterImpact[];
extern const u32 gBattleAnimSpriteGfx_WaterOrb[];
extern const u32 gBattleAnimSpriteGfx_PoisonBubble[];
extern const u32 gBattleAnimSpriteGfx_ToxicBubble[];
extern const u32 gBattleAnimSpriteGfx_Spikes[];
extern const u32 gBattleAnimSpriteGfx_HornHit2[];
extern const u32 gBattleAnimSpriteGfx_AirWave2[];
extern const u32 gBattleAnimSpriteGfx_SmallBubbles[];
extern const u32 gBattleAnimSpriteGfx_RoundShadow[];
extern const u32 gBattleAnimSpriteGfx_Sunlight[];
extern const u32 gBattleAnimSpriteGfx_Spore[];
extern const u32 gBattleAnimSpriteGfx_Flower[];
extern const u32 gBattleAnimSpriteGfx_RazorLeaf[];
extern const u32 gBattleAnimSpriteGfx_Needle[];
extern const u32 gBattleAnimSpriteGfx_WhirlwindLines[];
extern const u32 gBattleAnimSpriteGfx_GoldRing[];
extern const u32 gBattleAnimSpriteGfx_GreenLightWall[];
extern const u32 gBattleAnimSpriteGfx_BlackBall2[];
extern const u32 gBattleAnimSpriteGfx_SparkH[];
extern const u32 gBattleAnimSpriteGfx_YellowStar[];
extern const u32 gBattleAnimSpriteGfx_LargeFreshEgg[];
extern const u32 gBattleAnimSpriteGfx_ShadowBall[];
extern const u32 gBattleAnimSpriteGfx_Lick[];
extern const u32 gBattleAnimSpriteGfx_VoidLines[];
extern const u32 gBattleAnimSpriteGfx_String[];
extern const u32 gBattleAnimSpriteGfx_WebThread[];
extern const u32 gBattleAnimSpriteGfx_SpiderWeb[];
extern const u32 gBattleAnimSpriteGfx_Lightbulb[];
extern const u32 gBattleAnimSpriteGfx_Slash[];
extern const u32 gBattleAnimSpriteGfx_FocusEnergy[];
extern const u32 gBattleAnimSpriteGfx_SphereToCube[];
extern const u32 gBattleAnimSpriteGfx_Tendrils[];
extern const u32 gBattleAnimSpriteGfx_Eye[];
extern const u32 gBattleAnimSpriteGfx_WhiteShadow[];
extern const u32 gBattleAnimSpriteGfx_TealAlert[];
extern const u32 gBattleAnimSpriteGfx_OpeningEye[];
extern const u32 gBattleAnimSpriteGfx_RoundWhiteHalo[];
extern const u32 gBattleAnimSpriteGfx_FangAttack[];
extern const u32 gBattleAnimSpriteGfx_PurpleHandOutline[];
extern const u32 gBattleAnimSpriteGfx_Moon[];
extern const u32 gBattleAnimSpriteGfx_GreenSparkle[];
extern const u32 gBattleAnimSpriteGfx_Spiral[];
extern const u32 gBattleAnimSpriteGfx_SnoreZ[];
extern const u32 gBattleAnimSpriteGfx_Explosion[];
extern const u32 gBattleAnimSpriteGfx_Nail[];
extern const u32 gBattleAnimSpriteGfx_GhostlySpirit[];
extern const u32 gBattleAnimSpriteGfx_WarmRock[];
extern const u32 gBattleAnimSpriteGfx_BreakingEgg[];
extern const u32 gBattleAnimSpriteGfx_ThinRing[];
extern const u32 gBattleAnimSpriteGfx_PunchImpact[];
extern const u32 gBattleAnimSpriteGfx_Bell[];
extern const u32 gBattleAnimSpriteGfx_MusicNotes2[];
extern const u32 gBattleAnimSpriteGfx_SpeedDust[];
extern const u32 gBattleAnimSpriteGfx_TornMetal[];
extern const u32 gBattleAnimSpriteGfx_ThoughtBubble[];
extern const u32 gBattleAnimSpriteGfx_MagentaHeart[];
extern const u32 gBattleAnimSpriteGfx_ElectricOrbs[];
extern const u32 gBattleAnimSpriteGfx_CircleOfLight[];
extern const u32 gBattleAnimSpriteGfx_Electricity[];
extern const u32 gBattleAnimSpriteGfx_Finger2[];
extern const u32 gBattleAnimSpriteGfx_MovementWaves[];
extern const u32 gBattleAnimSpriteGfx_MagentaHeart[];
extern const u32 gBattleAnimSpriteGfx_RedOrb[];
extern const u32 gBattleAnimSpriteGfx_EyeSparkle[];
extern const u32 gBattleAnimSpriteGfx_MagentaHeart[];
extern const u32 gBattleAnimSpriteGfx_Angel[];
extern const u32 gBattleAnimSpriteGfx_Devil[];
extern const u32 gBattleAnimSpriteGfx_Swipe[];
extern const u32 gBattleAnimSpriteGfx_Roots[];
extern const u32 gBattleAnimSpriteGfx_ItemBag[];
extern const u32 gBattleAnimSpriteGfx_JaggedMusicNote[];
extern const u32 gBattleAnimSpriteGfx_Pokeball[];
extern const u32 gBattleAnimSpriteGfx_Spotlight[];
extern const u32 gBattleAnimSpriteGfx_LetterZ[];
extern const u32 gBattleAnimSpriteGfx_RapidSpin[];
extern const u32 gBattleAnimSpriteGfx_TriAttackTriangle[];
extern const u32 gBattleAnimSpriteGfx_WispOrb[];
extern const u32 gBattleAnimSpriteGfx_WispFire[];
extern const u32 gBattleAnimSpriteGfx_GoldStars[];
extern const u32 gBattleAnimSpriteGfx_EclipsingOrb[];
extern const u32 gBattleAnimSpriteGfx_GrayOrb[];
extern const u32 gBattleAnimSpriteGfx_GrayOrb[];
extern const u32 gBattleAnimSpriteGfx_GrayOrb[];
extern const u32 gBattleAnimSpriteGfx_PinkPetal[];
extern const u32 gBattleAnimSpriteGfx_PainSplit[];
extern const u32 gBattleAnimSpriteGfx_Confetti[];
extern const u32 gBattleAnimSpriteGfx_GreenStar[];
extern const u32 gBattleAnimSpriteGfx_PinkCloud[];
extern const u32 gBattleAnimSpriteGfx_SweatDrop[];
extern const u32 gBattleAnimSpriteGfx_GuardRing[];
extern const u32 gBattleAnimSpriteGfx_PurpleScratch[];
extern const u32 gBattleAnimSpriteGfx_PurpleSwipe[];
extern const u32 gBattleAnimSpriteGfx_TagHand[];
extern const u32 gBattleAnimSpriteGfx_SmallRedEye[];
extern const u32 gBattleAnimSpriteGfx_HollowOrb[];
extern const u32 gBattleAnimSpriteGfx_XSign[];
extern const u32 gBattleAnimSpriteGfx_BluegreenOrb[];
extern const u32 gBattleAnimSpriteGfx_PawPrint[];
extern const u32 gBattleAnimSpriteGfx_PurpleFlame[];
extern const u32 gBattleAnimSpriteGfx_RedBall[];
extern const u32 gBattleAnimSpriteGfx_SmellingsaltEffect[];
extern const u32 gBattleAnimSpriteGfx_Meteor[];
extern const u32 gBattleAnimSpriteGfx_FlatRock[];
extern const u32 gBattleAnimSpriteGfx_MagnifyingGlass[];
extern const u32 gBattleAnimSpriteGfx_MetalSoundWaves[];
extern const u32 gBattleAnimSpriteGfx_FlyingDirt[];
extern const u32 gBattleAnimSpriteGfx_IcicleSpear[];
extern const u32 gBattleAnimSpriteGfx_Hail[];
extern const u32 gBattleAnimSpriteGfx_GlowyRedOrb[];
extern const u32 gBattleAnimSpriteGfx_GreenSpike[];
extern const u32 gBattleAnimSpriteGfx_Pokeblock[];
extern const u32 gBattleAnimSpriteGfx_WhiteFeather[];
extern const u32 gBattleAnimSpriteGfx_Sparkle6[];
extern const u32 gBattleAnimSpriteGfx_Splash[];
extern const u32 gBattleAnimSpriteGfx_SweatBead[];
extern const u32 gBattleAnimSpriteGfx_Gem1[];
extern const u32 gBattleAnimSpriteGfx_Gem2[];
extern const u32 gBattleAnimSpriteGfx_Gem3[];
extern const u32 gBattleAnimSpriteGfx_SlamHit2[];
extern const u32 gBattleAnimSpriteGfx_Recycle[];
extern const u32 gBattleAnimSpriteGfx_RedParticles[];
extern const u32 gBattleAnimSpriteGfx_Protect[];
extern const u32 gBattleAnimSpriteGfx_DirtMound[];
extern const u32 gBattleAnimSpriteGfx_Shock3[];
extern const u32 gBattleAnimSpriteGfx_WeatherBall[];
extern const u32 gBattleAnimBgTilemap_ScaryFacePlayer[];
extern const u32 gBattleAnimBgTilemap_ScaryFaceOpponent[];
extern const u32 gBattleAnimBgTilemap_ScaryFaceContest[];
extern const u32 gBattleAnimSpriteGfx_Bird[];
extern const u32 gBattleAnimSpriteGfx_CrossImpact[];

extern const u32 gBattleAnimSpritePal_Bone[];
extern const u32 gBattleAnimSpritePal_Spark[];
extern const u32 gBattleAnimSpritePal_Pencil[];
extern const u32 gBattleAnimSpritePal_AirWave[];
extern const u32 gBattleAnimSpritePal_Orb[];
extern const u32 gBattleAnimSpritePal_Sword[];
extern const u32 gBattleAnimSpritePal_Seed[];
extern const u32 gBattleAnimSpritePal_Explosion6[];
extern const u32 gBattleAnimSpritePal_PinkOrb[];
extern const u32 gBattleAnimSpritePal_Gust[];
extern const u32 gBattleAnimSpritePal_IceCube[];
extern const u32 gBattleAnimSpritePal_Spark2[];
extern const u32 gBattleAnimSpritePal_Orange[];
extern const u32 gBattleAnimSpritePal_YellowBall[];
extern const u32 gBattleAnimSpritePal_LockOn[];
extern const u32 gBattleAnimSpritePal_TiedBag[];
extern const u32 gBattleAnimSpritePal_BlackSmoke[];
extern const u32 gBattleAnimSpritePal_BlackSmoke[];
extern const u32 gBattleAnimSpritePal_Conversion[];
extern const u32 gBattleAnimSpritePal_Glass[];
extern const u32 gBattleAnimSpritePal_HornHit[];
extern const u32 gBattleAnimSpritePal_Hit[];
extern const u32 gBattleAnimSpritePal_Hit2[];
extern const u32 gBattleAnimSpritePal_BlueShards[];
extern const u32 gBattleAnimSpritePal_ClosingEye[];
extern const u32 gBattleAnimSpritePal_WavingHand[];
extern const u32 gBattleAnimSpritePal_HitDuplicate[];
extern const u32 gBattleAnimSpritePal_Leer[];
extern const u32 gBattleAnimSpritePal_BlueBurst[];
extern const u32 gBattleAnimSpritePal_SmallEmber[];
extern const u32 gBattleAnimSpritePal_GraySmoke[];
extern const u32 gBattleAnimSpritePal_BlueStar[];
extern const u32 gBattleAnimSpritePal_BubbleBurst[];
extern const u32 gBattleAnimSpritePal_Fire[];
extern const u32 gBattleAnimSpritePal_Fire[];
extern const u32 gBattleAnimSpritePal_Fire[];
extern const u32 gBattleAnimSpritePal_Lightning2[];
extern const u32 gBattleAnimSpritePal_Lightning2[];
extern const u32 gBattleAnimSpritePal_ClawSlash2[];
extern const u32 gBattleAnimSpritePal_ClawSlash[];
extern const u32 gBattleAnimSpritePal_ClawSlash2[];
extern const u32 gBattleAnimSpritePal_ClawSlash2[];
extern const u32 gBattleAnimSpritePal_BubbleBurst2[];
extern const u32 gBattleAnimSpritePal_IceChunk[];
extern const u32 gBattleAnimSpritePal_Glass2[];
extern const u32 gBattleAnimSpritePal_PinkHeart2[];
extern const u32 gBattleAnimSpritePal_SapDrip[];
extern const u32 gBattleAnimSpritePal_SapDrip2[];
extern const u32 gBattleAnimSpritePal_Sparkle1[];
extern const u32 gBattleAnimSpritePal_Sparkle2[];
extern const u32 gBattleAnimSpritePal_HumanoidFoot[];
extern const u32 gBattleAnimSpritePal_HumanoidFoot[];
extern const u32 gBattleAnimSpritePal_HumanoidFoot[];
extern const u32 gBattleAnimSpritePal_HitDuplicate[];
extern const u32 gBattleAnimSpritePal_YellowUnk[];
extern const u32 gBattleAnimSpritePal_HumanoidFoot[];
extern const u32 gBattleAnimSpritePal_SlamHit[];
extern const u32 gBattleAnimSpritePal_Ring[];
extern const u32 gBattleAnimSpritePal_Rocks[];
extern const u32 gBattleAnimSpritePal_Z[];
extern const u32 gBattleAnimSpritePal_YellowUnk2[];
extern const u32 gBattleAnimSpritePal_AirSlash[];
extern const u32 gBattleAnimSpritePal_SpinningGreenOrbs[];
extern const u32 gBattleAnimSpritePal_Leaf[];
extern const u32 gBattleAnimSpritePal_Finger[];
extern const u32 gBattleAnimSpritePal_PoisonPowder[];
extern const u32 gBattleAnimSpritePal_BrownTriangle[];
extern const u32 gBattleAnimSpritePal_SleepPowder[];
extern const u32 gBattleAnimSpritePal_StunSpore[];
extern const u32 gBattleAnimSpritePal_PoisonPowder[];
extern const u32 gBattleAnimSpritePal_Sparkle3[];
extern const u32 gBattleAnimSpritePal_Sparkle3[];
extern const u32 gBattleAnimSpritePal_MusicNotes[];
extern const u32 gBattleAnimSpritePal_Duck[];
extern const u32 gBattleAnimSpritePal_MudSand[];
extern const u32 gBattleAnimSpritePal_Alert[];
extern const u32 gBattleAnimSpritePal_BlueFlames[];
extern const u32 gBattleAnimSpritePal_BlueFlames[];
extern const u32 gBattleAnimSpritePal_Shock4[];
extern const u32 gBattleAnimSpritePal_Shock4[];
extern const u32 gBattleAnimSpritePal_Bell2[];
extern const u32 gBattleAnimSpritePal_PinkGlove[];
extern const u32 gBattleAnimSpritePal_BlueLines[];
extern const u32 gBattleAnimSpritePal_Impact3[];
extern const u32 gBattleAnimSpritePal_Impact2[];
extern const u32 gBattleAnimSpritePal_Reticle[];
extern const u32 gBattleAnimSpritePal_Breath[];
extern const u32 gBattleAnimSpritePal_Anger[];
extern const u32 gBattleAnimSpritePal_Snowball[];
extern const u32 gBattleAnimSpritePal_Vine[];
extern const u32 gBattleAnimSpritePal_Sword2[];
extern const u32 gBattleAnimSpritePal_Clapping[];
extern const u32 gBattleAnimSpritePal_RedTube[];
extern const u32 gBattleAnimSpritePal_Amnesia[];
extern const u32 gBattleAnimSpritePal_String2[];
extern const u32 gBattleAnimSpritePal_Pencil2[];
extern const u32 gBattleAnimSpritePal_Petal[];
extern const u32 gBattleAnimSpritePal_BentSpoon[];
extern const u32 gBattleAnimSpritePal_String2[];
extern const u32 gBattleAnimSpritePal_MilkBottle[];
extern const u32 gBattleAnimSpritePal_Coin[];
extern const u32 gBattleAnimSpritePal_CrackedEgg[];
extern const u32 gBattleAnimSpritePal_CrackedEgg[];
extern const u32 gBattleAnimSpritePal_FreshEgg[];
extern const u32 gBattleAnimSpritePal_Fangs[];
extern const u32 gBattleAnimSpritePal_Explosion2[];
extern const u32 gBattleAnimSpritePal_Explosion2[];
extern const u32 gBattleAnimSpritePal_WaterDroplet[];
extern const u32 gBattleAnimSpritePal_WaterDroplet[];
extern const u32 gBattleAnimSpritePal_Seed2[];
extern const u32 gBattleAnimSpritePal_Seed2[];
extern const u32 gBattleAnimSpritePal_RedWand[];
extern const u32 gBattleAnimSpritePal_PurpleGreenUnk[];
extern const u32 gBattleAnimSpritePal_WaterColumn[];
extern const u32 gBattleAnimSpritePal_MudUnk[];
extern const u32 gBattleAnimSpritePal_RainDrops[];
extern const u32 gBattleAnimSpritePal_FurySwipes[];
extern const u32 gBattleAnimSpritePal_Vine2[];
extern const u32 gBattleAnimSpritePal_Teeth[];
extern const u32 gBattleAnimSpritePal_Bone2[];
extern const u32 gBattleAnimSpritePal_WhiteBag[];
extern const u32 gBattleAnimSpritePal_Unknown[];
extern const u32 gBattleAnimSpritePal_PurpleCoral[];
extern const u32 gBattleAnimSpritePal_PurpleCoral[];
extern const u32 gBattleAnimSpritePal_Shock2[];
extern const u32 gBattleAnimSpritePal_ClosingEye2[];
extern const u32 gBattleAnimSpritePal_MetalBall[];
extern const u32 gBattleAnimSpritePal_MonsterDoll[];
extern const u32 gBattleAnimSpritePal_Whirlwind[];
extern const u32 gBattleAnimSpritePal_Whirlwind[];
extern const u32 gBattleAnimSpritePal_Explosion4[];
extern const u32 gBattleAnimSpritePal_Explosion4[];
extern const u32 gBattleAnimSpritePal_Tongue[];
extern const u32 gBattleAnimSpritePal_Smoke[];
extern const u32 gBattleAnimSpritePal_Smoke[];
extern const u32 gBattleAnimSpritePal_Impact[];
extern const u32 gBattleAnimSpritePal_CircleImpact[];
extern const u32 gBattleAnimSpritePal_Impact[];
extern const u32 gBattleAnimSpritePal_Impact[];
extern const u32 gBattleAnimSpritePal_SharpTeeth[];
extern const u32 gBattleAnimSpritePal_RainbowRings[];
extern const u32 gBattleAnimSpritePal_IceCrystals[];
extern const u32 gBattleAnimSpritePal_IceCrystals[];
extern const u32 gBattleAnimSpritePal_HandsAndFeet[];
extern const u32 gBattleAnimSpritePal_MistCloud[];
extern const u32 gBattleAnimSpritePal_SharpTeeth[];
extern const u32 gBattleAnimSpritePal_RainDrops[];
extern const u32 gBattleAnimSpritePal_Orbs[];
extern const u32 gBattleAnimSpritePal_WaterImpact[];
extern const u32 gBattleAnimSpritePal_WaterImpact[];
extern const u32 gBattleAnimSpritePal_PoisonBubble[];
extern const u32 gBattleAnimSpritePal_PoisonBubble[];
extern const u32 gBattleAnimSpritePal_Spikes[];
extern const u32 gBattleAnimSpritePal_HornHit2[];
extern const u32 gBattleAnimSpritePal_AirWave2[];
extern const u32 gBattleAnimSpritePal_SmallBubbles[];
extern const u32 gBattleAnimSpritePal_RoundShadow[];
extern const u32 gBattleAnimSpritePal_Sunlight[];
extern const u32 gBattleAnimSpritePal_Spore[];
extern const u32 gBattleAnimSpritePal_Flower[];
extern const u32 gBattleAnimSpritePal_RazorLeaf[];
extern const u32 gBattleAnimSpritePal_Needle[];
extern const u32 gBattleAnimSpritePal_WhirlwindLines[];
extern const u32 gBattleAnimSpritePal_GoldRing[];
extern const u32 gBattleAnimSpritePal_PurpleRing[];
extern const u32 gBattleAnimSpritePal_BlueRing[];
extern const u32 gBattleAnimSpritePal_GreenLightWall[];
extern const u32 gBattleAnimSpritePal_BlueLightWall[];
extern const u32 gBattleAnimSpritePal_RedLightWall[];
extern const u32 gBattleAnimSpritePal_GrayLightWall[];
extern const u32 gBattleAnimSpritePal_OrangeLightWall[];
extern const u32 gBattleAnimSpritePal_BlackBall2[];
extern const u32 gBattleAnimSpritePal_PurpleGasCloud[];
extern const u32 gBattleAnimSpritePal_YellowStar[];
extern const u32 gBattleAnimSpritePal_LargeFreshEgg[];
extern const u32 gBattleAnimSpritePal_ShadowBall[];
extern const u32 gBattleAnimSpritePal_Lick[];
extern const u32 gBattleAnimSpritePal_VoidLines[];
extern const u32 gBattleAnimSpritePal_String[];
extern const u32 gBattleAnimSpritePal_Lightbulb[];
extern const u32 gBattleAnimSpritePal_Slash[];
extern const u32 gBattleAnimSpritePal_FocusEnergy[];
extern const u32 gBattleAnimSpritePal_SphereToCube[];
extern const u32 gBattleAnimSpritePal_Tendrils[];
extern const u32 gBattleAnimSpritePal_Eye[];
extern const u32 gBattleAnimSpritePal_WhiteShadow[];
extern const u32 gBattleAnimSpritePal_TealAlert[];
extern const u32 gBattleAnimSpritePal_OpeningEye[];
extern const u32 gBattleAnimSpritePal_RoundWhiteHalo[];
extern const u32 gBattleAnimSpritePal_FangAttack[];
extern const u32 gBattleAnimSpritePal_PurpleHandOutline[];
extern const u32 gBattleAnimSpritePal_Moon[];
extern const u32 gBattleAnimSpritePal_GreenSparkle[];
extern const u32 gBattleAnimSpritePal_Spiral[];
extern const u32 gBattleAnimSpritePal_SnoreZ[];
extern const u32 gBattleAnimSpritePal_Explosion[];
extern const u32 gBattleAnimSpritePal_Nail[];
extern const u32 gBattleAnimSpritePal_GhostlySpirit[];
extern const u32 gBattleAnimSpritePal_WarmRock[];
extern const u32 gBattleAnimSpritePal_BreakingEgg[];
extern const u32 gBattleAnimSpritePal_ThinRing[];
extern const u32 gBattleAnimSpritePal_PunchImpact[];
extern const u32 gBattleAnimSpritePal_Bell[];
extern const u32 gBattleAnimSpritePal_MusicNotes2[];
extern const u32 gBattleAnimSpritePal_SpeedDust[];
extern const u32 gBattleAnimSpritePal_ThoughtBubble[];
extern const u32 gBattleAnimSpritePal_MagentaHeart[];
extern const u32 gBattleAnimSpritePal_ElectricOrbs[];
extern const u32 gBattleAnimSpritePal_MovementWaves[];
extern const u32 gBattleAnimBgPalette_ScaryFace[];
extern const u32 gBattleAnimBgImage_ScaryFace[];
extern const u32 gBattleAnimSpritePal_RedHeart[];
extern const u32 gBattleAnimSpritePal_RedOrb[];
extern const u32 gBattleAnimSpritePal_EyeSparkle[];
extern const u32 gBattleAnimSpritePal_PinkHeart[];
extern const u32 gBattleAnimBgImage_Attract;
extern const u32 gBattleAnimBgPalette_Attract;
extern const u32 gBattleAnimBgTilemap_Attract;
extern const u32 gBattleAnimSpritePal_Angel[];
extern const u32 gBattleAnimSpritePal_Devil[];
extern const u32 gBattleAnimSpritePal_Swipe[];
extern const u32 gBattleAnimSpritePal_Roots[];
extern const u32 gBattleAnimSpritePal_ItemBag[];
extern const u32 gBattleAnimSpritePal_JaggedMusicNote[];
extern const u32 gBattleAnimSpritePal_Pokeball[];
extern const u32 gBattleAnimSpritePal_LetterZ[];
extern const u32 gBattleAnimSpritePal_RapidSpin[];
extern const u32 gBattleAnimSpritePal_TriAttackTriangle[];
extern const u32 gBattleAnimSpritePal_WispOrb[];
extern const u32 gBattleAnimSpritePal_GoldStars[];
extern const u32 gBattleAnimSpritePal_EclipsingOrb[];
extern const u32 gBattleAnimSpritePal_GrayOrb[];
extern const u32 gBattleAnimSpritePal_BlueOrb[];
extern const u32 gBattleAnimSpritePal_RedOrb2[];
extern const u32 gBattleAnimSpritePal_PinkPetal[];
extern const u32 gBattleAnimSpritePal_PainSplit[];
extern const u32 gBattleAnimSpritePal_Confetti[];
extern const u32 gBattleAnimSpritePal_GreenStar[];
extern const u32 gBattleAnimSpritePal_PinkCloud[];
extern const u32 gBattleAnimSpritePal_SweatDrop[];
extern const u32 gBattleAnimSpritePal_GuardRing[];
extern const u32 gCureBubblesGfx[];
extern const u32 gCureBubblesPal[];
extern const u32 gCureBubblesTilemap[];
extern const u32 gBattleAnimSpritePal_PurpleScratch[];
extern const u32 gBattleAnimSpritePal_SmallRedEye[];
extern const u32 gBattleAnimSpritePal_HollowOrb[];
extern const u32 gBattleAnimSpritePal_BluegreenOrb[];
extern const u32 gBattleAnimSpritePal_PawPrint[];
extern const u32 gBattleAnimSpritePal_PurpleFlame[];
extern const u32 gBattleAnimSpritePal_RedBall[];
extern const u32 gBattleAnimSpritePal_SmellingsaltEffect[];
extern const u32 gBattleAnimSpritePal_Meteor[];
extern const u32 gBattleAnimSpritePal_FlatRock[];
extern const u32 gBattleAnimSpritePal_MagnifyingGlass[];
extern const u32 gBattleAnimSpritePal_BrownOrb[];
extern const u32 gBattleAnimSpritePal_MetalSoundWaves[];
extern const u32 gBattleAnimSpritePal_FlyingDirt[];
extern const u32 gBattleAnimSpritePal_IcicleSpear[];
extern const u32 gBattleAnimSpritePal_Hail[];
extern const u32 gBattleAnimSpritePal_GlowyRedOrb[];
extern const u32 gBattleAnimSpritePal_GlowyGreenOrb[];
extern const u32 gBattleAnimSpritePal_GreenSpike[];
extern const u32 gBattleAnimSpritePal_WhiteCircleOfLight[];
extern const u32 gBattleAnimSpritePal_GlowyBlueOrb[];
extern const u32 gBattleAnimSpritePal_Pokeblock[];
extern const u32 gBattleAnimSpritePal_WhiteFeather[];
extern const u32 gBattleAnimSpritePal_Sparkle6[];
extern const u32 gBattleAnimSpritePal_Splash[];
extern const u32 gBattleAnimSpritePal_Gem1[];
extern const u32 gBattleAnimSpritePal_SlamHit2[];
extern const u32 gBattleAnimSpritePal_Recycle[];
extern const u32 gBattleAnimSpritePal_RedParticles[];
extern const u32 gBattleAnimSpritePal_Protect[];
extern const u32 gBattleAnimSpritePal_DirtMound[];
extern const u32 gBattleAnimSpritePal_Shock3[];
extern const u32 gBattleAnimSpritePal_WeatherBall[];
extern const u32 gBattleAnimSpritePal_Bird[];
extern const u32 gBattleAnimSpritePal_CrossImpact[];
extern const u32 gBattleAnimSpritePal_Slash2[];
extern const u32 gBattleAnimSpritePal_WhipHit[];
extern const u32 gBattleAnimSpritePal_BlueRing2[];

extern const u32 gBattleAnimBgImage_Dark[];
extern const u32 gBattleAnimBgImage_Ghost[];
extern const u32 gBattleAnimBgImage_Psychic[];
extern const u32 gBattleAnimBgImage_Impact[];
extern const u32 gBattleAnimBgImage_Drill[];
extern const u32 gBattleAnimBgImage_Highspeed[];
extern const u32 gBattleAnimBgImage_Thunder[];
extern const u32 gBattleAnimBgImage_Guillotine[];
extern const u32 gBattleAnimBgImage_Ice[];
extern const u32 gBattleAnimBgImage_Cosmic[];
extern const u32 gBattleAnimBgImage_InAir[];
extern const u32 gBattleAnimBgImage_Aurora[];
extern const u32 gBattleAnimBgImage_Fissure[];
extern const u32 gBattleAnimBgPalette_Dark[];
extern const u32 gBattleAnimBgPalette_Ghost[];
extern const u32 gBattleAnimBgPalette_Psychic[];
extern const u32 gBattleAnimBgPalette_Impact[];
extern const u32 gBattleAnimBgPalette_Drill[];
extern const u32 gBattleAnimBgPalette_Highspeed[];
extern const u32 gBattleAnimBgPalette_Thunder[];
extern const u32 gBattleAnimBgPalette_Guillotine[];
extern const u32 gBattleAnimBgPalette_Ice[];
extern const u32 gBattleAnimBgPalette_Cosmic[];
extern const u32 gBattleAnimBgPalette_InAir[];
extern const u32 gBattleAnimBgPalette_Sky[];
extern const u32 gBattleAnimBgPalette_Aurora[];
extern const u32 gBattleAnimBgPalette_Fissure[];
extern const u32 gBattleAnimBgPalette_Bug[];
extern const u32 gBattleAnimBgPalette_Solarbeam[];
extern const u32 gBattleAnimBgTilemap_Dark[];
extern const u32 gBattleAnimBgTilemap_Ghost[];
extern const u32 gBattleAnimBgTilemap_Psychic[];
extern const u32 gBattleAnimBgTilemap_ImpactOpponent[];
extern const u32 gBattleAnimBgTilemap_ImpactPlayer[];
extern const u32 gBattleAnimBgTilemap_ImpactContests[];
extern const u32 gBattleAnimBgTilemap_Drill[];
extern const u32 gBattleAnimBgTilemap_DrillContests[];
extern const u32 gBattleAnimBgTilemap_HighspeedOpponent[];
extern const u32 gBattleAnimBgTilemap_HighspeedPlayer[];
extern const u32 gBattleAnimMaskImage_LightBeam[];
extern const u32 gBattleAnimMaskPalette_LightBeam[];
extern const u32 gBattleAnimMaskTilemap_LightBeam[];
extern const u32 gBattleAnimBgTilemap_Thunder[];
extern const u32 gBattleAnimBgTilemap_GuillotineOpponent[];
extern const u32 gBattleAnimBgTilemap_GuillotinePlayer[];
extern const u32 gBattleAnimBgTilemap_GuillotineContests[];
extern const u32 gBattleAnimBgTilemap_Ice[];
extern const u32 gBattleAnimBgTilemap_Cosmic[];
extern const u32 gBattleAnimBgTilemap_InAir[];
extern const u32 gBattleAnimBgTilemap_Aurora[];
extern const u32 gBattleAnimBgTilemap_Fissure[];

extern const u32 gMetalShineGfx[];
extern const u32 gMetalShinePalette[];
extern const u32 gMetalShineTilemap[];

extern const u32 gUnknown_08C20668[];
extern const u32 gUnknown_08C20684[];
extern const u32 gBattleStatMask_Gfx[];
extern const u32 gBattleStatMask1_Tilemap[];
extern const u32 gBattleStatMask2_Tilemap[];
extern const u32 gBattleStatMask1_Pal[];
extern const u32 gBattleStatMask2_Pal[];
extern const u32 gBattleStatMask3_Pal[];
extern const u32 gBattleStatMask4_Pal[];
extern const u32 gBattleStatMask5_Pal[];
extern const u32 gBattleStatMask6_Pal[];
extern const u32 gBattleStatMask7_Pal[];
extern const u32 gBattleStatMask8_Pal[];

extern const u32 gContestMiscGfx[];
extern const u32 gContestAudienceGfx[];
extern const u8 gContestApplauseMeterGfx[];
extern const u8 gContestNextTurnNumbersGfx[];
extern const u8 gContestNextTurnRandomGfx[];
extern const u32 gOldContestGfx[];
extern const u32 gOldContestPalette[];
extern const u32 gUnknown_08C17170[];
extern const u32 gUnknown_08C17980[];
extern const u32 gTiles_8C19450[];
extern const u32 gContestNextTurnGfx[];
extern const u16 gContestPal[];
extern const u32 gUnknown_08C19168[];
extern const u32 gContestApplauseGfx[];
extern const u32 gContestJudgeGfx[];
extern const u32 gContestJudgeSymbolsGfx[];
extern const u32 gContest3Pal[];

extern const u32 gBattleAnimBgTilemap_SurfOpponent[];
extern const u32 gBattleAnimBgTilemap_SurfPlayer[];
extern const u32 gBattleAnimBgTilemap_SurfContest[];
extern const u32 gBattleAnimBgImage_Surf[];
extern const u32 gBattleAnimBgPalette_Surf[];
extern const u32 gBattleAnimBackgroundImageMuddyWater_Pal[];

extern const u32 gEnemyMonShadow_Gfx[];

extern const u32 gBattleAnimFogTilemap[];

extern const u32 gUsePokeblockGraph_Gfx[];
extern const u32 gUsePokeblockGraph_Tilemap[];
extern const u16 gUsePokeblockGraph_Pal[];
extern const u16 gUsePokeblockNatureWin_Pal[];


extern const u32 gBerryBlenderArrowTiles[];
extern const u32 gBerryBlenderStartTiles[];
extern const u32 gBerryBlenderMarubatsuTiles[];
extern const u32 gBerryBlenderParticlesTiles[];
extern const u32 gBerryBlenderCountdownNumbersTiles[];
extern const u16 gBerryBlenderMiscPalette[];
extern const u16 gBerryBlenderArrowPalette[];
extern const u32 sBlenderCenterGfx[];
extern const u32 gUnknown_08D91DB8[];
extern const u32 gUnknown_08D927EC[];


extern const u32 gSlotMachineReelTime_Gfx[];
extern const u8 gSlotMachineReelTimeNumber0[];
extern const u8 gSlotMachineReelTimeNumber1[];
extern const u8 gSlotMachineReelTimeNumber2[];
extern const u8 gSlotMachineReelTimeNumber3[];
extern const u8 gSlotMachineReelTimeNumber4[];
extern const u8 gSlotMachineReelTimeNumber5[];
extern const u8 gSlotMachineReelTimeShadow[];
extern const u8 gUnknown_08DD1A18[];
extern const u8 gSlotMachineReelTimeLargeBolt0[];
extern const u8 gSlotMachineReelTimeLargeBolt1[];
extern const u8 gSlotMachineReelTimePikaAura[];
extern const u8 gSlotMachineReelTimeExplosion0[];
extern const u8 gSlotMachineReelTimeExplosion1[];
extern const u8 gSlotMachineReelTimeDuck[];
extern const u8 gSlotMachineReelTimeSmoke[];
extern const u8 gSlotMachineReelTimeBolt[];
extern const u8 gSlotMachineReelSymbol1Tiles[];
extern const u8 gSlotMachineReelSymbol2Tiles[];
extern const u8 gSlotMachineReelSymbol3Tiles[];
extern const u8 gSlotMachineReelSymbol4Tiles[];
extern const u8 gSlotMachineReelSymbol5Tiles[];
extern const u8 gSlotMachineReelSymbol6Tiles[];
extern const u8 gSlotMachineReelSymbol7Tiles[];
extern const u8 gSlotMachineNumber0Tiles[];
extern const u8 gSlotMachineNumber1Tiles[];
extern const u8 gSlotMachineNumber2Tiles[];
extern const u8 gSlotMachineNumber3Tiles[];
extern const u8 gSlotMachineNumber4Tiles[];
extern const u8 gSlotMachineNumber5Tiles[];
extern const u8 gSlotMachineNumber6Tiles[];
extern const u8 gSlotMachineNumber7Tiles[];
extern const u8 gSlotMachineNumber8Tiles[];
extern const u8 gSlotMachineNumber9Tiles[];
extern const u8 gUnknown_08DD19F8[];
extern const u32 gSlotMachineMenu_Gfx[];
extern const u16 gSlotMachineMenu_Tilemap[];
extern const u16 gUnknown_08DCEC70[];
extern const u16 gSlotMachineMenu_Pal[];
extern const u16 gUnknown_08DCF230[];
extern const u16 gUnknown_08DCF170[];
extern const u16 gUnknown_08DCF1B0[];
extern const u16 gSlotMachineReelTime_Pal[];
extern const u16 gUnknown_08DCF1F0[];
extern const u16 gUnknown_08DCF210[];
extern const u16 gUnknown_08DCF230[];
extern const u16 gUnknown_08DCF190[];

extern const u32 gBattleAnimBgTilemap_Sandstorm[];
extern const u32 gBattleAnimBgImage_Sandstorm[];


extern const u32 gPokedexAreaScreenAreaUnknown_Gfx[];
extern const u16 gPokedexAreaScreenAreaUnknown_Pal[];


extern const u32 gPSSMenu_Gfx[];
extern const u16 gPSSMenu_Pal[];
extern const u32 gWallpaperIcon_Plusle[];
extern const u32 gWallpaperIcon_Cross[];
extern const u32 gWallpaperIcon_Bolt[];
extern const u32 gUnknown_08DD36C8[];
extern const u32 gWallpaperTiles_Ribbon[];
extern const u32 gWallpaperTilemap_Ribbon[];
extern const u16 gWallpaperPalettes_Ribbon[][16];
extern const u32 gWallpaperTiles_Horizontal[];
extern const u32 gWallpaperTilemap_Horizontal[];
extern const u16 gWallpaperPalettes_Horizontal[][16];


extern const u32 gUnknown_08DBA5B8[];
extern const u16 gUnknown_08DBA518[];
extern const u32 gCableCar_Gfx[];
extern const u32 gCableCarDoor_Gfx[];
extern const u32 gCableCarCord_Gfx[];
extern const u16 gCableCar_Pal[];


extern const u16 gTradeMenu_Pal[];
extern const u8 gTradeMenu_Gfx[];
extern const u16 gUnknown_08DDCF04[];
extern const u16 gTradeGba2_Pal[];
extern const u8 gTradeGba_Gfx[];
extern const u16 gTradeMenuMonBox_Tilemap[];
extern const u8 gTradeButtons_Gfx[];
extern const u16 gUnknown_08DDB444[];


extern const u32 gPartyMenuPokeball_Gfx[];
extern const u32 gPartyMenuPokeballSmall_Gfx[];
extern const u32 gStatusPal_Icons[];
extern const u32 gPartyMenuPokeball_Pal[];
extern const u32 gStatusPal_Icons[];


extern const u32 gRouletteMenuTiles[];
extern const u32 gRouletteWheelTiles[];
extern const u32 gRouletteCenter_Gfx[];
extern const u32 gRouletteHeadersTiles[];
extern const u32 gRouletteCreditTiles[];
extern const u32 gRouletteNumbersTiles[];
extern const u32 gRouletteMultiplierTiles[];


extern const u32 gUnknown_08C19588[];
extern const u32 gUnknown_08C19EEC[];
extern const u32 gUnknown_08C1A000[];
extern const u32 gUnknown_08C1A12C[];
extern const u32 gUnknown_08C1A2B4[];
extern const u16 gUnknown_08DC6498[];
extern const u16 gUnknown_08DC63F8[];
extern const u16 gUnknown_08DC6420[];
extern const u16 gUnknown_08DC6448[];
extern const u16 gUnknown_08DC6470[];
extern const u16 gUnknown_08DC64AC[];
extern const u16 gUnknown_08DC64C0[];
extern const u16 gUnknown_08DC64D4[];
extern const u16 gUnknown_08DC64E8[];
extern const u16 gUnknown_08DC64FC[];
extern const u16 gUnknown_08DC6510[];


extern const u16 gHoennTrainerCard0Star_Pal[];
extern const u32 gHoennTrainerCard_Gfx[];
extern const u16 gKantoTrainerCard0Star_Pal[];
extern const u32 gKantoTrainerCard_Gfx[];
extern const u32 gKantoTrainerCardBg_Tilemap[];
extern const u32 gHoennTrainerCardBack_Tilemap[];
extern const u32 gKantoTrainerCardBack_Tilemap[];
extern const u32 gHoennTrainerCardFront_Tilemap[];
extern const u32 gKantoTrainerCardFront_Tilemap[];
extern const u32 gHoennTrainerCardFrontLink_Tilemap[];
extern const u32 gKantoTrainerCardFrontLink_Tilemap[];
extern const u32 gHoennTrainerCardBg_Tilemap[];


extern const u32 gUnknown_08DE08C8[];
extern const u32 gUnknown_08DE2084[];
extern const u32 gUnknown_08DE3350[];
extern const u32 gUnknown_08DE3374[];
extern const u32 gUnknown_08DE3060[];
extern const u32 gFrontierPassMedals_Gfx[];
extern const u16 gUnknown_08DE07C8[][16];
extern const u16 gFrontierPassCursor_Pal[];
extern const u16 gFrontierPassMedalsGold_Pal[];
extern const u16 gFrontierPassMedalsSilver_Pal[];
extern const u16 gFrontierPassMapCursor_Pal[];


extern const u32 gEasyChatWindow_Gfx[];
extern const u32 gEasyChatWindow_Tilemap[];
extern const u32 gEasyChatMode_Gfx[];
extern const u16 gEasyChatMode_Pal[];
extern const u32 gEasyChatCursor_Gfx[];
extern const u16 gEasyChatCursor_Pal[];
extern const u32 gEasyChatRightWindow_Gfx[];
extern const u16 gEasyChatRightWindow_Pal[];


extern const u32 gUsePokeblockCondition_Gfx[];


extern const u16 gUnknown_08DD4BB0[];
extern const u16 gUnknown_08DD4BD0[];
extern const u32 gUnknown_08DD4BF0[];
extern const u32 gUnknown_08DD4C4C[];
extern const u32 gUnknown_08DD4CF8[];
extern const u16 gLinkMiscMenu_Pal[];
extern const u32 gLinkMiscMenu_Gfx[];
extern const u32 gLinkMiscMenu_Tilemap[];


extern const u8 gPokenavConditionCancel_Gfx[];
extern const u16 gPokenavConditionCancel_Pal[];
extern const u8 gUsePokeblockUpDown_Gfx[];
extern const u16 gUsePokeblockUpDown_Pal[];
extern const u16 gUsePokeblockCondition_Pal[];


extern const u32 gUnknown_08DE34B8[];
extern const u16 gUnknown_08DE3398[];
extern const u32 gUnknown_08DE3FD4[];


extern const u32 gPokenavMessageBox_Gfx[];
extern const u32 gPokenavMessageBox_Tilemap[];
extern const u16 gPokenavMessageBox_Pal[];
extern const u32 gPokenavOptions_Gfx[];
extern const u16 gPokenavOptions_Pal[];
# 16 "src/easy_chat.c" 2
# 1 "include/international_string_util.h" 1



# 1 "include/menu.h" 1



# 1 "include/task.h" 1
# 10 "include/task.h"
typedef void (*TaskFunc)(u8 taskId);

struct Task
{
    TaskFunc func;
    bool8 isActive;
    u8 prev;
    u8 next;
    u8 priority;
    s16 data[16];
};

extern struct Task gTasks[];

void ResetTasks(void);
u8 CreateTask(TaskFunc func, u8 priority);
void DestroyTask(u8 taskId);
void RunTasks(void);
void TaskDummy(u8 taskId);
void SetTaskFuncWithFollowupFunc(u8 taskId, TaskFunc func, TaskFunc followupFunc);
void SwitchTaskToFollowupFunc(u8 taskId);
bool8 FuncIsActiveTask(TaskFunc func);
u8 FindTaskIdByFunc(TaskFunc func);
u8 GetTaskCount(void);
void SetWordTaskArg(u8 taskId, u8 dataElem, u32 value);
u32 GetWordTaskArg(u8 taskId, u8 dataElem);
# 5 "include/menu.h" 2
# 1 "gflib/text.h" 1
# 157 "gflib/text.h"
enum
{
    FONTATTR_MAX_LETTER_WIDTH,
    FONTATTR_MAX_LETTER_HEIGHT,
    FONTATTR_LETTER_SPACING,
    FONTATTR_LINE_SPACING,
    FONTATTR_UNKNOWN,
    FONTATTR_COLOR_FOREGROUND,
    FONTATTR_COLOR_BACKGROUND,
    FONTATTR_COLOR_SHADOW
};

struct TextPrinterSubStruct
{
    u8 glyphId:4;
    bool8 hasPrintBeenSpedUp:1;
    u8 unk:3;
    u8 downArrowDelay:5;
    u8 downArrowYPosIdx:2;
    bool8 hasGlyphIdBeenSet:1;
    u8 autoScrollDelay;
};

struct TextPrinterTemplate
{
    const u8* currentChar;
    u8 windowId;
    u8 fontId;
    u8 x;
    u8 y;
    u8 currentX;
    u8 currentY;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 unk:4;
    u8 fgColor:4;
    u8 bgColor:4;
    u8 shadowColor:4;
};

struct TextPrinter
{
    struct TextPrinterTemplate printerTemplate;

    void (*callback)(struct TextPrinterTemplate *, u16);

    u8 subStructFields[7];
    u8 active;
    u8 state;
    u8 textSpeed;
    u8 delayCounter;
    u8 scrollDistance;
    u8 minLetterSpacing;
    u8 japanese;
};

struct FontInfo
{
    u16 (*fontFunction)(struct TextPrinter *x);
    u8 maxLetterWidth;
    u8 maxLetterHeight;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 unk:4;
    u8 fgColor:4;
    u8 bgColor:4;
    u8 shadowColor:4;
};

extern const struct FontInfo *gFonts;

struct GlyphWidthFunc
{
    u32 fontId;
    u32 (*func)(u16 glyphId, bool32 isJapanese);
};

struct KeypadIcon
{
    u16 tileOffset;
    u8 width;
    u8 height;
};

typedef struct {
    bool8 canABSpeedUpPrint:1;
    bool8 useAlternateDownArrow:1;
    bool8 autoScroll:1;
    bool8 forceMidTextSpeed:1;
} TextFlags;

struct Struct_03002F90
{
    u32 unk0[8];
    u32 unk20[8];
    u32 unk40[8];
    u32 unk60[8];
    u8 unk80;
    u8 unk81;
};

extern TextFlags gTextFlags;

extern u8 gUnknown_03002F84;
extern struct Struct_03002F90 gUnknown_03002F90;

void SetFontsPointer(const struct FontInfo *fonts);
void DeactivateAllTextPrinters(void);
u16 AddTextPrinterParameterized(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16));
bool16 AddTextPrinter(struct TextPrinterTemplate *template, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16));
void RunTextPrinters(void);
bool16 IsTextPrinterActive(u8 id);
u32 RenderFont(struct TextPrinter *textPrinter);
void GenerateFontHalfRowLookupTable(u8 fgColor, u8 bgColor, u8 shadowColor);
void SaveTextColors(u8 *fgColor, u8 *bgColor, u8 *shadowColor);
void RestoreTextColors(u8 *fgColor, u8 *bgColor, u8 *shadowColor);
void DecompressGlyphTile(const void *src_, void *dest_);
u8 GetLastTextColor(u8 colorType);
void CopyGlyphToWindow(struct TextPrinter *x);
void ClearTextSpan(struct TextPrinter *textPrinter, u32 width);
u8 GetMenuCursorDimensionByFont(u8, u8);

u16 Font0Func(struct TextPrinter *textPrinter);
u16 Font1Func(struct TextPrinter *textPrinter);
u16 Font2Func(struct TextPrinter *textPrinter);
u16 Font3Func(struct TextPrinter *textPrinter);
u16 Font4Func(struct TextPrinter *textPrinter);
u16 Font5Func(struct TextPrinter *textPrinter);
u16 Font7Func(struct TextPrinter *textPrinter);
u16 Font8Func(struct TextPrinter *textPrinter);

void TextPrinterInitDownArrowCounters(struct TextPrinter *textPrinter);
void TextPrinterDrawDownArrow(struct TextPrinter *textPrinter);
void TextPrinterClearDownArrow(struct TextPrinter *textPrinter);
bool8 TextPrinterWaitAutoMode(struct TextPrinter *textPrinter);
bool16 TextPrinterWaitWithDownArrow(struct TextPrinter *textPrinter);
bool16 TextPrinterWait(struct TextPrinter *textPrinter);
void DrawDownArrow(u8 windowId, u16 x, u16 y, u8 bgColor, bool8 drawArrow, u8 *counter, u8 *yCoordIndex);
u16 RenderText(struct TextPrinter *textPrinter);
u32 GetStringWidthFixedWidthFont(const u8 *str, u8 fontId, u8 letterSpacing);
u32 (*GetFontWidthFunc(u8 glyphId))(u16, bool32);
s32 GetStringWidth(u8 fontId, const u8 *str, s16 letterSpacing);
u8 RenderTextFont9(u8 *pixels, u8 fontId, u8 *str);
u8 DrawKeypadIcon(u8 windowId, u8 keypadIconId, u16 x, u16 y);
u8 GetKeypadIconTileOffset(u8 keypadIconId);
u8 GetKeypadIconWidth(u8 keypadIconId);
u8 GetKeypadIconHeight(u8 keypadIconId);
void SetDefaultFontsPointer(void);
u8 GetFontAttribute(u8 fontId, u8 attributeId);
u8 GetMenuCursorDimensionByFont(u8 fontId, u8 whichDimension);
void DecompressGlyphFont0(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont0(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont7(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont7(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont8(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont8(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont2(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont2(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont1(u16 glyphId, bool32 isJapanese);
u32 GetGlyphWidthFont1(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont9(u16 glyphId);


u16 Font6Func(struct TextPrinter *textPrinter);
u32 GetGlyphWidthFont6(u16 glyphId, bool32 isJapanese);
# 6 "include/menu.h" 2
# 1 "gflib/window.h" 1





enum
{
    WINDOW_BG,
    WINDOW_TILEMAP_LEFT,
    WINDOW_TILEMAP_TOP,
    WINDOW_WIDTH,
    WINDOW_HEIGHT,
    WINDOW_PALETTE_NUM,
    WINDOW_BASE_BLOCK,
    WINDOW_TILE_DATA
};

struct WindowTemplate
{
    u8 bg;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u8 paletteNum;
    u16 baseBlock;
};
# 40 "gflib/window.h"
struct Window
{
    struct WindowTemplate window;
    u8 *tileData;
};

bool16 InitWindows(const struct WindowTemplate *templates);
u16 AddWindow(const struct WindowTemplate *template);
int AddWindowWithoutTileMap(const struct WindowTemplate *template);
void RemoveWindow(u8 windowId);
void FreeAllWindowBuffers(void);
void CopyWindowToVram(u8 windowId, u8 mode);
void CopyWindowRectToVram(u32 windowId, u32 mode, u32 x, u32 y, u32 w, u32 h);
void PutWindowTilemap(u8 windowId);
void PutWindowRectTilemapOverridePalette(u8 windowId, u8 x, u8 y, u8 width, u8 height, u8 palette);
void ClearWindowTilemap(u8 windowId);
void PutWindowRectTilemap(u8 windowId, u8 x, u8 y, u8 width, u8 height);
void BlitBitmapToWindow(u8 windowId, const u8 *pixels, u16 x, u16 y, u16 width, u16 height);
void BlitBitmapRectToWindow(u8 windowId, const u8 *pixels, u16 srcX, u16 srcY, u16 srcWidth, int srcHeight, u16 destX, u16 destY, u16 rectWidth, u16 rectHeight);
void FillWindowPixelRect(u8 windowId, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void CopyToWindowPixelBuffer(u8 windowId, const void *src, u16 size, u16 tileOffset);
void FillWindowPixelBuffer(u8 windowId, u8 fillValue);
void ScrollWindow(u8 windowId, u8 direction, u8 distance, u8 fillValue);
void CallWindowFunction(u8 windowId, void ( *func)(u8, u8, u8, u8, u8, u8));
bool8 SetWindowAttribute(u8 windowId, u8 attributeId, u32 value);
u32 GetWindowAttribute(u8 windowId, u8 attributeId);
u16 AddWindow8Bit(const struct WindowTemplate *template);
void FillWindowPixelBuffer8Bit(u8 windowId, u8 fillValue);
void FillWindowPixelRect8Bit(u8 windowId, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void BlitBitmapRectToWindow4BitTo8Bit(u8 windowId, const u8 *pixels, u16 srcX, u16 srcY, u16 srcWidth, int srcHeight, u16 destX, u16 destY, u16 rectWidth, u16 rectHeight, u8 paletteNum);
void CopyWindowToVram8Bit(u8 windowId, u8 mode);

extern struct Window gWindows[];
extern void* gUnknown_03002F70[];
extern u32 filler_03002F58;
extern u32 filler_03002F5C;
extern u32 filler_03002F64;
# 7 "include/menu.h" 2




enum
{
    SAVE_MENU_NAME,
    SAVE_MENU_CAUGHT,
    SAVE_MENU_PLAY_TIME,
    SAVE_MENU_LOCATION,
    SAVE_MENU_BADGES,
};

struct MenuAction
{
    const u8 *text;
    union {
        void (*void_u8)(u8);
        u8 (*u8_void)(void);
    } func;
};

extern const u16 gUnknown_0860F074[];

void FreeAllOverworldWindowBuffers(void);
void InitStandardTextBoxWindows(void);
void sub_8197200(void);
u16 RunTextPrintersAndIsPrinter0Active(void);
void LoadMessageBoxAndBorderGfx(void);
void DrawDialogueFrame(u8 windowId, bool8 copyToVram);
void ClearStdWindowAndFrame(u8 windowId, bool8 copyToVram);
u16 AddTextPrinterParameterized2(u8 windowId, u8 fontId, const u8 *str, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16), u8 fgColor, u8 bgColor, u8 shadowColor);
void PrintPlayerNameOnWindow(u8, const u8*, u16, u16);
void ClearDialogWindowAndFrame(u8 windowId, bool8 copyToVram);
void SetStandardWindowBorderStyle(u8 windowId, bool8 copyToVram);
void DisplayYesNoMenuDefaultYes(void);
u32 GetPlayerTextSpeed(void);
u8 GetPlayerTextSpeedDelay(void);
void Menu_LoadStdPalAt(u16 arg0);
void AddTextPrinterWithCallbackForMessage(bool8 a1, void (*callback)(struct TextPrinterTemplate *, u16));
void sub_8199DF0(u32 bg, u8 a1, int a2, int a3);
void AddTextPrinterParameterized3(u8 windowId, u8 fontId, u8 left, u8 top, const u8 *color, s8 speed, const u8 *str);
void ClearStdWindowAndFrameToTransparent(u8 windowId, bool8 copyToVram);
void SetWindowTemplateFields(struct WindowTemplate* template, u8 priority, u8 tilemapLeft, u8 tilemapTop, u8 width, u8 height, u8 palNum, u16 baseBlock);
void DrawStdFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 tileStart, u8 palette);
void ScheduleBgCopyTilemapToVram(u8 bgNum);
void PrintMenuTable(u8 windowId, u8 itemCount, const struct MenuAction *strs);
u8 InitMenuInUpperLeftCornerPlaySoundWhenAPressed(u8 windowId, u8 numItems, u8 initialCursorPos);
u8 Menu_GetCursorPos(void);
s8 Menu_ProcessInput(void);
s8 Menu_ProcessInputNoWrap(void);
void blit_move_info_icon(u8 winId, u8 a2, u16 x, u16 y);
void ResetTempTileDataBuffers(void);
void *DecompressAndCopyTileDataToVram(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
bool8 FreeTempTileDataBuffersIfPossible(void);
struct WindowTemplate CreateWindowTemplate(u8 bg, u8 left, u8 top, u8 width, u8 height, u8 paletteNum, u16 baseBlock);
void CreateYesNoMenu(const struct WindowTemplate *windowTemplate, u16 borderFirstTileNum, u8 borderPalette, u8 initialCursorPos);
void DecompressAndLoadBgGfxUsingHeap(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
s8 Menu_ProcessInputNoWrapClearOnChoose(void);
s8 ProcessMenuInput_other(void);
void do_scheduled_bg_tilemap_copies_to_vram(void);
void clear_scheduled_bg_copies_to_vram(void);
void AddTextPrinterParameterized4(u8 windowId, u8 fontId, u8 x, u8 y, u8 letterSpacing, u8 lineSpacing, const u8 *color, s8 speed, const u8 *str);
void DrawDialogFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 a2, u8 a3);
void sub_81995E4(u8 windowId, u8 optionsNo, const struct MenuAction *actions, const u8 *actionIds);
void ClearDialogWindowAndFrameToTransparent(u8 windowId, bool8 copyToVram);
u16 sub_8198AA4(u8, u8, u8, u8, u8, u8, u16);
void *malloc_and_decompress(const void *src, u32 *sizeOut);
u16 copy_decompressed_tile_data_to_vram(u8 bgId, const void *src, u16 size, u16 offset, u8 mode);
void AddTextPrinterForMessage(bool8 allowSkippingDelayWithButtonPress);
void AddItemMenuActionTextPrinters(u8 windowId, u8 fontId, u8 left, u8 top, u8 letterSpacing, u8 lineHeight, u8 itemCount, const struct MenuAction *strs, const u8 *a8);
void sub_8198DBC(u8 windowId, u8 fontId, u8 left, u8 top, u8 a4, u8 itemCount, u8 itemCount2, const struct MenuAction *strs, const u8 *a8);
u8 sub_8199944(u8 windowId, u8 optionWidth, u8 columns, u8 rows, u8 initialCursorPos);
u8 sub_8199134(s8, s8);
u8 GetStartMenuWindowId(void);
void sub_819A2BC(u8, u8);
u8 Menu_MoveCursor(s8 cursorDelta);
u8 Menu_MoveCursorNoWrapAround(s8 cursorDelta);
void DrawStdWindowFrame(u8 windowId, bool8 CopyToVram);
u8 sub_81979C4(u8 a1);
u8 sub_81983AC(u8 windowId, u8 fontId, u8 left, u8 top, u8 cursorHeight, u8 numChoices, u8 initialCursorPos);
void sub_819786C(u8 windowId, bool8 copyToVram);
void AddTextPrinterForMessage_2(bool8 allowSkippingDelayWithButtonPress);
void RemoveStartMenuWindow(void);
void DisplayYesNoMenuWithDefault(u8 initialCursorPos);
void BufferSaveMenuText(u8 textId, u8 *dest, u8 color);
void RemoveMapNamePopUpWindow(void);
u8 GetMapNamePopUpWindowId(void);
u8 AddMapNamePopUpWindow(void);
void AddTextPrinterParameterized5(u8 windowId, u8 fontId, const u8 *str, u8 left, u8 top, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16), u8 letterSpacing, u8 lineSpacing);
void SetBgTilemapPalette(u8 bgId, u8 left, u8 top, u8 width, u8 height, u8 palette);
void sub_8199D3C(void *ptr, int delta, int width, int height, bool32 is8BPP);
void sub_8198204(const u8 *string, const u8 *string2, u8 a3, u8 a4, bool8 copyToVram);
void sub_8197AE8(bool8 copyToVram);
void PrintMenuGridTable(u8 windowId, u8 optionWidth, u8 columns, u8 rows, const struct MenuAction *strs);
s8 Menu_ProcessInputGridLayout(void);
u8 InitMenuInUpperLeftCorner(u8 windowId, u8 itemCount, u8 initialCursorPos, bool8 APressMuted);
s8 Menu_ProcessInputNoWrapAround_other(void);
void CopyToBufferFromBgTilemap(u8 bgId, u16 *dest, u8 left, u8 top, u8 width, u8 height);
u8 sub_81980F0(u8 bg, u8 xPos, u8 yPos, u8 palette, u16 baseTile);
void sub_8198314(void);
void sub_8198180(const u8 *string, u8 a2, bool8 copyToVram);
void ResetBgPositions(void);
void AddTextPrinterWithCustomSpeedForMessage(bool8 allowSkippingDelayWithButtonPress, u8 speed);
void sub_8198C78(void);
void PrintTextArray(u8 windowId, u8 fontId, u8 left, u8 top, u8 lineHeight, u8 itemCount, const struct MenuAction *strs);
# 5 "include/international_string_util.h" 2
# 1 "include/list_menu.h" 1
# 14 "include/list_menu.h"
enum
{
    SCROLL_ARROW_LEFT,
    SCROLL_ARROW_RIGHT,
    SCROLL_ARROW_UP,
    SCROLL_ARROW_DOWN
};

struct ListMenu;

struct ListMenuItem
{
    const u8 *name;
    s32 id;
};

struct ListMenuTemplate
{
    const struct ListMenuItem *items;
    void (* moveCursorFunc)(s32 itemIndex, bool8 onInit, struct ListMenu *list);
    void (* itemPrintFunc)(u8 windowId, s32 itemId, u8 y);
    u16 totalItems;
    u16 maxShowed;
    u8 windowId;
    u8 header_X;
    u8 item_X;
    u8 cursor_X;
    u8 upText_Y:4;
    u8 cursorPal:4;
    u8 fillValue:4;
    u8 cursorShadowPal:4;
    u8 lettersSpacing:3;
    u8 itemVerticalPadding:3;
    u8 scrollMultiple:2;
    u8 fontId:6;
    u8 cursorKind:2;
};

struct ListMenu
{
    struct ListMenuTemplate template;
    u16 scrollOffset;
    u16 selectedRow;
    u8 unk_1C;
    u8 unk_1D;
    u8 taskId;
    u8 unk_1F;
};

struct ListMenuWindowRect
{
    u8 x;
    u8 y;
    u8 width;
    u8 height;
    u8 palNum;
};

struct ScrollArrowsTemplate
{
    u8 firstArrowType;
    u8 firstX;
    u8 firstY;
    u8 secondArrowType;
    u8 secondX;
    u8 secondY;
    u16 fullyUpThreshold;
    u16 fullyDownThreshold;
    u16 tileTag;
    u16 palTag;
    u8 palNum;
};

struct CursorStruct
{
    u8 left;
    u8 top;
    u16 rowWidth;
    u16 rowHeight;
    u16 tileTag;
    u16 palTag;
    u8 palNum;
};

extern struct ScrollArrowsTemplate gTempScrollArrowTemplate;
extern struct ListMenuTemplate gMultiuseListMenuTemplate;

s32 DoMysteryGiftListMenu(const struct WindowTemplate *windowTemplate, const struct ListMenuTemplate *listMenuTemplate, u8 arg2, u16 tileNum, u16 palNum);
u8 ListMenuInit(struct ListMenuTemplate *listMenuTemplate, u16 scrollOffset, u16 selectedRow);
u8 ListMenuInitInRect(struct ListMenuTemplate *listMenuTemplate, struct ListMenuWindowRect *arg1, u16 scrollOffset, u16 selectedRow);
s32 ListMenu_ProcessInput(u8 listTaskId);
void DestroyListMenuTask(u8 listTaskId, u16 *scrollOffset, u16 *selectedRow);
void RedrawListMenu(u8 listTaskId);
void ChangeListMenuPals(u8 listTaskId, u8 cursorPal, u8 fillValue, u8 cursorShadowPal);
void ChangeListMenuCoords(u8 listTaskId, u8 x, u8 y);
s32 ListMenuTestInput(struct ListMenuTemplate *template, u32 scrollOffset, u32 selectedRow, u16 keys, u16 *newScrollOffset, u16 *newSelectedRow);
void ListMenuGetCurrentItemArrayId(u8 listTaskId, u16 *arrayId);
void ListMenuGetScrollAndRow(u8 listTaskId, u16 *scrollOffset, u16 *selectedRow);
u16 ListMenuGetYCoordForPrintingArrowCursor(u8 listTaskId);
void ListMenuOverrideSetColors(u8 cursorPal, u8 fillValue, u8 cursorShadowPal);
void ListMenuDefaultCursorMoveFunc(s32 arg0, u8 arg1, struct ListMenu *list);
s32 ListMenuGetUnkIndicatorsStructFields(u8 taskId, u8 field);
void ListMenuSetUnkIndicatorsStructField(u8 taskId, u8 field, s32 value);
u8 AddScrollIndicatorArrowPair(const struct ScrollArrowsTemplate *arrowInfo, u16 *arg1);
u8 AddScrollIndicatorArrowPairParameterized(u32 arrowType, s32 commonPos, s32 firstPos, s32 secondPos, s32 fullyDownThreshold, s32 tileTag, s32 palTag, u16 *currItemPtr);
void RemoveScrollIndicatorArrowPair(u8 taskId);
void Task_ScrollIndicatorArrowPairOnMainMenu(u8 taskId);
# 6 "include/international_string_util.h" 2

void sub_81DB52C(u8 *src);
void TVShowConvertInternationalString(u8 *dest, const u8 *src, int language);
int GetStringCenterAlignXOffset(int fontId, const u8 *str, int totalWidth);
int GetStringRightAlignXOffset(int fontId, const u8 *str, int totalWidth);
int GetStringCenterAlignXOffsetWithLetterSpacing(int fontId, const u8 *str, int totalWidth, int letterSpacing);
int GetStringWidthDifference(int fontId, const u8 *str, int totalWidth, int letterSpacing);
int GetMaxWidthInMenuTable(const struct MenuAction *str, int arg1);
int sub_81DB3D8(const struct MenuAction *str, const u8* arg1, int arg2);
int Intl_GetListMenuWidth(const struct ListMenuTemplate *listMenu);
void CopyMonCategoryText(int dexNum, u8 *dest);
u8 *sub_81DB494(u8 *str, int fontId, const u8 *str2, int totalStringWidth);
void PadNameString(u8 *dest, u8 padChar);
void sub_81DB554(u8 *, u8);
void sub_81DB5AC(u8 *);
int sub_81DB604(u8 *);
void sub_81DB620(int windowId, int columnStart, int rowStart, int numFillTiles, int numRows);
# 17 "src/easy_chat.c" 2
# 1 "include/main.h" 1
# 18 "src/easy_chat.c" 2
# 1 "include/mevent.h" 1



struct MEvent_Str_1
{
    u16 unk_000;
    size_t unk_004;
    const void * unk_008;
};

struct MEvent_Str_2
{
    u8 fill_00[0x40];
};

struct MEventStruct_Unk1442CC
{
    u32 unk_00;
    u16 unk_04;
    u32 unk_08;
    u16 unk_0C;
    u32 unk_10;
    u16 unk_14;
    u16 unk_16[4];
    struct MEventBuffer_3430_Sub unk_20;
    u8 unk_44;
    u8 unk_45[7];
    u8 unk_4C[4];
    u16 unk_50[6];
    u8 unk_5C[4];
    u8 unk_60;
};

void sub_801AFD8(void);
struct WonderNews *GetSavedWonderNews(void);
struct WonderCard *GetSavedWonderCard(void);
struct MEventBuffer_3430_Sub *sav1_get_mevent_buffer_2(void);
struct MysteryEventStruct *sub_801B044(void);
u16 *sub_801B058(void);
void DestroyWonderNews(void);
bool32 sub_801B078(const struct WonderNews *src);
bool32 ValidateReceivedWonderNews(void);
bool32 WonderNews_Test_Unk_02(void);
bool32 sub_801B1A4(const u8 *src);
void DestroyWonderCard(void);
bool32 sub_801B21C(const struct WonderCard *data);
bool32 ValidateReceivedWonderCard(void);
bool32 WonderCard_Test_Unk_08_6(void);
u16 GetWonderCardFlagID(void);
void WonderCard_ResetInternalReceivedFlag(struct WonderCard *buffer);
bool32 CheckReceivedGiftFromWonderCard(void);
bool32 sub_801B508(const u16 *data);
void sub_801B580(struct MEventStruct_Unk1442CC *data, bool32 a1);
bool32 sub_801B6A0(const struct MEventStruct_Unk1442CC *data, bool32 a1);
u32 sub_801B6EC(const u16 *a0, const struct MEventStruct_Unk1442CC *a1, const void *unused);
u32 sub_801B708(const u16 *a0, const struct MEventStruct_Unk1442CC *a1, const void *unused);
bool32 MEventStruct_Unk1442CC_CompareField_unk_16(const struct MEventStruct_Unk1442CC *a0, const u16 *a1);
u16 MEventStruct_Unk1442CC_GetValueNFrom_unk_20(const struct MEventStruct_Unk1442CC *a0, u32 command);
u16 mevent_081445C0(u32 command);
void sub_801B940(void);
bool32 sub_801B94C(u16 a0);
# 19 "src/easy_chat.c" 2
# 1 "include/menu.h" 1
# 20 "src/easy_chat.c" 2
# 1 "include/overworld.h" 1
# 27 "include/overworld.h"
struct InitialPlayerAvatarState
{
    u8 transitionFlags;
    u8 direction;
};

struct LinkPlayerObjectEvent
{
    u8 active;
    u8 linkPlayerId;
    u8 objEventId;
    u8 movementMode;
};


extern struct WarpData gLastUsedWarp;
extern struct LinkPlayerObjectEvent gLinkPlayerObjectEvents[4];

extern u16 *gBGTilemapBuffers1;
extern u16 *gBGTilemapBuffers2;
extern u16 *gBGTilemapBuffers3;
extern u16 gHeldKeyCodeToSend;
extern void (*gFieldCallback)(void);
extern bool8 (*gFieldCallback2)(void);
extern u8 gLocalLinkPlayerId;
extern u8 gFieldLinkPlayerCount;


extern const struct UCoords32 gDirectionToVectors[];

void DoWhiteOut(void);
void Overworld_ResetStateAfterFly(void);
void Overworld_ResetStateAfterTeleport(void);
void Overworld_ResetStateAfterDigEscRope(void);
void ResetGameStats(void);
void IncrementGameStat(u8 index);
u32 GetGameStat(u8 index);
void SetGameStat(u8 index, u32 value);
void ApplyNewEncryptionKeyToGameStats(u32 newKey);
void LoadObjEventTemplatesFromHeader(void);
void LoadSaveblockObjEventScripts(void);
void Overworld_SetObjEventTemplateCoords(u8 localId, s16 x, s16 y);
void Overworld_SetObjEventTemplateMovementType(u8 localId, u8 movementType);
const struct MapLayout *GetMapLayout(void);
void ApplyCurrentWarp(void);
struct MapHeader const *const Overworld_GetMapHeaderByGroupAndId(u16 mapGroup, u16 mapNum);
struct MapHeader const *const GetDestinationWarpMapHeader(void);
void WarpIntoMap(void);
void SetWarpDestination(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToMapWarp(s8 mapGroup, s8 mapNum, s8 warpId);
void SetDynamicWarp(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId);
void SetDynamicWarpWithCoords(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToDynamicWarp(u8 unused);
void SetWarpDestinationToHealLocation(u8 a1);
void SetWarpDestinationToLastHealLocation(void);
void SetLastHealLocationWarp(u8 healLocationId);
void UpdateEscapeWarp(s16 x, s16 y);
void SetEscapeWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToEscapeWarp(void);
void SetFixedDiveWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetFixedHoleWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToFixedHoleWarp(s16 x, s16 y);
void SetContinueGameWarpToHealLocation(u8 a1);
void SetContinueGameWarpToDynamicWarp(int unused);
const struct MapConnection *GetMapConnection(u8 dir);
bool8 SetDiveWarpEmerge(u16 x, u16 y);
bool8 SetDiveWarpDive(u16 x, u16 y);
void LoadMapFromCameraTransition(u8 mapGroup, u8 mapNum);
void ResetInitialPlayerAvatarState(void);
void StoreInitialPlayerAvatarState(void);
bool32 Overworld_IsBikingAllowed(void);
void SetDefaultFlashLevel(void);
void Overworld_SetFlashLevel(s32 flashLevel);
u8 Overworld_GetFlashLevel(void);
void SetCurrentMapLayout(u16 mapLayoutId);
void sub_8085540(u8 var);
u8 sub_808554C(void);
u16 GetLocationMusic(struct WarpData *warp);
u16 GetCurrLocationDefaultMusic(void);
u16 GetWarpDestinationMusic(void);
void Overworld_ResetMapMusic(void);
void Overworld_PlaySpecialMapMusic(void);
void Overworld_SetSavedMusic(u16 songNum);
void Overworld_ClearSavedMusic(void);
void Overworld_ChangeMusicToDefault(void);
void Overworld_ChangeMusicTo(u16 newMusic);
u8 GetMapMusicFadeoutSpeed(void);
void TryFadeOutOldMapMusic(void);
bool8 BGMusicStopped(void);
void Overworld_FadeOutMapMusic(void);
void UpdateAmbientCry(s16 *state, u16 *delayCounter);
u8 GetMapTypeByGroupAndId(s8 mapGroup, s8 mapNum);
u8 GetMapTypeByWarpData(struct WarpData *warp);
u8 GetCurrentMapType(void);
u8 GetLastUsedWarpMapType(void);
bool8 IsMapTypeOutdoors(u8 mapType);
bool8 Overworld_MapTypeAllowsTeleportAndFly(u8 mapType);
bool8 IsMapTypeIndoors(u8 mapType);
u8 GetSavedWarpRegionMapSectionId(void);
u8 GetCurrentRegionMapSectionId(void);
u8 GetCurrentMapBattleScene(void);
void CleanupOverworldWindowsAndTilemaps(void);
bool32 IsUpdateLinkStateCBActive(void);
void CB1_Overworld(void);
void CB2_OverworldBasic(void);
void CB2_Overworld(void);
void SetMainCallback1(void (*cb)(void));
void SetUnusedCallback(void *a0);
void CB2_NewGame(void);
void CB2_WhiteOut(void);
void CB2_LoadMap(void);
void sub_8086024(void);
void CB2_ReturnToFieldCableClub(void);
void CB2_ReturnToField(void);
void CB2_ReturnToFieldLocal(void);
void CB2_ReturnToFieldLink(void);
void CB2_ReturnToFieldFromMultiplayer(void);
void CB2_ReturnToFieldWithOpenMenu(void);
void CB2_ReturnToFieldContinueScript(void);
void CB2_ReturnToFieldContinueScriptPlayMapMusic(void);
void sub_80861E8(void);
void CB2_ContinueSavedGame(void);
void ResetAllMultiplayerState(void);
u32 sub_8087214(void);
bool32 sub_808727C(void);
u16 sub_8087288(void);
u16 sub_808729C(void);
u16 QueueExitLinkRoomKey(void);
u16 sub_80872C4(void);
bool32 sub_8087598(void);
bool32 sub_80875C8(void);
bool32 sub_8087634(void);
bool32 sub_808766C(void);
void ClearLinkPlayerObjectEvents(void);
# 21 "src/easy_chat.c" 2
# 1 "include/palette.h" 1
# 17 "include/palette.h"
enum
{
    FAST_FADE_IN_FROM_WHITE,
    FAST_FADE_OUT_TO_WHITE,
    FAST_FADE_IN_FROM_BLACK,
    FAST_FADE_OUT_TO_BLACK,
};

struct PaletteFadeControl
{
    u32 multipurpose1;
    u8 delayCounter:6;
    u16 y:5;
    u16 targetY:5;
    u16 blendColor:15;
    bool16 active:1;
    u16 multipurpose2:6;
    bool16 yDec:1;
    bool16 bufferTransferDisabled:1;
    u16 mode:2;
    bool16 shouldResetBlendRegisters:1;
    bool16 hardwareFadeFinishing:1;
    u16 softwareFadeFinishingCounter:5;
    bool16 softwareFadeFinishing:1;
    bool16 objPaletteToggle:1;
    u8 deltaY:4;
};

extern struct PaletteFadeControl gPaletteFade;
extern u32 gPlttBufferTransferPending;
extern u8 gPaletteDecompressionBuffer[];
extern u16 gPlttBufferUnfaded[];
extern u16 gPlttBufferFaded[];

void LoadCompressedPalette(const u32 *, u16, u16);
void LoadPalette(const void *, u16, u16);
void FillPalette(u16, u16, u16);
void TransferPlttBuffer(void);
u8 UpdatePaletteFade(void);
void ResetPaletteFade(void);
void ReadPlttIntoBuffers(void);
bool8 BeginNormalPaletteFade(u32, s8, u8, u8, u16);
bool8 unref_sub_8073D3C(u32, u8, u8, u8, u16);
void unref_sub_8073D84(u8, u32 *);
void ResetPaletteStructByUid(u16);
void ResetPaletteStruct(u8);
void ResetPaletteFadeControl(void);
void unref_sub_8074168(u16);
void unref_sub_8074194(u16);
void InvertPlttBuffer(u32);
void TintPlttBuffer(u32, s8, s8, s8);
void UnfadePlttBuffer(u32);
void BeginFastPaletteFade(u8);
void BeginHardwarePaletteFade(u8, u8, u8, u8, u8);
void BlendPalettes(u32 selectedPalettes, u8 coeff, u16 color);
void BlendPalettesUnfaded(u32, u8, u16);
void sub_80A2C44(u32 a1, s8 a2, u8 a3, u8 a4, u16 a5, u8 a6, u8 a7);
void TintPalette_GrayScale(u16 *palette, u16 count);
void TintPalette_GrayScale2(u16 *palette, u16 count);
void TintPalette_SepiaTone(u16 *palette, u16 count);
void TintPalette_CustomTone(u16 *palette, u16 count, u16 rTone, u16 gTone, u16 bTone);
# 22 "src/easy_chat.c" 2
# 1 "include/pokedex.h" 1



extern u8 gUnusedPokedexU8;
extern void (*gPokedexVBlankCB)(void);

enum
{
    DEX_MODE_HOENN,
    DEX_MODE_NATIONAL
};

enum
{
    FLAG_GET_SEEN,
    FLAG_GET_CAUGHT,
    FLAG_SET_SEEN,
    FLAG_SET_CAUGHT
};

struct PokedexEntry
{
             u8 categoryName[12];
             u16 height;
             u16 weight;
             const u8 *description;
             u16 unused;
             u16 pokemonScale;
             u16 pokemonOffset;
             u16 trainerScale;
             u16 trainerOffset;
};

void ResetPokedex(void);
u16 GetPokedexHeightWeight(u16 dexNum, u8 data);
u16 GetNationalPokedexCount(u8);
u16 GetHoennPokedexCount(u8);
u8 DisplayCaughtMonDexPage(u16 dexNum, u32 otId, u32 personality);
s8 GetSetPokedexFlag(u16 nationalNum, u8 caseId);
u16 CreateMonSpriteFromNationalDexNumber(u16, s16, s16, u16);
bool16 HasAllHoennMons(void);
void ResetPokedexScrollPositions(void);
bool16 HasAllMons(void);
void CB2_OpenPokedex(void);
# 23 "src/easy_chat.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 20 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 24 "src/easy_chat.c" 2
# 1 "include/sound.h" 1



void InitMapMusic(void);
void MapMusicMain(void);
void ResetMapMusic(void);
u16 GetCurrentMapMusic(void);
void PlayNewMapMusic(u16 songNum);
void StopMapMusic(void);
void FadeOutMapMusic(u8 speed);
void FadeOutAndPlayNewMapMusic(u16 songNum, u8 speed);
void FadeOutAndFadeInNewMapMusic(u16 songNum, u8 fadeOutSpeed, u8 fadeInSpeed);
void FadeInNewMapMusic(u16 songNum, u8 speed);
bool8 IsNotWaitingForBGMStop(void);
void PlayFanfareByFanfareNum(u8 fanfareNum);
bool8 WaitFanfare(bool8 stop);
void StopFanfareByFanfareNum(u8 fanfareNum);
void PlayFanfare(u16 songNum);
bool8 IsFanfareTaskInactive(void);
void FadeInNewBGM(u16 songNum, u8 speed);
void FadeOutBGMTemporarily(u8 speed);
bool8 IsBGMPausedOrStopped(void);
void FadeInBGM(u8 speed);
void FadeOutBGM(u8 speed);
bool8 IsBGMStopped(void);
void PlayCry1(u16 species, s8 pan);
void PlayCry2(u16 species, s8 pan, s8 volume, u8 priority);
void PlayCry3(u16 species, s8 pan, u8 mode);
void PlayCry4(u16 species, s8 pan, u8 mode);
void PlayCry5(u16 species, u8 mode);
void PlayCry6(u16 species, s8 pan, u8 mode);
void PlayCryInternal(u16 species, s8 pan, s8 volume, u8 priority, u8 mode);
bool8 IsCryFinished(void);
void StopCryAndClearCrySongs(void);
void StopCry(void);
bool8 IsCryPlayingOrClearCrySongs(void);
bool8 IsCryPlaying(void);
void PlayBGM(u16 songNum);
void PlaySE(u16 songNum);
void PlaySE12WithPanning(u16 songNum, s8 pan);
void PlaySE1WithPanning(u16 songNum, s8 pan);
void PlaySE2WithPanning(u16 songNum, s8 pan);
void SE12PanpotControl(s8 pan);
bool8 IsSEPlaying(void);
bool8 IsBGMPlaying(void);
bool8 IsSpecialSEPlaying(void);
# 25 "src/easy_chat.c" 2
# 1 "gflib/string_util.h" 1



extern u8 gStringVar1[];
extern u8 gStringVar2[];
extern u8 gStringVar3[];
extern u8 gStringVar4[];

enum StringConvertMode
{
    STR_CONV_MODE_LEFT_ALIGN,
    STR_CONV_MODE_RIGHT_ALIGN,
    STR_CONV_MODE_LEADING_ZEROS
};

u8 *StringCopy10(u8 *dest, const u8 *src);
u8 *StringGetEnd10(u8 *str);
u8 *StringCopy7(u8 *dest, const u8 *src);
u8 *StringCopy(u8 *dest, const u8 *src);
u8 *StringAppend(u8 *dest, const u8 *src);
u8 *StringCopyN(u8 *dest, const u8 *src, u8 n);
u8 *StringAppendN(u8 *dest, const u8 *src, u8 n);
u16 StringLength(const u8 *str);
s32 StringCompare(const u8 *str1, const u8 *str2);
s32 StringCompareN(const u8 *str1, const u8 *str2, u32 n);
bool8 IsStringLengthAtLeast(const u8 *str, s32 n);
u8 *ConvertIntToDecimalStringN(u8 *dest, s32 value, enum StringConvertMode mode, u8 n);
u8 *ConvertUIntToDecimalStringN(u8 *dest, u32 value, enum StringConvertMode mode, u8 n);
u8 *ConvertIntToHexStringN(u8 *dest, s32 value, enum StringConvertMode mode, u8 n);
u8 *StringExpandPlaceholders(u8 *dest, const u8 *src);
u8 *StringBraille(u8 *dest, const u8 *src);
const u8 *GetExpandedPlaceholder(u32 id);
u8 *StringFill(u8 *dest, u8 c, u16 n);
u8 *StringCopyPadded(u8 *dest, const u8 *src, u8 c, u16 n);
u8 *StringFillWithTerminator(u8 *dest, u16 n);
u8 *StringCopyN_Multibyte(u8 *dest, u8 *src, u32 n);
u32 StringLength_Multibyte(const u8 *str);
u8 *WriteColorChangeControlCode(u8 *dest, u32 colorType, u8 color);
bool32 IsStringJapanese(u8 *str);
bool32 sub_800924C(u8 *str, s32 n);
u8 GetExtCtrlCodeLength(u8 code);
s32 StringCompareWithoutExtCtrlCodes(const u8 *str1, const u8 *str2);
void ConvertInternationalString(u8 *s, u8 language);
void StripExtCtrlCodes(u8 *str);
# 26 "src/easy_chat.c" 2
# 1 "include/strings.h" 1




extern const u8 gText_ExpandedPlaceholder_Empty[];
extern const u8 gText_ExpandedPlaceholder_Kun[];
extern const u8 gText_ExpandedPlaceholder_Chan[];
extern const u8 gText_ExpandedPlaceholder_Sapphire[];
extern const u8 gText_ExpandedPlaceholder_Ruby[];
extern const u8 gText_ExpandedPlaceholder_Emerald[];
extern const u8 gText_ExpandedPlaceholder_Aqua[];
extern const u8 gText_ExpandedPlaceholder_Magma[];
extern const u8 gText_ExpandedPlaceholder_Archie[];
extern const u8 gText_ExpandedPlaceholder_Maxie[];
extern const u8 gText_ExpandedPlaceholder_Kyogre[];
extern const u8 gText_ExpandedPlaceholder_Groudon[];
extern const u8 gText_ExpandedPlaceholder_Brendan[];
extern const u8 gText_ExpandedPlaceholder_May[];

extern const u8 gText_FromSpace[];

extern const u8 gText_Lv50[];
extern const u8 gText_OpenLevel[];

extern const u8 gText_Mom[];
extern const u8 gText_Dad[];

extern const u8 gText_GetsAPokeBlockQuestion[];
extern const u8 gText_WontEatAnymore[];
extern const u8 gText_WasEnhanced[];
extern const u8 gText_NothingChanged[];
extern const u8 gText_NatureSlash[];

extern const u8 gText_Cool[];
extern const u8 gText_Beauty[];
extern const u8 gText_Cute[];
extern const u8 gText_Smart[];
extern const u8 gText_Tough[];

extern const u8 gText_Normal[];
extern const u8 gText_Super[];
extern const u8 gText_Hyper[];
extern const u8 gText_Master[];

extern const u8 gText_Cool2[];
extern const u8 gText_Beauty2[];
extern const u8 gText_Cute2[];
extern const u8 gText_Smart2[];
extern const u8 gText_Tough2[];

extern const u8 gText_Items[];
extern const u8 gText_Key_Items[];
extern const u8 gText_Poke_Balls[];
extern const u8 gText_TMs_Hms[];
extern const u8 gText_Berries2[];

extern const u8 gText_Single2[];
extern const u8 gText_Double2[];
extern const u8 gText_Multi[];
extern const u8 gText_MultiLink[];

extern const u8 gText_Single[];
extern const u8 gText_Double[];

extern const u8 gText_Spicy[];
extern const u8 gText_Dry[];
extern const u8 gText_Sweet[];
extern const u8 gText_Bitter[];
extern const u8 gText_Sour[];

extern const u8 gText_StowCase[];
extern const u8 gText_LvVar1[];

extern const u8 gText_Spicy2[];
extern const u8 gText_Dry2[];
extern const u8 gText_Sweet2[];
extern const u8 gText_Bitter2[];
extern const u8 gText_Sour2[];

extern const u8 gText_Excellent[];
extern const u8 gText_VeryGood[];
extern const u8 gText_Good[];
extern const u8 gText_SoSo[];
extern const u8 gText_Bad[];
extern const u8 gText_TheWorst[];

extern const u8 gText_Slots[];
extern const u8 gText_Roulette[];
extern const u8 gText_Jackpot[];

extern const u8 gText_First[];
extern const u8 gText_Second[];
extern const u8 gText_Third[];

extern const u8 gText_NoDecorations[];
extern const u8 gText_NoDecorationsInUse[];

extern const u8 gText_Exit[];
extern const u8 gText_Cancel[];

extern const u8 gText_ThrowAwayVar1[];
extern const u8 gText_Var1ThrownAway[];

extern const u8 gText_Color161Shadow161[];
extern const u8 gText_GoBackPrevMenu[];
extern const u8 gText_CantPlaceInRoom[];
extern const u8 gText_NoMoreDecorations[];
extern const u8 gText_NoMoreDecorations2[];
extern const u8 gText_InUseAlready[];
extern const u8 gText_CancelDecorating[];
extern const u8 gText_PlaceItHere[];
extern const u8 gText_CantBePlacedHere[];
extern const u8 gText_DecorationReturnedToPC[];
extern const u8 gText_StopPuttingAwayDecorations[];
extern const u8 gText_ReturnDecorationToPC[];
extern const u8 gText_NoDecorationHere[];
extern const u8 gText_DecorationWillBeDiscarded[];
extern const u8 gText_CantThrowAwayInUse[];
extern const u8 gText_DecorationThrownAway[];

extern const u8 gText_PokeBalls[];
extern const u8 gText_Berries[];
extern const u8 gText_Berry[];

extern const u8 gText_Desk[];
extern const u8 gText_Chair[];
extern const u8 gText_Plant[];
extern const u8 gText_Ornament[];
extern const u8 gText_Mat[];
extern const u8 gText_Poster[];

extern const u8 gText_PutOutSelectedDecorItem[];
extern const u8 gText_StoreChosenDecorInPC[];
extern const u8 gText_ThrowAwayUnwantedDecors[];
extern const u8 gText_Doll[];
extern const u8 gText_Cushion[];
extern const u8 gText_Decorate[];
extern const u8 gText_PutAway[];
extern const u8 gText_Toss2[];
extern const u8 gText_Hoenn[];
extern const u8 gText_Ferry[];
extern const u8 gText_SecretBase[];
extern const u8 gText_Hideout[];
extern const u8 gText_FlyToWhere[];
extern const u8 gText_PokemonLeague[];
extern const u8 gText_PokemonCenter[];
extern const u8 gText_ApostropheSBase[];
extern const u8 gText_NoRegistry[];
extern const u8 gText_OkayToDeleteFromRegistry[];
extern const u8 gText_RegisteredDataDeleted[];
extern const u8 gText_DelRegist[];
extern const u8 gText_CommErrorEllipsis[];
extern const u8 gText_MoveCloserToLinkPartner[];
extern const u8 gText_CommErrorCheckConnections[];
extern const u8 gText_ABtnTitleScreen[];
extern const u8 gText_ABtnRegistrationCounter[];
extern const u8 gText_MixingRecords[];
extern const u8 gText_RecordMixingComplete[];
extern const u8 gText_EmptyString2[];
extern const u8 gText_Confirm3[];
extern const u8 gText_Cancel4[];
extern const u8 gText_IsThisTheCorrectTime[];
extern const u8 gText_PkmnFainted3[];
extern const u8 gText_Coins[];
extern const u8 gText_Silver[];
extern const u8 gText_Gold[];

extern const u8 gText_Var1AteTheVar2[];
extern const u8 gText_Var1HappilyAteVar2[];
extern const u8 gText_Var1DisdainfullyAteVar2[];

extern const u8 gText_RedPokeblock[];
extern const u8 gText_BluePokeblock[];
extern const u8 gText_PinkPokeblock[];
extern const u8 gText_GreenPokeblock[];
extern const u8 gText_YellowPokeblock[];
extern const u8 gText_PurplePokeblock[];
extern const u8 gText_IndigoPokeblock[];
extern const u8 gText_BrownPokeblock[];
extern const u8 gText_LiteBluePokeblock[];
extern const u8 gText_OlivePokeblock[];
extern const u8 gText_GrayPokeblock[];
extern const u8 gText_BlackPokeblock[];
extern const u8 gText_WhitePokeblock[];
extern const u8 gText_GoldPokeblock[];

extern const u8 gMenuText_Use[];
extern const u8 gMenuText_Toss[];
extern const u8 gMenuText_Give[];
extern const u8 gMenuText_Give2[];
extern const u8 gMenuText_Register[];
extern const u8 gMenuText_Check[];
extern const u8 gMenuText_Walk[];
extern const u8 gMenuText_Deselect[];
extern const u8 gMenuText_CheckTag[];
extern const u8 gMenuText_Confirm[];
extern const u8 gMenuText_Show[];
extern const u8 gMenuText_Give2[];

extern const u8 gText_WithdrawPokemon[];
extern const u8 gText_WithdrawMonDescription[];
extern const u8 gText_DepositPokemon[];
extern const u8 gText_DepositMonDescription[];
extern const u8 gText_MovePokemon[];
extern const u8 gText_MoveMonDescription[];
extern const u8 gText_MoveItems[];
extern const u8 gText_MoveItemsDescription[];
extern const u8 gText_SeeYa[];
extern const u8 gText_SeeYaDescription[];

extern const u8 gText_EggNickname[];
extern const u8 gText_Pokemon[];
extern const u8 gText_InParty[];
extern const u8 gText_InGameClockUsable[];


extern const u8 gText_Day[];
extern const u8 gText_Colon3[];
extern const u8 gText_Confirm2[];
extern const u8 gText_PresentTime[];
extern const u8 gText_PreviousTime[];
extern const u8 gText_ResetRTCConfirmCancel[];
extern const u8 gText_NoSaveFileCantSetTime[];
extern const u8 gText_PleaseResetTime[];
extern const u8 gText_ClockHasBeenReset[];
extern const u8 gText_SaveCompleted[];
extern const u8 gText_SaveFailed[];


extern const u8 gText_MenuPokedex[];
extern const u8 gText_MenuPokemon[];
extern const u8 gText_MenuBag[];
extern const u8 gText_MenuPokenav[];
extern const u8 gText_MenuPlayer[];
extern const u8 gText_MenuSave[];
extern const u8 gText_MenuOption[];
extern const u8 gText_MenuExit[];
extern const u8 gText_MenuRetire[];
extern const u8 gText_MenuRest[];
extern const u8 gText_Floor1[];
extern const u8 gText_Floor2[];
extern const u8 gText_Floor3[];
extern const u8 gText_Floor4[];
extern const u8 gText_Floor5[];
extern const u8 gText_Floor6[];
extern const u8 gText_Floor7[];
extern const u8 gText_Peak[];
extern const u8 gText_SafariBallStock[];
extern const u8 gText_BattlePyramidFloor[];

extern const u8 gText_MenuOptionPokedex[];
extern const u8 gText_MenuOptionPokemon[];
extern const u8 gText_MenuOptionBag[];
extern const u8 gText_MenuOptionPokenav[];
extern const u8 gText_MenuOptionSave[];
extern const u8 gText_MenuOptionOption[];
extern const u8 gText_MenuOptionExit[];


extern const u8 gText_ConfirmSave[];
extern const u8 gText_DifferentSaveFile[];
extern const u8 gText_AlreadySavedFile[];
extern const u8 gText_SavingDontTurnOff[];
extern const u8 gText_PlayerSavedGame[];
extern const u8 gText_SaveError[];
extern const u8 gText_SavingDontTurnOffPower[];
extern const u8 gText_SavingPlayer[];
extern const u8 gText_SavingBadges[];
extern const u8 gText_SavingPokedex[];
extern const u8 gText_SavingTime[];


extern const u8 gText_BattlePyramidConfirmRest[];
extern const u8 gText_BattlePyramidConfirmRetire[];


extern const u8 gText_TextSpeedSlow[];
extern const u8 gText_TextSpeedMid[];
extern const u8 gText_TextSpeedFast[];
extern const u8 gText_BattleSceneOn[];
extern const u8 gText_BattleSceneOff[];
extern const u8 gText_BattleStyleShift[];
extern const u8 gText_BattleStyleSet[];
extern const u8 gText_SoundMono[];
extern const u8 gText_SoundStereo[];
extern const u8 gText_FrameTypeNumber[];
extern const u8 gText_FrameType[];
extern const u8 gText_ButtonTypeNormal[];
extern const u8 gText_ButtonTypeLR[];
extern const u8 gText_ButtonTypeLEqualsA[];
extern const u8 gText_Option[];
extern const u8 gText_OptionMenu[];
extern const u8 gText_TextSpeed[];
extern const u8 gText_BattleScene[];
extern const u8 gText_BattleStyle[];
extern const u8 gText_Sound[];
extern const u8 gText_Frame[];
extern const u8 gText_OptionMenuCancel[];
extern const u8 gText_ButtonMode[];

extern const u8 gText_MaleSymbol[];
extern const u8 gText_FemaleSymbol[];

extern const u8 gText_SelectorArrow3[];
extern const u8 gText_YesNo[];


extern const u8 gText_SaveFileErased[];
extern const u8 gText_SaveFileCorrupted[];
extern const u8 gJPText_No1MSubCircuit[];
extern const u8 gText_BatteryRunDry[];
extern const u8 gText_MainMenuNewGame[];
extern const u8 gText_MainMenuOption[];
extern const u8 gText_MainMenuContinue[];
extern const u8 gText_MainMenuMysteryGift2[];
extern const u8 gText_MainMenuMysteryEvents[];
extern const u8 gText_MainMenuMysteryGift[];
extern const u8 gText_WirelessNotConnected[];
extern const u8 gText_MysteryGiftCantUse[];
extern const u8 gText_MysteryEventsCantUse[];
extern const u8 gText_Birch_Welcome[];
extern const u8 gText_ThisIsAPokemon[];
extern const u8 gText_Birch_MainSpeech[];
extern const u8 gText_Birch_AndYouAre[];
extern const u8 gText_Birch_BoyOrGirl[];
extern const u8 gText_Birch_WhatsYourName[];
extern const u8 gText_Birch_SoItsPlayer[];
extern const u8 gText_Birch_YourePlayer[];
extern const u8 gText_Birch_AreYouReady[];
extern const u8 gText_ContinueMenuPlayer[];
extern const u8 gText_ContinueMenuTime[];
extern const u8 gText_ContinueMenuPokedex[];
extern const u8 gText_ContinueMenuBadges[];
extern const u8 gText_BirchBoy[];
extern const u8 gText_BirchGirl[];
extern const u8 gText_DefaultNameStu[];
extern const u8 gText_DefaultNameMilton[];
extern const u8 gText_DefaultNameTom[];
extern const u8 gText_DefaultNameKenny[];
extern const u8 gText_DefaultNameReid[];
extern const u8 gText_DefaultNameJude[];
extern const u8 gText_DefaultNameJaxson[];
extern const u8 gText_DefaultNameEaston[];
extern const u8 gText_DefaultNameWalker[];
extern const u8 gText_DefaultNameTeru[];
extern const u8 gText_DefaultNameJohnny[];
extern const u8 gText_DefaultNameBrett[];
extern const u8 gText_DefaultNameSeth[];
extern const u8 gText_DefaultNameTerry[];
extern const u8 gText_DefaultNameCasey[];
extern const u8 gText_DefaultNameDarren[];
extern const u8 gText_DefaultNameLandon[];
extern const u8 gText_DefaultNameCollin[];
extern const u8 gText_DefaultNameStanley[];
extern const u8 gText_DefaultNameQuincy[];
extern const u8 gText_DefaultNameKimmy[];
extern const u8 gText_DefaultNameTiara[];
extern const u8 gText_DefaultNameBella[];
extern const u8 gText_DefaultNameJayla[];
extern const u8 gText_DefaultNameAllie[];
extern const u8 gText_DefaultNameLianna[];
extern const u8 gText_DefaultNameSara[];
extern const u8 gText_DefaultNameMonica[];
extern const u8 gText_DefaultNameCamila[];
extern const u8 gText_DefaultNameAubree[];
extern const u8 gText_DefaultNameRuthie[];
extern const u8 gText_DefaultNameHazel[];
extern const u8 gText_DefaultNameNadine[];
extern const u8 gText_DefaultNameTanja[];
extern const u8 gText_DefaultNameYasmin[];
extern const u8 gText_DefaultNameNicola[];
extern const u8 gText_DefaultNameLillie[];
extern const u8 gText_DefaultNameTerra[];
extern const u8 gText_DefaultNameLucy[];
extern const u8 gText_DefaultNameHalie[];


extern const u8 gText_EventSafelyLoaded[];
extern const u8 gText_LoadErrorEndingSession[];
extern const u8 gText_PressAToLoadEvent[];
extern const u8 gText_LoadingEvent[];
extern const u8 gText_DontRemoveCableTurnOff[];
extern const u8 gText_LinkStandby2[];


extern const u8 gBerryFirmnessString_VerySoft[];
extern const u8 gBerryFirmnessString_Soft[];
extern const u8 gBerryFirmnessString_Hard[];
extern const u8 gBerryFirmnessString_VeryHard[];
extern const u8 gBerryFirmnessString_SuperHard[];
extern const u8 gText_BerryTag[];
extern const u8 gText_NumberVar1Var2[];
extern const u8 gText_SizeSlash[];
extern const u8 gText_Var1DotVar2[];
extern const u8 gText_ThreeMarks[];
extern const u8 gText_FirmSlash[];


extern const u8 gText_CloseBag[];
extern const u8 gText_ClearTo11Var1Clear5Var2[];
extern const u8 gText_NumberVar1Clear7Var2[];
extern const u8 gText_xVar1[];
extern const u8 gText_ReturnToVar1[];
extern const u8 gText_SelectorArrow2[];
extern const u8 gText_MoveVar1Where[];
extern const u8 gText_Var1IsSelected[];
extern const u8 gText_TossHowManyVar1s[];
extern const u8 gText_ConfirmTossItems[];
extern const u8 gText_ThrewAwayVar2Var1s[];
extern const u8 gText_CantWriteMail[];
extern const u8 gText_NoPokemon[];
extern const u8 gText_Var1CantBeHeld[];
extern const u8 gText_Var1CantBeHeldHere[];
extern const u8 gText_CantBuyKeyItem[];
extern const u8 gText_HowManyToSell[];
extern const u8 gText_ICanPayVar1[];
extern const u8 gText_TurnedOverVar1ForVar2[];
extern const u8 gText_DepositHowManyVar1[];
extern const u8 gText_CantStoreImportantItems[];
extern const u8 gText_DepositedVar2Var1s[];
extern const u8 gText_NoRoomForItems[];
extern const u8 gText_ThreeDashes[];


extern const u8 gText_PkmnHPRestoredByVar2[];
extern const u8 gText_CantBeUsedOnPkmn[];
extern const u8 gText_CancelParticipation[];
extern const u8 gText_PkmnWasGivenItem[];
extern const u8 gText_ReceivedItemFromPkmn[];
extern const u8 gText_PkmnAlreadyHoldingItemSwitch[];
extern const u8 gText_SwitchedPkmnItem[];
extern const u8 gText_BagFullCouldNotRemoveItem[];
extern const u8 gText_PkmnCantParticipate[];
extern const u8 gText_PkmnNotHolding[];
extern const u8 gText_ThrowAwayItem[];
extern const u8 gText_ItemThrownAway[];
extern const u8 gText_SendMailToPC[];
extern const u8 gText_MailSentToPC[];
extern const u8 gText_PCMailboxFull[];
extern const u8 gText_MailMessageWillBeLost[];
extern const u8 gText_MailTakenFromPkmn[];
extern const u8 gText_NoMoreThanVar1Pkmn[];
extern const u8 gText_PkmnCantBeTradedNow[];
extern const u8 gText_EggCantBeTradedNow[];
extern const u8 gText_OnlyPkmnForBattle[];
extern const u8 gJPText_AreYouSureYouWantToSpinTradeMon[];
extern const u8 gText_PauseUntilPress[];
extern const u8 gText_CantUseUntilNewBadge[];
extern const u8 gText_ReturnToHealingSpot[];
extern const u8 gText_EscapeFromHere[];
extern const u8 gText_PkmnCuredOfPoison[];
extern const u8 gText_PkmnWokeUp2[];
extern const u8 gText_PkmnBurnHealed[];
extern const u8 gText_PkmnThawedOut[];
extern const u8 gText_PkmnCuredOfParalysis[];
extern const u8 gText_PkmnGotOverInfatuation[];
extern const u8 gText_PkmnBecameHealthy[];
extern const u8 gText_HP3[];
extern const u8 gText_SpAtk3[];
extern const u8 gText_SpDef3[];
extern const u8 gText_PkmnBaseVar2StatIncreased[];
extern const u8 gText_MovesPPIncreased[];
extern const u8 gText_PPWasRestored[];
extern const u8 gText_WontHaveEffect[];
extern const u8 gText_PkmnSnappedOutOfConfusion[];
extern const u8 gText_PkmnFriendlyBaseVar2Fell[];
extern const u8 gText_PkmnFriendlyBaseVar2CantFall[];
extern const u8 gText_PkmnAdoresBaseVar2Fell[];
extern const u8 gText_PkmnAlreadyKnows[];
extern const u8 gText_PkmnCantLearnMove[];
extern const u8 gText_PkmnNeedsToReplaceMove[];
extern const u8 gText_PkmnLearnedMove3[];
extern const u8 gText_WhichMoveToForget[];
extern const u8 gText_12PoofForgotMove[];
extern const u8 gText_StopLearningMove2[];
extern const u8 gText_MoveNotLearned[];
extern const u8 gText_PkmnElevatedToLvVar2[];
extern const u8 gText_RemoveMailBeforeItem[];
extern const u8 gText_PkmnHoldingItemCantHoldMail[];
extern const u8 gText_MailTransferredFromMailbox[];
extern const u8 gText_CancelBattle[];
extern const u8 gText_ReturnToWaitingRoom[];
extern const u8 gText_CancelChallenge[];
extern const u8 gText_CantSwitchWithAlly[];
extern const u8 gText_PkmnHasNoEnergy[];
extern const u8 gText_EggCantBattle[];
extern const u8 gText_PkmnAlreadySelected[];
extern const u8 gText_PkmnAlreadyInBattle[];
extern const u8 gText_PkmnCantSwitchOut[];
extern const u8 gText_MaxHP[];
extern const u8 gText_Attack[];
extern const u8 gText_Defense[];
extern const u8 gText_SpAtk[];
extern const u8 gText_SpDef[];
extern const u8 gText_Speed[];
extern const u8 gText_Dash[];
extern const u8 gText_Plus[];


extern const u8 gText_CryOf[];
extern const u8 gText_SizeComparedTo[];
extern const u8 gText_PokedexRegistration[];
extern const u8 gText_NumberClear01[];
extern const u8 gText_5MarksPokemon[];
extern const u8 gText_UnkHeight[];
extern const u8 gText_UnkWeight[];
extern const u8 gText_HTHeight[];
extern const u8 gText_WTWeight[];
extern const u8 gText_SearchingPleaseWait[];
extern const u8 gText_SearchCompleted[];
extern const u8 gText_NoMatchingPkmnWereFound[];
extern const u8 gText_SelectorArrow[];


extern const u8 gBirchDexRatingText_LessThan10[];
extern const u8 gBirchDexRatingText_LessThan20[];
extern const u8 gBirchDexRatingText_LessThan30[];
extern const u8 gBirchDexRatingText_LessThan40[];
extern const u8 gBirchDexRatingText_LessThan50[];
extern const u8 gBirchDexRatingText_LessThan60[];
extern const u8 gBirchDexRatingText_LessThan70[];
extern const u8 gBirchDexRatingText_LessThan80[];
extern const u8 gBirchDexRatingText_LessThan90[];
extern const u8 gBirchDexRatingText_LessThan100[];
extern const u8 gBirchDexRatingText_LessThan110[];
extern const u8 gBirchDexRatingText_LessThan120[];
extern const u8 gBirchDexRatingText_LessThan130[];
extern const u8 gBirchDexRatingText_LessThan140[];
extern const u8 gBirchDexRatingText_LessThan150[];
extern const u8 gBirchDexRatingText_LessThan160[];
extern const u8 gBirchDexRatingText_LessThan170[];
extern const u8 gBirchDexRatingText_LessThan180[];
extern const u8 gBirchDexRatingText_LessThan190[];
extern const u8 gBirchDexRatingText_LessThan200[];
extern const u8 gBirchDexRatingText_DexCompleted[];


extern const u8 gText_WhatWouldYouLike[];
extern const u8 gText_NoMailHere[];

extern const u8 gText_TakeOutItemsFromPC[];
extern const u8 gText_StoreItemsInPC[];
extern const u8 gText_ThrowAwayItemsInPC[];
extern const u8 gText_GoBackPrevMenu[];

extern const u8 gText_ItemStorage[];
extern const u8 gText_Mailbox[];
extern const u8 gText_Decoration[];
extern const u8 gText_TurnOff[];

extern const u8 gText_WithdrawItem[];
extern const u8 gText_DepositItem[];
extern const u8 gText_TossItem[];
extern const u8 gText_Cancel[];

extern const u8 gText_Read[];
extern const u8 gText_MoveToBag[];
extern const u8 gText_Give2[];
extern const u8 gText_Cancel2[];

extern const u8 gText_NoItems[];
extern const u8 gText_WhatToDoWithVar1sMail[];
extern const u8 gText_MessageWillBeLost[];
extern const u8 gText_BagIsFull[];

extern const u8 gText_MailToBagMessageErased[];
extern const u8 gText_GoBackPrevMenu[];
extern const u8 gText_WithdrawHowManyItems[];
extern const u8 gText_WithdrawXItems[];
extern const u8 gText_TossHowManyVar1s[];
extern const u8 gText_ThrewAwayVar2Var1s[];
extern const u8 gText_NoRoomInBag[];
extern const u8 gText_TooImportantToToss[];
extern const u8 gText_ConfirmTossItems[];
extern const u8 gText_MoveVar1Where[];

extern const u8 gText_ColorLightShadowDarkGrey[];
extern const u8 gText_ColorBlue[];
extern const u8 gText_Friend[];
extern const u8 gText_Tristan[];
extern const u8 gText_Philip[];
extern const u8 gText_Dennis[];
extern const u8 gText_Roberto[];
extern const u8 gText_FiveMarks[];

extern const u8 gText_TotalRecordWLD[];
extern const u8 gText_PlayersBattleResults[];
extern const u8 gText_WinLoseDraw[];
extern const u8 gText_ColorTransparent[];
extern const u8 gText_Slash[];

extern const u8 gText_99TimesPlus[];
extern const u8 gText_1MinutePlus[];
extern const u8 gText_SpaceSeconds[];
extern const u8 gText_SpaceTimes[];

extern const u8 gText_BigGuy[];
extern const u8 gText_BigGirl[];
extern const u8 gText_Son[];
extern const u8 gText_Daughter[];


extern const u8 gText_Exit[];
extern const u8 gText_1F[];
extern const u8 gText_2F[];
extern const u8 gText_3F[];
extern const u8 gText_4F[];
extern const u8 gText_5F[];
extern const u8 gText_6F[];
extern const u8 gText_7F[];
extern const u8 gText_8F[];
extern const u8 gText_9F[];
extern const u8 gText_10F[];
extern const u8 gText_11F[];
extern const u8 gText_B1F[];
extern const u8 gText_B2F[];
extern const u8 gText_B3F[];
extern const u8 gText_B4F[];
extern const u8 gText_Rooftop[];
extern const u8 gText_ElevatorNowOn[];

extern const u8 gText_BlueFlute[];
extern const u8 gText_YellowFlute[];
extern const u8 gText_RedFlute[];
extern const u8 gText_WhiteFlute[];
extern const u8 gText_BlackFlute[];
extern const u8 gText_PrettyChair[];
extern const u8 gText_PrettyDesk[];

extern const u8 gText_0Pts[];
extern const u8 gText_10Pts[];
extern const u8 gText_20Pts[];
extern const u8 gText_30Pts[];
extern const u8 gText_40Pts[];
extern const u8 gText_50Pts[];
extern const u8 gText_60Pts[];
extern const u8 gText_70Pts[];
extern const u8 gText_80Pts[];
extern const u8 gText_90Pts[];
extern const u8 gText_100Pts[];
extern const u8 gText_QuestionMark[];

extern const u8 gText_KissPoster16BP[];
extern const u8 gText_KissCushion32BP[];
extern const u8 gText_SmoochumDoll32BP[];
extern const u8 gText_TogepiDoll48BP[];
extern const u8 gText_MeowthDoll48BP[];
extern const u8 gText_ClefairyDoll48BP[];
extern const u8 gText_DittoDoll48BP[];
extern const u8 gText_CyndaquilDoll80BP[];
extern const u8 gText_ChikoritaDoll80BP[];
extern const u8 gText_TotodileDoll80BP[];

extern const u8 gText_LaprasDoll128BP[];
extern const u8 gText_SnorlaxDoll128BP[];
extern const u8 gText_VenusaurDoll256BP[];
extern const u8 gText_CharizardDoll256BP[];
extern const u8 gText_BlastoiseDoll256BP[];

extern const u8 gText_Protein1BP[];
extern const u8 gText_Calcium1BP[];
extern const u8 gText_Iron1BP[];
extern const u8 gText_Zinc1BP[];
extern const u8 gText_Carbos1BP[];
extern const u8 gText_HpUp1BP[];

extern const u8 gText_Leftovers48BP[];
extern const u8 gText_WhiteHerb48BP[];
extern const u8 gText_QuickClaw48BP[];
extern const u8 gText_MentalHerb48BP[];
extern const u8 gText_BrightPowder64BP[];
extern const u8 gText_ChoiceBand64BP[];
extern const u8 gText_KingsRock64BP[];
extern const u8 gText_FocusBand64BP[];
extern const u8 gText_ScopeLens64BP[];

extern const u8 gText_EnergyPowder50[];
extern const u8 gText_EnergyRoot80[];
extern const u8 gText_HealPowder50[];
extern const u8 gText_RevivalHerb300[];
extern const u8 gText_Protein1000[];
extern const u8 gText_Iron1000[];
extern const u8 gText_Carbos1000[];
extern const u8 gText_Calcium1000[];
extern const u8 gText_Zinc1000[];
extern const u8 gText_HPUp1000[];
extern const u8 gText_PPUp3000[];

extern const u8 gText_BattleTower2[];
extern const u8 gText_BattleDome[];
extern const u8 gText_BattlePalace[];
extern const u8 gText_BattleArena[];
extern const u8 gText_BattleFactory[];
extern const u8 gText_BattlePike[];
extern const u8 gText_BattlePyramid[];
extern const u8 gText_RankingHall[];
extern const u8 gText_ExchangeService[];


extern const u8 gText_Softboiled16BP[];
extern const u8 gText_SeismicToss24BP[];
extern const u8 gText_DreamEater24BP[];
extern const u8 gText_MegaPunch24BP[];
extern const u8 gText_MegaKick48BP[];
extern const u8 gText_BodySlam48BP[];
extern const u8 gText_RockSlide48BP[];
extern const u8 gText_Counter48BP[];
extern const u8 gText_ThunderWave48BP[];
extern const u8 gText_SwordsDance48BP[];
extern const u8 gText_DefenseCurl16BP[];
extern const u8 gText_Snore24BP[];
extern const u8 gText_MudSlap24BP[];
extern const u8 gText_Swift24BP[];
extern const u8 gText_IcyWind24BP[];
extern const u8 gText_Endure48BP[];
extern const u8 gText_PsychUp48BP[];
extern const u8 gText_IcePunch48BP[];
extern const u8 gText_ThunderPunch48BP[];
extern const u8 gText_FirePunch48BP[];

extern const u8 gText_SlateportCity[];
extern const u8 gText_BattleFrontier[];
extern const u8 gText_SouthernIsland[];
extern const u8 gText_NavelRock[];
extern const u8 gText_BirthIsland[];
extern const u8 gText_FarawayIsland[];

extern const u8 gText_BattleTrainers[];
extern const u8 gText_BattleBasics[];
extern const u8 gText_PokemonNature[];
extern const u8 gText_PokemonMoves[];
extern const u8 gText_Underpowered[];
extern const u8 gText_WhenInDanger[];


extern const u8 BattleFrontier_Lounge2_Text_SalonMaidenIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_SalonMaidenSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_SalonMaidenGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_DoubleBattleAdvice1[];
extern const u8 BattleFrontier_Lounge2_Text_DoubleBattleAdvice2[];
extern const u8 BattleFrontier_Lounge2_Text_DoubleBattleAdvice3[];
extern const u8 BattleFrontier_Lounge2_Text_MultiBattleAdvice[];
extern const u8 BattleFrontier_Lounge2_Text_LinkMultiBattleAdvice[];
extern const u8 BattleFrontier_Lounge2_Text_DomeAceIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_DomeAceSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_DomeAceGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_FactoryHeadIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_FactoryHeadSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_FactoryHeadGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_PalaceMavenIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_PalaceMavenSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_PalaceMavenGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_ArenaTycoonIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_ArenaTycoonSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_ArenaTycoonGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_PikeQueenIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_PikeQueenSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_PikeQueenGoldMons[];
extern const u8 BattleFrontier_Lounge2_Text_PyramidKingIsThere[];
extern const u8 BattleFrontier_Lounge2_Text_PyramidKingSilverMons[];
extern const u8 BattleFrontier_Lounge2_Text_PyramidKingGoldMons[];


extern const u8 BattleFrontier_Lounge5_Text_NatureGirlHardy[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlLonely[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlBrave[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlAdamant[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlNaughty[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlBold[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlDocileNaiveQuietQuirky[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlRelaxed[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlImpish[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlLax[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlTimid[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlHasty[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlSerious[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlJolly[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlModest[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlMild[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlBashful[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlRash[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlCalm[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlGentle[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlSassy[];
extern const u8 BattleFrontier_Lounge5_Text_NatureGirlCareful[];


extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleTowerSingle[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleTowerDouble[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleTowerMulti[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleDomeSingle[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleDomeDouble[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleFactorySingle[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleFactoryDouble[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattlePalaceSingle[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattlePalaceDouble[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattleArena[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattlePike[];
extern const u8 BattleFrontier_Lounge3_Text_ChallengeBattlePyramid[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleTowerSingle[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleTowerDouble[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleTowerMulti[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleDomeSingle[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleDomeDouble[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleFactorySingle[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleFactoryDouble[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattlePalaceSingle[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattlePalaceDouble[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattleArena[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattlePike[];
extern const u8 BattleFrontier_Lounge3_Text_GetToBattlePyramid[];

extern const u8 gText_BP[];


extern const u8 BattleFrontier_ExchangeServiceCorner_Text_KissPosterDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_KissCushionDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_SmoochumDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_TogepiDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_MeowthDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ClefairyDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_DittoDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_CyndaquilDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ChikoritaDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_TotodileDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_LargeDollDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ProteinDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_CalciumDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_IronDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ZincDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_CarbosDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_HPUpDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_LeftoversDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_WhiteHerbDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_QuickClawDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_MentalHerbDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_BrightpowderDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ChoiceBandDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_KingsRockDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_FocusBandDesc[];
extern const u8 BattleFrontier_ExchangeServiceCorner_Text_ScopeLensDesc[];


extern const u8 BattleFrontier_Lounge7_Text_SoftboiledDesc[];
extern const u8 BattleFrontier_Lounge7_Text_SeismicTossDesc[];
extern const u8 BattleFrontier_Lounge7_Text_DreamEaterDesc[];
extern const u8 BattleFrontier_Lounge7_Text_MegaPunchDesc[];
extern const u8 BattleFrontier_Lounge7_Text_MegaKickDesc[];
extern const u8 BattleFrontier_Lounge7_Text_BodySlamDesc[];
extern const u8 BattleFrontier_Lounge7_Text_RockSlideDesc[];
extern const u8 BattleFrontier_Lounge7_Text_CounterDesc[];
extern const u8 BattleFrontier_Lounge7_Text_ThunderWaveDesc[];
extern const u8 BattleFrontier_Lounge7_Text_SwordsDanceDesc[];
extern const u8 BattleFrontier_Lounge7_Text_DefenseCurlDesc[];
extern const u8 BattleFrontier_Lounge7_Text_SnoreDesc[];
extern const u8 BattleFrontier_Lounge7_Text_MudSlapDesc[];
extern const u8 BattleFrontier_Lounge7_Text_SwiftDesc[];
extern const u8 BattleFrontier_Lounge7_Text_IcyWindDesc[];
extern const u8 BattleFrontier_Lounge7_Text_EndureDesc[];
extern const u8 BattleFrontier_Lounge7_Text_PsychUpDesc[];
extern const u8 BattleFrontier_Lounge7_Text_IcePunchDesc[];
extern const u8 BattleFrontier_Lounge7_Text_ThunderPunchDesc[];
extern const u8 BattleFrontier_Lounge7_Text_FirePunchDesc[];

extern const u8 gText_YourPartnerHasRetired[];

extern const u8 gText_Wallace[];
extern const u8 gText_Steven[];
extern const u8 gText_Brawly[];
extern const u8 gText_Winona[];
extern const u8 gText_Phoebe[];
extern const u8 gText_Glacia[];

extern const u8 gText_MoveRelearnerPkmnLearnedMove[];
extern const u8 gText_MoveRelearnerPkmnTryingToLearnMove[];
extern const u8 gText_MoveRelearnerWhichMoveToForget[];
extern const u8 gText_MoveRelearnerStopTryingToTeachMove[];
extern const u8 gText_MoveRelearnerAndPoof[];
extern const u8 gText_MoveRelearnerPkmnForgotMoveAndLearnedNew[];
extern const u8 gText_TeachWhichMoveToPkmn[];
extern const u8 gText_MoveRelearnerGiveUp[];
extern const u8 gText_MoveRelearnerTeachMoveConfirm[];
extern const u8 gText_MoveRelearnerBattleMoves[];
extern const u8 gText_MoveRelearnerPP[];
extern const u8 gText_MoveRelearnerPower[];
extern const u8 gText_MoveRelearnerAccuracy[];
extern const u8 gText_MoveRelearnerContestMovesTitle[];
extern const u8 gText_MoveRelearnerAppeal[];
extern const u8 gText_MoveRelearnerJam[];

extern const u8 gText_Kira[];
extern const u8 gText_Amy[];
extern const u8 gText_John[];
extern const u8 gText_Roy[];
extern const u8 gText_Gabby[];
extern const u8 gText_Anna[];

extern const u8 gText_DadsAdvice[];
extern const u8 gText_CantDismountBike[];
extern const u8 gText_ItemFinderNothing[];
extern const u8 gText_ItemFinderNearby[];
extern const u8 gText_ItemFinderOnTop[];
extern const u8 gText_CoinCase[];
extern const u8 gText_PowderQty[];
extern const u8 gText_BootedUpHM[];
extern const u8 gText_BootedUpTM[];
extern const u8 gText_TMHMContainedVar1[];
extern const u8 gText_PlayerUsedVar2[];
extern const u8 gText_RepelEffectsLingered[];
extern const u8 gText_UsedVar2WildLured[];
extern const u8 gText_UsedVar2WildRepelled[];
extern const u8 gText_BoxFull[];
extern const u8 gText_WontHaveEffect[];

extern const u8 gText_LevelSymbol[];
extern const u8 gText_PkmnInfo[];
extern const u8 gText_PkmnSkills[];
extern const u8 gText_BattleMoves[];
extern const u8 gText_ContestMoves[];
extern const u8 gText_HMMovesCantBeForgotten2[];
extern const u8 gText_Info[];
extern const u8 gText_Switch[];
extern const u8 gText_RentalPkmn[];
extern const u8 gText_TypeSlash[];
extern const u8 gText_HP4[];
extern const u8 gText_Attack3[];
extern const u8 gText_Defense3[];
extern const u8 gText_SpAtk4[];
extern const u8 gText_SpDef4[];
extern const u8 gText_Speed2[];
extern const u8 gText_ExpPoints[];
extern const u8 gText_NextLv[];
extern const u8 gText_Status[];
extern const u8 gText_Power[];
extern const u8 gText_Accuracy2[];
extern const u8 gText_Appeal[];
extern const u8 gText_Jam[];
extern const u8 gText_OTSlash[];
extern const u8 gText_IDNumber2[];
extern const u8 gText_XNature[];
extern const u8 gText_XNatureHatchedAtYZ[];
extern const u8 gText_XNatureHatchedSomewhereAt[];
extern const u8 gText_XNatureMetAtYZ[];
extern const u8 gText_XNatureMetSomewhereAt[];
extern const u8 gText_XNatureFatefulEncounter[];
extern const u8 gText_XNatureProbablyMetAt[];
extern const u8 gText_XNatureObtainedInTrade[];
extern const u8 gText_EmptyString5[];
extern const u8 gText_EggWillTakeALongTime[];
extern const u8 gText_EggAboutToHatch[];
extern const u8 gText_EggWillHatchSoon[];
extern const u8 gText_EggWillTakeSomeTime[];
extern const u8 gText_PeculiarEggNicePlace[];
extern const u8 gText_PeculiarEggTrade[];
extern const u8 gText_EggFromTraveler[];
extern const u8 gText_EggFromHotSprings[];
extern const u8 gText_OddEggFoundByCouple[];
extern const u8 gText_None[];
extern const u8 gText_RibbonsVar1[];
extern const u8 gText_OneDash[];
extern const u8 gText_TwoDashes[];

extern const u8 *const gReturnToXStringsTable2[];

extern const u8 gText_XPLink[];
extern const u8 gText_ConfirmLinkWhenPlayersReady[];
extern const u8 gText_ConfirmStartLinkWithXPlayers[];
extern const u8 gText_AwaitingLinkup[];
extern const u8 gText_PleaseWaitForLink[];
extern const u8 gText_BronzeCard[];
extern const u8 gText_CopperCard[];
extern const u8 gText_SilverCard[];
extern const u8 gText_GoldCard[];

extern const u8 gText_CanIHelpWithAnythingElse[];
extern const u8 gText_AnythingElseICanHelp[];
extern const u8 gText_QuitShopping[];
extern const u8 gText_PokedollarVar1[];
extern const u8 gText_YouDontHaveMoney[];
extern const u8 gText_Var1CertainlyHowMany2[];
extern const u8 gText_Var1CertainlyHowMany[];
extern const u8 gText_Var1IsItThatllBeVar2[];
extern const u8 gText_YouWantedVar1ThatllBeVar2[];
extern const u8 gText_InBagVar1[];
extern const u8 gText_Var1AndYouWantedVar2[];
extern const u8 gText_HereYouGoThankYou[];
extern const u8 gText_NoMoreRoomForThis[];
extern const u8 gText_YouAlreadyHaveThis[];
extern const u8 gText_ThankYouIllSendItHome[];
extern const u8 gText_ThanksIllSendItHome[];
extern const u8 gText_SpaceForVar1Full[];
extern const u8 gText_ThrowInPremierBall[];
extern const u8 gText_ShopBuy[];
extern const u8 gText_ShopSell[];
extern const u8 gText_ShopQuit[];

extern const u8 gText_OhABite[];
extern const u8 gText_PokemonOnHook[];
extern const u8 gText_NotEvenANibble[];
extern const u8 gText_ItGotAway[];

extern const u8 gText_HallOfFame[];
extern const u8 gText_LogOff[];
extern const u8 gText_LanettesPC[];
extern const u8 gText_SomeonesPC[];
extern const u8 gText_PlayersPC[];
extern const u8 gText_WhichPCShouldBeAccessed[];

extern const u8 gText_PokenavMatchCall_Strategy[];
extern const u8 gText_PokenavMatchCall_TrainerPokemon[];
extern const u8 gText_PokenavMatchCall_SelfIntroduction[];
extern const u8 gText_Pokenav_ClearButtonList[];
extern const u8 gText_PokenavMap_ZoomedOutButtons[];
extern const u8 gText_PokenavMap_ZoomedInButtons[];
extern const u8 gText_PokenavCondition_MonListButtons[];
extern const u8 gText_PokenavCondition_MonStatusButtons[];
extern const u8 gText_PokenavCondition_MarkingButtons[];
extern const u8 gText_PokenavMatchCall_TrainerListButtons[];
extern const u8 gText_PokenavMatchCall_CallMenuButtons[];
extern const u8 gText_PokenavMatchCall_CheckTrainerButtons[];
extern const u8 gText_PokenavRibbons_MonListButtons[];
extern const u8 gText_PokenavRibbons_RibbonListButtons[];
extern const u8 gText_PokenavRibbons_RibbonCheckButtons[];
extern const u8 gText_Number2[];

extern const u8 gText_Petalburg[];
extern const u8 gText_Slateport[];
extern const u8 gText_Enter2[];
extern const u8 gText_Info2[];
extern const u8 gText_WhatsAContest[];
extern const u8 gText_TypesOfContests[];
extern const u8 gText_Ranks[];
extern const u8 gText_Decoration2[];
extern const u8 gText_PackUp[];
extern const u8 gText_Registry[];
extern const u8 gText_Information[];
extern const u8 gText_Mach[];
extern const u8 gText_Acro[];
extern const u8 gText_Psn[];
extern const u8 gText_Par[];
extern const u8 gText_Slp[];
extern const u8 gText_Brn[];
extern const u8 gText_Frz[];
extern const u8 gText_Dewford[];
extern const u8 gText_SawIt[];
extern const u8 gText_NotYet[];
extern const u8 gText_Yes[];
extern const u8 gText_No[];
extern const u8 gText_Challenge[];
extern const u8 gText_Info3[];
extern const u8 gTrickHouse_Mechadoll_Oddish[];
extern const u8 gTrickHouse_Mechadoll_Poochyena[];
extern const u8 gTrickHouse_Mechadoll_Taillow[];
extern const u8 gTrickHouse_Mechadoll_Azurill[];
extern const u8 gTrickHouse_Mechadoll_Lotad[];
extern const u8 gTrickHouse_Mechadoll_Wingull[];
extern const u8 gTrickHouse_Mechadoll_Dustox[];
extern const u8 gTrickHouse_Mechadoll_Zubat[];
extern const u8 gTrickHouse_Mechadoll_Nincada[];
extern const u8 gTrickHouse_Mechadoll_Ralts[];
extern const u8 gTrickHouse_Mechadoll_Zigzagoon[];
extern const u8 gTrickHouse_Mechadoll_Slakoth[];
extern const u8 gTrickHouse_Mechadoll_Poochyena2[];
extern const u8 gTrickHouse_Mechadoll_Shroomish[];
extern const u8 gTrickHouse_Mechadoll_Zigzagoon2[];
extern const u8 gTrickHouse_Mechadoll_Poochyena3[];
extern const u8 gTrickHouse_Mechadoll_Zubat2[];
extern const u8 gTrickHouse_Mechadoll_Carvanha[];
extern const u8 gTrickHouse_Mechadoll_BurnHeal[];
extern const u8 gTrickHouse_Mechadoll_HarborMail[];
extern const u8 gTrickHouse_Mechadoll_SamePrice[];
extern const u8 gTrickHouse_Mechadoll_60Yen[];
extern const u8 gTrickHouse_Mechadoll_55Yen[];
extern const u8 gTrickHouse_Mechadoll_Nothing[];
extern const u8 gTrickHouse_Mechadoll_CostMore[];
extern const u8 gTrickHouse_Mechadoll_CostLess[];
extern const u8 gTrickHouse_Mechadoll_SamePrice2[];
extern const u8 gTrickHouse_Mechadoll_Male[];
extern const u8 gTrickHouse_Mechadoll_Female[];
extern const u8 gTrickHouse_Mechadoll_Neither[];
extern const u8 gTrickHouse_Mechadoll_ElderlyMen[];
extern const u8 gTrickHouse_Mechadoll_ElderlyLadies[];
extern const u8 gTrickHouse_Mechadoll_SameNumber[];
extern const u8 gTrickHouse_Mechadoll_None[];
extern const u8 gTrickHouse_Mechadoll_One[];
extern const u8 gTrickHouse_Mechadoll_Two[];
extern const u8 gTrickHouse_Mechadoll_Two2[];
extern const u8 gTrickHouse_Mechadoll_Three[];
extern const u8 gTrickHouse_Mechadoll_Four[];
extern const u8 gTrickHouse_Mechadoll_Six[];
extern const u8 gTrickHouse_Mechadoll_Seven[];
extern const u8 gTrickHouse_Mechadoll_Eight[];
extern const u8 gTrickHouse_Mechadoll_Six2[];
extern const u8 gTrickHouse_Mechadoll_Seven2[];
extern const u8 gTrickHouse_Mechadoll_Eight2[];


extern const u8 gText_SearchForPkmnBasedOnParameters[];
extern const u8 gText_SwitchPokedexListings[];
extern const u8 gText_ReturnToPokedex[];
extern const u8 gText_SelectPokedexMode[];
extern const u8 gText_SelectPokedexListingMode[];
extern const u8 gText_ListByFirstLetter[];
extern const u8 gText_ListByBodyColor[];
extern const u8 gText_ListByType[];
extern const u8 gText_ExecuteSearchSwitch[];
extern const u8 gText_DexHoennTitle[];
extern const u8 gText_DexNatTitle[];
extern const u8 gText_DexSortNumericalTitle[];
extern const u8 gText_DexSortAtoZTitle[];
extern const u8 gText_DexSortHeaviestTitle[];
extern const u8 gText_DexSortLightestTitle[];
extern const u8 gText_DexSortTallestTitle[];
extern const u8 gText_DexSortSmallestTitle[];
extern const u8 gText_DexSearchAlphaABC[];
extern const u8 gText_DexSearchAlphaDEF[];
extern const u8 gText_DexSearchAlphaGHI[];
extern const u8 gText_DexSearchAlphaJKL[];
extern const u8 gText_DexSearchAlphaMNO[];
extern const u8 gText_DexSearchAlphaPQR[];
extern const u8 gText_DexSearchAlphaSTU[];
extern const u8 gText_DexSearchAlphaVWX[];
extern const u8 gText_DexSearchAlphaYZ[];
extern const u8 gText_DexSearchColorRed[];
extern const u8 gText_DexSearchColorBlue[];
extern const u8 gText_DexSearchColorYellow[];
extern const u8 gText_DexSearchColorGreen[];
extern const u8 gText_DexSearchColorBlack[];
extern const u8 gText_DexSearchColorBrown[];
extern const u8 gText_DexSearchColorPurple[];
extern const u8 gText_DexSearchColorGray[];
extern const u8 gText_DexSearchColorWhite[];
extern const u8 gText_DexSearchColorPink[];
extern const u8 gText_DexHoennDescription[];
extern const u8 gText_DexNatDescription[];
extern const u8 gText_DexSortNumericalDescription[];
extern const u8 gText_DexSortAtoZDescription[];
extern const u8 gText_DexSortHeaviestDescription[];
extern const u8 gText_DexSortLightestDescription[];
extern const u8 gText_DexSortTallestDescription[];
extern const u8 gText_DexSortSmallestDescription[];
extern const u8 gText_DexEmptyString[];
extern const u8 gText_DexSearchDontSpecify[];
extern const u8 gText_DexSearchTypeNone[];

extern const u8 gText_FreshWaterAndPrice[];
extern const u8 gText_SodaPopAndPrice[];
extern const u8 gText_LemonadeAndPrice[];
extern const u8 gText_HowToRide[];
extern const u8 gText_HowToTurn[];
extern const u8 gText_SandySlopes[];
extern const u8 gText_Wheelies[];
extern const u8 gText_BunnyHops[];
extern const u8 gText_Jump[];
extern const u8 gText_Satisfied[];
extern const u8 gText_Dissatisfied[];
extern const u8 gText_DeepSeaTooth[];
extern const u8 gText_DeepSeaScale[];
extern const u8 gText_BlueFlute2[];
extern const u8 gText_YellowFlute2[];
extern const u8 gText_RedFlute2[];
extern const u8 gText_WhiteFlute2[];
extern const u8 gText_BlackFlute2[];
extern const u8 gText_GlassChair[];
extern const u8 gText_GlassDesk[];
extern const u8 gText_TreeckoDollAndPrice[];
extern const u8 gText_TorchicDollAndPrice[];
extern const u8 gText_MudkipDollAndPrice[];
extern const u8 gText_TM32AndPrice[];
extern const u8 gText_TM29AndPrice[];
extern const u8 gText_TM35AndPrice[];
extern const u8 gText_TM24AndPrice[];
extern const u8 gText_TM13AndPrice[];
extern const u8 gText_50CoinsAndPrice[];
extern const u8 gText_500CoinsAndPrice[];
extern const u8 gText_Excellent2[];
extern const u8 gText_NotSoGood[];
extern const u8 gText_LilycoveCity[];
extern const u8 gText_Right[];
extern const u8 gText_Left[];
extern const u8 gText_RedShard[];
extern const u8 gText_YellowShard[];
extern const u8 gText_BlueShard[];
extern const u8 gText_GreenShard[];
extern const u8 gText_Opponent[];
extern const u8 gText_Tourney_Tree[];
extern const u8 gText_ReadyToStart[];
extern const u8 gText_Record2[];
extern const u8 gText_Rest[];
extern const u8 gText_Retire[];
extern const u8 gText_RedTent[];
extern const u8 gText_BlueTent[];
extern const u8 gText_TradeCenter[];
extern const u8 gText_Colosseum[];
extern const u8 gText_RecordCorner[];
extern const u8 gText_SingleBattle[];
extern const u8 gText_DoubleBattle[];
extern const u8 gText_MultiBattle[];
extern const u8 gText_BerryCrush3[];
extern const u8 gText_PokemonJump[];
extern const u8 gText_DodrioBerryPicking[];
extern const u8 gText_JoinGroup[];
extern const u8 gText_BecomeLeader[];
extern const u8 gText_NormalRank[];
extern const u8 gText_SuperRank[];
extern const u8 gText_HyperRank[];
extern const u8 gText_MasterRank[];
extern const u8 gText_BattleBag[];
extern const u8 gText_HeldItem[];
extern const u8 gText_LinkContest[];
extern const u8 gText_AboutE_Mode[];
extern const u8 gText_AboutG_Mode[];
extern const u8 gText_E_Mode[];
extern const u8 gText_G_Mode[];
extern const u8 gText_Blank[];
extern const u8 gText_5BP[];
extern const u8 gText_10BP[];
extern const u8 gText_15BP[];
extern const u8 gText_ClawFossil[];
extern const u8 gText_RootFossil[];
extern const u8 gText_No4[];
extern const u8 gText_TwoStyles[];
extern const u8 gText_Lv50_3[];
extern const u8 gText_OpenLevel2[];
extern const u8 gText_MonTypeAndNo[];
extern const u8 gText_HoldItems[];
extern const u8 gText_Symbols2[];
extern const u8 gText_Record3[];
extern const u8 gText_BattlePts[];
extern const u8 gText_BattleRules[];
extern const u8 gText_JudgeMind[];
extern const u8 gText_JudgeSkill[];
extern const u8 gText_JudgeBody[];
extern const u8 gText_TowerInfo[];
extern const u8 gText_BattleMon[];
extern const u8 gText_BattleSalon[];
extern const u8 gText_MultiLink2[];
extern const u8 gText_Matchup[];
extern const u8 gText_TourneyTree[];
extern const u8 gText_DoubleKO[];
extern const u8 gText_BasicRules[];
extern const u8 gText_SwapPartners[];
extern const u8 gText_SwapNumber[];
extern const u8 gText_SwapNotes[];
extern const u8 gText_OpenLevel3[];
extern const u8 gText_PyramidPokemon[];
extern const u8 gText_PyramidTrainers[];
extern const u8 gText_PyramidMaze[];
extern const u8 gText_BattleBag2[];
extern const u8 gText_PokenavAndBag[];
extern const u8 gText_HeldItems[];
extern const u8 gText_PokemonOrder[];
extern const u8 gText_GoOn[];
extern const u8 gText_Red[];
extern const u8 gText_Blue[];
extern const u8 gText_IllBattleNow[];
extern const u8 gText_IWon[];
extern const u8 gText_ILost[];
extern const u8 gText_IWontTell[];
extern const u8 gText_CaveOfOrigin[];
extern const u8 gText_MtPyre[];
extern const u8 gText_SkyPillar[];
extern const u8 gText_DontRemember[];
extern const u8 gText_BattlePokemon[];
extern const u8 gText_NormalTagMatch[];
extern const u8 gText_VarietyTagMatch[];
extern const u8 gText_UniqueTagMatch[];
extern const u8 gText_ExpertTagMatch[];
extern const u8 gText_TimeBoard[];
extern const u8 gText_TimeCleared[];
extern const u8 gText_XMinYDotZSec[];
extern const u8 gText_TrainerHill1F[];
extern const u8 gText_TrainerHill2F[];
extern const u8 gText_TrainerHill3F[];
extern const u8 gText_TrainerHill4F[];


extern const u8 CableClub_Text_TradeUsingLinkCable[];
extern const u8 CableClub_Text_BattleUsingLinkCable[];
extern const u8 CableClub_Text_RecordCornerUsingLinkCable[];
extern const u8 CableClub_Text_CancelSelectedItem[];
extern const u8 CableClub_Text_YouMayTradeHere[];
extern const u8 CableClub_Text_YouMayBattleHere[];
extern const u8 CableClub_Text_CanMixRecords[];
extern const u8 CableClub_Text_CanMakeBerryPowder[];


extern const u8 gText_WinStreak[];
extern const u8 gText_Record[];
extern const u8 gText_Current[];
extern const u8 gText_RoomsCleared[];
extern const u8 gText_Prev[];
extern const u8 gText_SingleBattleRoomResults[];
extern const u8 gText_DoubleBattleRoomResults[];
extern const u8 gText_MultiBattleRoomResults[];
extern const u8 gText_LinkMultiBattleRoomResults[];
extern const u8 gText_Lv502[];
extern const u8 gText_OpenLv[];
extern const u8 gText_RentalSwap[];
extern const u8 gText_ClearStreak[];
extern const u8 gText_Total[];
extern const u8 gText_Championships[];
extern const u8 gText_SingleBattleTourneyResults[];
extern const u8 gText_DoubleBattleTourneyResults[];
extern const u8 gText_SingleBattleHallResults[];
extern const u8 gText_DoubleBattleHallResults[];
extern const u8 gText_BattleChoiceResults[];
extern const u8 gText_TimesCleared[];
extern const u8 gText_KOsInARow[];
extern const u8 gText_SetKOTourneyResults[];
extern const u8 gText_TimesVar1[];
extern const u8 gText_BattleSwapSingleResults[];
extern const u8 gText_BattleSwapDoubleResults[];
extern const u8 gText_FloorsCleared[];
extern const u8 gText_BattleQuestResults[];
extern const u8 gText_LinkContestResults[];
extern const u8 gText_4th[];
extern const u8 gText_3rd[];
extern const u8 gText_2nd[];
extern const u8 gText_1st[];
extern const u8 gText_SpaceAndSpace[];
extern const u8 gText_CommaSpace[];
extern const u8 gText_NewLine[];
extern const u8 gText_LineBreak[];
extern const u8 gText_Space[];
extern const u8 gText_Space2[];
extern const u8 gText_Are[];
extern const u8 gText_Are2[];
extern const u8 gText_123Dot[][3];


extern const u8 gText_FacilitySingle[];
extern const u8 gText_FacilityDouble[];
extern const u8 gText_FacilityMulti[];
extern const u8 gText_FacilityLink[];
extern const u8 gText_Facility[];

extern const u8 gText_RecordsLv50[];
extern const u8 gText_RecordsOpenLevel[];
extern const u8 gText_FrontierFacilityWinStreak[];
extern const u8 gText_FrontierFacilityClearStreak[];
extern const u8 gText_FrontierFacilityRoomsCleared[];
extern const u8 gText_FrontierFacilityKOsStreak[];
extern const u8 gText_FrontierFacilityFloorsCleared[];


extern const u8 gText_AnabelWonSilver[];
extern const u8 gText_TuckerWonSilver[];
extern const u8 gText_SpenserWonSilver[];
extern const u8 gText_GretaWonSilver[];
extern const u8 gText_NolandWonSilver[];
extern const u8 gText_LucyWonSilver[];
extern const u8 gText_BrandonWonSilver[];
extern const u8 gText_AnabelDefeatSilver[];
extern const u8 gText_TuckerDefeatSilver[];
extern const u8 gText_SpenserDefeatSilver[];
extern const u8 gText_GretaDefeatSilver[];
extern const u8 gText_NolandDefeatSilver[];
extern const u8 gText_LucyDefeatSilver[];
extern const u8 gText_BrandonDefeatSilver[];
extern const u8 gText_AnabelWonGold[];
extern const u8 gText_TuckerWonGold[];
extern const u8 gText_SpenserWonGold[];
extern const u8 gText_GretaWonGold[];
extern const u8 gText_NolandWonGold[];
extern const u8 gText_LucyWonGold[];
extern const u8 gText_BrandonWonGold[];
extern const u8 gText_AnabelDefeatGold[];
extern const u8 gText_TuckerDefeatGold[];
extern const u8 gText_SpenserDefeatGold[];
extern const u8 gText_GretaDefeatGold[];
extern const u8 gText_NolandDefeatGold[];
extern const u8 gText_LucyDefeatGold[];
extern const u8 gText_BrandonDefeatGold[];


extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice1Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice2Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice3Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice4Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice5Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice6Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice7Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice8Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice9Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice10Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice11Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice12Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice13Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice14Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice15Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Intro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Mon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Mon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Accept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_Apprentice16Reject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LassReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_YoungsterReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HikerReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BeautyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_FishermanReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_LadyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugCatcherReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RichBoyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BlackBeltReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_HexManiacReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RunningTriathleteMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BattleGirlReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CyclingTriathleteMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_TuberMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GuitaristReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_GentlemanReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ExpertFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_DragonTamerReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BirdKeeperReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_NinjaBoyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_ParasolLadyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_BugManiacReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SailorReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CollectorReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnRangerFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_AromaLadyReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_RuinManiacReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CoolTrainerFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokemaniacReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_KindlerReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_CamperReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PicnickerReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PsychicFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SchoolKidFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PkmnBreederFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_PokefanFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteMReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmingTriathleteFReject[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMIntro[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMMon1[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMMon2Ask[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMAccept[];
extern const u8 BattleFrontier_BattleTowerMultiPartnerRoom_Text_SwimmerMReject[];


extern const u8 BattleDome_Text_Potential1[];
extern const u8 BattleDome_Text_Potential2[];
extern const u8 BattleDome_Text_Potential3[];
extern const u8 BattleDome_Text_Potential4[];
extern const u8 BattleDome_Text_Potential5[];
extern const u8 BattleDome_Text_Potential6[];
extern const u8 BattleDome_Text_Potential7[];
extern const u8 BattleDome_Text_Potential8[];
extern const u8 BattleDome_Text_Potential9[];
extern const u8 BattleDome_Text_Potential10[];
extern const u8 BattleDome_Text_Potential11[];
extern const u8 BattleDome_Text_Potential12[];
extern const u8 BattleDome_Text_Potential13[];
extern const u8 BattleDome_Text_Potential14[];
extern const u8 BattleDome_Text_Potential15[];
extern const u8 BattleDome_Text_Potential16[];
extern const u8 BattleDome_Text_PotentialDomeAceTucker[];
extern const u8 BattleDome_Text_StyleRiskDisaster[];
extern const u8 BattleDome_Text_StyleEndureLongBattles[];
extern const u8 BattleDome_Text_StyleVariesTactics[];
extern const u8 BattleDome_Text_StyleToughWinningPattern[];
extern const u8 BattleDome_Text_StyleUsesVeryRareMove[];
extern const u8 BattleDome_Text_StyleUsesStartlingMoves[];
extern const u8 BattleDome_Text_StyleConstantlyWatchesHP[];
extern const u8 BattleDome_Text_StyleStoresAndLoosesPower[];
extern const u8 BattleDome_Text_StyleEnfeeblesFoes[];
extern const u8 BattleDome_Text_StylePrefersLuckTactics[];
extern const u8 BattleDome_Text_StyleRegalAtmosphere[];
extern const u8 BattleDome_Text_StylePowerfulLowPPMoves[];
extern const u8 BattleDome_Text_StyleEnfeebleThenAttack[];
extern const u8 BattleDome_Text_StyleBattlesWhileEnduring[];
extern const u8 BattleDome_Text_StyleUpsetsFoesEmotionally[];
extern const u8 BattleDome_Text_StyleStrongAndStraightforward[];
extern const u8 BattleDome_Text_StyleAggressivelyStrongMoves[];
extern const u8 BattleDome_Text_StyleCleverlyDodgesAttacks[];
extern const u8 BattleDome_Text_StyleUsesUpsettingMoves[];
extern const u8 BattleDome_Text_StyleUsesPopularMoves[];
extern const u8 BattleDome_Text_StyleHasPowerfulComboMoves[];
extern const u8 BattleDome_Text_StyleUsesHighProbabilityMoves[];
extern const u8 BattleDome_Text_StyleAggressivelySpectacularMoves[];
extern const u8 BattleDome_Text_StyleEmphasizesOffenseOverDefense[];
extern const u8 BattleDome_Text_StyleEmphasizesDefenseOverOffense[];
extern const u8 BattleDome_Text_StyleAttacksQuicklyStrongMoves[];
extern const u8 BattleDome_Text_StyleUsesAddedEffectMoves[];
extern const u8 BattleDome_Text_StyleUsesBalancedMixOfMoves[];
extern const u8 BattleDome_Text_StyleSampleMessage1[];
extern const u8 BattleDome_Text_StyleSampleMessage2[];
extern const u8 BattleDome_Text_StyleSampleMessage3[];
extern const u8 BattleDome_Text_StyleSampleMessage4[];
extern const u8 BattleDome_Text_EmphasizesHPAndAtk[];
extern const u8 BattleDome_Text_EmphasizesHPAndDef[];
extern const u8 BattleDome_Text_EmphasizesHPAndSpeed[];
extern const u8 BattleDome_Text_EmphasizesHPAndSpAtk[];
extern const u8 BattleDome_Text_EmphasizesHPAndSpDef[];
extern const u8 BattleDome_Text_EmphasizesAtkAndDef[];
extern const u8 BattleDome_Text_EmphasizesAtkAndSpeed[];
extern const u8 BattleDome_Text_EmphasizesAtkAndSpAtk[];
extern const u8 BattleDome_Text_EmphasizesAtkAndSpDef[];
extern const u8 BattleDome_Text_EmphasizesDefAndSpeed[];
extern const u8 BattleDome_Text_EmphasizesDefAndSpAtk[];
extern const u8 BattleDome_Text_EmphasizesDefAndSpDef[];
extern const u8 BattleDome_Text_EmphasizesSpeedAndSpAtk[];
extern const u8 BattleDome_Text_EmphasizesSpeedAndSpDef[];
extern const u8 BattleDome_Text_EmphasizesSpAtkAndSpDef[];
extern const u8 BattleDome_Text_EmphasizesHP[];
extern const u8 BattleDome_Text_EmphasizesAtk[];
extern const u8 BattleDome_Text_EmphasizesDef[];
extern const u8 BattleDome_Text_EmphasizesSpeed[];
extern const u8 BattleDome_Text_EmphasizesSpAtk[];
extern const u8 BattleDome_Text_EmphasizesSpDef[];
extern const u8 BattleDome_Text_NeglectsHPAndAtk[];
extern const u8 BattleDome_Text_NeglectsHPAndDef[];
extern const u8 BattleDome_Text_NeglectsHPAndSpeed[];
extern const u8 BattleDome_Text_NeglectsHPAndSpAtk[];
extern const u8 BattleDome_Text_NeglectsHPAndSpDef[];
extern const u8 BattleDome_Text_NeglectsAtkAndDef[];
extern const u8 BattleDome_Text_NeglectsAtkAndSpeed[];
extern const u8 BattleDome_Text_NeglectsAtkAndSpAtk[];
extern const u8 BattleDome_Text_NeglectsAtkAndSpDef[];
extern const u8 BattleDome_Text_NeglectsDefAndSpeed[];
extern const u8 BattleDome_Text_NeglectsDefAndSpAtk[];
extern const u8 BattleDome_Text_NeglectsDefAndSpDef[];
extern const u8 BattleDome_Text_NeglectsSpeedAndSpAtk[];
extern const u8 BattleDome_Text_NeglectsSpeedAndSpDef[];
extern const u8 BattleDome_Text_NeglectsSpAtkAndSpDef[];
extern const u8 BattleDome_Text_NeglectsHP[];
extern const u8 BattleDome_Text_NeglectsAtk[];
extern const u8 BattleDome_Text_NeglectsDef[];
extern const u8 BattleDome_Text_NeglectsSpeed[];
extern const u8 BattleDome_Text_NeglectsSpAtk[];
extern const u8 BattleDome_Text_NeglectsSpDef[];
extern const u8 BattleDome_Text_RaisesMonsWellBalanced[];
extern const u8 BattleDome_Text_Round1Match1[];
extern const u8 BattleDome_Text_Round1Match2[];
extern const u8 BattleDome_Text_Round1Match3[];
extern const u8 BattleDome_Text_Round1Match4[];
extern const u8 BattleDome_Text_Round1Match5[];
extern const u8 BattleDome_Text_Round1Match6[];
extern const u8 BattleDome_Text_Round1Match7[];
extern const u8 BattleDome_Text_Round1Match8[];
extern const u8 BattleDome_Text_Round2Match1[];
extern const u8 BattleDome_Text_Round2Match2[];
extern const u8 BattleDome_Text_Round2Match3[];
extern const u8 BattleDome_Text_Round2Match4[];
extern const u8 BattleDome_Text_SemifinalMatch1[];
extern const u8 BattleDome_Text_SemifinalMatch2[];
extern const u8 BattleDome_Text_FinalMatch[];
extern const u8 BattleDome_Text_LetTheBattleBegin[];
extern const u8 BattleDome_Text_TrainerWonUsingMove[];
extern const u8 BattleDome_Text_TrainerBecameChamp[];
extern const u8 BattleDome_Text_TrainerWonByDefault[];
extern const u8 BattleDome_Text_TrainerWonOutrightByDefault[];
extern const u8 BattleDome_Text_TrainerWonNoMoves[];
extern const u8 BattleDome_Text_TrainerWonOutrightNoMoves[];


extern const u8 BattlePyramid_Text_ExitHintUp1[];
extern const u8 BattlePyramid_Text_ExitHintLeft1[];
extern const u8 BattlePyramid_Text_ExitHintRight1[];
extern const u8 BattlePyramid_Text_ExitHintDown1[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining1[];
extern const u8 BattlePyramid_Text_OneItemRemaining1[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining1[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining1[];
extern const u8 BattlePyramid_Text_FourItemsRemaining1[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining1[];
extern const u8 BattlePyramid_Text_SixItemsRemaining1[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining1[];
extern const u8 BattlePyramid_Text_EightItemsRemaining1[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining1[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining1[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining1[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining1[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining1[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining1[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining1[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining1[];
extern const u8 BattlePyramid_Text_ExitHintUp2[];
extern const u8 BattlePyramid_Text_ExitHintLeft2[];
extern const u8 BattlePyramid_Text_ExitHintRight2[];
extern const u8 BattlePyramid_Text_ExitHintDown2[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining2[];
extern const u8 BattlePyramid_Text_OneItemRemaining2[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining2[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining2[];
extern const u8 BattlePyramid_Text_FourItemsRemaining2[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining2[];
extern const u8 BattlePyramid_Text_SixItemsRemaining2[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining2[];
extern const u8 BattlePyramid_Text_EightItemsRemaining2[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining2[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining2[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining2[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining2[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining2[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining2[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining2[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining2[];
extern const u8 BattlePyramid_Text_ExitHintUp3[];
extern const u8 BattlePyramid_Text_ExitHintLeft3[];
extern const u8 BattlePyramid_Text_ExitHintRight3[];
extern const u8 BattlePyramid_Text_ExitHintDown3[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining3[];
extern const u8 BattlePyramid_Text_OneItemRemaining3[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining3[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining3[];
extern const u8 BattlePyramid_Text_FourItemsRemaining3[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining3[];
extern const u8 BattlePyramid_Text_SixItemsRemaining3[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining3[];
extern const u8 BattlePyramid_Text_EightItemsRemaining3[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining3[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining3[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining3[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining3[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining3[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining3[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining3[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining3[];
extern const u8 BattlePyramid_Text_ExitHintUp4[];
extern const u8 BattlePyramid_Text_ExitHintLeft4[];
extern const u8 BattlePyramid_Text_ExitHintRight4[];
extern const u8 BattlePyramid_Text_ExitHintDown4[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining4[];
extern const u8 BattlePyramid_Text_OneItemRemaining4[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining4[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining4[];
extern const u8 BattlePyramid_Text_FourItemsRemaining4[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining4[];
extern const u8 BattlePyramid_Text_SixItemsRemaining4[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining4[];
extern const u8 BattlePyramid_Text_EightItemsRemaining4[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining4[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining4[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining4[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining4[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining4[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining4[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining4[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining4[];
extern const u8 BattlePyramid_Text_ExitHintUp5[];
extern const u8 BattlePyramid_Text_ExitHintLeft5[];
extern const u8 BattlePyramid_Text_ExitHintRight5[];
extern const u8 BattlePyramid_Text_ExitHintDown5[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining5[];
extern const u8 BattlePyramid_Text_OneItemRemaining5[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining5[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining5[];
extern const u8 BattlePyramid_Text_FourItemsRemaining5[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining5[];
extern const u8 BattlePyramid_Text_SixItemsRemaining5[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining5[];
extern const u8 BattlePyramid_Text_EightItemsRemaining5[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining5[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining5[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining5[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining5[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining5[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining5[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining5[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining5[];
extern const u8 BattlePyramid_Text_ExitHintUp6[];
extern const u8 BattlePyramid_Text_ExitHintLeft6[];
extern const u8 BattlePyramid_Text_ExitHintRight6[];
extern const u8 BattlePyramid_Text_ExitHintDown6[];
extern const u8 BattlePyramid_Text_ZeroItemsRemaining6[];
extern const u8 BattlePyramid_Text_OneItemRemaining6[];
extern const u8 BattlePyramid_Text_TwoItemsRemaining6[];
extern const u8 BattlePyramid_Text_ThreeItemsRemaining6[];
extern const u8 BattlePyramid_Text_FourItemsRemaining6[];
extern const u8 BattlePyramid_Text_FiveItemsRemaining6[];
extern const u8 BattlePyramid_Text_SixItemsRemaining6[];
extern const u8 BattlePyramid_Text_SevenItemsRemaining6[];
extern const u8 BattlePyramid_Text_EightItemsRemaining6[];
extern const u8 BattlePyramid_Text_ZeroTrainersRemaining6[];
extern const u8 BattlePyramid_Text_OneTrainersRemaining6[];
extern const u8 BattlePyramid_Text_TwoTrainersRemaining6[];
extern const u8 BattlePyramid_Text_ThreeTrainersRemaining6[];
extern const u8 BattlePyramid_Text_FourTrainersRemaining6[];
extern const u8 BattlePyramid_Text_FiveTrainersRemaining6[];
extern const u8 BattlePyramid_Text_SixTrainersRemaining6[];
extern const u8 BattlePyramid_Text_SevenTrainersRemaining6[];


extern const u8 gText_ExitFromBox[];
extern const u8 gText_WhatDoYouWantToDo[];
extern const u8 gText_PleasePickATheme[];
extern const u8 gText_PickTheWallpaper[];
extern const u8 gText_PkmnIsSelected[];
extern const u8 gText_JumpToWhichBox[];
extern const u8 gText_DepositInWhichBox[];
extern const u8 gText_PkmnWasDeposited[];
extern const u8 gText_BoxIsFull2[];
extern const u8 gText_ReleaseThisPokemon[];
extern const u8 gText_PkmnWasReleased[];
extern const u8 gText_ByeByePkmn[];
extern const u8 gText_MarkYourPkmn[];
extern const u8 gText_ThatsYourLastPkmn[];
extern const u8 gText_YourPartysFull[];
extern const u8 gText_YoureHoldingAPkmn[];
extern const u8 gText_WhichOneWillYouTake[];
extern const u8 gText_YouCantReleaseAnEgg[];
extern const u8 gText_ContinueBoxOperations[];
extern const u8 gText_PkmnCameBack[];
extern const u8 gText_WasItWorriedAboutYou[];
extern const u8 gText_FourEllipsesExclamation[];
extern const u8 gText_PleaseRemoveTheMail[];
extern const u8 gText_GiveToAPkmn[];
extern const u8 gText_PlacedItemInBag[];
extern const u8 gText_BagIsFull2[];
extern const u8 gText_PutItemInBag[];
extern const u8 gText_ItemIsNowHeld[];
extern const u8 gText_ChangedToNewItem[];
extern const u8 gText_MailCantBeStored[];
extern const u8 gPCText_Cancel[];
extern const u8 gPCText_Store[];
extern const u8 gPCText_Withdraw[];
extern const u8 gPCText_Move[];
extern const u8 gPCText_Shift[];
extern const u8 gPCText_Place[];
extern const u8 gPCText_Summary[];
extern const u8 gPCText_Release[];
extern const u8 gPCText_Mark[];
extern const u8 gPCText_Jump[];
extern const u8 gPCText_Wallpaper[];
extern const u8 gPCText_Name[];
extern const u8 gPCText_Take[];
extern const u8 gPCText_Give[];
extern const u8 gPCText_Give[];
extern const u8 gPCText_Switch[];
extern const u8 gPCText_Bag[];
extern const u8 gPCText_Info[];
extern const u8 gPCText_Scenery1[];
extern const u8 gPCText_Scenery2[];
extern const u8 gPCText_Scenery3[];
extern const u8 gPCText_Etcetera[];
extern const u8 gPCText_Friends[];
extern const u8 gPCText_Forest[];
extern const u8 gPCText_City[];
extern const u8 gPCText_Desert[];
extern const u8 gPCText_Savanna[];
extern const u8 gPCText_Crag[];
extern const u8 gPCText_Volcano[];
extern const u8 gPCText_Snow[];
extern const u8 gPCText_Cave[];
extern const u8 gPCText_Beach[];
extern const u8 gPCText_Seafloor[];
extern const u8 gPCText_River[];
extern const u8 gPCText_Sky[];
extern const u8 gPCText_PolkaDot[];
extern const u8 gPCText_Pokecenter[];
extern const u8 gPCText_Machine[];
extern const u8 gPCText_Simple[];
extern const u8 gText_PartyFull[];
extern const u8 gText_Box[];
extern const u8 gText_JustOnePkmn[];


extern const u8 gText_LinkStandby3[];
extern const u8 BattleFrontier_BattleTowerBattleRoom_Text_RecordCouldntBeSaved[];
extern const u8 gText_Poison[];
extern const u8 gText_Sleep[];
extern const u8 gText_Paralysis[];
extern const u8 gText_Burn[];
extern const u8 gText_Ice[];
extern const u8 gText_Confusion[];
extern const u8 gText_Love[];


extern const u8 gText_PkmnTransferredSomeonesPCBoxFull[];
extern const u8 gText_PkmnTransferredLanettesPCBoxFull[];
extern const u8 gText_PkmnTransferredSomeonesPC[];
extern const u8 gText_PkmnTransferredLanettesPC[];


extern const u8 gText_LeagueChamp[];
extern const u8 gText_HOFNumber[];
extern const u8 gText_PickNextCancel[];
extern const u8 gText_PickCancel[];
extern const u8 gText_AButtonExit[];
extern const u8 gText_HOFCorrupted[];
extern const u8 gText_WelcomeToHOF[];
extern const u8 gText_Number[];
extern const u8 gText_Level[];
extern const u8 gText_IDNumber[];
extern const u8 gText_Name[];
extern const u8 gText_Time[];


extern const u8 gText_MaleSymbol4[];
extern const u8 gText_FemaleSymbol4[];
extern const u8 gText_GenderlessSymbol[];
extern const u8 gText_NewLine2[];
extern const u8 gText_Exit4[];
extern const u8 gText_Lv[];
extern const u8 gExpandedPlaceholder_Empty[];
extern const u8 gText_Exit[];
extern const u8 gDaycareText_GetAlongVeryWell[];
extern const u8 gDaycareText_GetAlong[];
extern const u8 gDaycareText_DontLikeOther[];
extern const u8 gDaycareText_PlayOther[];


extern const u8 gText_ChoosePokemon[];
extern const u8 gText_ChoosePokemonCancel[];
extern const u8 gText_ChoosePokemonConfirm[];
extern const u8 gText_MoveToWhere[];
extern const u8 gText_TeachWhichPokemon[];
extern const u8 gText_UseOnWhichPokemon[];
extern const u8 gText_GiveToWhichPokemon[];
extern const u8 gText_NothingToCut[];
extern const u8 gText_CantSurfHere[];
extern const u8 gText_AlreadySurfing[];
extern const u8 gText_CurrentIsTooFast[];
extern const u8 gText_EnjoyCycling[];
extern const u8 gText_InUseAlready_PM[];
extern const u8 gText_CantUseHere[];
extern const u8 gText_NoPokemonForBattle[];
extern const u8 gText_ChoosePokemon2[];
extern const u8 gText_NotEnoughHp[];
extern const u8 gText_PokemonAreNeeded[];
extern const u8 gText_PokemonCantBeSame[];
extern const u8 gText_NoIdenticalHoldItems[];
extern const u8 gText_DoWhatWithPokemon[];
extern const u8 gText_RestoreWhichMove[];
extern const u8 gText_BoostPp[];
extern const u8 gText_DoWhatWithItem[];
extern const u8 gText_DoWhatWithMail[];
extern const u8 gText_AlreadyHoldingOne[];
extern const u8 gText_NoUse[];
extern const u8 gText_Able[];
extern const u8 gText_First_PM[];
extern const u8 gText_Second_PM[];
extern const u8 gText_Third_PM[];
extern const u8 gText_Fourth[];
extern const u8 gText_Able2[];
extern const u8 gText_NotAble[];
extern const u8 gText_Able3[];
extern const u8 gText_NotAble2[];
extern const u8 gText_Learned[];
extern const u8 gText_Have[];
extern const u8 gText_DontHave[];
extern const u8 gText_Take[];
extern const u8 gText_Mail[];
extern const u8 gText_Take2[];
extern const u8 gText_Read2[];
extern const u8 gText_Cancel2[];
extern const u8 gText_Shift[];
extern const u8 gText_SendOut[];
extern const u8 gText_Enter[];
extern const u8 gText_NoEntry[];
extern const u8 gText_Store[];
extern const u8 gText_Register[];
extern const u8 gText_Trade4[];
extern const u8 gText_Summary5[];
extern const u8 gText_Switch2[];
extern const u8 gText_Item[];
extern const u8 gText_NotPkmnOtherTrainerWants[];
extern const u8 gText_ThatIsntAnEgg[];
extern const u8 gText_PkmnCantBeTradedNow[];
extern const u8 gText_OtherTrainersPkmnCantBeTraded[];
extern const u8 gText_EggCantBeTradedNow[];
extern const u8 gText_OtherTrainerCantAcceptPkmn[];
extern const u8 gText_CantTradeWithTrainer[];


extern const u8 gText_XWillBeSentToY[];
extern const u8 gText_ByeByeVar1[];
extern const u8 gText_XSentOverY[];
extern const u8 gText_TakeGoodCareOfX[];
extern const u8 gText_CommunicationStandby5[];


extern const u8 MatchCall_WildBattleText1[];
extern const u8 MatchCall_WildBattleText2[];
extern const u8 MatchCall_WildBattleText3[];
extern const u8 MatchCall_WildBattleText4[];
extern const u8 MatchCall_WildBattleText5[];
extern const u8 MatchCall_WildBattleText6[];
extern const u8 MatchCall_WildBattleText7[];
extern const u8 MatchCall_WildBattleText8[];
extern const u8 MatchCall_WildBattleText9[];
extern const u8 MatchCall_WildBattleText10[];
extern const u8 MatchCall_WildBattleText11[];
extern const u8 MatchCall_WildBattleText12[];
extern const u8 MatchCall_WildBattleText13[];
extern const u8 MatchCall_WildBattleText14[];
extern const u8 MatchCall_WildBattleText15[];
extern const u8 MatchCall_NegativeBattleText1[];
extern const u8 MatchCall_NegativeBattleText2[];
extern const u8 MatchCall_NegativeBattleText3[];
extern const u8 MatchCall_NegativeBattleText4[];
extern const u8 MatchCall_NegativeBattleText5[];
extern const u8 MatchCall_NegativeBattleText6[];
extern const u8 MatchCall_NegativeBattleText7[];
extern const u8 MatchCall_NegativeBattleText8[];
extern const u8 MatchCall_NegativeBattleText9[];
extern const u8 MatchCall_NegativeBattleText10[];
extern const u8 MatchCall_NegativeBattleText11[];
extern const u8 MatchCall_NegativeBattleText12[];
extern const u8 MatchCall_NegativeBattleText13[];
extern const u8 MatchCall_NegativeBattleText14[];
extern const u8 MatchCall_PositiveBattleText1[];
extern const u8 MatchCall_PositiveBattleText2[];
extern const u8 MatchCall_PositiveBattleText3[];
extern const u8 MatchCall_PositiveBattleText4[];
extern const u8 MatchCall_PositiveBattleText5[];
extern const u8 MatchCall_PositiveBattleText6[];
extern const u8 MatchCall_PositiveBattleText7[];
extern const u8 MatchCall_PositiveBattleText8[];
extern const u8 MatchCall_PositiveBattleText9[];
extern const u8 MatchCall_PositiveBattleText10[];
extern const u8 MatchCall_PositiveBattleText11[];
extern const u8 MatchCall_PositiveBattleText12[];
extern const u8 MatchCall_PositiveBattleText13[];
extern const u8 MatchCall_PositiveBattleText14[];
extern const u8 MatchCall_SameRouteBattleRequestText1[];
extern const u8 MatchCall_SameRouteBattleRequestText2[];
extern const u8 MatchCall_SameRouteBattleRequestText3[];
extern const u8 MatchCall_SameRouteBattleRequestText4[];
extern const u8 MatchCall_SameRouteBattleRequestText5[];
extern const u8 MatchCall_SameRouteBattleRequestText6[];
extern const u8 MatchCall_SameRouteBattleRequestText7[];
extern const u8 MatchCall_SameRouteBattleRequestText8[];
extern const u8 MatchCall_SameRouteBattleRequestText9[];
extern const u8 MatchCall_SameRouteBattleRequestText10[];
extern const u8 MatchCall_SameRouteBattleRequestText11[];
extern const u8 MatchCall_SameRouteBattleRequestText12[];
extern const u8 MatchCall_SameRouteBattleRequestText13[];
extern const u8 MatchCall_SameRouteBattleRequestText14[];
extern const u8 MatchCall_DifferentRouteBattleRequestText1[];
extern const u8 MatchCall_DifferentRouteBattleRequestText2[];
extern const u8 MatchCall_DifferentRouteBattleRequestText3[];
extern const u8 MatchCall_DifferentRouteBattleRequestText4[];
extern const u8 MatchCall_DifferentRouteBattleRequestText5[];
extern const u8 MatchCall_DifferentRouteBattleRequestText6[];
extern const u8 MatchCall_DifferentRouteBattleRequestText7[];
extern const u8 MatchCall_DifferentRouteBattleRequestText8[];
extern const u8 MatchCall_DifferentRouteBattleRequestText9[];
extern const u8 MatchCall_DifferentRouteBattleRequestText10[];
extern const u8 MatchCall_DifferentRouteBattleRequestText11[];
extern const u8 MatchCall_DifferentRouteBattleRequestText12[];
extern const u8 MatchCall_DifferentRouteBattleRequestText13[];
extern const u8 MatchCall_DifferentRouteBattleRequestText14[];
extern const u8 MatchCall_PersonalizedText1[];
extern const u8 MatchCall_PersonalizedText2[];
extern const u8 MatchCall_PersonalizedText3[];
extern const u8 MatchCall_PersonalizedText4[];
extern const u8 MatchCall_PersonalizedText5[];
extern const u8 MatchCall_PersonalizedText6[];
extern const u8 MatchCall_PersonalizedText7[];
extern const u8 MatchCall_PersonalizedText8[];
extern const u8 MatchCall_PersonalizedText9[];
extern const u8 MatchCall_PersonalizedText10[];
extern const u8 MatchCall_PersonalizedText11[];
extern const u8 MatchCall_PersonalizedText12[];
extern const u8 MatchCall_PersonalizedText13[];
extern const u8 MatchCall_PersonalizedText14[];
extern const u8 MatchCall_PersonalizedText15[];
extern const u8 MatchCall_PersonalizedText16[];
extern const u8 MatchCall_PersonalizedText17[];
extern const u8 MatchCall_PersonalizedText18[];
extern const u8 MatchCall_PersonalizedText19[];
extern const u8 MatchCall_PersonalizedText20[];
extern const u8 MatchCall_PersonalizedText21[];
extern const u8 MatchCall_PersonalizedText22[];
extern const u8 MatchCall_PersonalizedText23[];
extern const u8 MatchCall_PersonalizedText24[];
extern const u8 MatchCall_PersonalizedText25[];
extern const u8 MatchCall_PersonalizedText26[];
extern const u8 MatchCall_PersonalizedText27[];
extern const u8 MatchCall_PersonalizedText28[];
extern const u8 MatchCall_PersonalizedText29[];
extern const u8 MatchCall_PersonalizedText30[];
extern const u8 MatchCall_PersonalizedText31[];
extern const u8 MatchCall_PersonalizedText32[];
extern const u8 MatchCall_PersonalizedText33[];
extern const u8 MatchCall_PersonalizedText34[];
extern const u8 MatchCall_PersonalizedText35[];
extern const u8 MatchCall_PersonalizedText36[];
extern const u8 MatchCall_PersonalizedText37[];
extern const u8 MatchCall_PersonalizedText38[];
extern const u8 MatchCall_PersonalizedText39[];
extern const u8 MatchCall_PersonalizedText40[];
extern const u8 MatchCall_PersonalizedText41[];
extern const u8 MatchCall_PersonalizedText42[];
extern const u8 MatchCall_PersonalizedText43[];
extern const u8 MatchCall_PersonalizedText44[];
extern const u8 MatchCall_PersonalizedText45[];
extern const u8 MatchCall_PersonalizedText46[];
extern const u8 MatchCall_PersonalizedText47[];
extern const u8 MatchCall_PersonalizedText48[];
extern const u8 MatchCall_PersonalizedText49[];
extern const u8 MatchCall_PersonalizedText50[];
extern const u8 MatchCall_PersonalizedText51[];
extern const u8 MatchCall_PersonalizedText52[];
extern const u8 MatchCall_PersonalizedText53[];
extern const u8 MatchCall_PersonalizedText54[];
extern const u8 MatchCall_PersonalizedText55[];
extern const u8 MatchCall_PersonalizedText56[];
extern const u8 MatchCall_PersonalizedText57[];
extern const u8 MatchCall_PersonalizedText58[];
extern const u8 MatchCall_PersonalizedText59[];
extern const u8 MatchCall_PersonalizedText60[];
extern const u8 MatchCall_PersonalizedText61[];
extern const u8 MatchCall_PersonalizedText62[];
extern const u8 MatchCall_PersonalizedText63[];
extern const u8 MatchCall_PersonalizedText64[];
extern const u8 MatchCall_BattleFrontierStreakText1[];
extern const u8 MatchCall_BattleFrontierStreakText2[];
extern const u8 MatchCall_BattleFrontierStreakText3[];
extern const u8 MatchCall_BattleFrontierStreakText4[];
extern const u8 MatchCall_BattleFrontierStreakText5[];
extern const u8 MatchCall_BattleFrontierStreakText6[];
extern const u8 MatchCall_BattleFrontierStreakText7[];
extern const u8 MatchCall_BattleFrontierStreakText8[];
extern const u8 MatchCall_BattleFrontierStreakText9[];
extern const u8 MatchCall_BattleFrontierStreakText10[];
extern const u8 MatchCall_BattleFrontierStreakText11[];
extern const u8 MatchCall_BattleFrontierStreakText12[];
extern const u8 MatchCall_BattleFrontierStreakText13[];
extern const u8 MatchCall_BattleFrontierStreakText14[];
extern const u8 MatchCall_BattleFrontierRecordStreakText1[];
extern const u8 MatchCall_BattleFrontierRecordStreakText2[];
extern const u8 MatchCall_BattleFrontierRecordStreakText3[];
extern const u8 MatchCall_BattleFrontierRecordStreakText4[];
extern const u8 MatchCall_BattleFrontierRecordStreakText5[];
extern const u8 MatchCall_BattleFrontierRecordStreakText6[];
extern const u8 MatchCall_BattleFrontierRecordStreakText7[];
extern const u8 MatchCall_BattleFrontierRecordStreakText8[];
extern const u8 MatchCall_BattleFrontierRecordStreakText9[];
extern const u8 MatchCall_BattleFrontierRecordStreakText10[];
extern const u8 MatchCall_BattleFrontierRecordStreakText11[];
extern const u8 MatchCall_BattleFrontierRecordStreakText12[];
extern const u8 MatchCall_BattleFrontierRecordStreakText13[];
extern const u8 MatchCall_BattleFrontierRecordStreakText14[];
extern const u8 MatchCall_BattleDomeText1[];
extern const u8 MatchCall_BattleDomeText2[];
extern const u8 MatchCall_BattleDomeText3[];
extern const u8 MatchCall_BattleDomeText4[];
extern const u8 MatchCall_BattleDomeText5[];
extern const u8 MatchCall_BattleDomeText6[];
extern const u8 MatchCall_BattleDomeText7[];
extern const u8 MatchCall_BattleDomeText8[];
extern const u8 MatchCall_BattleDomeText9[];
extern const u8 MatchCall_BattleDomeText10[];
extern const u8 MatchCall_BattleDomeText11[];
extern const u8 MatchCall_BattleDomeText12[];
extern const u8 MatchCall_BattleDomeText13[];
extern const u8 MatchCall_BattleDomeText14[];
extern const u8 MatchCall_BattlePikeText1[];
extern const u8 MatchCall_BattlePikeText2[];
extern const u8 MatchCall_BattlePikeText3[];
extern const u8 MatchCall_BattlePikeText4[];
extern const u8 MatchCall_BattlePikeText5[];
extern const u8 MatchCall_BattlePikeText6[];
extern const u8 MatchCall_BattlePikeText7[];
extern const u8 MatchCall_BattlePikeText8[];
extern const u8 MatchCall_BattlePikeText9[];
extern const u8 MatchCall_BattlePikeText10[];
extern const u8 MatchCall_BattlePikeText11[];
extern const u8 MatchCall_BattlePikeText12[];
extern const u8 MatchCall_BattlePikeText13[];
extern const u8 MatchCall_BattlePikeText14[];
extern const u8 MatchCall_BattlePyramidText1[];
extern const u8 MatchCall_BattlePyramidText2[];
extern const u8 MatchCall_BattlePyramidText3[];
extern const u8 MatchCall_BattlePyramidText4[];
extern const u8 MatchCall_BattlePyramidText5[];
extern const u8 MatchCall_BattlePyramidText6[];
extern const u8 MatchCall_BattlePyramidText7[];
extern const u8 MatchCall_BattlePyramidText8[];
extern const u8 MatchCall_BattlePyramidText9[];
extern const u8 MatchCall_BattlePyramidText10[];
extern const u8 MatchCall_BattlePyramidText11[];
extern const u8 MatchCall_BattlePyramidText12[];
extern const u8 MatchCall_BattlePyramidText13[];
extern const u8 MatchCall_BattlePyramidText14[];
extern const u8 MatchCall_Text_MrStone1[];
extern const u8 MatchCall_Text_MrStone2[];
extern const u8 MatchCall_Text_MrStone3[];
extern const u8 MatchCall_Text_MrStone4[];
extern const u8 MatchCall_Text_MrStone5[];
extern const u8 MatchCall_Text_MrStone6[];
extern const u8 MatchCall_Text_MrStone7[];
extern const u8 MatchCall_Text_MrStone8[];
extern const u8 MatchCall_Text_MrStone9[];
extern const u8 MatchCall_Text_MrStone10[];
extern const u8 MatchCall_Text_MrStone11[];
extern const u8 MatchCall_Text_Norman1[];
extern const u8 MatchCall_Text_Norman2[];
extern const u8 MatchCall_Text_Norman3[];
extern const u8 MatchCall_Text_Norman4[];
extern const u8 MatchCall_Text_Norman5[];
extern const u8 MatchCall_Text_Norman6[];
extern const u8 MatchCall_Text_Norman7[];
extern const u8 MatchCall_Text_Norman8[];
extern const u8 MatchCall_Text_Norman9[];
extern const u8 MatchCall_Text_Mom1[];
extern const u8 MatchCall_Text_Mom2[];
extern const u8 MatchCall_Text_Mom3[];
extern const u8 MatchCall_Text_Steven1[];
extern const u8 MatchCall_Text_Steven2[];
extern const u8 MatchCall_Text_Steven3[];
extern const u8 MatchCall_Text_Steven4[];
extern const u8 MatchCall_Text_Steven5[];
extern const u8 MatchCall_Text_Steven6[];
extern const u8 MatchCall_Text_Steven7[];
extern const u8 MatchCall_Text_May1[];
extern const u8 MatchCall_Text_May2[];
extern const u8 MatchCall_Text_May3[];
extern const u8 MatchCall_Text_May4[];
extern const u8 MatchCall_Text_May5[];
extern const u8 MatchCall_Text_May6[];
extern const u8 MatchCall_Text_May7[];
extern const u8 MatchCall_Text_May8[];
extern const u8 MatchCall_Text_May9[];
extern const u8 MatchCall_Text_May10[];
extern const u8 MatchCall_Text_May11[];
extern const u8 MatchCall_Text_May12[];
extern const u8 MatchCall_Text_May13[];
extern const u8 MatchCall_Text_May14[];
extern const u8 MatchCall_Text_May15[];
extern const u8 MatchCall_Text_Brendan1[];
extern const u8 MatchCall_Text_Brendan2[];
extern const u8 MatchCall_Text_Brendan3[];
extern const u8 MatchCall_Text_Brendan4[];
extern const u8 MatchCall_Text_Brendan5[];
extern const u8 MatchCall_Text_Brendan6[];
extern const u8 MatchCall_Text_Brendan7[];
extern const u8 MatchCall_Text_Brendan8[];
extern const u8 MatchCall_Text_Brendan9[];
extern const u8 MatchCall_Text_Brendan10[];
extern const u8 MatchCall_Text_Brendan11[];
extern const u8 MatchCall_Text_Brendan12[];
extern const u8 MatchCall_Text_Brendan13[];
extern const u8 MatchCall_Text_Brendan14[];
extern const u8 MatchCall_Text_Brendan15[];
extern const u8 MatchCall_Text_Wally1[];
extern const u8 MatchCall_Text_Wally2[];
extern const u8 MatchCall_Text_Wally3[];
extern const u8 MatchCall_Text_Wally4[];
extern const u8 MatchCall_Text_Wally5[];
extern const u8 MatchCall_Text_Wally6[];
extern const u8 MatchCall_Text_Wally7[];
extern const u8 MatchCall_Text_Scott1[];
extern const u8 MatchCall_Text_Scott2[];
extern const u8 MatchCall_Text_Scott3[];
extern const u8 MatchCall_Text_Scott4[];
extern const u8 MatchCall_Text_Scott5[];
extern const u8 MatchCall_Text_Scott6[];
extern const u8 MatchCall_Text_Scott7[];
extern const u8 MatchCall_Text_Roxanne1[];
extern const u8 MatchCall_Text_Roxanne2[];
extern const u8 MatchCall_Text_Roxanne3[];
extern const u8 MatchCall_Text_Roxanne4[];
extern const u8 MatchCall_Text_Brawly1[];
extern const u8 MatchCall_Text_Brawly2[];
extern const u8 MatchCall_Text_Brawly3[];
extern const u8 MatchCall_Text_Brawly4[];
extern const u8 MatchCall_Text_Wattson1[];
extern const u8 MatchCall_Text_Wattson2[];
extern const u8 MatchCall_Text_Wattson3[];
extern const u8 MatchCall_Text_Wattson4[];
extern const u8 MatchCall_Text_Flannery1[];
extern const u8 MatchCall_Text_Flannery2[];
extern const u8 MatchCall_Text_Flannery3[];
extern const u8 MatchCall_Text_Flannery4[];
extern const u8 MatchCall_Text_Winona1[];
extern const u8 MatchCall_Text_Winona2[];
extern const u8 MatchCall_Text_Winona3[];
extern const u8 MatchCall_Text_Winona4[];
extern const u8 MatchCall_Text_TateLiza1[];
extern const u8 MatchCall_Text_TateLiza2[];
extern const u8 MatchCall_Text_TateLiza3[];
extern const u8 MatchCall_Text_TateLiza4[];
extern const u8 MatchCall_Text_Juan1[];
extern const u8 MatchCall_Text_Juan2[];
extern const u8 MatchCall_Text_Juan3[];
extern const u8 MatchCall_Text_Juan4[];
extern const u8 MatchCall_Text_Sidney[];
extern const u8 MatchCall_Text_Phoebe[];
extern const u8 MatchCall_Text_Glacia[];
extern const u8 MatchCall_Text_Drake[];
extern const u8 MatchCall_Text_Wallace[];
extern const u8 gText_MrStoneMatchCallDesc[];
extern const u8 gText_MrStoneMatchCallName[];
extern const u8 gText_StevenMatchCallDesc[];
extern const u8 gText_StevenMatchCallName[];
extern const u8 gText_MayBrendanMatchCallDesc[];
extern const u8 gText_WallyMatchCallDesc[];
extern const u8 gText_NormanMatchCallDesc[];
extern const u8 gText_NormanMatchCallName[];
extern const u8 gText_MomMatchCallDesc[];
extern const u8 gText_MomMatchCallName[];
extern const u8 gText_ScottMatchCallDesc[];
extern const u8 gText_ScottMatchCallName[];
extern const u8 gText_RoxanneMatchCallDesc[];
extern const u8 gText_BrawlyMatchCallDesc[];
extern const u8 gText_WattsonMatchCallDesc[];
extern const u8 gText_FlanneryMatchCallDesc[];
extern const u8 gText_WinonaMatchCallDesc[];
extern const u8 gText_TateLizaMatchCallDesc[];
extern const u8 gText_JuanMatchCallDesc[];
extern const u8 gText_EliteFourMatchCallDesc[];
extern const u8 gText_ChampionMatchCallDesc[];
extern const u8 gText_ProfBirchMatchCallDesc[];
extern const u8 gText_ProfBirchMatchCallName[];
extern const u8 gText_MatchCallSteven_Strategy[];
extern const u8 gText_MatchCallSteven_Pokemon[];
extern const u8 gText_MatchCallSteven_Intro1_BeforeMeteorFallsBattle[];
extern const u8 gText_MatchCallSteven_Intro2_BeforeMeteorFallsBattle[];
extern const u8 gText_MatchCallSteven_Intro1_AfterMeteorFallsBattle[];
extern const u8 gText_MatchCallSteven_Intro2_AfterMeteorFallsBattle[];
extern const u8 gText_MatchCallBrendan_Strategy[];
extern const u8 gText_MatchCallBrendan_Pokemon[];
extern const u8 gText_MatchCallBrendan_Intro1[];
extern const u8 gText_MatchCallBrendan_Intro2[];
extern const u8 gText_MatchCallMay_Strategy[];
extern const u8 gText_MatchCallMay_Pokemon[];
extern const u8 gText_MatchCallMay_Intro1[];
extern const u8 gText_MatchCallMay_Intro2[];


extern const u8 gText_ColorDarkGrey[];
extern const u8 gText_CommunicationStandby[];
extern const u8 gText_AnnouncingResults[];
extern const u8 gText_PreliminaryResults[];
extern const u8 gText_Round2Results[];
extern const u8 gText_Var1sVar2Won[];


extern const u8 gText_LinkCableBattles[];
extern const u8 gText_LinkBattles[];
extern const u8 gText_WaitingTrainerFinishReading[];
extern const u8 gText_TrainerCardName[];
extern const u8 gText_TrainerCardIDNo[];
extern const u8 gText_TrainerCardMoney[];
extern const u8 gText_PokedollarVar1[];
extern const u8 gText_EmptyString6[];
extern const u8 gText_TrainerCardPokedex[];
extern const u8 gText_TrainerCardTime[];
extern const u8 gText_Colon2[];
extern const u8 gText_Var1sTrainerCard[];
extern const u8 gText_HallOfFameDebut[];
extern const u8 gText_WinsLosses[];
extern const u8 gText_PokemonTrades[];
extern const u8 gText_BerryCrush[];
extern const u8 gText_UnionTradesAndBattles[];
extern const u8 gText_NumPokeblocks[];
extern const u8 gText_PokeblocksWithFriends[];
extern const u8 gText_WonContestsWFriends[];
extern const u8 gText_WinsStraight[];
extern const u8 gText_NumBP[];
extern const u8 gText_BattleTower[];
extern const u8 gText_BattlePtsWon[];


extern const u8 gText_SymbolsEarned[];
extern const u8 gText_BattleRecord[];
extern const u8 gText_BattlePoints[];
extern const u8 gText_ThereIsNoBattleRecord[];
extern const u8 gText_CheckFrontierMap[];
extern const u8 gText_CheckTrainerCard[];
extern const u8 gText_ViewRecordedBattle[];
extern const u8 gText_PutAwayFrontierPass[];
extern const u8 gText_CurrentBattlePoints[];
extern const u8 gText_CollectedSymbols[];
extern const u8 gText_BattleTowerAbilitySymbol[];
extern const u8 gText_BattleDomeTacticsSymbol[];
extern const u8 gText_BattlePalaceSpiritsSymbol[];
extern const u8 gText_BattleArenaGutsSymbol[];
extern const u8 gText_BattleFactoryKnowledgeSymbol[];
extern const u8 gText_BattlePikeLuckSymbol[];
extern const u8 gText_BattlePyramidBraveSymbol[];
extern const u8 gText_EmptyString7[];
extern const u8 gText_BattleTower3[];
extern const u8 gText_BattleDome2[];
extern const u8 gText_BattlePalace2[];
extern const u8 gText_BattleArena2[];
extern const u8 gText_BattleFactory2[];
extern const u8 gText_BattlePike2[];
extern const u8 gText_BattlePyramid2[];
extern const u8 gText_BattleTowerDesc[];
extern const u8 gText_BattleDomeDesc[];
extern const u8 gText_BattlePalaceDesc[];
extern const u8 gText_BattleArenaDesc[];
extern const u8 gText_BattleFactoryDesc[];
extern const u8 gText_BattlePikeDesc[];
extern const u8 gText_BattlePyramidDesc[];


extern const u8 gText_Give[];
extern const u8 gText_NoNeed[];


extern const u8 gText_StopGivingPkmnMail[];
extern const u8 gText_LikeToQuitQuiz[];
extern const u8 gText_ChallengeQuestionMark[];
extern const u8 gText_QuitEditing[];
extern const u8 gText_AllTextBeingEditedWill[];
extern const u8 gText_BeDeletedThatOkay[];
extern const u8 gText_Lady[];
extern const u8 gText_F700sQuiz[];
extern const u8 gText_CreateAQuiz[];
extern const u8 gText_SelectTheAnswer[];
extern const u8 gText_OriginalSongWillBeUsed[];
extern const u8 gText_LyricsCantBeDeleted[];
extern const u8 gText_CombineTwoWordsOrPhrases3[];
extern const u8 gText_OnlyOnePhrase[];
extern const u8 gText_YouCannotQuitHere[];
extern const u8 gText_SectionMustBeCompleted[];
extern const u8 gText_ThreeQuestionMarks[];
extern const u8 gText_Profile[];
extern const u8 gText_CombineFourWordsOrPhrases[];
extern const u8 gText_AndMakeYourProfile[];
extern const u8 gText_YourProfile[];
extern const u8 gText_IsAsShownOkay[];
extern const u8 gText_AtTheBattlesStart[];
extern const u8 gText_CombineSixWordsOrPhrases[];
extern const u8 gText_AndMakeAMessage[];
extern const u8 gText_YourFeelingAtTheBattlesStart[];
extern const u8 gText_UponWinningABattle[];
extern const u8 gText_WhatYouSayIfYouWin[];
extern const u8 gText_UponLosingABattle[];
extern const u8 gText_WhatYouSayIfYouLose[];
extern const u8 gText_CombineNineWordsOrPhrases[];
extern const u8 gText_AndMakeAMessage2[];
extern const u8 gText_TheMailMessage[];
extern const u8 gText_Interview[];
extern const u8 gText_LetsReplyToTheInterview[];
extern const u8 gText_TheAnswer[];
extern const u8 gText_TheBardsSong[];
extern const u8 gText_ChangeJustOneWordOrPhrase[];
extern const u8 gText_AndImproveTheBardsSong[];
extern const u8 gText_TheBardsSong2[];
extern const u8 gText_FindWordsThatDescribeYour[];
extern const u8 gText_FeelingsRightNow[];
extern const u8 gText_WhatsHipAndHappening[];
extern const u8 gText_CombineTwoWordsOrPhrases[];
extern const u8 gText_AndMakeATrendySaying[];
extern const u8 gText_TheTrendySaying[];
extern const u8 gText_AfterYouHaveReadTheQuiz[];
extern const u8 gText_QuestionPressTheAButton[];
extern const u8 gText_TheQuizAnswerIs[];
extern const u8 gText_OutOfTheListedChoices[];
extern const u8 gText_SelectTheAnswerToTheQuiz[];
extern const u8 gText_TheAnswerColon[];
extern const u8 gText_AndCreateAQuiz[];
extern const u8 gText_IsThisQuizOK[];
extern const u8 gText_PickAWordOrPhraseAnd[];
extern const u8 gText_SetTheQuizAnswer[];
extern const u8 gText_ApprenticesPhrase[];
extern const u8 gText_FindWordsWhichFit[];
extern const u8 gText_TheTrainersImage[];
extern const u8 gText_ApprenticePhrase[];
extern const u8 gText_GoodSaying[];
extern const u8 gText_CombineTwoWordsOrPhrases2[];
extern const u8 gText_ToTeachHerAGoodSaying[];
extern const u8 gText_FansQuestion[];
extern const u8 gText_TheImage[];
extern const u8 gText_Questionnaire[];
extern const u8 gText_AndFillOutTheQuestionnaire[];
extern const u8 gText_DelAll[];
extern const u8 gText_Cancel5[];
extern const u8 gText_Ok2[];
extern const u8 gText_Quiz[];
extern const u8 gText_Answer[];
extern const u8 gEasyChatGroupName_Pokemon[];
extern const u8 gEasyChatGroupName_Trainer[];
extern const u8 gEasyChatGroupName_Status[];
extern const u8 gEasyChatGroupName_Battle[];
extern const u8 gEasyChatGroupName_Greetings[];
extern const u8 gEasyChatGroupName_People[];
extern const u8 gEasyChatGroupName_Voices[];
extern const u8 gEasyChatGroupName_Speech[];
extern const u8 gEasyChatGroupName_Endings[];
extern const u8 gEasyChatGroupName_Feelings[];
extern const u8 gEasyChatGroupName_Conditions[];
extern const u8 gEasyChatGroupName_Actions[];
extern const u8 gEasyChatGroupName_Lifestyle[];
extern const u8 gEasyChatGroupName_Hobbies[];
extern const u8 gEasyChatGroupName_Time[];
extern const u8 gEasyChatGroupName_Misc[];
extern const u8 gEasyChatGroupName_Adjectives[];
extern const u8 gEasyChatGroupName_Events[];
extern const u8 gEasyChatGroupName_Move1[];
extern const u8 gEasyChatGroupName_Move2[];
extern const u8 gEasyChatGroupName_TrendySaying[];
extern const u8 gEasyChatGroupName_Pokemon2[];


extern const u8 gText_EasyChatKeyboard_ABCDEFothers[];
extern const u8 gText_EasyChatKeyboard_GHIJKL[];
extern const u8 gText_EasyChatKeyboard_MNOPQRS[];
extern const u8 gText_EasyChatKeyboard_TUVWXYZ[];
extern const u8 gText_NamingScreenKeyboard_abcdef[];
extern const u8 gText_NamingScreenKeyboard_ghijkl[];
extern const u8 gText_NamingScreenKeyboard_mnopqrs[];
extern const u8 gText_NamingScreenKeyboard_tuvwxyz[];
extern const u8 gText_NamingScreenKeyboard_ABCDEF[];
extern const u8 gText_NamingScreenKeyboard_GHIJKL[];
extern const u8 gText_NamingScreenKeyboard_MNOPQRS[];
extern const u8 gText_NamingScreenKeyboard_TUVWXYZ[];
extern const u8 gText_NamingScreenKeyboard_01234[];
extern const u8 gText_NamingScreenKeyboard_56789[];
extern const u8 gText_NamingScreenKeyboard_Symbols1[];
extern const u8 gText_NamingScreenKeyboard_Symbols2[];
extern const u8 gText_UnionRoomChatKeyboard_ABCDE[];
extern const u8 gText_UnionRoomChatKeyboard_FGHIJ[];
extern const u8 gText_UnionRoomChatKeyboard_KLMNO[];
extern const u8 gText_UnionRoomChatKeyboard_PQRST[];
extern const u8 gText_UnionRoomChatKeyboard_UVWXY[];
extern const u8 gText_UnionRoomChatKeyboard_Z[];
extern const u8 gText_UnionRoomChatKeyboard_01234Upper[];
extern const u8 gText_UnionRoomChatKeyboard_56789Upper[];
extern const u8 gText_UnionRoomChatKeyboard_PunctuationUpper[];
extern const u8 gText_UnionRoomChatKeyboard_SymbolsUpper[];
extern const u8 gText_UnionRoomChatKeyboard_abcde[];
extern const u8 gText_UnionRoomChatKeyboard_fghij[];
extern const u8 gText_UnionRoomChatKeyboard_klmno[];
extern const u8 gText_UnionRoomChatKeyboard_pqrst[];
extern const u8 gText_UnionRoomChatKeyboard_uvwxy[];
extern const u8 gText_UnionRoomChatKeyboard_z[];
extern const u8 gText_UnionRoomChatKeyboard_01234Lower[];
extern const u8 gText_UnionRoomChatKeyboard_56789Lower[];
extern const u8 gText_UnionRoomChatKeyboard_PunctuationLower[];
extern const u8 gText_UnionRoomChatKeyboard_SymbolsLower[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji1[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji2[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji3[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji4[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji5[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji6[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji7[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji8[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji9[];
extern const u8 gText_UnionRoomChatKeyboard_Emoji10[];


extern const u8 gJPText_ReceiveMysteryGiftWithEReader[];
extern const u8 gJPText_SelectConnectFromEReaderMenu[];
extern const u8 gJPText_SelectConnectWithGBA[];
extern const u8 gJPText_LinkIsIncorrect[];
extern const u8 gJPText_CardReadingHasBeenHalted[];
extern const u8 gJPText_Connecting[];
extern const u8 gJPText_ConnectionErrorCheckLink[];
extern const u8 gJPText_ConnectionErrorTryAgain[];
extern const u8 gJPText_AllowEReaderToLoadCard[];
extern const u8 gJPText_ConnectionComplete[];
extern const u8 gJPText_NewTrainerHasComeToHoenn[];
extern const u8 gJPText_PleaseWaitAMoment[];
extern const u8 gJPText_WriteErrorUnableToSaveData[];


extern const u8 gText_Powder[];


extern const u8 gText_F700JoinedChat[];
extern const u8 gText_F700LeftChat[];
extern const u8 gText_Hello[];
extern const u8 gText_Pokemon2[];
extern const u8 gText_Trade[];
extern const u8 gText_Battle[];
extern const u8 gText_Lets[];
extern const u8 gText_Ok[];
extern const u8 gText_Sorry[];
extern const u8 gText_YaySmileEmoji[];
extern const u8 gText_ThankYou[];
extern const u8 gText_ByeBye[];


extern const u8 gText_MysteryGift[];
extern const u8 gText_PickOKCancel[];
extern const u8 gText_PickOKExit[];
extern const u8 gJPText_MysteryGift[];
extern const u8 gJPText_DecideStop[];
extern const u8 gText_WonderCards[];
extern const u8 gText_WonderNews[];
extern const u8 gText_Exit3[];
extern const u8 gText_WirelessCommunication[];
extern const u8 gText_Friend2[];
extern const u8 gText_Cancel2[];
extern const u8 gText_Receive[];
extern const u8 gText_Send[];
extern const u8 gText_Toss[];
extern const u8 gText_VarietyOfEventsImportedWireless[];
extern const u8 gText_WonderCardsInPossession[];
extern const u8 gText_ReadNewsThatArrived[];
extern const u8 gText_ReturnToTitle[];
extern const u8 gText_WhatToDoWithCards[];
extern const u8 gText_WhatToDoWithNews[];
extern const u8 gText_IfThrowAwayCardEventWontHappen[];
extern const u8 gText_OkayToDiscardNews[];
extern const u8 gText_WonderNewsThrownAway[];
extern const u8 gText_WonderCardThrownAway[];
extern const u8 gText_DataWillBeSaved[];
extern const u8 gText_SaveCompletedPressA[];
extern const u8 gText_NothingSentOver[];
extern const u8 gText_RecordUploadedViaWireless[];
extern const u8 gText_WonderCardReceivedFrom[];
extern const u8 gText_WonderCardReceived[];
extern const u8 gText_WonderNewsReceivedFrom[];
extern const u8 gText_WonderNewsReceived[];
extern const u8 gText_NewStampReceived[];
extern const u8 gText_AlreadyHadCard[];
extern const u8 gText_AlreadyHadStamp[];
extern const u8 gText_AlreadyHadNews[];
extern const u8 gText_NoMoreRoomForStamps[];
extern const u8 gText_CommunicationCanceled[];
extern const u8 gText_CantAcceptNewsFromTrainer[];
extern const u8 gText_CantAcceptCardFromTrainer[];
extern const u8 gText_CommunicationError[];
extern const u8 gText_NewTrainerReceived[];
extern const u8 gText_RecordUploadedViaWireless[];
extern const u8 gText_WonderCardSentTo[];
extern const u8 gText_WonderNewsSentTo[];
extern const u8 gText_StampSentTo[];
extern const u8 gText_OtherTrainerHasCard[];
extern const u8 gText_OtherTrainerHasStamp[];
extern const u8 gText_OtherTrainerHasNews[];
extern const u8 gText_NoMoreRoomForStamps[];
extern const u8 gText_OtherTrainerCanceled[];
extern const u8 gText_GiftSentTo[];
extern const u8 gText_CantSendGiftToTrainer[];
extern const u8 gText_DontHaveCardNewOneInput[];
extern const u8 gText_DontHaveNewsNewOneInput[];
extern const u8 gText_WhereShouldCardBeAccessed[];
extern const u8 gText_WhereShouldNewsBeAccessed[];
extern const u8 gText_Communicating[];
extern const u8 gText_ThrowAwayWonderCard[];
extern const u8 gText_HaventReceivedCardsGift[];
extern const u8 gText_CommunicationCompleted[];
extern const u8 gText_HaventReceivedGiftOkayToDiscard[];
extern const u8 gText_SendingWonderCard[];
extern const u8 gText_SendingWonderNews[];
extern const u8 gText_WirelessCommStatus[];
extern const u8 gText_PeopleTrading[];
extern const u8 gText_PeopleBattling[];
extern const u8 gText_PeopleInUnionRoom[];
extern const u8 gText_PeopleCommunicating[];
extern const u8 gText_CommStandbyAwaitingOtherPlayer[];
extern const u8 gText_RefusedBattle[];
extern const u8 gText_BattleWasRefused[];
extern const u8 gText_QuitChatting[];
extern const u8 gText_RegisterTextWhere[];
extern const u8 gText_RegisterTextHere[];
extern const u8 gText_InputText[];
extern const u8 gText_ExitingChat[];
extern const u8 gText_LeaderLeftEndingChat[];
extern const u8 gText_RegisteredTextChanged[];
extern const u8 gText_AlreadySavedFile_Unused[];
extern const u8 gText_SavingDontTurnOff_Unused[];
extern const u8 gText_PlayerSavedGame_Unused[];
extern const u8 gText_IfLeaderLeavesChatEnds[];
extern const u8 gText_Upper[];
extern const u8 gText_Lower[];
extern const u8 gText_Symbols[];
extern const u8 gText_Register2[];
extern const u8 gText_Exit2[];


extern const u8 gText_BerryPickingRecords[];
extern const u8 gText_BerriesPicked[];
extern const u8 gText_BerriesInRowFivePlayers[];
extern const u8 gText_BestScore[];
extern const u8 gText_1Colon[];
extern const u8 gText_2Colon[];
extern const u8 gText_3Colon[];
extern const u8 gText_4Colon[];
extern const u8 gText_5Colon[];
extern const u8 gText_SpacePoints[];
extern const u8 gText_10P30P50P50P[];
extern const u8 gText_AnnouncingPrizes[];
extern const u8 gText_AnnouncingRankings[];
extern const u8 gText_FirstPlacePrize[];
extern const u8 gText_CantHoldAnyMore[];
extern const u8 gText_FilledStorageSpace[];
extern const u8 gText_BerryPickingResults[];
extern const u8 gText_WantToPlayAgain[];
extern const u8 gText_CommunicationStandby3[];
extern const u8 gText_SomeoneDroppedOut[];


extern const u8 gText_WantToPlayAgain2[];
extern const u8 gText_SomeoneDroppedOut2[];
extern const u8 gText_CommunicationStandby4[];
extern const u8 gText_AwesomeWonF701F700[];
extern const u8 gText_FilledStorageSpace2[];
extern const u8 gText_CantHoldMore[];
extern const u8 gText_SpacePoints2[];
extern const u8 gText_SpaceTimes3[];
extern const u8 gText_PkmnJumpRecords[];
extern const u8 gText_JumpsInARow[];
extern const u8 gText_BestScore2[];
extern const u8 gText_ExcellentsInARow[];


extern const u8 gText_Var1Berry[];
extern const u8 gText_XDotY[];
extern const u8 gText_1DotBlueF700[];
extern const u8 gText_1DotF700[];
extern const u8 gText_TimeColon[];
extern const u8 gText_SpaceSec[];
extern const u8 gText_XDotY2[];
extern const u8 gText_SpaceMin[];
extern const u8 gText_StrVar1[];
extern const u8 gText_PressingSpeed[];
extern const u8 gText_TimesPerSec[];
extern const u8 gText_XDotY3[];
extern const u8 gText_Silkiness[];
extern const u8 gText_Var1Percent[];
extern const u8 gText_PressesRankings[];
extern const u8 gText_CrushingResults[];
extern const u8 gText_BerryCrush2[];
extern const u8 gText_PressingSpeedRankings[];
extern const u8 gText_Var1Players[];
extern const u8 gText_ReadyToBerryCrush[];
extern const u8 gText_WaitForAllChooseBerry[];
extern const u8 gText_EndedWithXUnitsPowder[];
extern const u8 gText_RecordingGameResults[];
extern const u8 gText_PlayBerryCrushAgain[];
extern const u8 gText_YouHaveNoBerries[];
extern const u8 gText_MemberDroppedOut[];
extern const u8 gText_TimesUpNoGoodPowder[];
extern const u8 gText_CommunicationStandby2[];
extern const u8 gText_SpaceTimes2[];
extern const u8 gText_XDotY[];
extern const u8 gText_Var1Berry[];
extern const u8 gText_NeatnessRankings[];
extern const u8 gText_CoopRankings[];
extern const u8 gText_PressingPowerRankings[];


extern const u8 gText_ContestLady_Handsome[];
extern const u8 gText_ContestLady_Vinny[];
extern const u8 gText_ContestLady_Moreme[];
extern const u8 gText_ContestLady_Ironhard[];
extern const u8 gText_ContestLady_Muscle[];
extern const u8 gText_ContestLady_Coolness[];
extern const u8 gText_ContestLady_Beauty[];
extern const u8 gText_ContestLady_Cuteness[];
extern const u8 gText_ContestLady_Smartness[];
extern const u8 gText_ContestLady_Toughness[];
extern const u8 gText_QuizLady_Lady[];
extern const u8 gText_FavorLady_Slippery[];
extern const u8 gText_FavorLady_Roundish[];
extern const u8 gText_FavorLady_Whamish[];
extern const u8 gText_FavorLady_Shiny[];
extern const u8 gText_FavorLady_Sticky[];
extern const u8 gText_FavorLady_Pointy[];

extern const u8 gText_CoolnessContest[];
extern const u8 gText_BeautyContest[];
extern const u8 gText_CutenessContest[];
extern const u8 gText_SmartnessContest[];
extern const u8 gText_ToughnessContest[];


extern const u8 gText_CallCantBeMadeHere[];
extern const u8 gText_NumberRegistered[];
extern const u8 gText_NumberOfBattles[];
extern const u8 gText_Unknown[];
extern const u8 gText_TrainerCloseBy[];
extern const u8 gText_Call[];
extern const u8 gText_Check[];
extern const u8 gText_Cancel6[];


extern const u8 gText_CheckMapOfHoenn[];
extern const u8 gText_CheckPokemonInDetail[];
extern const u8 gText_CallRegisteredTrainer[];
extern const u8 gText_CheckObtainedRibbons[];
extern const u8 gText_PutAwayPokenav[];
extern const u8 gText_CheckPartyPokemonInDetail[];
extern const u8 gText_CheckAllPokemonInDetail[];
extern const u8 gText_ReturnToPokenavMenu[];
extern const u8 gText_FindCoolPokemon[];
extern const u8 gText_FindBeautifulPokemon[];
extern const u8 gText_FindCutePokemon[];
extern const u8 gText_FindSmartPokemon[];
extern const u8 gText_FindToughPokemon[];
extern const u8 gText_ReturnToConditionMenu[];
extern const u8 gText_NoRibbonWinners[];


extern const u8 gText_NumberF700[];
extern const u8 gText_RibbonsF700[];


extern const u8 gText_Coolness[];
extern const u8 gText_Toughness[];
extern const u8 gText_Smartness[];
extern const u8 gText_Cuteness[];
extern const u8 gText_Beauty3[];
# 27 "src/easy_chat.c" 2
# 1 "include/task.h" 1
# 28 "src/easy_chat.c" 2
# 1 "include/text_window.h" 1





struct TilesPal
{
    const u8 *tiles;
    const u16 *pal;
};

extern const u8 gTextWindowFrame1_Gfx[];
extern const u16 gTextWindowFrame1_Pal[];

const struct TilesPal *GetWindowFrameTilesPal(u8 id);
void LoadMessageBoxGfx(u8 windowId, u16 destOffset, u8 palOffset);
void LoadUserWindowBorderGfx(u8 windowId, u16 destOffset, u8 palOffset);
void LoadWindowGfx(u8 windowId, u8 frameId, u16 destOffset, u8 palOffset);
void LoadUserWindowBorderGfx_(u8 windowId, u16 destOffset, u8 palOffset);
void DrawTextBorderOuter(u8 windowId, u16 tileNum, u8 palNum);
void DrawTextBorderInner(u8 windowId, u16 tileNum, u8 palNum);
void rbox_fill_rectangle(u8 windowId);
const u16 *stdpal_get(u8 id);
const u16 *GetOverworldTextboxPalettePtr(void);
void sub_8098C6C(u8 bg, u16 destOffset, u8 palOffset);
# 29 "src/easy_chat.c" 2

# 1 "include/constants/easy_chat.h" 1
# 31 "src/easy_chat.c" 2
# 1 "include/constants/event_objects.h" 1
# 32 "src/easy_chat.c" 2
# 1 "include/constants/flags.h" 1
# 33 "src/easy_chat.c" 2
# 1 "include/constants/lilycove_lady.h" 1
# 34 "src/easy_chat.c" 2
# 1 "include/constants/mauville_old_man.h" 1
# 35 "src/easy_chat.c" 2
# 1 "include/constants/songs.h" 1
# 36 "src/easy_chat.c" 2
# 1 "include/constants/species.h" 1
# 37 "src/easy_chat.c" 2
# 1 "include/constants/rgb.h" 1
# 38 "src/easy_chat.c" 2
# 46 "src/easy_chat.c"
static __attribute__((section("ewram_data"))) struct EasyChatScreen *sEasyChatScreen = ((void *)0);
static __attribute__((section("ewram_data"))) struct Unk203A11C *sUnknown_0203A11C = ((void *)0);
static __attribute__((section("ewram_data"))) struct Unk203A120 *sUnknown_0203A120 = ((void *)0);

static void sub_811A2C0(u8);
static void MainCallback_EasyChatScreen(void);
static bool8 sub_811A428(u8);
static void sub_811A2FC(u8);
static void sub_811A4D0(MainCallback);
static bool32 sub_811A88C(u16);
static void sub_811A8A4(u16);
static bool8 EasyChat_AllocateResources(u8, u16 *, u8);
static void EasyChat_FreeResources(void);
static u16 sub_811AAAC(void);
static u16 sub_811AB68(void);
static u16 sub_811ACDC(void);
static u16 sub_811AE44(void);
static u16 sub_811AF00(void);
static u16 sub_811AF8C(void);
static u16 sub_811AFEC(void);
static u16 sub_811B040(void);
static u16 sub_811B08C(void);
static u16 sub_811B0BC(void);
static u16 sub_811B0E8(void);
static u16 sub_811B0F8(void);
static u16 sub_811B150(void);
static u16 sub_811B1B4(void);
static u8 GetEasyChatScreenFrameId(void);
static u8 GetEachChatScreenTemplateId(u8);
static void sub_811BDF0(u8 *);
static void sub_811BF78(void);
static bool8 sub_811BF8C(void);
static bool8 sub_811BFA4(void);
static void sub_811C13C(void);
static void sub_811C158(u16);
static bool8 sub_811C170(void);
static bool8 sub_811F28C(void);
static void sub_811F2B8(void);
static u8 sub_811F3AC(void);
static int FooterHasFourOptions(void);
static int sub_811B184(void);
static int sub_811B264(void);
static int sub_811B32C(void);
static int sub_811B2B0(void);
static int sub_811B33C(void);
static int sub_811B368(void);
static u16 sub_811B528(int);
static u16 sub_811B794(u32);
static int sub_811B394(void);
static u8 sub_811B2A4(void);
static void sub_811B3E4(void);
static void sub_811BE9C(void);
static int sub_811B4EC(void);
static void sub_811B418(void);
static void sub_811B454(void);
static int sub_811BD64(void);
static int sub_811BDB0(void);
static int sub_811BD2C(void);
static int sub_811BCF4(void);
static u16 sub_811B8E8(void);
static u8 sub_811F3B8(u8);
static void sub_811F548(int, u16);
static int sub_811B908(void);
static u16 sub_811F5B0(void);
static void sub_811B488(u16);
static u16 sub_811B940(void);
static u16 sub_811F578(u16);
static int sub_811BF88(int);
static u16 sub_811B8C8(void);
static int sub_811B568(u32);
static int sub_811B634(u32);
static int sub_811B6C4(u32);
static void sub_811B978(void);
static void sub_811B744(void);
static u8 sub_811B9C8(void);
static void sub_811B768(void);
static u8 sub_811B960(u8);
static void sub_811B9A0(void);
static u8 sub_811BA1C(void);
static int DidPlayerInputMysteryGiftPhrase(void);
static u16 DidPlayerInputABerryMasterWifePhrase(void);
static bool8 sub_811CE94(void);
static void sub_811CF64(void);
static void sub_811CF04(void);
static void sub_811D60C(void);
static void sub_811D424(u16 *);
static void sub_811D230(void);
static void sub_811E948(void);
static void sub_811CFCC(void);
static void sub_811D0BC(void);
static void sub_811D2C8(void);
static void sub_811D684(void);
static void sub_811DE90(void);
static void sub_811DEC4(void);
static void sub_811DF28(struct Sprite *);
static void sub_811DE5C(u8, u8, u8, u8);
static void sub_811E5D4(void);
static void sub_811E720(void);
static void sub_811E828(void);
static bool8 sub_811C2D4(void);
static bool8 sub_811C30C(void);
static bool8 sub_811C3E4(void);
static bool8 sub_811C48C(void);
static bool8 sub_811C404(void);
static bool8 sub_811C448(void);
static bool8 sub_811C4D0(void);
static bool8 sub_811C518(void);
static bool8 sub_811C554(void);
static bool8 sub_811C620(void);
static bool8 sub_811C830(void);
static bool8 sub_811C8F0(void);
static bool8 sub_811C99C(void);
static bool8 sub_811CA5C(void);
static bool8 sub_811C780(void);
static bool8 sub_811C78C(void);
static bool8 sub_811C7D4(void);
static bool8 sub_811CB18(void);
static bool8 sub_811CB98(void);
static bool8 sub_811CB24(void);
static bool8 sub_811CC90(void);
static bool8 sub_811CC08(void);
static bool8 sub_811C6C0(void);
static bool8 sub_811CD14(void);
static bool8 sub_811CD54(void);
static bool8 sub_811CD94(void);
static bool8 sub_811CDD4(void);
static bool8 sub_811CE14(void);
static bool8 sub_811CE54(void);
static void sub_811DF60(u8, u8);
static int GetFooterOptionXOffset(int);
static void sub_811DF90(void);
static void sub_811D104(u8);
static void sub_811D214(u8);
static void sub_811DFB0(void);
static void sub_811D6D4(void);
static void sub_811D9CC(int);
static void sub_811E3AC(void);
static bool8 sub_811E418(void);
static void sub_811DFC8(void);
static void sub_811E6E0(int);
static bool8 sub_811DAA4(void);
static void sub_811E64C(void);
static void sub_811E050(void);
static void sub_811E4AC(void);
static void sub_811E6B0(void);
static void sub_811E55C(void);
static bool8 sub_811E4D0(void);
static bool8 sub_811E5B8(void);
static void sub_811E578(void);
static void sub_811E088(void);
static void sub_811DDAC(s16, u8);
static bool8 sub_811DE10(void);
static void sub_811D9B4(void);
static void sub_811D698(u32);
static void sub_811E288(void);
static void sub_811E794(void);
static void sub_811E380(void);
static void sub_811E7F8(void);
static void sub_811E30C(void);
static void sub_811D7A4(void);
static void sub_811D7C8(void);
static int sub_811DE48(void);
static void sub_811D7EC(void);
static void sub_811D830(void);
static void sub_811D058(u8, u8, const u8 *, u8, u8, u8, u8, u8, u8);
static void sub_811DD84(void);
static void sub_811D6F4(void);
static void PrintEasyChatKeyboardText(void);
static void sub_811D794(void);
static const u8 *GetEasyChatWordGroupName(u8);
static void sub_811D864(u8, u8);
static void sub_811D950(u8, u8);
static void sub_811DADC(u8);
static void sub_811DC28(int, int, int, int);
static void sub_811E0EC(s8, s8);
static void sub_811E1A4(s8, s8);
static void sub_811E2DC(struct Sprite *);
static void sub_811E34C(u8, u8);
static bool8 EasyChatIsNationalPokedexEnabled(void);
static u16 GetRandomUnlockedEasyChatPokemon(void);
static void sub_811F2D4(void);
static void sub_811F46C(void);
static u8 *CopyEasyChatWordPadded(u8 *, u16, u16);
static u8 sub_811F860(u16);
static u16 sub_811F5C4(u16);
static u16 sub_811F6B8(u16);
static bool8 sub_811F764(u16, u8);
static int sub_811F838(u16);
static void DoQuizAnswerEasyChatScreen(void);
static void DoQuizQuestionEasyChatScreen(void);
static void DoQuizSetAnswerEasyChatScreen(void);
static void DoQuizSetQuestionEasyChatScreen(void);

struct Unk8597530
{
    u16 word;
    MainCallback callback;
};


static const struct Unk8597530 sUnknown_08597530[] = {
    {
        .word = 26,
        .callback = DoQuizAnswerEasyChatScreen,
    },
    {
        .word = 25,
        .callback = DoQuizQuestionEasyChatScreen,
    },
    {
        .word = 28,
        .callback = DoQuizSetAnswerEasyChatScreen,
    },
    {
        .word = 27,
        .callback = DoQuizSetQuestionEasyChatScreen,
    },
};

static const struct EasyChatScreenTemplate sEasyChatScreenTemplates[] = {
    {
        .type = 0,
        .numColumns = 2,
        .numRows = 2,
        .frameId = 0,
        .fourFooterOptions = 0,
        .titleText = gText_Profile,
        .instructionsText1 = gText_CombineFourWordsOrPhrases,
        .instructionsText2 = gText_AndMakeYourProfile,
        .confirmText1 = gText_YourProfile,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 1,
        .numColumns = 2,
        .numRows = 3,
        .frameId = 1,
        .fourFooterOptions = 0,
        .titleText = gText_AtTheBattlesStart,
        .instructionsText1 = gText_CombineSixWordsOrPhrases,
        .instructionsText2 = gText_AndMakeAMessage,
        .confirmText1 = gText_YourFeelingAtTheBattlesStart,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 2,
        .numColumns = 2,
        .numRows = 3,
        .frameId = 1,
        .fourFooterOptions = 0,
        .titleText = gText_UponWinningABattle,
        .instructionsText1 = gText_CombineSixWordsOrPhrases,
        .instructionsText2 = gText_AndMakeAMessage,
        .confirmText1 = gText_WhatYouSayIfYouWin,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 3,
        .numColumns = 2,
        .numRows = 3,
        .frameId = 1,
        .fourFooterOptions = 0,
        .titleText = gText_UponLosingABattle,
        .instructionsText1 = gText_CombineSixWordsOrPhrases,
        .instructionsText2 = gText_AndMakeAMessage,
        .confirmText1 = gText_WhatYouSayIfYouLose,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 4,
        .numColumns = 2,
        .numRows = 5,
        .frameId = 2,
        .fourFooterOptions = 0,
        .titleText = ((void *)0),
        .instructionsText1 = gText_CombineNineWordsOrPhrases,
        .instructionsText2 = gText_AndMakeAMessage2,
        .confirmText1 = gText_TheMailMessage,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 5,
        .numColumns = 2,
        .numRows = 2,
        .frameId = 5,
        .fourFooterOptions = 0,
        .titleText = gText_Interview,
        .instructionsText1 = gText_CombineFourWordsOrPhrases,
        .instructionsText2 = gText_LetsReplyToTheInterview,
        .confirmText1 = gText_TheAnswer,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 6,
        .numColumns = 2,
        .numRows = 3,
        .frameId = 1,
        .fourFooterOptions = 0,
        .titleText = gText_TheBardsSong,
        .instructionsText1 = gText_ChangeJustOneWordOrPhrase,
        .instructionsText2 = gText_AndImproveTheBardsSong,
        .confirmText1 = gText_TheBardsSong2,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 7,
        .numColumns = 1,
        .numRows = 1,
        .frameId = 4,
        .fourFooterOptions = 0,
        .titleText = gText_Interview,
        .instructionsText1 = gText_FindWordsThatDescribeYour,
        .instructionsText2 = gText_FeelingsRightNow,
        .confirmText1 = gText_TheAnswer,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 9,
        .numColumns = 2,
        .numRows = 1,
        .frameId = 3,
        .fourFooterOptions = 0,
        .titleText = gText_WhatsHipAndHappening,
        .instructionsText1 = gText_CombineTwoWordsOrPhrases,
        .instructionsText2 = gText_AndMakeATrendySaying,
        .confirmText1 = gText_TheTrendySaying,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 16,
        .numColumns = 2,
        .numRows = 5,
        .frameId = 7,
        .fourFooterOptions = 1,
        .titleText = ((void *)0),
        .instructionsText1 = gText_AfterYouHaveReadTheQuiz,
        .instructionsText2 = gText_QuestionPressTheAButton,
        .confirmText1 = ((void *)0),
        .confirmText2 = ((void *)0),
    },
    {
        .type = 15,
        .numColumns = 1,
        .numRows = 1,
        .frameId = 6,
        .fourFooterOptions = 1,
        .titleText = gText_TheQuizAnswerIs,
        .instructionsText1 = gText_OutOfTheListedChoices,
        .instructionsText2 = gText_SelectTheAnswerToTheQuiz,
        .confirmText1 = gText_TheAnswerColon,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 17,
        .numColumns = 2,
        .numRows = 5,
        .frameId = 8,
        .fourFooterOptions = 1,
        .titleText = ((void *)0),
        .instructionsText1 = gText_CombineNineWordsOrPhrases,
        .instructionsText2 = gText_AndCreateAQuiz,
        .confirmText1 = gText_IsThisQuizOK,
        .confirmText2 = ((void *)0),
    },
    {
        .type = 18,
        .numColumns = 1,
        .numRows = 1,
        .frameId = 6,
        .fourFooterOptions = 1,
        .titleText = gText_TheQuizAnswerIs,
        .instructionsText1 = gText_PickAWordOrPhraseAnd,
        .instructionsText2 = gText_SetTheQuizAnswer,
        .confirmText1 = gText_IsThisQuizOK,
        .confirmText2 = ((void *)0),
    },
    {
        .type = 6,
        .numColumns = 2,
        .numRows = 3,
        .frameId = 1,
        .fourFooterOptions = 0,
        .titleText = gText_TheBardsSong,
        .instructionsText1 = gText_ChangeJustOneWordOrPhrase,
        .instructionsText2 = gText_AndImproveTheBardsSong,
        .confirmText1 = gText_TheBardsSong2,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 19,
        .numColumns = 2,
        .numRows = 3,
        .frameId = 1,
        .fourFooterOptions = 0,
        .titleText = gText_ApprenticesPhrase,
        .instructionsText1 = gText_FindWordsWhichFit,
        .instructionsText2 = gText_TheTrainersImage,
        .confirmText1 = gText_ApprenticePhrase,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 13,
        .numColumns = 2,
        .numRows = 1,
        .frameId = 3,
        .fourFooterOptions = 0,
        .titleText = gText_GoodSaying,
        .instructionsText1 = gText_CombineTwoWordsOrPhrases2,
        .instructionsText2 = gText_ToTeachHerAGoodSaying,
        .confirmText1 = gText_TheAnswer,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 10,
        .numColumns = 1,
        .numRows = 1,
        .frameId = 4,
        .fourFooterOptions = 0,
        .titleText = gText_Interview,
        .instructionsText1 = gText_FindWordsThatDescribeYour,
        .instructionsText2 = gText_FeelingsRightNow,
        .confirmText1 = gText_TheAnswer,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 12,
        .numColumns = 1,
        .numRows = 1,
        .frameId = 4,
        .fourFooterOptions = 0,
        .titleText = gText_Interview,
        .instructionsText1 = gText_FindWordsThatDescribeYour,
        .instructionsText2 = gText_FeelingsRightNow,
        .confirmText1 = gText_TheAnswer,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 11,
        .numColumns = 1,
        .numRows = 1,
        .frameId = 4,
        .fourFooterOptions = 0,
        .titleText = gText_Interview,
        .instructionsText1 = gText_FindWordsThatDescribeYour,
        .instructionsText2 = gText_FeelingsRightNow,
        .confirmText1 = gText_TheAnswer,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 14,
        .numColumns = 1,
        .numRows = 1,
        .frameId = 4,
        .fourFooterOptions = 0,
        .titleText = gText_FansQuestion,
        .instructionsText1 = gText_FindWordsWhichFit,
        .instructionsText2 = gText_TheTrainersImage,
        .confirmText1 = gText_TheImage,
        .confirmText2 = gText_IsAsShownOkay,
    },
    {
        .type = 20,
        .numColumns = 2,
        .numRows = 2,
        .frameId = 0,
        .fourFooterOptions = 0,
        .titleText = gText_Questionnaire,
        .instructionsText1 = gText_CombineFourWordsOrPhrases,
        .instructionsText2 = gText_AndFillOutTheQuestionnaire,
        .confirmText1 = gText_TheAnswer,
        .confirmText2 = gText_IsAsShownOkay,
    },
};

static const u8 sUnknown_08597748[][7] = {
    { 1, 2, 3, 4, 5, 6, 0},
    { 7, 8, 9, 10, 11, 12, 0},
    {13, 14, 15, 16, 17, 18, 19},
    {20, 21, 22, 23, 24, 25, 26},
};

static const u16 sMysteryGiftPhrase[] = {
    (0x1 << 9) | 0x9,
    (0xa << 9) | 0xb,
    (0x8 << 9) | 0x30,
    (0x8 << 9) | 0x2a,
};

static const u16 sBerryMasterWifePhrases[][2] = {
    [1 - 1] = {(0x9 << 9) | 0x40, (0x3 << 9) | 0x28},
    [2 - 1] = {(0x3 << 9) | 0x1f, (0x11 << 9) | 0x4},
    [3 - 1] = {(0xa << 9) | 0x22, ((0x0 << 9) | 407)},
    [4 - 1] = {(0x2 << 9) | 0x15, ((0x0 << 9) | 408)},
    [5 - 1] = {(0x11 << 9) | 0x7, (0x2 << 9) | 0x49},
};

static const u16 sEasyChatTriangleCursorPalette[] = INCBIN_U16("graphics/easy_chat/triangle_cursor.gbapal");
static const u32 sEasyChatTriangleCursorGfx[] = INCBIN_U32("graphics/easy_chat/triangle_cursor.4bpp");
static const u32 sEasyChatScrollIndicatorGfx[] = INCBIN_U32("graphics/easy_chat/scroll_indicator.4bpp");
static const u32 sEasyChatStartSelectButtonsGfx[] = INCBIN_U32("graphics/easy_chat/start_select_buttons.4bpp");
static const u16 sUnknown_085979C0[] = INCBIN_U16("graphics/misc/interview_frame.gbapal");
static const u32 sUnknown_085979E0[] = INCBIN_U32("graphics/misc/interview_frame.4bpp.lz");
static const u16 sUnknown_08597B14[] = INCBIN_U16("graphics/misc/interview_frame_orange.gbapal");
static const u16 sUnknown_08597B34[] = INCBIN_U16("graphics/misc/interview_frame_green.gbapal");
static const u32 sUnknown_08597B54[] = INCBIN_U32("graphics/misc/interview_frame_2.4bpp.lz");
static const u16 sUnknown_08597C1C[] = INCBIN_U16("graphics/misc/8597C1C.gbapal");
static const u16 sUnknown_08597C24[] = INCBIN_U16("graphics/misc/8597C24.gbapal");

static const struct EasyChatPhraseFrameDimensions sPhraseFrameDimensions[] = {
    {
        .left = 3,
        .top = 4,
        .width = 24,
        .height = 4,
        .footerId = 0,
    },
    {
        .left = 3,
        .top = 3,
        .width = 24,
        .height = 6,
        .footerId = 0,
    },
    {
        .left = 3,
        .top = 0,
        .width = 24,
        .height = 10,
        .footerId = 0,
    },
    {
        .left = 3,
        .top = 5,
        .width = 24,
        .height = 2,
        .footerId = 0,
    },
    {
        .left = 16,
        .top = 5,
        .width = 12,
        .height = 2,
        .footerId = 0,
    },
    {
        .left = 3,
        .top = 4,
        .width = 24,
        .height = 4,
        .footerId = 0,
    },
    {
        .left = 9,
        .top = 4,
        .width = 12,
        .height = 2,
        .footerId = 1,
    },
    {
        .left = 5,
        .top = 3,
        .width = 0x14,
        .height = 10,
        .footerId = 3,
    },
    {
        .left = 3,
        .top = 0,
        .width = 24,
        .height = 10,
        .footerId = 2,
    },
};

static const struct BgTemplate sEasyChatBgTemplates[] = {
    {
        .bg = 0,
        .charBaseIndex = 0,
        .mapBaseIndex = 28,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0,
    },
    {
        .bg = 1,
        .charBaseIndex = 3,
        .mapBaseIndex = 29,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 1,
        .baseTile = 0,
    },
    {
        .bg = 2,
        .charBaseIndex = 0,
        .mapBaseIndex = 30,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 2,
        .baseTile = 0x80,
    },
    {
        .bg = 3,
        .charBaseIndex = 2,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 3,
        .baseTile = 0,
    },
};

static const struct WindowTemplate sEasyChatWindowTemplates[] = {
    {
        .bg = 1,
        .tilemapLeft = 6,
        .tilemapTop = 0,
        .width = 18,
        .height = 2,
        .paletteNum = 10,
        .baseBlock = 0x10,
    },
    {
        .bg = 0,
        .tilemapLeft = 3,
        .tilemapTop = 15,
        .width = 24,
        .height = 4,
        .paletteNum = 15,
        .baseBlock = 0xA,
    },
    {
        .bg = 2,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 28,
        .height = 32,
        .paletteNum = 3,
        .baseBlock = 0,
    },
    { 0xFF, 0, 0, 0, 0, 0, 0, },
};

static const struct WindowTemplate sEasyChatYesNoWindowTemplate = {
    .bg = 0,
    .tilemapLeft = 22,
    .tilemapTop = 9,
    .width = 5,
    .height = 4,
    .paletteNum = 15,
    .baseBlock = 0x6A,
};

static const u8 sText_Clear17[] = _("{CLEAR 17}");

static const u8 *const sEasyChatKeyboardText[] =
{
    gText_EasyChatKeyboard_ABCDEFothers,
    gText_EasyChatKeyboard_GHIJKL,
    gText_EasyChatKeyboard_MNOPQRS,
    gText_EasyChatKeyboard_TUVWXYZ,
};

static const struct SpriteSheet sEasyChatSpriteSheets[] = {
    {
        .data = sEasyChatTriangleCursorGfx,
        .size = 0x0020,
        .tag = 0
    },
    {
        .data = sEasyChatScrollIndicatorGfx,
        .size = 0x0100,
        .tag = 2
    },
    {
        .data = sEasyChatStartSelectButtonsGfx,
        .size = 0x0100,
        .tag = 3
    },
    {0}
};

static const struct SpritePalette sEasyChatSpritePalettes[] = {
    {
        .data = sEasyChatTriangleCursorPalette,
        .tag = 0,
    },
    {
        .data = gEasyChatCursor_Pal,
        .tag = 1,
    },
    {
        .data = gEasyChatRightWindow_Pal,
        .tag = 2,
    },
    {
        .data = sUnknown_085979C0,
        .tag = 3,
    },
    {0}
};

static const struct CompressedSpriteSheet sUnknown_08597CE8[] = {
    {
        .data = sUnknown_085979E0,
        .size = 0x0800,
        .tag = 5,
    },
    {
        .data = gEasyChatCursor_Gfx,
        .size = 0x1000,
        .tag = 1,
    },
    {
        .data = gEasyChatRightWindow_Gfx,
        .size = 0x0800,
        .tag = 6,
    },
    {
        .data = gEasyChatMode_Gfx,
        .size = 0x1000,
        .tag = 4,
    },
};

static const u8 sUnknown_08597D08[] = {0, 12, 24, 56, 68, 80, 92};

static const struct OamData sOamData_8597D10 = {
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((0 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((0 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 3,
    .paletteNum = 0,
    .affineParam = 0,
};

static const struct SpriteTemplate sUnknown_08597D18 = {
    .tileTag = 0,
    .paletteTag = 0,
    .oam = &sOamData_8597D10,
    .anims = gDummySpriteAnimTable,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = sub_811DF28,
};

static const struct OamData sUnknown_08597D30 = {
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (1)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((3 << 2) | (1)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sUnknown_08597D38[] = {
    {.frame = {0, 0}},
    {.type = -1},
};

static const union AnimCmd sUnknown_08597D40[] = {
    {.frame = {32, 0}},
    {.type = -1},
};

static const union AnimCmd sUnknown_08597D48[] = {
    {.frame = {64, 0}},
    {.type = -1},
};

static const union AnimCmd sUnknown_08597D50[] = {
    {.frame = {96, 0}},
    {.type = -1},
};

static const union AnimCmd *const sUnknown_08597D58[] = {
    sUnknown_08597D38,
    sUnknown_08597D40,
    sUnknown_08597D48,
    sUnknown_08597D50,
};

static const struct SpriteTemplate sUnknown_08597D68 = {
    .tileTag = 1,
    .paletteTag = 1,
    .oam = &sUnknown_08597D30,
    .anims = sUnknown_08597D58,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = sub_811DF28,
};

static const struct OamData sUnknown_08597D80 = {
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (1)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((3 << 2) | (1)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sUnknown_08597D88[] = {
    {.frame = {96, 0}},
    {.type = -1},
};

static const union AnimCmd sUnknown_08597D90[] = {
    {.frame = {64, 4}},
    {.frame = {32, 4}},
    {.type = -1},
};

static const union AnimCmd sUnknown_08597D9C[] = {
    {.frame = {64, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

static const union AnimCmd sUnknown_08597DA8[] = {
    {.frame = {64, 4}},
    {.frame = {96, 0}},
    {.type = -1},
};

static const union AnimCmd sUnknown_08597DB4[] = {
    {.frame = {64, 4}},
    {.type = -1},
};

static const union AnimCmd *const sUnknown_08597DBC[] = {
    sUnknown_08597D88,
    sUnknown_08597D90,
    sUnknown_08597D9C,
    sUnknown_08597DA8,
    sUnknown_08597DB4,
};

static const struct SpriteTemplate sUnknown_08597DD0 = {
    .tileTag = 4,
    .paletteTag = 2,
    .oam = &sUnknown_08597D80,
    .anims = sUnknown_08597DBC,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct OamData sUnknown_08597DE8 = {
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((3 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 3,
    .paletteNum = 0,
    .affineParam = 0,
};

static const struct SpriteTemplate sUnknown_08597DF0 = {
    .tileTag = 6,
    .paletteTag = 2,
    .oam = &sUnknown_08597DE8,
    .anims = gDummySpriteAnimTable,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct OamData sUnknown_08597E08 = {
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((1 << 2) | (1)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((1 << 2) | (1)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};

static const struct OamData gUnknown_08597E10 = {
    .y = 0,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((1 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((1 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};

static const union AnimCmd sUnknown_08597E18[] = {
    {.frame = {0, 0}},
    {.type = -1},
};

static const union AnimCmd sUnknown_08597E20[] = {
    {.frame = {4, 0}},
    {.type = -1},
};

static const union AnimCmd *const sUnknown_08597E28[] = {
    sUnknown_08597E18,
    sUnknown_08597E20,
};

static const struct SpriteTemplate sUnknown_08597E30 = {
    .tileTag = 3,
    .paletteTag = 2,
    .oam = &sUnknown_08597E08,
    .anims = sUnknown_08597E28,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const struct SpriteTemplate sUnknown_08597E48 = {
    .tileTag = 2,
    .paletteTag = 2,
    .oam = &gUnknown_08597E10,
    .anims = sUnknown_08597E28,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCallbackDummy,
};

static const u8 sFooterOptionXOffsets[][4] = {
    {16, 111, 196, 0},
    {16, 78, 130, 160},
    {16, 80, 134, 170},
};

static const u8 *const sFooterTextOptions[][4] = {
    {gText_DelAll, gText_Cancel5, gText_Ok2, ((void *)0)},
    {gText_DelAll, gText_Cancel5, gText_Ok2, gText_Quiz},
    {gText_DelAll, gText_Cancel5, gText_Ok2, gText_Answer},
};

# 1 "src/data/easy_chat/easy_chat_groups.h" 1


# 1 "src/data/easy_chat/easy_chat_group_pokemon.h" 1


const u16 gEasyChatGroup_Pokemon[] = {
    63,
    376,
    384,
    65,
    359,
    390,
    391,
    382,
    184,
    350,
    395,
    318,
    378,
    323,
    292,
    398,
    182,
    282,
    307,
    344,
    345,
    340,
    330,
    293,
    385,
    411,
    170,
    373,
    319,
    281,
    326,
    222,
    389,
    327,
    169,
    316,
    410,
    85,
    84,
    232,
    362,
    361,
    294,
    337,
    101,
    372,
    328,
    334,
    394,
    74,
    203,
    347,
    44,
    42,
    118,
    55,
    76,
    375,
    75,
    88,
    405,
    278,
    352,
    367,
    130,
    336,
    214,
    116,
    374,
    174,
    387,
    39,
    409,
    64,
    317,
    230,
    393,
    109,
    404,
    383,
    171,
    407,
    408,
    388,
    289,
    296,
    295,
    371,
    297,
    348,
    325,
    68,
    67,
    66,
    219,
    129,
    81,
    82,
    335,
    338,
    183,
    284,
    312,
    355,
    357,
    356,
    400,
    399,
    287,
    329,
    354,
    283,
    89,
    177,
    301,
    38,
    302,
    320,
    339,
    299,
    43,
    310,
    231,
    172,
    25,
    127,
    353,
    286,
    54,
    26,
    392,
    406,
    402,
    401,
    403,
    381,
    112,
    111,
    363,
    322,
    397,
    27,
    28,
    279,
    117,
    119,
    342,
    298,
    379,
    331,
    303,
    396,
    300,
    306,
    377,
    291,
    227,
    315,
    366,
    364,
    218,
    346,
    349,
    341,
    308,
    351,
    121,
    120,
    311,
    358,
    368,
    285,
    305,
    304,
    72,
    73,
    280,
    321,
    332,
    277,
    369,
    333,
    365,
    45,
    386,
    100,
    37,
    313,
    314,
    343,
    110,
    324,
    370,
    40,
    309,
    202,
    290,
    360,
    178,
    380,
    288,
    41,
};
# 4 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_trainer.h" 1
const u8 gEasyChatWord_IChooseYou[] = _("I CHOOSE YOU");
const u8 gEasyChatWord_Gotcha[] = _("GOTCHA");
const u8 gEasyChatWord_Trade[] = _("TRADE");
const u8 gEasyChatWord_Sapphire[] = _("SAPPHIRE");
const u8 gEasyChatWord_Evolve[] = _("EVOLVE");
const u8 gEasyChatWord_Encyclopedia[] = _("ENCYCLOPEDIA");
const u8 gEasyChatWord_Nature[] = _("NATURE");
const u8 gEasyChatWord_Center[] = _("CENTER");
const u8 gEasyChatWord_Egg[] = _("EGG");
const u8 gEasyChatWord_Link[] = _("LINK");
const u8 gEasyChatWord_SpAbility[] = _("SP. ABILITY");
const u8 gEasyChatWord_Trainer[] = _("TRAINER");
const u8 gEasyChatWord_Version[] = _("VERSION");
const u8 gEasyChatWord_Pokenav[] = _("POKéNAV");
const u8 gEasyChatWord_Pokemon[] = _("POKéMON");
const u8 gEasyChatWord_Get[] = _("GET");
const u8 gEasyChatWord_Pokedex[] = _("POKéDEX");
const u8 gEasyChatWord_Ruby[] = _("RUBY");
const u8 gEasyChatWord_Level[] = _("LEVEL");
const u8 gEasyChatWord_Red[] = _("RED");
const u8 gEasyChatWord_Green[] = _("GREEN");
const u8 gEasyChatWord_Bag[] = _("BAG");
const u8 gEasyChatWord_Flame[] = _("FLAME");
const u8 gEasyChatWord_Gold[] = _("GOLD");
const u8 gEasyChatWord_Leaf[] = _("LEAF");
const u8 gEasyChatWord_Silver[] = _("SILVER");
const u8 gEasyChatWord_Emerald[] = _("EMERALD");

const struct EasyChatWordInfo gEasyChatGroup_Trainer[] = {
    {
        .text = gEasyChatWord_IChooseYou,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Gotcha,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Trade,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sapphire,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Evolve,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Encyclopedia,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Nature,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Center,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Egg,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Link,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SpAbility,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Trainer,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Version,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pokenav,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pokemon,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Get,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pokedex,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ruby,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Level,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Red,
        .alphabeticalOrder = 19,
        .enabled = 0,
    },
    {
        .text = gEasyChatWord_Green,
        .alphabeticalOrder = 17,
        .enabled = 0,
    },
    {
        .text = gEasyChatWord_Bag,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Flame,
        .alphabeticalOrder = 25,
        .enabled = 0,
    },
    {
        .text = gEasyChatWord_Gold,
        .alphabeticalOrder = 10,
        .enabled = 0,
    },
    {
        .text = gEasyChatWord_Leaf,
        .alphabeticalOrder = 2,
        .enabled = 0,
    },
    {
        .text = gEasyChatWord_Silver,
        .alphabeticalOrder = 11,
        .enabled = 0,
    },
    {
        .text = gEasyChatWord_Emerald,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
};
# 5 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_status.h" 1
const u8 gEasyChatWord_Dark[] = _("DARK");
const u8 gEasyChatWord_Stench[] = _("STENCH");
const u8 gEasyChatWord_ThickFat[] = _("THICK FAT");
const u8 gEasyChatWord_RainDish[] = _("RAIN DISH");
const u8 gEasyChatWord_Drizzle[] = _("DRIZZLE");
const u8 gEasyChatWord_ArenaTrap[] = _("ARENA TRAP");
const u8 gEasyChatWord_Intimidate[] = _("INTIMIDATE");
const u8 gEasyChatWord_RockHead[] = _("ROCK HEAD");
const u8 gEasyChatWord_Color[] = _("COLOR");
const u8 gEasyChatWord_AltColor[] = _("ALT. COLOR");
const u8 gEasyChatWord_Rock[] = _("ROCK");
const u8 gEasyChatWord_Beautiful[] = _("BEAUTIFUL");
const u8 gEasyChatWord_Beauty[] = _("BEAUTY");
const u8 gEasyChatWord_AirLock[] = _("AIR LOCK");
const u8 gEasyChatWord_Psychic[] = _("PSYCHIC");
const u8 gEasyChatWord_HyperCutter[] = _("HYPER CUTTER");
const u8 gEasyChatWord_Fighting[] = _("FIGHTING");
const u8 gEasyChatWord_ShadowTag[] = _("SHADOW TAG");
const u8 gEasyChatWord_Smart[] = _("SMART");
const u8 gEasyChatWord_Smartness[] = _("SMARTNESS");
const u8 gEasyChatWord_SpeedBoost[] = _("SPEED BOOST");
const u8 gEasyChatWord_Cool[] = _("COOL");
const u8 gEasyChatWord_Coolness[] = _("COOLNESS");
const u8 gEasyChatWord_BattleArmor[] = _("BATTLE ARMOR");
const u8 gEasyChatWord_Cute[] = _("CUTE");
const u8 gEasyChatWord_Cuteness[] = _("CUTENESS");
const u8 gEasyChatWord_Sturdy[] = _("STURDY");
const u8 gEasyChatWord_SuctionCups[] = _("SUCTION CUPS");
const u8 gEasyChatWord_Grass[] = _("GRASS");
const u8 gEasyChatWord_ClearBody[] = _("CLEAR BODY");
const u8 gEasyChatWord_Torrent[] = _("TORRENT");
const u8 gEasyChatWord_Ghost[] = _("GHOST");
const u8 gEasyChatWord_Ice[] = _("ICE");
const u8 gEasyChatWord_Guts[] = _("GUTS");
const u8 gEasyChatWord_RoughSkin[] = _("ROUGH SKIN");
const u8 gEasyChatWord_ShellArmor[] = _("SHELL ARMOR");
const u8 gEasyChatWord_NaturalCure[] = _("NATURAL CURE");
const u8 gEasyChatWord_Damp[] = _("DAMP");
const u8 gEasyChatWord_Ground[] = _("GROUND");
const u8 gEasyChatWord_Limber[] = _("LIMBER");
const u8 gEasyChatWord_MagnetPull[] = _("MAGNET PULL");
const u8 gEasyChatWord_WhiteSmoke[] = _("WHITE SMOKE");
const u8 gEasyChatWord_Synchronize[] = _("SYNCHRONIZE");
const u8 gEasyChatWord_Overgrow[] = _("OVERGROW");
const u8 gEasyChatWord_SwiftSwim[] = _("SWIFT SWIM");
const u8 gEasyChatWord_SandStream[] = _("SAND STREAM");
const u8 gEasyChatWord_SandVeil[] = _("SAND VEIL");
const u8 gEasyChatWord_KeenEye[] = _("KEEN EYE");
const u8 gEasyChatWord_InnerFocus[] = _("INNER FOCUS");
const u8 gEasyChatWord_Static[] = _("STATIC");
const u8 gEasyChatWord_Type[] = _("TYPE");
const u8 gEasyChatWord_Tough[] = _("TOUGH");
const u8 gEasyChatWord_Toughness[] = _("TOUGHNESS");
const u8 gEasyChatWord_ShedSkin[] = _("SHED SKIN");
const u8 gEasyChatWord_HugePower[] = _("HUGE POWER");
const u8 gEasyChatWord_VoltAbsorb[] = _("VOLT ABSORB");
const u8 gEasyChatWord_WaterAbsorb[] = _("WATER ABSORB");
const u8 gEasyChatWord_Electric[] = _("ELECTRIC");
const u8 gEasyChatWord_Forecast[] = _("FORECAST");
const u8 gEasyChatWord_SereneGrace[] = _("SERENE GRACE");
const u8 gEasyChatWord_Poison[] = _("POISON");
const u8 gEasyChatWord_PoisonPoint[] = _("POISON POINT");
const u8 gEasyChatWord_Dragon[] = _("DRAGON");
const u8 gEasyChatWord_Trace[] = _("TRACE");
const u8 gEasyChatWord_Oblivious[] = _("OBLIVIOUS");
const u8 gEasyChatWord_Truant[] = _("TRUANT");
const u8 gEasyChatWord_RunAway[] = _("RUN AWAY");
const u8 gEasyChatWord_StickyHold[] = _("STICKY HOLD");
const u8 gEasyChatWord_CloudNine[] = _("CLOUD NINE");
const u8 gEasyChatWord_Normal[] = _("NORMAL");
const u8 gEasyChatWord_Steel[] = _("STEEL");
const u8 gEasyChatWord_Illuminate[] = _("ILLUMINATE");
const u8 gEasyChatWord_EarlyBird[] = _("EARLY BIRD");
const u8 gEasyChatWord_Hustle[] = _("HUSTLE");
const u8 gEasyChatWord_Shine[] = _("SHINE");
const u8 gEasyChatWord_Flying[] = _("FLYING");
const u8 gEasyChatWord_Drought[] = _("DROUGHT");
const u8 gEasyChatWord_Lightningrod[] = _("LIGHTNINGROD");
const u8 gEasyChatWord_Compoundeyes[] = _("COMPOUNDEYES");
const u8 gEasyChatWord_MarvelScale[] = _("MARVEL SCALE");
const u8 gEasyChatWord_WonderGuard[] = _("WONDER GUARD");
const u8 gEasyChatWord_Insomnia[] = _("INSOMNIA");
const u8 gEasyChatWord_Levitate[] = _("LEVITATE");
const u8 gEasyChatWord_Plus[] = _("PLUS");
const u8 gEasyChatWord_Pressure[] = _("PRESSURE");
const u8 gEasyChatWord_LiquidOoze[] = _("LIQUID OOZE");
const u8 gEasyChatWord_ColorChange[] = _("COLOR CHANGE");
const u8 gEasyChatWord_Soundproof[] = _("SOUNDPROOF");
const u8 gEasyChatWord_EffectSpore[] = _("EFFECT SPORE");
const u8 gEasyChatWord_Pkrs[] = _("{PK}RS");
const u8 gEasyChatWord_Fire[] = _("FIRE");
const u8 gEasyChatWord_FlameBody[] = _("FLAME BODY");
const u8 gEasyChatWord_Minus[] = _("MINUS");
const u8 gEasyChatWord_OwnTempo[] = _("OWN TEMPO");
const u8 gEasyChatWord_MagmaArmor[] = _("MAGMA ARMOR");
const u8 gEasyChatWord_Water[] = _("WATER");
const u8 gEasyChatWord_WaterVeil[] = _("WATER VEIL");
const u8 gEasyChatWord_Bug[] = _("BUG");
const u8 gEasyChatWord_Swarm[] = _("SWARM");
const u8 gEasyChatWord_CuteCharm[] = _("CUTE CHARM");
const u8 gEasyChatWord_Immunity[] = _("IMMUNITY");
const u8 gEasyChatWord_Blaze[] = _("BLAZE");
const u8 gEasyChatWord_Pickup[] = _("PICKUP");
const u8 gEasyChatWord_Pattern[] = _("PATTERN");
const u8 gEasyChatWord_FlashFire[] = _("FLASH FIRE");
const u8 gEasyChatWord_VitalSpirit[] = _("VITAL SPIRIT");
const u8 gEasyChatWord_Chlorophyll[] = _("CHLOROPHYLL");
const u8 gEasyChatWord_PurePower[] = _("PURE POWER");
const u8 gEasyChatWord_ShieldDust[] = _("SHIELD DUST");

const struct EasyChatWordInfo gEasyChatGroup_Status[] = {
    {
        .text = gEasyChatWord_Dark,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Stench,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ThickFat,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_RainDish,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Drizzle,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ArenaTrap,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Intimidate,
        .alphabeticalOrder = 101,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_RockHead,
        .alphabeticalOrder = 97,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Color,
        .alphabeticalOrder = 106,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_AltColor,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Rock,
        .alphabeticalOrder = 68,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Beautiful,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Beauty,
        .alphabeticalOrder = 86,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_AirLock,
        .alphabeticalOrder = 78,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Psychic,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HyperCutter,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fighting,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ShadowTag,
        .alphabeticalOrder = 99,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Smart,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Smartness,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SpeedBoost,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cool,
        .alphabeticalOrder = 62,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Coolness,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_BattleArmor,
        .alphabeticalOrder = 76,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cute,
        .alphabeticalOrder = 72,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cuteness,
        .alphabeticalOrder = 88,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sturdy,
        .alphabeticalOrder = 57,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SuctionCups,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Grass,
        .alphabeticalOrder = 90,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ClearBody,
        .alphabeticalOrder = 91,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Torrent,
        .alphabeticalOrder = 104,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ghost,
        .alphabeticalOrder = 75,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ice,
        .alphabeticalOrder = 58,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Guts,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_RoughSkin,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ShellArmor,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_NaturalCure,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Damp,
        .alphabeticalOrder = 54,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ground,
        .alphabeticalOrder = 73,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Limber,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_MagnetPull,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WhiteSmoke,
        .alphabeticalOrder = 71,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Synchronize,
        .alphabeticalOrder = 100,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Overgrow,
        .alphabeticalOrder = 48,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SwiftSwim,
        .alphabeticalOrder = 81,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SandStream,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SandVeil,
        .alphabeticalOrder = 47,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_KeenEye,
        .alphabeticalOrder = 82,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_InnerFocus,
        .alphabeticalOrder = 77,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Static,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Type,
        .alphabeticalOrder = 85,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Tough,
        .alphabeticalOrder = 94,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Toughness,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ShedSkin,
        .alphabeticalOrder = 79,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HugePower,
        .alphabeticalOrder = 92,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_VoltAbsorb,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WaterAbsorb,
        .alphabeticalOrder = 69,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Electric,
        .alphabeticalOrder = 64,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Forecast,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SereneGrace,
        .alphabeticalOrder = 93,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Poison,
        .alphabeticalOrder = 103,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_PoisonPoint,
        .alphabeticalOrder = 102,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Dragon,
        .alphabeticalOrder = 89,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Trace,
        .alphabeticalOrder = 83,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Oblivious,
        .alphabeticalOrder = 60,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Truant,
        .alphabeticalOrder = 61,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_RunAway,
        .alphabeticalOrder = 84,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_StickyHold,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_CloudNine,
        .alphabeticalOrder = 107,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Normal,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Steel,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Illuminate,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_EarlyBird,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hustle,
        .alphabeticalOrder = 66,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Shine,
        .alphabeticalOrder = 45,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Flying,
        .alphabeticalOrder = 46,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Drought,
        .alphabeticalOrder = 59,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lightningrod,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Compoundeyes,
        .alphabeticalOrder = 53,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_MarvelScale,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WonderGuard,
        .alphabeticalOrder = 108,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Insomnia,
        .alphabeticalOrder = 74,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Levitate,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Plus,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pressure,
        .alphabeticalOrder = 87,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_LiquidOoze,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ColorChange,
        .alphabeticalOrder = 49,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Soundproof,
        .alphabeticalOrder = 70,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_EffectSpore,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pkrs,
        .alphabeticalOrder = 67,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fire,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_FlameBody,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Minus,
        .alphabeticalOrder = 98,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_OwnTempo,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_MagmaArmor,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Water,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WaterVeil,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Bug,
        .alphabeticalOrder = 51,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Swarm,
        .alphabeticalOrder = 52,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_CuteCharm,
        .alphabeticalOrder = 63,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Immunity,
        .alphabeticalOrder = 65,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Blaze,
        .alphabeticalOrder = 50,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pickup,
        .alphabeticalOrder = 105,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pattern,
        .alphabeticalOrder = 55,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_FlashFire,
        .alphabeticalOrder = 95,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_VitalSpirit,
        .alphabeticalOrder = 56,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Chlorophyll,
        .alphabeticalOrder = 96,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_PurePower,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ShieldDust,
        .alphabeticalOrder = 80,
        .enabled = 1,
    },
};
# 6 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_battle.h" 1
const u8 gEasyChatWord_MatchUp[] = _("MATCH UP");
const u8 gEasyChatWord_Go[] = _("GO");
const u8 gEasyChatWord_No1[] = _("NO. 1");
const u8 gEasyChatWord_Decide[] = _("DECIDE");
const u8 gEasyChatWord_LetMeWin[] = _("LET ME WIN");
const u8 gEasyChatWord_Wins[] = _("WINS");
const u8 gEasyChatWord_Win[] = _("WIN");
const u8 gEasyChatWord_Won[] = _("WON");
const u8 gEasyChatWord_IfIWin[] = _("IF I WIN");
const u8 gEasyChatWord_WhenIWin[] = _("WHEN I WIN");
const u8 gEasyChatWord_CantWin[] = _("CAN'T WIN");
const u8 gEasyChatWord_CanWin[] = _("CAN WIN");
const u8 gEasyChatWord_NoMatch[] = _("NO MATCH");
const u8 gEasyChatWord_Spirit[] = _("SPIRIT");
const u8 gEasyChatWord_Decided[] = _("DECIDED");
const u8 gEasyChatWord_TrumpCard[] = _("TRUMP CARD");
const u8 gEasyChatWord_TakeThat[] = _("TAKE THAT");
const u8 gEasyChatWord_ComeOn[] = _("COME ON");
const u8 gEasyChatWord_Attack[] = _("ATTACK");
const u8 gEasyChatWord_Surrender[] = _("SURRENDER");
const u8 gEasyChatWord_Gutsy[] = _("GUTSY");
const u8 gEasyChatWord_Talent[] = _("TALENT");
const u8 gEasyChatWord_Strategy[] = _("STRATEGY");
const u8 gEasyChatWord_Smite[] = _("SMITE");
const u8 gEasyChatWord_Match[] = _("MATCH");
const u8 gEasyChatWord_Victory[] = _("VICTORY");
const u8 gEasyChatWord_Offensive[] = _("OFFENSIVE");
const u8 gEasyChatWord_Sense[] = _("SENSE");
const u8 gEasyChatWord_Versus[] = _("VERSUS");
const u8 gEasyChatWord_Fights[] = _("FIGHTS");
const u8 gEasyChatWord_Power[] = _("POWER");
const u8 gEasyChatWord_Challenge[] = _("CHALLENGE");
const u8 gEasyChatWord_Strong[] = _("STRONG");
const u8 gEasyChatWord_TooStrong[] = _("TOO STRONG");
const u8 gEasyChatWord_GoEasy[] = _("GO EASY");
const u8 gEasyChatWord_Foe[] = _("FOE");
const u8 gEasyChatWord_Genius[] = _("GENIUS");
const u8 gEasyChatWord_Legend[] = _("LEGEND");
const u8 gEasyChatWord_Escape[] = _("ESCAPE");
const u8 gEasyChatWord_Aim[] = _("AIM");
const u8 gEasyChatWord_Battle[] = _("BATTLE");
const u8 gEasyChatWord_Fight[] = _("FIGHT");
const u8 gEasyChatWord_Resuscitate[] = _("RESUSCITATE");
const u8 gEasyChatWord_Points[] = _("POINTS");
const u8 gEasyChatWord_Serious[] = _("SERIOUS");
const u8 gEasyChatWord_GiveUp[] = _("GIVE UP");
const u8 gEasyChatWord_Loss[] = _("LOSS");
const u8 gEasyChatWord_IfILose[] = _("IF I LOSE");
const u8 gEasyChatWord_Lost[] = _("LOST");
const u8 gEasyChatWord_Lose[] = _("LOSE");
const u8 gEasyChatWord_Guard[] = _("GUARD");
const u8 gEasyChatWord_Partner[] = _("PARTNER");
const u8 gEasyChatWord_Reject[] = _("REJECT");
const u8 gEasyChatWord_Accept[] = _("ACCEPT");
const u8 gEasyChatWord_Invincible[] = _("INVINCIBLE");
const u8 gEasyChatWord_Received[] = _("RECEIVED");
const u8 gEasyChatWord_Easy[] = _("EASY");
const u8 gEasyChatWord_Weak[] = _("WEAK");
const u8 gEasyChatWord_TooWeak[] = _("TOO WEAK");
const u8 gEasyChatWord_Pushover[] = _("PUSHOVER");
const u8 gEasyChatWord_Leader[] = _("LEADER");
const u8 gEasyChatWord_Rule[] = _("RULE");
const u8 gEasyChatWord_Move[] = _("MOVE");

const struct EasyChatWordInfo gEasyChatGroup_Battle[] = {
    {
        .text = gEasyChatWord_MatchUp,
        .alphabeticalOrder = 53,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Go,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_No1,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Decide,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_LetMeWin,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wins,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Win,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Won,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_IfIWin,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WhenIWin,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_CantWin,
        .alphabeticalOrder = 56,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_CanWin,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_NoMatch,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Spirit,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Decided,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_TrumpCard,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_TakeThat,
        .alphabeticalOrder = 45,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ComeOn,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Attack,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Surrender,
        .alphabeticalOrder = 50,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Gutsy,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Talent,
        .alphabeticalOrder = 47,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Strategy,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Smite,
        .alphabeticalOrder = 54,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Match,
        .alphabeticalOrder = 60,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Victory,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Offensive,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sense,
        .alphabeticalOrder = 49,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Versus,
        .alphabeticalOrder = 46,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fights,
        .alphabeticalOrder = 48,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Power,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Challenge,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Strong,
        .alphabeticalOrder = 62,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_TooStrong,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_GoEasy,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Foe,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Genius,
        .alphabeticalOrder = 51,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Legend,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Escape,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Aim,
        .alphabeticalOrder = 59,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Battle,
        .alphabeticalOrder = 55,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fight,
        .alphabeticalOrder = 52,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Resuscitate,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Points,
        .alphabeticalOrder = 61,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Serious,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_GiveUp,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Loss,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_IfILose,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lost,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lose,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Guard,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Partner,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Reject,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Accept,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Invincible,
        .alphabeticalOrder = 58,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Received,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Easy,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Weak,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_TooWeak,
        .alphabeticalOrder = 57,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pushover,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Leader,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Rule,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Move,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
};
# 7 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_greetings.h" 1
const u8 gEasyChatWord_Thanks[] = _("THANKS");
const u8 gEasyChatWord_Yes[] = _("YES");
const u8 gEasyChatWord_HereGoes[] = _("HERE GOES");
const u8 gEasyChatWord_HereICome[] = _("HERE I COME");
const u8 gEasyChatWord_HereItIs[] = _("HERE IT IS");
const u8 gEasyChatWord_Yeah[] = _("YEAH");
const u8 gEasyChatWord_Welcome[] = _("WELCOME");
const u8 gEasyChatWord_Oi[] = _("OI");
const u8 gEasyChatWord_HowDo[] = _("HOW DO");
const u8 gEasyChatWord_Congrats[] = _("CONGRATS");
const u8 gEasyChatWord_GiveMe[] = _("GIVE ME");
const u8 gEasyChatWord_Sorry[] = _("SORRY");
const u8 gEasyChatWord_Apologize[] = _("APOLOGIZE");
const u8 gEasyChatWord_Forgive[] = _("FORGIVE");
const u8 gEasyChatWord_HeyThere[] = _("HEY, THERE");
const u8 gEasyChatWord_Hello[] = _("HELLO");
const u8 gEasyChatWord_GoodBye[] = _("GOOD-BYE");
const u8 gEasyChatWord_ThankYou[] = _("THANK YOU");
const u8 gEasyChatWord_IveArrived[] = _("I'VE ARRIVED");
const u8 gEasyChatWord_Pardon[] = _("PARDON");
const u8 gEasyChatWord_Excuse[] = _("EXCUSE");
const u8 gEasyChatWord_SeeYa[] = _("SEE YA");
const u8 gEasyChatWord_ExcuseMe[] = _("EXCUSE ME");
const u8 gEasyChatWord_WellThen[] = _("WELL, THEN");
const u8 gEasyChatWord_GoAhead[] = _("GO AHEAD");
const u8 gEasyChatWord_Appreciate[] = _("APPRECIATE");
const u8 gEasyChatWord_HeyQues[] = _("HEY?");
const u8 gEasyChatWord_WhatsUpQues[] = _("WHAT'S UP?");
const u8 gEasyChatWord_HuhQues[] = _("HUH?");
const u8 gEasyChatWord_No[] = _("NO");
const u8 gEasyChatWord_Hi[] = _("HI");
const u8 gEasyChatWord_YeahYeah[] = _("YEAH, YEAH");
const u8 gEasyChatWord_ByeBye[] = _("BYE-BYE");
const u8 gEasyChatWord_MeetYou[] = _("MEET YOU");
const u8 gEasyChatWord_Hey[] = _("HEY");
const u8 gEasyChatWord_Smell[] = _("SMELL");
const u8 gEasyChatWord_Listening[] = _("LISTENING");
const u8 gEasyChatWord_HooHah[] = _("HOO-HAH");
const u8 gEasyChatWord_Yahoo[] = _("YAHOO");
const u8 gEasyChatWord_Yo[] = _("YO");
const u8 gEasyChatWord_ComeOver[] = _("COME OVER");
const u8 gEasyChatWord_CountOn[] = _("COUNT ON");

const struct EasyChatWordInfo gEasyChatGroup_Greetings[] = {
    {
        .text = gEasyChatWord_Thanks,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Yes,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HereGoes,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HereICome,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HereItIs,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Yeah,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Welcome,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Oi,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HowDo,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Congrats,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_GiveMe,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sorry,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Apologize,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Forgive,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HeyThere,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hello,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_GoodBye,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ThankYou,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_IveArrived,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pardon,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Excuse,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SeeYa,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ExcuseMe,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WellThen,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_GoAhead,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Appreciate,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HeyQues,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WhatsUpQues,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HuhQues,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_No,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hi,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_YeahYeah,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ByeBye,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_MeetYou,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hey,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Smell,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Listening,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HooHah,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Yahoo,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Yo,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ComeOver,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_CountOn,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
};
# 8 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_people.h" 1
const u8 gEasyChatWord_Opponent[] = _("OPPONENT");
const u8 gEasyChatWord_I[] = _("I");
const u8 gEasyChatWord_You[] = _("YOU");
const u8 gEasyChatWord_Yours[] = _("YOURS");
const u8 gEasyChatWord_Son[] = _("SON");
const u8 gEasyChatWord_Your[] = _("YOUR");
const u8 gEasyChatWord_Youre[] = _("YOU'RE");
const u8 gEasyChatWord_Youve[] = _("YOU'VE");
const u8 gEasyChatWord_Mother[] = _("MOTHER");
const u8 gEasyChatWord_Grandfather[] = _("GRANDFATHER");
const u8 gEasyChatWord_Uncle[] = _("UNCLE");
const u8 gEasyChatWord_Father[] = _("FATHER");
const u8 gEasyChatWord_Boy[] = _("BOY");
const u8 gEasyChatWord_Adult[] = _("ADULT");
const u8 gEasyChatWord_Brother[] = _("BROTHER");
const u8 gEasyChatWord_Sister[] = _("SISTER");
const u8 gEasyChatWord_Grandmother[] = _("GRANDMOTHER");
const u8 gEasyChatWord_Aunt[] = _("AUNT");
const u8 gEasyChatWord_Parent[] = _("PARENT");
const u8 gEasyChatWord_Man[] = _("MAN");
const u8 gEasyChatWord_Me[] = _("ME");
const u8 gEasyChatWord_Girl[] = _("GIRL");
const u8 gEasyChatWord_Babe[] = _("BABE");
const u8 gEasyChatWord_Family[] = _("FAMILY");
const u8 gEasyChatWord_Her[] = _("HER");
const u8 gEasyChatWord_Him[] = _("HIM");
const u8 gEasyChatWord_He[] = _("HE");
const u8 gEasyChatWord_Place[] = _("PLACE");
const u8 gEasyChatWord_Daughter[] = _("DAUGHTER");
const u8 gEasyChatWord_His[] = _("HIS");
const u8 gEasyChatWord_Hes[] = _("HE'S");
const u8 gEasyChatWord_Arent[] = _("AREN'T");
const u8 gEasyChatWord_Siblings[] = _("SIBLINGS");
const u8 gEasyChatWord_Kid[] = _("KID");
const u8 gEasyChatWord_Children[] = _("CHILDREN");
const u8 gEasyChatWord_Mr[] = _("MR.");
const u8 gEasyChatWord_Mrs[] = _("MRS.");
const u8 gEasyChatWord_Myself[] = _("MYSELF");
const u8 gEasyChatWord_IWas[] = _("I WAS");
const u8 gEasyChatWord_ToMe[] = _("TO ME");
const u8 gEasyChatWord_My[] = _("MY");
const u8 gEasyChatWord_IAm[] = _("I AM");
const u8 gEasyChatWord_Ive[] = _("I'VE");
const u8 gEasyChatWord_Who[] = _("WHO");
const u8 gEasyChatWord_Someone[] = _("SOMEONE");
const u8 gEasyChatWord_WhoWas[] = _("WHO WAS");
const u8 gEasyChatWord_ToWhom[] = _("TO WHOM");
const u8 gEasyChatWord_Whose[] = _("WHOSE");
const u8 gEasyChatWord_WhoIs[] = _("WHO IS");
const u8 gEasyChatWord_Its[] = _("IT'S");
const u8 gEasyChatWord_Lady[] = _("LADY");
const u8 gEasyChatWord_Friend[] = _("FRIEND");
const u8 gEasyChatWord_Ally[] = _("ALLY");
const u8 gEasyChatWord_Person[] = _("PERSON");
const u8 gEasyChatWord_Dude[] = _("DUDE");
const u8 gEasyChatWord_They[] = _("THEY");
const u8 gEasyChatWord_TheyWere[] = _("THEY WERE");
const u8 gEasyChatWord_ToThem[] = _("TO THEM");
const u8 gEasyChatWord_Their[] = _("THEIR");
const u8 gEasyChatWord_Theyre[] = _("THEY'RE");
const u8 gEasyChatWord_Theyve[] = _("THEY'VE");
const u8 gEasyChatWord_We[] = _("WE");
const u8 gEasyChatWord_Been[] = _("BEEN");
const u8 gEasyChatWord_ToUs[] = _("TO US");
const u8 gEasyChatWord_Our[] = _("OUR");
const u8 gEasyChatWord_WeAre[] = _("WE'RE");
const u8 gEasyChatWord_Rival[] = _("RIVAL");
const u8 gEasyChatWord_Weve[] = _("WE'VE");
const u8 gEasyChatWord_Woman[] = _("WOMAN");
const u8 gEasyChatWord_She[] = _("SHE");
const u8 gEasyChatWord_SheWas[] = _("SHE WAS");
const u8 gEasyChatWord_ToHer[] = _("TO HER");
const u8 gEasyChatWord_Hers[] = _("HERS");
const u8 gEasyChatWord_SheIs[] = _("SHE IS");
const u8 gEasyChatWord_Some[] = _("SOME");

const struct EasyChatWordInfo gEasyChatGroup_People[] = {
    {
        .text = gEasyChatWord_Opponent,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_I,
        .alphabeticalOrder = 52,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_You,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Yours,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Son,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Your,
        .alphabeticalOrder = 62,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Youre,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Youve,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mother,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Grandfather,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Uncle,
        .alphabeticalOrder = 54,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Father,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Boy,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Adult,
        .alphabeticalOrder = 51,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Brother,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sister,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Grandmother,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Aunt,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Parent,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Man,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Me,
        .alphabeticalOrder = 72,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Girl,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Babe,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Family,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Her,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Him,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_He,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Place,
        .alphabeticalOrder = 49,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Daughter,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_His,
        .alphabeticalOrder = 50,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hes,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Arent,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Siblings,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Kid,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Children,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mr,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mrs,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Myself,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_IWas,
        .alphabeticalOrder = 64,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ToMe,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_My,
        .alphabeticalOrder = 53,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_IAm,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ive,
        .alphabeticalOrder = 66,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Who,
        .alphabeticalOrder = 69,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Someone,
        .alphabeticalOrder = 73,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WhoWas,
        .alphabeticalOrder = 70,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ToWhom,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Whose,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WhoIs,
        .alphabeticalOrder = 74,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Its,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lady,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Friend,
        .alphabeticalOrder = 58,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ally,
        .alphabeticalOrder = 55,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Person,
        .alphabeticalOrder = 56,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Dude,
        .alphabeticalOrder = 59,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_They,
        .alphabeticalOrder = 60,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_TheyWere,
        .alphabeticalOrder = 71,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ToThem,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Their,
        .alphabeticalOrder = 57,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Theyre,
        .alphabeticalOrder = 63,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Theyve,
        .alphabeticalOrder = 46,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_We,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Been,
        .alphabeticalOrder = 61,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ToUs,
        .alphabeticalOrder = 65,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Our,
        .alphabeticalOrder = 67,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WeAre,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Rival,
        .alphabeticalOrder = 48,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Weve,
        .alphabeticalOrder = 45,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Woman,
        .alphabeticalOrder = 47,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_She,
        .alphabeticalOrder = 68,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SheWas,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ToHer,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hers,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SheIs,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Some,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
};
# 9 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_voices.h" 1
const u8 gEasyChatWord_Excl[] = _("!");
const u8 gEasyChatWord_ExclExcl[] = _("!!");
const u8 gEasyChatWord_QuesExcl[] = _("?!");
const u8 gEasyChatWord_Ques[] = _("?");
const u8 gEasyChatWord_Ellipsis[] = _("…");
const u8 gEasyChatWord_EllipsisExcl[] = _("…!");
const u8 gEasyChatWord_EllipsisEllipsisEllipsis[] = _("………");
const u8 gEasyChatWord_Dash[] = _("-");
const u8 gEasyChatWord_DashDashDash[] = _("- - -");
const u8 gEasyChatWord_UhOh[] = _("UH-OH");
const u8 gEasyChatWord_Waaah[] = _("WAAAH");
const u8 gEasyChatWord_Ahaha[] = _("AHAHA");
const u8 gEasyChatWord_OhQues[] = _("OH?");
const u8 gEasyChatWord_Nope[] = _("NOPE");
const u8 gEasyChatWord_Urgh[] = _("URGH");
const u8 gEasyChatWord_Hmm[] = _("HMM");
const u8 gEasyChatWord_Whoah[] = _("WHOAH");
const u8 gEasyChatWord_WroooaarExcl[] = _("WROOOAAR!");
const u8 gEasyChatWord_Wow[] = _("WOW");
const u8 gEasyChatWord_Giggle[] = _("GIGGLE");
const u8 gEasyChatWord_Sigh[] = _("SIGH");
const u8 gEasyChatWord_Unbelievable[] = _("UNBELIEVABLE");
const u8 gEasyChatWord_Cries[] = _("CRIES");
const u8 gEasyChatWord_Agree[] = _("AGREE");
const u8 gEasyChatWord_EhQues[] = _("EH?");
const u8 gEasyChatWord_Cry[] = _("CRY");
const u8 gEasyChatWord_Ehehe[] = _("EHEHE");
const u8 gEasyChatWord_OiOiOi[] = _("OI, OI, OI");
const u8 gEasyChatWord_OhYeah[] = _("OH, YEAH");
const u8 gEasyChatWord_Oh[] = _("OH");
const u8 gEasyChatWord_Oops[] = _("OOPS");
const u8 gEasyChatWord_Shocked[] = _("SHOCKED");
const u8 gEasyChatWord_Eek[] = _("EEK");
const u8 gEasyChatWord_Graaah[] = _("GRAAAH");
const u8 gEasyChatWord_Gwahahaha[] = _("GWAHAHAHA");
const u8 gEasyChatWord_Way[] = _("WAY");
const u8 gEasyChatWord_Tch[] = _("TCH");
const u8 gEasyChatWord_Hehe[] = _("HEHE");
const u8 gEasyChatWord_Hah[] = _("HAH");
const u8 gEasyChatWord_Yup[] = _("YUP");
const u8 gEasyChatWord_Hahaha[] = _("HAHAHA");
const u8 gEasyChatWord_Aiyeeh[] = _("AIYEEH");
const u8 gEasyChatWord_Hiyah[] = _("HIYAH");
const u8 gEasyChatWord_Fufufu[] = _("FUFUFU");
const u8 gEasyChatWord_Lol[] = _("LOL");
const u8 gEasyChatWord_Snort[] = _("SNORT");
const u8 gEasyChatWord_Humph[] = _("HUMPH");
const u8 gEasyChatWord_Hehehe[] = _("HEHEHE");
const u8 gEasyChatWord_Heh[] = _("HEH");
const u8 gEasyChatWord_Hohoho[] = _("HOHOHO");
const u8 gEasyChatWord_UhHuh[] = _("UH-HUH");
const u8 gEasyChatWord_OhDear[] = _("OH, DEAR");
const u8 gEasyChatWord_Arrgh[] = _("ARRGH");
const u8 gEasyChatWord_Mufufu[] = _("MUFUFU");
const u8 gEasyChatWord_Mmm[] = _("MMM");
const u8 gEasyChatWord_OhKay[] = _("OH-KAY");
const u8 gEasyChatWord_Okay[] = _("OKAY");
const u8 gEasyChatWord_Lalala[] = _("LALALA");
const u8 gEasyChatWord_Yay[] = _("YAY");
const u8 gEasyChatWord_Aww[] = _("AWW");
const u8 gEasyChatWord_Wowee[] = _("WOWEE");
const u8 gEasyChatWord_Gwah[] = _("GWAH");
const u8 gEasyChatWord_Wahahaha[] = _("WAHAHAHA");

const struct EasyChatWordInfo gEasyChatGroup_Voices[] = {
    {
        .text = gEasyChatWord_Excl,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ExclExcl,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_QuesExcl,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ques,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ellipsis,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_EllipsisExcl,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_EllipsisEllipsisEllipsis,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Dash,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_DashDashDash,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_UhOh,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Waaah,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ahaha,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_OhQues,
        .alphabeticalOrder = 52,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Nope,
        .alphabeticalOrder = 59,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Urgh,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hmm,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Whoah,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WroooaarExcl,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wow,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Giggle,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sigh,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Unbelievable,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cries,
        .alphabeticalOrder = 61,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Agree,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_EhQues,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cry,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ehehe,
        .alphabeticalOrder = 48,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_OiOiOi,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_OhYeah,
        .alphabeticalOrder = 47,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Oh,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Oops,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Shocked,
        .alphabeticalOrder = 49,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Eek,
        .alphabeticalOrder = 46,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Graaah,
        .alphabeticalOrder = 57,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Gwahahaha,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Way,
        .alphabeticalOrder = 54,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Tch,
        .alphabeticalOrder = 53,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hehe,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hah,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Yup,
        .alphabeticalOrder = 51,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hahaha,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Aiyeeh,
        .alphabeticalOrder = 55,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hiyah,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fufufu,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lol,
        .alphabeticalOrder = 56,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Snort,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Humph,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hehehe,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Heh,
        .alphabeticalOrder = 45,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hohoho,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_UhHuh,
        .alphabeticalOrder = 50,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_OhDear,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Arrgh,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mufufu,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mmm,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_OhKay,
        .alphabeticalOrder = 62,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Okay,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lalala,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Yay,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Aww,
        .alphabeticalOrder = 60,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wowee,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Gwah,
        .alphabeticalOrder = 58,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wahahaha,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
};
# 10 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_speech.h" 1
const u8 gEasyChatWord_Listen[] = _("LISTEN");
const u8 gEasyChatWord_NotVery[] = _("NOT VERY");
const u8 gEasyChatWord_Mean[] = _("MEAN");
const u8 gEasyChatWord_Lie[] = _("LIE");
const u8 gEasyChatWord_Lay[] = _("LAY");
const u8 gEasyChatWord_Recommend[] = _("RECOMMEND");
const u8 gEasyChatWord_Nitwit[] = _("NITWIT");
const u8 gEasyChatWord_Quite[] = _("QUITE");
const u8 gEasyChatWord_From[] = _("FROM");
const u8 gEasyChatWord_Feeling[] = _("FEELING");
const u8 gEasyChatWord_But[] = _("BUT");
const u8 gEasyChatWord_However[] = _("HOWEVER");
const u8 gEasyChatWord_Case[] = _("CASE");
const u8 gEasyChatWord_The[] = _("THE");
const u8 gEasyChatWord_Miss[] = _("MISS");
const u8 gEasyChatWord_How[] = _("HOW");
const u8 gEasyChatWord_Hit[] = _("HIT");
const u8 gEasyChatWord_Enough[] = _("ENOUGH");
const u8 gEasyChatWord_ALot[] = _("A LOT");
const u8 gEasyChatWord_ALittle[] = _("A LITTLE");
const u8 gEasyChatWord_Absolutely[] = _("ABSOLUTELY");
const u8 gEasyChatWord_And[] = _("AND");
const u8 gEasyChatWord_Only[] = _("ONLY");
const u8 gEasyChatWord_Around[] = _("AROUND");
const u8 gEasyChatWord_Probably[] = _("PROBABLY");
const u8 gEasyChatWord_If[] = _("IF");
const u8 gEasyChatWord_Very[] = _("VERY");
const u8 gEasyChatWord_ATinyBit[] = _("A TINY BIT");
const u8 gEasyChatWord_Wild[] = _("WILD");
const u8 gEasyChatWord_Thats[] = _("THAT'S");
const u8 gEasyChatWord_Just[] = _("JUST");
const u8 gEasyChatWord_EvenSo[] = _("EVEN SO,");
const u8 gEasyChatWord_MustBe[] = _("MUST BE");
const u8 gEasyChatWord_Naturally[] = _("NATURALLY");
const u8 gEasyChatWord_ForNow[] = _("FOR NOW,");
const u8 gEasyChatWord_Understood[] = _("UNDERSTOOD");
const u8 gEasyChatWord_Joking[] = _("JOKING");
const u8 gEasyChatWord_Ready[] = _("READY");
const u8 gEasyChatWord_Something[] = _("SOMETHING");
const u8 gEasyChatWord_Somehow[] = _("SOMEHOW");
const u8 gEasyChatWord_Although[] = _("ALTHOUGH");
const u8 gEasyChatWord_Also[] = _("ALSO");
const u8 gEasyChatWord_Perfect[] = _("PERFECT");
const u8 gEasyChatWord_AsMuchAs[] = _("AS MUCH AS");
const u8 gEasyChatWord_Really[] = _("REALLY");
const u8 gEasyChatWord_Truly[] = _("TRULY");
const u8 gEasyChatWord_Seriously[] = _("SERIOUSLY");
const u8 gEasyChatWord_Totally[] = _("TOTALLY");
const u8 gEasyChatWord_Until[] = _("UNTIL");
const u8 gEasyChatWord_AsIf[] = _("AS IF");
const u8 gEasyChatWord_Mood[] = _("MOOD");
const u8 gEasyChatWord_Rather[] = _("RATHER");
const u8 gEasyChatWord_Awfully[] = _("AWFULLY");
const u8 gEasyChatWord_Mode[] = _("MODE");
const u8 gEasyChatWord_More[] = _("MORE");
const u8 gEasyChatWord_TooLate[] = _("TOO LATE");
const u8 gEasyChatWord_Finally[] = _("FINALLY");
const u8 gEasyChatWord_Any[] = _("ANY");
const u8 gEasyChatWord_Instead[] = _("INSTEAD");
const u8 gEasyChatWord_Fantastic[] = _("FANTASTIC");

const struct EasyChatWordInfo gEasyChatGroup_Speech[] = {
    {
        .text = gEasyChatWord_Listen,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_NotVery,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mean,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lie,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lay,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Recommend,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Nitwit,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Quite,
        .alphabeticalOrder = 57,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_From,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Feeling,
        .alphabeticalOrder = 49,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_But,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_However,
        .alphabeticalOrder = 52,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Case,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_The,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Miss,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_How,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hit,
        .alphabeticalOrder = 59,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Enough,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ALot,
        .alphabeticalOrder = 56,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ALittle,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Absolutely,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_And,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Only,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Around,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Probably,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_If,
        .alphabeticalOrder = 58,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Very,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ATinyBit,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wild,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Thats,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Just,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_EvenSo,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_MustBe,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Naturally,
        .alphabeticalOrder = 53,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ForNow,
        .alphabeticalOrder = 50,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Understood,
        .alphabeticalOrder = 54,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Joking,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ready,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Something,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Somehow,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Although,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Also,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Perfect,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_AsMuchAs,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Really,
        .alphabeticalOrder = 51,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Truly,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Seriously,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Totally,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Until,
        .alphabeticalOrder = 46,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_AsIf,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mood,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Rather,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Awfully,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mode,
        .alphabeticalOrder = 55,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_More,
        .alphabeticalOrder = 47,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_TooLate,
        .alphabeticalOrder = 45,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Finally,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Any,
        .alphabeticalOrder = 48,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Instead,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fantastic,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
};
# 11 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_endings.h" 1
const u8 gEasyChatWord_Will[] = _("WILL");
const u8 gEasyChatWord_WillBeHere[] = _("WILL BE HERE");
const u8 gEasyChatWord_Or[] = _("OR");
const u8 gEasyChatWord_Times[] = _("TIMES");
const u8 gEasyChatWord_Wonder[] = _("WONDER");
const u8 gEasyChatWord_IsItQues[] = _("IS IT?");
const u8 gEasyChatWord_Be[] = _("BE");
const u8 gEasyChatWord_Gimme[] = _("GIMME");
const u8 gEasyChatWord_Could[] = _("COULD");
const u8 gEasyChatWord_LikelyTo[] = _("LIKELY TO");
const u8 gEasyChatWord_Would[] = _("WOULD");
const u8 gEasyChatWord_Is[] = _("IS");
const u8 gEasyChatWord_IsntItQues[] = _("ISN'T IT?");
const u8 gEasyChatWord_Lets[] = _("LET'S");
const u8 gEasyChatWord_Other[] = _("OTHER");
const u8 gEasyChatWord_Are[] = _("ARE");
const u8 gEasyChatWord_Was[] = _("WAS");
const u8 gEasyChatWord_Were[] = _("WERE");
const u8 gEasyChatWord_Those[] = _("THOSE");
const u8 gEasyChatWord_Isnt[] = _("ISN'T");
const u8 gEasyChatWord_Wont[] = _("WON'T");
const u8 gEasyChatWord_Cant[] = _("CAN'T");
const u8 gEasyChatWord_Can[] = _("CAN");
const u8 gEasyChatWord_Dont[] = _("DON'T");
const u8 gEasyChatWord_Do[] = _("DO");
const u8 gEasyChatWord_Does[] = _("DOES");
const u8 gEasyChatWord_Whom[] = _("WHOM");
const u8 gEasyChatWord_Which[] = _("WHICH");
const u8 gEasyChatWord_Wasnt[] = _("WASN'T");
const u8 gEasyChatWord_Werent[] = _("WEREN'T");
const u8 gEasyChatWord_Have[] = _("HAVE");
const u8 gEasyChatWord_Havent[] = _("HAVEN'T");
const u8 gEasyChatWord_A[] = _("A");
const u8 gEasyChatWord_An[] = _("AN");
const u8 gEasyChatWord_Not[] = _("NOT");
const u8 gEasyChatWord_There[] = _("THERE");
const u8 gEasyChatWord_OkQues[] = _("OK?");
const u8 gEasyChatWord_So[] = _("SO");
const u8 gEasyChatWord_Maybe[] = _("MAYBE");
const u8 gEasyChatWord_About[] = _("ABOUT");
const u8 gEasyChatWord_Over[] = _("OVER");
const u8 gEasyChatWord_It[] = _("IT");
const u8 gEasyChatWord_All[] = _("ALL");
const u8 gEasyChatWord_For[] = _("FOR");
const u8 gEasyChatWord_On[] = _("ON");
const u8 gEasyChatWord_Off[] = _("OFF");
const u8 gEasyChatWord_As[] = _("AS");
const u8 gEasyChatWord_To[] = _("TO");
const u8 gEasyChatWord_With[] = _("WITH");
const u8 gEasyChatWord_Better[] = _("BETTER");
const u8 gEasyChatWord_Ever[] = _("EVER");
const u8 gEasyChatWord_Since[] = _("SINCE");
const u8 gEasyChatWord_Of[] = _("OF");
const u8 gEasyChatWord_BelongsTo[] = _("BELONGS TO");
const u8 gEasyChatWord_At[] = _("AT");
const u8 gEasyChatWord_In[] = _("IN");
const u8 gEasyChatWord_Out[] = _("OUT");
const u8 gEasyChatWord_Too[] = _("TOO");
const u8 gEasyChatWord_Like[] = _("LIKE");
const u8 gEasyChatWord_Did[] = _("DID");
const u8 gEasyChatWord_Didnt[] = _("DIDN'T");
const u8 gEasyChatWord_Doesnt[] = _("DOESN'T");
const u8 gEasyChatWord_Without[] = _("WITHOUT");
const u8 gEasyChatWord_After[] = _("AFTER");
const u8 gEasyChatWord_Before[] = _("BEFORE");
const u8 gEasyChatWord_While[] = _("WHILE");
const u8 gEasyChatWord_Than[] = _("THAN");
const u8 gEasyChatWord_Once[] = _("ONCE");
const u8 gEasyChatWord_Anywhere[] = _("ANYWHERE");

const struct EasyChatWordInfo gEasyChatGroup_Endings[] = {
    {
        .text = gEasyChatWord_Will,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WillBeHere,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Or,
        .alphabeticalOrder = 63,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Times,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wonder,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_IsItQues,
        .alphabeticalOrder = 68,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Be,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Gimme,
        .alphabeticalOrder = 46,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Could,
        .alphabeticalOrder = 54,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_LikelyTo,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Would,
        .alphabeticalOrder = 64,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Is,
        .alphabeticalOrder = 53,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_IsntItQues,
        .alphabeticalOrder = 49,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lets,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Other,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Are,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Was,
        .alphabeticalOrder = 59,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Were,
        .alphabeticalOrder = 60,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Those,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Isnt,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wont,
        .alphabeticalOrder = 61,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cant,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Can,
        .alphabeticalOrder = 50,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Dont,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Do,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Does,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Whom,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Which,
        .alphabeticalOrder = 55,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wasnt,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Werent,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Have,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Havent,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_A,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_An,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Not,
        .alphabeticalOrder = 58,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_There,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_OkQues,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_So,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Maybe,
        .alphabeticalOrder = 52,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_About,
        .alphabeticalOrder = 45,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Over,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_It,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_All,
        .alphabeticalOrder = 67,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_For,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_On,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Off,
        .alphabeticalOrder = 56,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_As,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_To,
        .alphabeticalOrder = 51,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_With,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Better,
        .alphabeticalOrder = 66,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ever,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Since,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Of,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_BelongsTo,
        .alphabeticalOrder = 47,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_At,
        .alphabeticalOrder = 57,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_In,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Out,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Too,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Like,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Did,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Didnt,
        .alphabeticalOrder = 65,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Doesnt,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Without,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_After,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Before,
        .alphabeticalOrder = 48,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_While,
        .alphabeticalOrder = 62,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Than,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Once,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Anywhere,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
};
# 12 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_feelings.h" 1
const u8 gEasyChatWord_Meet[] = _("MEET");
const u8 gEasyChatWord_Play[] = _("PLAY");
const u8 gEasyChatWord_Hurried[] = _("HURRIED");
const u8 gEasyChatWord_Goes[] = _("GOES");
const u8 gEasyChatWord_Giddy[] = _("GIDDY");
const u8 gEasyChatWord_Happy[] = _("HAPPY");
const u8 gEasyChatWord_Happiness[] = _("HAPPINESS");
const u8 gEasyChatWord_Excite[] = _("EXCITE");
const u8 gEasyChatWord_Important[] = _("IMPORTANT");
const u8 gEasyChatWord_Funny[] = _("FUNNY");
const u8 gEasyChatWord_Got[] = _("GOT");
const u8 gEasyChatWord_GoHome[] = _("GO HOME");
const u8 gEasyChatWord_Disappointed[] = _("DISAPPOINTED");
const u8 gEasyChatWord_Disappoints[] = _("DISAPPOINTS");
const u8 gEasyChatWord_Sad[] = _("SAD");
const u8 gEasyChatWord_Try[] = _("TRY");
const u8 gEasyChatWord_Tries[] = _("TRIES");
const u8 gEasyChatWord_Hears[] = _("HEARS");
const u8 gEasyChatWord_Think[] = _("THINK");
const u8 gEasyChatWord_Hear[] = _("HEAR");
const u8 gEasyChatWord_Wants[] = _("WANTS");
const u8 gEasyChatWord_Misheard[] = _("MISHEARD");
const u8 gEasyChatWord_Dislike[] = _("DISLIKE");
const u8 gEasyChatWord_Angry[] = _("ANGRY");
const u8 gEasyChatWord_Anger[] = _("ANGER");
const u8 gEasyChatWord_Scary[] = _("SCARY");
const u8 gEasyChatWord_Lonesome[] = _("LONESOME");
const u8 gEasyChatWord_Disappoint[] = _("DISAPPOINT");
const u8 gEasyChatWord_Joy[] = _("JOY");
const u8 gEasyChatWord_Gets[] = _("GETS");
const u8 gEasyChatWord_Never[] = _("NEVER");
const u8 gEasyChatWord_Darn[] = _("DARN");
const u8 gEasyChatWord_Downcast[] = _("DOWNCAST");
const u8 gEasyChatWord_Incredible[] = _("INCREDIBLE");
const u8 gEasyChatWord_Likes[] = _("LIKES");
const u8 gEasyChatWord_Dislikes[] = _("DISLIKES");
const u8 gEasyChatWord_Boring[] = _("BORING");
const u8 gEasyChatWord_Care[] = _("CARE");
const u8 gEasyChatWord_Cares[] = _("CARES");
const u8 gEasyChatWord_AllRight[] = _("ALL RIGHT");
const u8 gEasyChatWord_Adore[] = _("ADORE");
const u8 gEasyChatWord_Disaster[] = _("DISASTER");
const u8 gEasyChatWord_Enjoy[] = _("ENJOY");
const u8 gEasyChatWord_Enjoys[] = _("ENJOYS");
const u8 gEasyChatWord_Eat[] = _("EAT");
const u8 gEasyChatWord_Lacking[] = _("LACKING");
const u8 gEasyChatWord_Bad[] = _("BAD");
const u8 gEasyChatWord_Hard[] = _("HARD");
const u8 gEasyChatWord_Terrible[] = _("TERRIBLE");
const u8 gEasyChatWord_Should[] = _("SHOULD");
const u8 gEasyChatWord_Nice[] = _("NICE");
const u8 gEasyChatWord_Drink[] = _("DRINK");
const u8 gEasyChatWord_Surprise[] = _("SURPRISE");
const u8 gEasyChatWord_Fear[] = _("FEAR");
const u8 gEasyChatWord_Want[] = _("WANT");
const u8 gEasyChatWord_Wait[] = _("WAIT");
const u8 gEasyChatWord_Satisfied[] = _("SATISFIED");
const u8 gEasyChatWord_See[] = _("SEE");
const u8 gEasyChatWord_Rare[] = _("RARE");
const u8 gEasyChatWord_Negative[] = _("NEGATIVE");
const u8 gEasyChatWord_Done[] = _("DONE");
const u8 gEasyChatWord_Danger[] = _("DANGER");
const u8 gEasyChatWord_Defeated[] = _("DEFEATED");
const u8 gEasyChatWord_Beat[] = _("BEAT");
const u8 gEasyChatWord_Great[] = _("GREAT");
const u8 gEasyChatWord_Romantic[] = _("ROMANTIC");
const u8 gEasyChatWord_Question[] = _("QUESTION");
const u8 gEasyChatWord_Understand[] = _("UNDERSTAND");
const u8 gEasyChatWord_Understands[] = _("UNDERSTANDS");

const struct EasyChatWordInfo gEasyChatGroup_Feelings[] = {
    {
        .text = gEasyChatWord_Meet,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Play,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hurried,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Goes,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Giddy,
        .alphabeticalOrder = 46,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Happy,
        .alphabeticalOrder = 63,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Happiness,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Excite,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Important,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Funny,
        .alphabeticalOrder = 61,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Got,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_GoHome,
        .alphabeticalOrder = 62,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Disappointed,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Disappoints,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sad,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Try,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Tries,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hears,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Think,
        .alphabeticalOrder = 60,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hear,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wants,
        .alphabeticalOrder = 51,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Misheard,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Dislike,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Angry,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Anger,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Scary,
        .alphabeticalOrder = 53,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lonesome,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Disappoint,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Joy,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Gets,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Never,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Darn,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Downcast,
        .alphabeticalOrder = 64,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Incredible,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Likes,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Dislikes,
        .alphabeticalOrder = 47,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Boring,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Care,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cares,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_AllRight,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Adore,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Disaster,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Enjoy,
        .alphabeticalOrder = 45,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Enjoys,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Eat,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lacking,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Bad,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hard,
        .alphabeticalOrder = 59,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Terrible,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Should,
        .alphabeticalOrder = 50,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Nice,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Drink,
        .alphabeticalOrder = 66,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Surprise,
        .alphabeticalOrder = 58,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fear,
        .alphabeticalOrder = 65,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Want,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wait,
        .alphabeticalOrder = 56,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Satisfied,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_See,
        .alphabeticalOrder = 57,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Rare,
        .alphabeticalOrder = 49,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Negative,
        .alphabeticalOrder = 52,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Done,
        .alphabeticalOrder = 48,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Danger,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Defeated,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Beat,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Great,
        .alphabeticalOrder = 67,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Romantic,
        .alphabeticalOrder = 68,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Question,
        .alphabeticalOrder = 55,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Understand,
        .alphabeticalOrder = 54,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Understands,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
};
# 13 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_conditions.h" 1
const u8 gEasyChatWord_Hot[] = _("HOT");
const u8 gEasyChatWord_Exists[] = _("EXISTS");
const u8 gEasyChatWord_Excess[] = _("EXCESS");
const u8 gEasyChatWord_Approved[] = _("APPROVED");
const u8 gEasyChatWord_Has[] = _("HAS");
const u8 gEasyChatWord_Good[] = _("GOOD");
const u8 gEasyChatWord_Less[] = _("LESS");
const u8 gEasyChatWord_Momentum[] = _("MOMENTUM");
const u8 gEasyChatWord_Going[] = _("GOING");
const u8 gEasyChatWord_Weird[] = _("WEIRD");
const u8 gEasyChatWord_Busy[] = _("BUSY");
const u8 gEasyChatWord_Together[] = _("TOGETHER");
const u8 gEasyChatWord_Full[] = _("FULL");
const u8 gEasyChatWord_Absent[] = _("ABSENT");
const u8 gEasyChatWord_Being[] = _("BEING");
const u8 gEasyChatWord_Need[] = _("NEED");
const u8 gEasyChatWord_Tasty[] = _("TASTY");
const u8 gEasyChatWord_Skilled[] = _("SKILLED");
const u8 gEasyChatWord_Noisy[] = _("NOISY");
const u8 gEasyChatWord_Big[] = _("BIG");
const u8 gEasyChatWord_Late[] = _("LATE");
const u8 gEasyChatWord_Close[] = _("CLOSE");
const u8 gEasyChatWord_Docile[] = _("DOCILE");
const u8 gEasyChatWord_Amusing[] = _("AMUSING");
const u8 gEasyChatWord_Entertaining[] = _("ENTERTAINING");
const u8 gEasyChatWord_Perfection[] = _("PERFECTION");
const u8 gEasyChatWord_Pretty[] = _("PRETTY");
const u8 gEasyChatWord_Healthy[] = _("HEALTHY");
const u8 gEasyChatWord_Excellent[] = _("EXCELLENT");
const u8 gEasyChatWord_UpsideDown[] = _("UPSIDE DOWN");
const u8 gEasyChatWord_Cold[] = _("COLD");
const u8 gEasyChatWord_Refreshing[] = _("REFRESHING");
const u8 gEasyChatWord_Unavoidable[] = _("UNAVOIDABLE");
const u8 gEasyChatWord_Much[] = _("MUCH");
const u8 gEasyChatWord_Overwhelming[] = _("OVERWHELMING");
const u8 gEasyChatWord_Fabulous[] = _("FABULOUS");
const u8 gEasyChatWord_Else[] = _("ELSE");
const u8 gEasyChatWord_Expensive[] = _("EXPENSIVE");
const u8 gEasyChatWord_Correct[] = _("CORRECT");
const u8 gEasyChatWord_Impossible[] = _("IMPOSSIBLE");
const u8 gEasyChatWord_Small[] = _("SMALL");
const u8 gEasyChatWord_Different[] = _("DIFFERENT");
const u8 gEasyChatWord_Tired[] = _("TIRED");
const u8 gEasyChatWord_Skill[] = _("SKILL");
const u8 gEasyChatWord_Top[] = _("TOP");
const u8 gEasyChatWord_NonStop[] = _("NON-STOP");
const u8 gEasyChatWord_Preposterous[] = _("PREPOSTEROUS");
const u8 gEasyChatWord_None[] = _("NONE");
const u8 gEasyChatWord_Nothing[] = _("NOTHING");
const u8 gEasyChatWord_Natural[] = _("NATURAL");
const u8 gEasyChatWord_Becomes[] = _("BECOMES");
const u8 gEasyChatWord_Lukewarm[] = _("LUKEWARM");
const u8 gEasyChatWord_Fast[] = _("FAST");
const u8 gEasyChatWord_Low[] = _("LOW");
const u8 gEasyChatWord_Awful[] = _("AWFUL");
const u8 gEasyChatWord_Alone[] = _("ALONE");
const u8 gEasyChatWord_Bored[] = _("BORED");
const u8 gEasyChatWord_Secret[] = _("SECRET");
const u8 gEasyChatWord_Mystery[] = _("MYSTERY");
const u8 gEasyChatWord_Lacks[] = _("LACKS");
const u8 gEasyChatWord_Best[] = _("BEST");
const u8 gEasyChatWord_Lousy[] = _("LOUSY");
const u8 gEasyChatWord_Mistake[] = _("MISTAKE");
const u8 gEasyChatWord_Kind[] = _("KIND");
const u8 gEasyChatWord_Well[] = _("WELL");
const u8 gEasyChatWord_Weakened[] = _("WEAKENED");
const u8 gEasyChatWord_Simple[] = _("SIMPLE");
const u8 gEasyChatWord_Seems[] = _("SEEMS");
const u8 gEasyChatWord_Badly[] = _("BADLY");

const struct EasyChatWordInfo gEasyChatGroup_Conditions[] = {
    {
        .text = gEasyChatWord_Hot,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Exists,
        .alphabeticalOrder = 55,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Excess,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Approved,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Has,
        .alphabeticalOrder = 54,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Good,
        .alphabeticalOrder = 68,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Less,
        .alphabeticalOrder = 50,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Momentum,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Going,
        .alphabeticalOrder = 60,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Weird,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Busy,
        .alphabeticalOrder = 56,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Together,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Full,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Absent,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Being,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Need,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Tasty,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Skilled,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Noisy,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Big,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Late,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Close,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Docile,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Amusing,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Entertaining,
        .alphabeticalOrder = 52,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Perfection,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pretty,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Healthy,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Excellent,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_UpsideDown,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cold,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Refreshing,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Unavoidable,
        .alphabeticalOrder = 63,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Much,
        .alphabeticalOrder = 59,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Overwhelming,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fabulous,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Else,
        .alphabeticalOrder = 61,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Expensive,
        .alphabeticalOrder = 53,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Correct,
        .alphabeticalOrder = 51,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Impossible,
        .alphabeticalOrder = 62,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Small,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Different,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Tired,
        .alphabeticalOrder = 58,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Skill,
        .alphabeticalOrder = 49,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Top,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_NonStop,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Preposterous,
        .alphabeticalOrder = 45,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_None,
        .alphabeticalOrder = 47,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Nothing,
        .alphabeticalOrder = 48,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Natural,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Becomes,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lukewarm,
        .alphabeticalOrder = 46,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fast,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Low,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Awful,
        .alphabeticalOrder = 57,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Alone,
        .alphabeticalOrder = 67,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Bored,
        .alphabeticalOrder = 66,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Secret,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mystery,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lacks,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Best,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lousy,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mistake,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Kind,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Well,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Weakened,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Simple,
        .alphabeticalOrder = 65,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Seems,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Badly,
        .alphabeticalOrder = 64,
        .enabled = 1,
    },
};
# 14 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_actions.h" 1
const u8 gEasyChatWord_Meets[] = _("MEETS");
const u8 gEasyChatWord_Concede[] = _("CONCEDE");
const u8 gEasyChatWord_Give[] = _("GIVE");
const u8 gEasyChatWord_Gives[] = _("GIVES");
const u8 gEasyChatWord_Played[] = _("PLAYED");
const u8 gEasyChatWord_Plays[] = _("PLAYS");
const u8 gEasyChatWord_Collect[] = _("COLLECT");
const u8 gEasyChatWord_Walking[] = _("WALKING");
const u8 gEasyChatWord_Walks[] = _("WALKS");
const u8 gEasyChatWord_Says[] = _("SAYS");
const u8 gEasyChatWord_Went[] = _("WENT");
const u8 gEasyChatWord_Said[] = _("SAID");
const u8 gEasyChatWord_WakeUp[] = _("WAKE UP");
const u8 gEasyChatWord_WakesUp[] = _("WAKES UP");
const u8 gEasyChatWord_Angers[] = _("ANGERS");
const u8 gEasyChatWord_Teach[] = _("TEACH");
const u8 gEasyChatWord_Teaches[] = _("TEACHES");
const u8 gEasyChatWord_Please[] = _("PLEASE");
const u8 gEasyChatWord_Learn[] = _("LEARN");
const u8 gEasyChatWord_Change[] = _("CHANGE");
const u8 gEasyChatWord_Story[] = _("STORY");
const u8 gEasyChatWord_Trust[] = _("TRUST");
const u8 gEasyChatWord_Lavish[] = _("LAVISH");
const u8 gEasyChatWord_Listens[] = _("LISTENS");
const u8 gEasyChatWord_Hearing[] = _("HEARING");
const u8 gEasyChatWord_Trains[] = _("TRAINS");
const u8 gEasyChatWord_Choose[] = _("CHOOSE");
const u8 gEasyChatWord_Come[] = _("COME");
const u8 gEasyChatWord_Came[] = _("CAME");
const u8 gEasyChatWord_Search[] = _("SEARCH");
const u8 gEasyChatWord_Make[] = _("MAKE");
const u8 gEasyChatWord_Cause[] = _("CAUSE");
const u8 gEasyChatWord_Know[] = _("KNOW");
const u8 gEasyChatWord_Knows[] = _("KNOWS");
const u8 gEasyChatWord_Refuse[] = _("REFUSE");
const u8 gEasyChatWord_Stores[] = _("STORES");
const u8 gEasyChatWord_Brag[] = _("BRAG");
const u8 gEasyChatWord_Ignorant[] = _("IGNORANT");
const u8 gEasyChatWord_Thinks[] = _("THINKS");
const u8 gEasyChatWord_Believe[] = _("BELIEVE");
const u8 gEasyChatWord_Slide[] = _("SLIDE");
const u8 gEasyChatWord_Eats[] = _("EATS");
const u8 gEasyChatWord_Use[] = _("USE");
const u8 gEasyChatWord_Uses[] = _("USES");
const u8 gEasyChatWord_Using[] = _("USING");
const u8 gEasyChatWord_Couldnt[] = _("COULDN'T");
const u8 gEasyChatWord_Capable[] = _("CAPABLE");
const u8 gEasyChatWord_Disappear[] = _("DISAPPEAR");
const u8 gEasyChatWord_Appear[] = _("APPEAR");
const u8 gEasyChatWord_Throw[] = _("THROW");
const u8 gEasyChatWord_Worry[] = _("WORRY");
const u8 gEasyChatWord_Slept[] = _("SLEPT");
const u8 gEasyChatWord_Sleep[] = _("SLEEP");
const u8 gEasyChatWord_Release[] = _("RELEASE");
const u8 gEasyChatWord_Drinks[] = _("DRINKS");
const u8 gEasyChatWord_Runs[] = _("RUNS");
const u8 gEasyChatWord_Run[] = _("RUN");
const u8 gEasyChatWord_Works[] = _("WORKS");
const u8 gEasyChatWord_Working[] = _("WORKING");
const u8 gEasyChatWord_Talking[] = _("TALKING");
const u8 gEasyChatWord_Talk[] = _("TALK");
const u8 gEasyChatWord_Sink[] = _("SINK");
const u8 gEasyChatWord_Smack[] = _("SMACK");
const u8 gEasyChatWord_Pretend[] = _("PRETEND");
const u8 gEasyChatWord_Praise[] = _("PRAISE");
const u8 gEasyChatWord_Overdo[] = _("OVERDO");
const u8 gEasyChatWord_Show[] = _("SHOW");
const u8 gEasyChatWord_Looks[] = _("LOOKS");
const u8 gEasyChatWord_Sees[] = _("SEES");
const u8 gEasyChatWord_Seek[] = _("SEEK");
const u8 gEasyChatWord_Own[] = _("OWN");
const u8 gEasyChatWord_Take[] = _("TAKE");
const u8 gEasyChatWord_Allow[] = _("ALLOW");
const u8 gEasyChatWord_Forget[] = _("FORGET");
const u8 gEasyChatWord_Forgets[] = _("FORGETS");
const u8 gEasyChatWord_Appears[] = _("APPEARS");
const u8 gEasyChatWord_Faint[] = _("FAINT");
const u8 gEasyChatWord_Fainted[] = _("FAINTED");

const struct EasyChatWordInfo gEasyChatGroup_Actions[] = {
    {
        .text = gEasyChatWord_Meets,
        .alphabeticalOrder = 72,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Concede,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Give,
        .alphabeticalOrder = 48,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Gives,
        .alphabeticalOrder = 75,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Played,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Plays,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Collect,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Walking,
        .alphabeticalOrder = 46,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Walks,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Says,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Went,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Said,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WakeUp,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_WakesUp,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Angers,
        .alphabeticalOrder = 45,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Teach,
        .alphabeticalOrder = 47,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Teaches,
        .alphabeticalOrder = 54,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Please,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Learn,
        .alphabeticalOrder = 76,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Change,
        .alphabeticalOrder = 77,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Story,
        .alphabeticalOrder = 73,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Trust,
        .alphabeticalOrder = 74,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lavish,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Listens,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hearing,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Trains,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Choose,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Come,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Came,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Search,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Make,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cause,
        .alphabeticalOrder = 67,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Know,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Knows,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Refuse,
        .alphabeticalOrder = 65,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Stores,
        .alphabeticalOrder = 70,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Brag,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ignorant,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Thinks,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Believe,
        .alphabeticalOrder = 64,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Slide,
        .alphabeticalOrder = 63,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Eats,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Use,
        .alphabeticalOrder = 53,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Uses,
        .alphabeticalOrder = 56,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Using,
        .alphabeticalOrder = 55,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Couldnt,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Capable,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Disappear,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Appear,
        .alphabeticalOrder = 69,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Throw,
        .alphabeticalOrder = 68,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Worry,
        .alphabeticalOrder = 66,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Slept,
        .alphabeticalOrder = 61,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sleep,
        .alphabeticalOrder = 52,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Release,
        .alphabeticalOrder = 51,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Drinks,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Runs,
        .alphabeticalOrder = 62,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Run,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Works,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Working,
        .alphabeticalOrder = 71,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Talking,
        .alphabeticalOrder = 60,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Talk,
        .alphabeticalOrder = 59,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sink,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Smack,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pretend,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Praise,
        .alphabeticalOrder = 49,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Overdo,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Show,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Looks,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sees,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Seek,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Own,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Take,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Allow,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Forget,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Forgets,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Appears,
        .alphabeticalOrder = 58,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Faint,
        .alphabeticalOrder = 57,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fainted,
        .alphabeticalOrder = 50,
        .enabled = 1,
    },
};
# 15 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_lifestyle.h" 1
const u8 gEasyChatWord_Chores[] = _("CHORES");
const u8 gEasyChatWord_Home[] = _("HOME");
const u8 gEasyChatWord_Money[] = _("MONEY");
const u8 gEasyChatWord_Allowance[] = _("ALLOWANCE");
const u8 gEasyChatWord_Bath[] = _("BATH");
const u8 gEasyChatWord_Conversation[] = _("CONVERSATION");
const u8 gEasyChatWord_School[] = _("SCHOOL");
const u8 gEasyChatWord_Commemorate[] = _("COMMEMORATE");
const u8 gEasyChatWord_Habit[] = _("HABIT");
const u8 gEasyChatWord_Group[] = _("GROUP");
const u8 gEasyChatWord_Word[] = _("WORD");
const u8 gEasyChatWord_Store[] = _("STORE");
const u8 gEasyChatWord_Service[] = _("SERVICE");
const u8 gEasyChatWord_Work[] = _("WORK");
const u8 gEasyChatWord_System[] = _("SYSTEM");
const u8 gEasyChatWord_Train[] = _("TRAIN");
const u8 gEasyChatWord_Class[] = _("CLASS");
const u8 gEasyChatWord_Lessons[] = _("LESSONS");
const u8 gEasyChatWord_Information[] = _("INFORMATION");
const u8 gEasyChatWord_Living[] = _("LIVING");
const u8 gEasyChatWord_Teacher[] = _("TEACHER");
const u8 gEasyChatWord_Tournament[] = _("TOURNAMENT");
const u8 gEasyChatWord_Letter[] = _("LETTER");
const u8 gEasyChatWord_Event[] = _("EVENT");
const u8 gEasyChatWord_Digital[] = _("DIGITAL");
const u8 gEasyChatWord_Test[] = _("TEST");
const u8 gEasyChatWord_DeptStore[] = _("DEPT. STORE");
const u8 gEasyChatWord_Television[] = _("TELEVISION");
const u8 gEasyChatWord_Phone[] = _("PHONE");
const u8 gEasyChatWord_Item[] = _("ITEM");
const u8 gEasyChatWord_Name[] = _("NAME");
const u8 gEasyChatWord_News[] = _("NEWS");
const u8 gEasyChatWord_Popular[] = _("POPULAR");
const u8 gEasyChatWord_Party[] = _("PARTY");
const u8 gEasyChatWord_Study[] = _("STUDY");
const u8 gEasyChatWord_Machine[] = _("MACHINE");
const u8 gEasyChatWord_Mail[] = _("MAIL");
const u8 gEasyChatWord_Message[] = _("MESSAGE");
const u8 gEasyChatWord_Promise[] = _("PROMISE");
const u8 gEasyChatWord_Dream[] = _("DREAM");
const u8 gEasyChatWord_Kindergarten[] = _("KINDERGARTEN");
const u8 gEasyChatWord_Life[] = _("LIFE");
const u8 gEasyChatWord_Radio[] = _("RADIO");
const u8 gEasyChatWord_Rental[] = _("RENTAL");
const u8 gEasyChatWord_World[] = _("WORLD");

const struct EasyChatWordInfo gEasyChatGroup_Lifestyle[] = {
    {
        .text = gEasyChatWord_Chores,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Home,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Money,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Allowance,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Bath,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Conversation,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_School,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Commemorate,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Habit,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Group,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Word,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Store,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Service,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Work,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_System,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Train,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Class,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lessons,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Information,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Living,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Teacher,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Tournament,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Letter,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Event,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Digital,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Test,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_DeptStore,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Television,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Phone,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Item,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Name,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_News,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Popular,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Party,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Study,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Machine,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mail,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Message,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Promise,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Dream,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Kindergarten,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Life,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Radio,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Rental,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_World,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
};
# 16 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_hobbies.h" 1
const u8 gEasyChatWord_Idol[] = _("IDOL");
const u8 gEasyChatWord_Anime[] = _("ANIME");
const u8 gEasyChatWord_Song[] = _("SONG");
const u8 gEasyChatWord_Movie[] = _("MOVIE");
const u8 gEasyChatWord_Sweets[] = _("SWEETS");
const u8 gEasyChatWord_Chat[] = _("CHAT");
const u8 gEasyChatWord_ChildsPlay[] = _("CHILD'S PLAY");
const u8 gEasyChatWord_Toys[] = _("TOYS");
const u8 gEasyChatWord_Music[] = _("MUSIC");
const u8 gEasyChatWord_Cards[] = _("CARDS");
const u8 gEasyChatWord_Shopping[] = _("SHOPPING");
const u8 gEasyChatWord_Camera[] = _("CAMERA");
const u8 gEasyChatWord_Viewing[] = _("VIEWING");
const u8 gEasyChatWord_Spectator[] = _("SPECTATOR");
const u8 gEasyChatWord_Gourmet[] = _("GOURMET");
const u8 gEasyChatWord_Game[] = _("GAME");
const u8 gEasyChatWord_Rpg[] = _("RPG");
const u8 gEasyChatWord_Collection[] = _("COLLECTION");
const u8 gEasyChatWord_Complete[] = _("COMPLETE");
const u8 gEasyChatWord_Magazine[] = _("MAGAZINE");
const u8 gEasyChatWord_Walk[] = _("WALK");
const u8 gEasyChatWord_Bike[] = _("BIKE");
const u8 gEasyChatWord_Hobby[] = _("HOBBY");
const u8 gEasyChatWord_Sports[] = _("SPORTS");
const u8 gEasyChatWord_Software[] = _("SOFTWARE");
const u8 gEasyChatWord_Songs[] = _("SONGS");
const u8 gEasyChatWord_Diet[] = _("DIET");
const u8 gEasyChatWord_Treasure[] = _("TREASURE");
const u8 gEasyChatWord_Travel[] = _("TRAVEL");
const u8 gEasyChatWord_Dance[] = _("DANCE");
const u8 gEasyChatWord_Channel[] = _("CHANNEL");
const u8 gEasyChatWord_Making[] = _("MAKING");
const u8 gEasyChatWord_Fishing[] = _("FISHING");
const u8 gEasyChatWord_Date[] = _("DATE");
const u8 gEasyChatWord_Design[] = _("DESIGN");
const u8 gEasyChatWord_Locomotive[] = _("LOCOMOTIVE");
const u8 gEasyChatWord_PlushDoll[] = _("PLUSH DOLL");
const u8 gEasyChatWord_Pc[] = _("PC");
const u8 gEasyChatWord_Flowers[] = _("FLOWERS");
const u8 gEasyChatWord_Hero[] = _("HERO");
const u8 gEasyChatWord_Nap[] = _("NAP");
const u8 gEasyChatWord_Heroine[] = _("HEROINE");
const u8 gEasyChatWord_Fashion[] = _("FASHION");
const u8 gEasyChatWord_Adventure[] = _("ADVENTURE");
const u8 gEasyChatWord_Board[] = _("BOARD");
const u8 gEasyChatWord_Ball[] = _("BALL");
const u8 gEasyChatWord_Book[] = _("BOOK");
const u8 gEasyChatWord_Festival[] = _("FESTIVAL");
const u8 gEasyChatWord_Comics[] = _("COMICS");
const u8 gEasyChatWord_Holiday[] = _("HOLIDAY");
const u8 gEasyChatWord_Plans[] = _("PLANS");
const u8 gEasyChatWord_Trendy[] = _("TRENDY");
const u8 gEasyChatWord_Vacation[] = _("VACATION");
const u8 gEasyChatWord_Look[] = _("LOOK");

const struct EasyChatWordInfo gEasyChatGroup_Hobbies[] = {
    {
        .text = gEasyChatWord_Idol,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Anime,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Song,
        .alphabeticalOrder = 45,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Movie,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sweets,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Chat,
        .alphabeticalOrder = 46,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ChildsPlay,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Toys,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Music,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cards,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Shopping,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Camera,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Viewing,
        .alphabeticalOrder = 48,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Spectator,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Gourmet,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Game,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Rpg,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Collection,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Complete,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Magazine,
        .alphabeticalOrder = 47,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Walk,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Bike,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hobby,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sports,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Software,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Songs,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Diet,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Treasure,
        .alphabeticalOrder = 49,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Travel,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Dance,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Channel,
        .alphabeticalOrder = 53,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Making,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fishing,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Date,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Design,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Locomotive,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_PlushDoll,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Pc,
        .alphabeticalOrder = 50,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Flowers,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hero,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Nap,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Heroine,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fashion,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Adventure,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Board,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ball,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Book,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Festival,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Comics,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Holiday,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Plans,
        .alphabeticalOrder = 51,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Trendy,
        .alphabeticalOrder = 52,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Vacation,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Look,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
};
# 17 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_time.h" 1
const u8 gEasyChatWord_Fall[] = _("FALL");
const u8 gEasyChatWord_Morning[] = _("MORNING");
const u8 gEasyChatWord_Tomorrow[] = _("TOMORROW");
const u8 gEasyChatWord_Last[] = _("LAST");
const u8 gEasyChatWord_Day[] = _("DAY");
const u8 gEasyChatWord_Sometime[] = _("SOMETIME");
const u8 gEasyChatWord_Always[] = _("ALWAYS");
const u8 gEasyChatWord_Current[] = _("CURRENT");
const u8 gEasyChatWord_Forever[] = _("FOREVER");
const u8 gEasyChatWord_Days[] = _("DAYS");
const u8 gEasyChatWord_End[] = _("END");
const u8 gEasyChatWord_Tuesday[] = _("TUESDAY");
const u8 gEasyChatWord_Yesterday[] = _("YESTERDAY");
const u8 gEasyChatWord_Today[] = _("TODAY");
const u8 gEasyChatWord_Friday[] = _("FRIDAY");
const u8 gEasyChatWord_Monday[] = _("MONDAY");
const u8 gEasyChatWord_Later[] = _("LATER");
const u8 gEasyChatWord_Earlier[] = _("EARLIER");
const u8 gEasyChatWord_Another[] = _("ANOTHER");
const u8 gEasyChatWord_Time[] = _("TIME");
const u8 gEasyChatWord_Finish[] = _("FINISH");
const u8 gEasyChatWord_Wednesday[] = _("WEDNESDAY");
const u8 gEasyChatWord_Soon[] = _("SOON");
const u8 gEasyChatWord_Start[] = _("START");
const u8 gEasyChatWord_Month[] = _("MONTH");
const u8 gEasyChatWord_Stop[] = _("STOP");
const u8 gEasyChatWord_Now[] = _("NOW");
const u8 gEasyChatWord_Final[] = _("FINAL");
const u8 gEasyChatWord_Next[] = _("NEXT");
const u8 gEasyChatWord_Age[] = _("AGE");
const u8 gEasyChatWord_Saturday[] = _("SATURDAY");
const u8 gEasyChatWord_Summer[] = _("SUMMER");
const u8 gEasyChatWord_Sunday[] = _("SUNDAY");
const u8 gEasyChatWord_Beginning[] = _("BEGINNING");
const u8 gEasyChatWord_Spring[] = _("SPRING");
const u8 gEasyChatWord_Daytime[] = _("DAYTIME");
const u8 gEasyChatWord_Winter[] = _("WINTER");
const u8 gEasyChatWord_Daily[] = _("DAILY");
const u8 gEasyChatWord_Olden[] = _("OLDEN");
const u8 gEasyChatWord_Almost[] = _("ALMOST");
const u8 gEasyChatWord_Nearly[] = _("NEARLY");
const u8 gEasyChatWord_Thursday[] = _("THURSDAY");
const u8 gEasyChatWord_Nighttime[] = _("NIGHTTIME");
const u8 gEasyChatWord_Night[] = _("NIGHT");
const u8 gEasyChatWord_Week[] = _("WEEK");

const struct EasyChatWordInfo gEasyChatGroup_Time[] = {
    {
        .text = gEasyChatWord_Fall,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Morning,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Tomorrow,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Last,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Day,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sometime,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Always,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Current,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Forever,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Days,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_End,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Tuesday,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Yesterday,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Today,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Friday,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Monday,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Later,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Earlier,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Another,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Time,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Finish,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wednesday,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Soon,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Start,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Month,
        .alphabeticalOrder = 43,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Stop,
        .alphabeticalOrder = 42,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Now,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Final,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Next,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Age,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Saturday,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Summer,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sunday,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Beginning,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Spring,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Daytime,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Winter,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Daily,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Olden,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Almost,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Nearly,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Thursday,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Nighttime,
        .alphabeticalOrder = 44,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Night,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Week,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
};
# 18 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_misc.h" 1
const u8 gEasyChatWord_Highs[] = _("HIGHS");
const u8 gEasyChatWord_Lows[] = _("LOWS");
const u8 gEasyChatWord_Um[] = _("UM");
const u8 gEasyChatWord_Rear[] = _("REAR");
const u8 gEasyChatWord_Things[] = _("THINGS");
const u8 gEasyChatWord_Thing[] = _("THING");
const u8 gEasyChatWord_Below[] = _("BELOW");
const u8 gEasyChatWord_Above[] = _("ABOVE");
const u8 gEasyChatWord_Back[] = _("BACK");
const u8 gEasyChatWord_High[] = _("HIGH");
const u8 gEasyChatWord_Here[] = _("HERE");
const u8 gEasyChatWord_Inside[] = _("INSIDE");
const u8 gEasyChatWord_Outside[] = _("OUTSIDE");
const u8 gEasyChatWord_Beside[] = _("BESIDE");
const u8 gEasyChatWord_ThisIsItExcl[] = _("THIS IS IT!");
const u8 gEasyChatWord_This[] = _("THIS");
const u8 gEasyChatWord_Every[] = _("EVERY");
const u8 gEasyChatWord_These[] = _("THESE");
const u8 gEasyChatWord_TheseWere[] = _("THESE WERE");
const u8 gEasyChatWord_Down[] = _("DOWN");
const u8 gEasyChatWord_That[] = _("THAT");
const u8 gEasyChatWord_ThoseAre[] = _("THOSE ARE");
const u8 gEasyChatWord_ThoseWere[] = _("THOSE WERE");
const u8 gEasyChatWord_ThatsItExcl[] = _("THAT'S IT!");
const u8 gEasyChatWord_Am[] = _("AM");
const u8 gEasyChatWord_ThatWas[] = _("THAT WAS");
const u8 gEasyChatWord_Front[] = _("FRONT");
const u8 gEasyChatWord_Up[] = _("UP");
const u8 gEasyChatWord_Choice[] = _("CHOICE");
const u8 gEasyChatWord_Far[] = _("FAR");
const u8 gEasyChatWord_Away[] = _("AWAY");
const u8 gEasyChatWord_Near[] = _("NEAR");
const u8 gEasyChatWord_Where[] = _("WHERE");
const u8 gEasyChatWord_When[] = _("WHEN");
const u8 gEasyChatWord_What[] = _("WHAT");
const u8 gEasyChatWord_Deep[] = _("DEEP");
const u8 gEasyChatWord_Shallow[] = _("SHALLOW");
const u8 gEasyChatWord_Why[] = _("WHY");
const u8 gEasyChatWord_Confused[] = _("CONFUSED");
const u8 gEasyChatWord_Opposite[] = _("OPPOSITE");
const u8 gEasyChatWord_Left[] = _("LEFT");
const u8 gEasyChatWord_Right[] = _("RIGHT");

const struct EasyChatWordInfo gEasyChatGroup_Misc[] = {
    {
        .text = gEasyChatWord_Highs,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lows,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Um,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Rear,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Things,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Thing,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Below,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Above,
        .alphabeticalOrder = 38,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Back,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_High,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Here,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Inside,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Outside,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Beside,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ThisIsItExcl,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_This,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Every,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_These,
        .alphabeticalOrder = 40,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_TheseWere,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Down,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_That,
        .alphabeticalOrder = 39,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ThoseAre,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ThoseWere,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ThatsItExcl,
        .alphabeticalOrder = 41,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Am,
        .alphabeticalOrder = 36,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_ThatWas,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Front,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Up,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Choice,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Far,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Away,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Near,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Where,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_When,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_What,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Deep,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Shallow,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Why,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Confused,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Opposite,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Left,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Right,
        .alphabeticalOrder = 37,
        .enabled = 1,
    },
};
# 19 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_adjectives.h" 1
const u8 gEasyChatWord_Wandering[] = _("WANDERING");
const u8 gEasyChatWord_Rickety[] = _("RICKETY");
const u8 gEasyChatWord_RockSolid[] = _("ROCK-SOLID");
const u8 gEasyChatWord_Hungry[] = _("HUNGRY");
const u8 gEasyChatWord_Tight[] = _("TIGHT");
const u8 gEasyChatWord_Ticklish[] = _("TICKLISH");
const u8 gEasyChatWord_Twirling[] = _("TWIRLING");
const u8 gEasyChatWord_Spiraling[] = _("SPIRALING");
const u8 gEasyChatWord_Thirsty[] = _("THIRSTY");
const u8 gEasyChatWord_Lolling[] = _("LOLLING");
const u8 gEasyChatWord_Silky[] = _("SILKY");
const u8 gEasyChatWord_Sadly[] = _("SADLY");
const u8 gEasyChatWord_Hopeless[] = _("HOPELESS");
const u8 gEasyChatWord_Useless[] = _("USELESS");
const u8 gEasyChatWord_Drooling[] = _("DROOLING");
const u8 gEasyChatWord_Exciting[] = _("EXCITING");
const u8 gEasyChatWord_Thick[] = _("THICK");
const u8 gEasyChatWord_Smooth[] = _("SMOOTH");
const u8 gEasyChatWord_Slimy[] = _("SLIMY");
const u8 gEasyChatWord_Thin[] = _("THIN");
const u8 gEasyChatWord_Break[] = _("BREAK");
const u8 gEasyChatWord_Voracious[] = _("VORACIOUS");
const u8 gEasyChatWord_Scatter[] = _("SCATTER");
const u8 gEasyChatWord_Awesome[] = _("AWESOME");
const u8 gEasyChatWord_Wimpy[] = _("WIMPY");
const u8 gEasyChatWord_Wobbly[] = _("WOBBLY");
const u8 gEasyChatWord_Shaky[] = _("SHAKY");
const u8 gEasyChatWord_Ripped[] = _("RIPPED");
const u8 gEasyChatWord_Shredded[] = _("SHREDDED");
const u8 gEasyChatWord_Increasing[] = _("INCREASING");
const u8 gEasyChatWord_Yet[] = _("YET");
const u8 gEasyChatWord_Destroyed[] = _("DESTROYED");
const u8 gEasyChatWord_Fiery[] = _("FIERY");
const u8 gEasyChatWord_LoveyDovey[] = _("LOVEY-DOVEY");
const u8 gEasyChatWord_Happily[] = _("HAPPILY");
const u8 gEasyChatWord_Anticipation[] = _("ANTICIPATION");

const struct EasyChatWordInfo gEasyChatGroup_Adjectives[] = {
    {
        .text = gEasyChatWord_Wandering,
        .alphabeticalOrder = 35,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Rickety,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_RockSolid,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hungry,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Tight,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ticklish,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Twirling,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Spiraling,
        .alphabeticalOrder = 34,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Thirsty,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Lolling,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Silky,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Sadly,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hopeless,
        .alphabeticalOrder = 33,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Useless,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Drooling,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Exciting,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Thick,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Smooth,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Slimy,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Thin,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Break,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Voracious,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Scatter,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Awesome,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wimpy,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wobbly,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Shaky,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ripped,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Shredded,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Increasing,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Yet,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Destroyed,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fiery,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_LoveyDovey,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Happily,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Anticipation,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
};
# 20 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_events.h" 1
const u8 gEasyChatWord_Appeal[] = _("APPEAL");
const u8 gEasyChatWord_Events[] = _("EVENTS");
const u8 gEasyChatWord_StayAtHome[] = _("STAY-AT-HOME");
const u8 gEasyChatWord_Berry[] = _("BERRY");
const u8 gEasyChatWord_Contest[] = _("CONTEST");
const u8 gEasyChatWord_Mc[] = _("MC");
const u8 gEasyChatWord_Judge[] = _("JUDGE");
const u8 gEasyChatWord_Super[] = _("SUPER");
const u8 gEasyChatWord_Stage[] = _("STAGE");
const u8 gEasyChatWord_HallOfFame[] = _("HALL OF FAME");
const u8 gEasyChatWord_Evolution[] = _("EVOLUTION");
const u8 gEasyChatWord_Hyper[] = _("HYPER");
const u8 gEasyChatWord_BattleTower[] = _("BATTLE TOWER");
const u8 gEasyChatWord_Leaders[] = _("LEADERS");
const u8 gEasyChatWord_BattleRoom[] = _("BATTLE ROOM");
const u8 gEasyChatWord_Hidden[] = _("HIDDEN");
const u8 gEasyChatWord_SecretBase[] = _("SECRET BASE");
const u8 gEasyChatWord_Blend[] = _("BLEND");
const u8 gEasyChatWord_POKEBLOCK[] = _("{POKEBLOCK}");
const u8 gEasyChatWord_Master[] = _("MASTER");
const u8 gEasyChatWord_Rank[] = _("RANK");
const u8 gEasyChatWord_Ribbon[] = _("RIBBON");
const u8 gEasyChatWord_Crush[] = _("CRUSH");
const u8 gEasyChatWord_Direct[] = _("DIRECT");
const u8 gEasyChatWord_Tower[] = _("TOWER");
const u8 gEasyChatWord_Union[] = _("UNION");
const u8 gEasyChatWord_Room[] = _("ROOM");
const u8 gEasyChatWord_Wireless[] = _("WIRELESS");
const u8 gEasyChatWord_Frontier[] = _("FRONTIER");

const struct EasyChatWordInfo gEasyChatGroup_Events[] = {
    {
        .text = gEasyChatWord_Appeal,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Events,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_StayAtHome,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Berry,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Contest,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mc,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Judge,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Super,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Stage,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HallOfFame,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Evolution,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hyper,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_BattleTower,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Leaders,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_BattleRoom,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hidden,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SecretBase,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Blend,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_POKEBLOCK,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Master,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Rank,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ribbon,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Crush,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Direct,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Tower,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Union,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Room,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wireless,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Frontier,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
};
# 21 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_move_1.h" 1
# 1 "include/constants/moves.h" 1
# 2 "src/data/easy_chat/easy_chat_group_move_1.h" 2

const u16 gEasyChatGroup_Move1[] = {
    71,
    177,
    97,
    314,
    246,
    312,
    310,
    62,
    117,
    20,
    44,
    280,
    145,
    268,
    204,
    128,
    109,
    132,
    322,
    68,
    152,
    238,
    242,
    15,
    91,
    50,
    104,
    38,
    3,
    89,
    227,
    283,
    203,
    326,
    245,
    263,
    313,
    90,
    175,
    172,
    53,
    260,
    19,
    116,
    264,
    266,
    202,
    320,
    74,
    288,
    16,
    258,
    106,
    114,
    29,
    215,
    95,
    301,
    196,
    231,
    2,
    134,
    141,
    122,
    142,
    67,
    212,
    262,
    319,
    309,
    170,
    119,
    54,
    234,
    267,
    171,
    190,
    316,
    200,
    315,
    220,
    181,
    60,
    244,
    94,
    354,
    149,
    228,
    99,
    240,
    229,
    13,
    105,
    216,
    179,
    157,
    249,
    88,
    317,
    205,
    221,
    219,
    328,
    28,
    201,
    184,
    103,
    120,
    247,
    325,
    159,
    329,
    324,
    318,
    47,
    166,
    285,
    143,
    327,
    163,
    265,
    123,
    108,
    173,
    76,
    49,
    209,
    169,
    180,
    147,
    70,
    81,
    78,
    66,
    162,
    207,
    230,
    129,
    235,
    39,
    37,
    87,
    85,
    9,
    321,
    259,
    253,
    233,
    323,
    311,
    250,
    261,
    110,
    281,
};
# 22 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_move_2.h" 1


const u16 gEasyChatGroup_Move2[] = {
    51,
    151,
    332,
    133,
    292,
    274,
    213,
    140,
    112,
    226,
    251,
    187,
    307,
    299,
    59,
    335,
    34,
    125,
    198,
    155,
    340,
    61,
    339,
    331,
    347,
    293,
    4,
    93,
    160,
    176,
    178,
    343,
    306,
    174,
    111,
    194,
    197,
    291,
    146,
    353,
    24,
    337,
    349,
    82,
    225,
    138,
    65,
    223,
    121,
    52,
    284,
    153,
    185,
    252,
    206,
    297,
    126,
    7,
    83,
    148,
    193,
    338,
    218,
    31,
    210,
    154,
    248,
    137,
    45,
    12,
    257,
    270,
    136,
    237,
    30,
    32,
    336,
    308,
    56,
    63,
    158,
    304,
    58,
    8,
    333,
    286,
    275,
    334,
    26,
    282,
    348,
    73,
    43,
    113,
    199,
    295,
    183,
    277,
    345,
    222,
    96,
    72,
    25,
    5,
    224,
    232,
    118,
    208,
    102,
    107,
    243,
    296,
    236,
    341,
    300,
    189,
    330,
    302,
    101,
    6,
    64,
    195,
    80,
    42,
    305,
    139,
    40,
    342,
    77,
    1,
    217,
    182,
    98,
    75,
    278,
    115,
    287,
    156,
    279,
    46,
    350,
    272,
    27,
    10,
    290,
    69,
    351,
    130,
    303,
    21,
    79,
    214,
    124,
    188,
    289,
    135,
    131,
    191,
    255,
    150,
    211,
    254,
    23,
    165,
    164,
    241,
    276,
    48,
    57,
    256,
    186,
    14,
    33,
    294,
    36,
    269,
    298,
    100,
    168,
    86,
    84,
    92,
    144,
    161,
    271,
    167,
    41,
    239,
    11,
    22,
    344,
    55,
    352,
    346,
    127,
    18,
    17,
    273,
    35,
    192,
};
# 23 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_trendy_saying.h" 1
const u8 gEasyChatWord_KthxBye[] = _("KTHX, BYE.");
const u8 gEasyChatWord_YesSirExcl[] = _("YES, SIR!");
const u8 gEasyChatWord_AvantGarde[] = _("AVANT GARDE");
const u8 gEasyChatWord_Couple[] = _("COUPLE");
const u8 gEasyChatWord_MuchObliged[] = _("MUCH OBLIGED");
const u8 gEasyChatWord_YeehawExcl[] = _("YEEHAW!");
const u8 gEasyChatWord_Mega[] = _("MEGA");
const u8 gEasyChatWord_1HitKOExcl[] = _("1-HIT KO!");
const u8 gEasyChatWord_Destiny[] = _("DESTINY");
const u8 gEasyChatWord_Cancel[] = _("CANCEL");
const u8 gEasyChatWord_New[] = _("NEW");
const u8 gEasyChatWord_Flatten[] = _("FLATTEN");
const u8 gEasyChatWord_Kidding[] = _("KIDDING");
const u8 gEasyChatWord_Loser[] = _("LOSER");
const u8 gEasyChatWord_Losing[] = _("LOSING");
const u8 gEasyChatWord_Happening[] = _("HAPPENING");
const u8 gEasyChatWord_HipAnd[] = _("HIP AND");
const u8 gEasyChatWord_Shake[] = _("SHAKE");
const u8 gEasyChatWord_Shady[] = _("SHADY");
const u8 gEasyChatWord_Upbeat[] = _("UPBEAT");
const u8 gEasyChatWord_Modern[] = _("MODERN");
const u8 gEasyChatWord_SmellYa[] = _("SMELL YA");
const u8 gEasyChatWord_Bang[] = _("BANG");
const u8 gEasyChatWord_Knockout[] = _("KNOCKOUT");
const u8 gEasyChatWord_Hassle[] = _("HASSLE");
const u8 gEasyChatWord_Winner[] = _("WINNER");
const u8 gEasyChatWord_Fever[] = _("FEVER");
const u8 gEasyChatWord_Wannabe[] = _("WANNABE");
const u8 gEasyChatWord_Baby[] = _("BABY");
const u8 gEasyChatWord_Heart[] = _("HEART");
const u8 gEasyChatWord_Old[] = _("OLD");
const u8 gEasyChatWord_Young[] = _("YOUNG");
const u8 gEasyChatWord_Ugly[] = _("UGLY");

const struct EasyChatWordInfo gEasyChatGroup_TrendySaying[] = {
    {
        .text = gEasyChatWord_KthxBye,
        .alphabeticalOrder = 7,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_YesSirExcl,
        .alphabeticalOrder = 2,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_AvantGarde,
        .alphabeticalOrder = 28,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Couple,
        .alphabeticalOrder = 22,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_MuchObliged,
        .alphabeticalOrder = 9,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_YeehawExcl,
        .alphabeticalOrder = 3,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Mega,
        .alphabeticalOrder = 8,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_1HitKOExcl,
        .alphabeticalOrder = 26,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Destiny,
        .alphabeticalOrder = 11,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Cancel,
        .alphabeticalOrder = 15,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_New,
        .alphabeticalOrder = 24,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Flatten,
        .alphabeticalOrder = 29,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Kidding,
        .alphabeticalOrder = 16,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Loser,
        .alphabeticalOrder = 12,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Losing,
        .alphabeticalOrder = 23,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Happening,
        .alphabeticalOrder = 0,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_HipAnd,
        .alphabeticalOrder = 13,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Shake,
        .alphabeticalOrder = 14,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Shady,
        .alphabeticalOrder = 6,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Upbeat,
        .alphabeticalOrder = 20,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Modern,
        .alphabeticalOrder = 4,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_SmellYa,
        .alphabeticalOrder = 10,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Bang,
        .alphabeticalOrder = 30,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Knockout,
        .alphabeticalOrder = 18,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Hassle,
        .alphabeticalOrder = 17,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Winner,
        .alphabeticalOrder = 21,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Fever,
        .alphabeticalOrder = 32,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Wannabe,
        .alphabeticalOrder = 19,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Baby,
        .alphabeticalOrder = 27,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Heart,
        .alphabeticalOrder = 25,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Old,
        .alphabeticalOrder = 5,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Young,
        .alphabeticalOrder = 1,
        .enabled = 1,
    },
    {
        .text = gEasyChatWord_Ugly,
        .alphabeticalOrder = 31,
        .enabled = 1,
    },
};
# 24 "src/data/easy_chat/easy_chat_groups.h" 2
# 1 "src/data/easy_chat/easy_chat_group_pokemon2.h" 1


const u16 gEasyChatGroup_Pokemon2[] = {
 63,
 142,
 190,
 65,
 181,
 24,
 59,
 168,
 144,
 184,
 153,
 15,
 182,
 69,
 9,
 242,
 1,
 12,
 10,
 251,
 113,
 6,
 4,
 5,
 152,
 170,
 36,
 35,
 173,
 91,
 222,
 169,
 159,
 104,
 155,
 225,
 87,
 50,
 132,
 85,
 84,
 232,
 148,
 149,
 147,
 96,
 51,
 206,
 133,
 23,
 125,
 101,
 239,
 244,
 196,
 102,
 103,
 83,
 22,
 160,
 180,
 136,
 205,
 162,
 92,
 94,
 74,
 203,
 207,
 44,
 42,
 118,
 55,
 76,
 210,
 75,
 88,
 58,
 130,
 93,
 214,
 107,
 106,
 237,
 250,
 163,
 187,
 116,
 229,
 228,
 97,
 174,
 2,
 39,
 135,
 189,
 124,
 140,
 141,
 64,
 14,
 115,
 230,
 99,
 109,
 98,
 171,
 131,
 246,
 166,
 165,
 108,
 249,
 68,
 67,
 66,
 240,
 219,
 129,
 126,
 81,
 82,
 56,
 226,
 179,
 183,
 105,
 154,
 52,
 11,
 151,
 150,
 241,
 200,
 146,
 122,
 89,
 198,
 177,
 34,
 31,
 29,
 32,
 30,
 33,
 38,
 164,
 224,
 43,
 138,
 139,
 95,
 46,
 47,
 53,
 231,
 172,
 18,
 17,
 16,
 25,
 221,
 204,
 127,
 186,
 60,
 61,
 62,
 77,
 137,
 233,
 57,
 54,
 247,
 195,
 156,
 211,
 26,
 243,
 78,
 20,
 19,
 223,
 112,
 111,
 27,
 28,
 212,
 123,
 117,
 119,
 86,
 161,
 90,
 213,
 227,
 188,
 80,
 199,
 79,
 218,
 235,
 238,
 215,
 143,
 209,
 21,
 167,
 7,
 234,
 121,
 120,
 208,
 185,
 245,
 192,
 191,
 220,
 114,
 128,
 216,
 72,
 73,
 175,
 176,
 158,
 157,
 248,
 236,
 197,
 201,
 217,
 134,
 49,
 48,
 3,
 71,
 45,
 100,
 37,
 8,
 13,
 70,
 110,
 40,
 202,
 194,
 178,
 193,
 145,
 41,
};
# 25 "src/data/easy_chat/easy_chat_groups.h" 2

const struct EasyChatGroup gEasyChatGroups[] = {
    {
        .wordData = {.valueList = gEasyChatGroup_Pokemon},
        .numWords = 202,
        .numEnabledWords = 202,
    },
    {
        .wordData = {.words = gEasyChatGroup_Trainer},
        .numWords = 27,
        .numEnabledWords = 21,
    },
    {
        .wordData = {.words = gEasyChatGroup_Status},
        .numWords = 109,
        .numEnabledWords = 109,
    },
    {
        .wordData = {.words = gEasyChatGroup_Battle},
        .numWords = 63,
        .numEnabledWords = 63,
    },
    {
        .wordData = {.words = gEasyChatGroup_Greetings},
        .numWords = 42,
        .numEnabledWords = 42,
    },
    {
        .wordData = {.words = gEasyChatGroup_People},
        .numWords = 75,
        .numEnabledWords = 75,
    },
    {
        .wordData = {.words = gEasyChatGroup_Voices},
        .numWords = 63,
        .numEnabledWords = 63,
    },
    {
        .wordData = {.words = gEasyChatGroup_Speech},
        .numWords = 60,
        .numEnabledWords = 60,
    },
    {
        .wordData = {.words = gEasyChatGroup_Endings},
        .numWords = 69,
        .numEnabledWords = 69,
    },
    {
        .wordData = {.words = gEasyChatGroup_Feelings},
        .numWords = 69,
        .numEnabledWords = 69,
    },
    {
        .wordData = {.words = gEasyChatGroup_Conditions},
        .numWords = 69,
        .numEnabledWords = 69,
    },
    {
        .wordData = {.words = gEasyChatGroup_Actions},
        .numWords = 78,
        .numEnabledWords = 78,
    },
    {
        .wordData = {.words = gEasyChatGroup_Lifestyle},
        .numWords = 45,
        .numEnabledWords = 45,
    },
    {
        .wordData = {.words = gEasyChatGroup_Hobbies},
        .numWords = 54,
        .numEnabledWords = 54,
    },
    {
        .wordData = {.words = gEasyChatGroup_Time},
        .numWords = 45,
        .numEnabledWords = 45,
    },
    {
        .wordData = {.words = gEasyChatGroup_Misc},
        .numWords = 42,
        .numEnabledWords = 42,
    },
    {
        .wordData = {.words = gEasyChatGroup_Adjectives},
        .numWords = 36,
        .numEnabledWords = 36,
    },
    {
        .wordData = {.words = gEasyChatGroup_Events},
        .numWords = 29,
        .numEnabledWords = 29,
    },
    {
        .wordData = {.valueList = gEasyChatGroup_Move1},
        .numWords = 154,
        .numEnabledWords = 154,
    },
    {
        .wordData = {.valueList = gEasyChatGroup_Move2},
        .numWords = 200,
        .numEnabledWords = 200,
    },
    {
        .wordData = {.words = gEasyChatGroup_TrendySaying},
        .numWords = 33,
        .numEnabledWords = 33,
    },
    {
        .wordData = {.valueList = gEasyChatGroup_Pokemon2},
        .numWords = 251,
        .numEnabledWords = 251,
    },
};
# 1021 "src/easy_chat.c" 2
# 1 "src/data/easy_chat/easy_chat_words_by_letter.h" 1



const u16 gEasyChatWordsByLetter_Others[] = {
    (0x6 << 9) | 0x0,
    (0x6 << 9) | 0x1,
    (0x6 << 9) | 0x7,
    (0x6 << 9) | 0x8,
    (0x6 << 9) | 0x4,
    (0x6 << 9) | 0x5,
    (0x6 << 9) | 0x6,
    (0x14 << 9) | 0x7,
    (0x6 << 9) | 0x3,
    (0x6 << 9) | 0x2,
};

const u16 gEasyChatWordsByLetter_A[] = {
    (0x8 << 9) | 0x20,
    (0x7 << 9) | 0x13,
    (0x7 << 9) | 0x12,
    (0x7 << 9) | 0x1b,
    (0x8 << 9) | 0x27,
    (0xf << 9) | 0x7,
    -1, 2,
    ((0x0 << 9) | 63),
    ((0x15 << 9) | 63),
    (0xa << 9) | 0xd,
    ((0x0 << 9) | 376),
    (0x7 << 9) | 0x14,
    ((0x12 << 9) | 71),
    (0x3 << 9) | 0x35,
    ((0x13 << 9) | 51),
    ((0x13 << 9) | 151),
    (0x9 << 9) | 0x28,
    (0x5 << 9) | 0xd,
    (0xd << 9) | 0x2b,
    ((0x13 << 9) | 332),
    ((0x12 << 9) | 177),
    ((0x15 << 9) | 142),
    (0x8 << 9) | 0x3f,
    (0xe << 9) | 0x1d,
    ((0x0 << 9) | 384),
    ((0x12 << 9) | 97),
    (0x6 << 9) | 0x17,
    (0x6 << 9) | 0xb,
    (0x3 << 9) | 0x27,
    ((0x15 << 9) | 190),
    ((0x12 << 9) | 314),
    (0x2 << 9) | 0xd,
    (0x6 << 9) | 0x29,
    -1, 2,
    ((0x0 << 9) | 65),
    ((0x15 << 9) | 65),
    (0x8 << 9) | 0x2a,
    (0x9 << 9) | 0x27,
    (0xb << 9) | 0x48,
    (0xc << 9) | 0x3,
    (0x5 << 9) | 0x34,
    (0xe << 9) | 0x27,
    (0xa << 9) | 0x37,
    (0x7 << 9) | 0x29,
    (0x2 << 9) | 0x9,
    ((0x0 << 9) | 359),
    (0x7 << 9) | 0x28,
    (0xe << 9) | 0x6,
    (0xf << 9) | 0x18,
    ((0x13 << 9) | 133),
    ((0x15 << 9) | 181),
    (0xa << 9) | 0x17,
    (0x8 << 9) | 0x21,
    ((0x12 << 9) | 246),
    (0x7 << 9) | 0x15,
    (0x9 << 9) | 0x18,
    (0xb << 9) | 0xe,
    (0x9 << 9) | 0x17,
    (0xd << 9) | 0x1,
    ((0x0 << 9) | 390),
    (0xe << 9) | 0x12,
    (0x10 << 9) | 0x23,
    (0x7 << 9) | 0x39,
    (0x8 << 9) | 0x44,
    (0x4 << 9) | 0xc,
    (0x11 << 9) | 0x0,
    (0xb << 9) | 0x30,
    (0xb << 9) | 0x4b,
    (0x4 << 9) | 0x19,
    (0xa << 9) | 0x3,
    ((0x15 << 9) | 24),
    ((0x15 << 9) | 59),
    (0x8 << 9) | 0xf,
    (0x5 << 9) | 0x1f,
    (0x2 << 9) | 0x5,
    ((0x15 << 9) | 168),
    ((0x13 << 9) | 292),
    ((0x0 << 9) | 391),
    ((0x12 << 9) | 312),
    ((0x0 << 9) | 382),
    (0x7 << 9) | 0x17,
    (0x6 << 9) | 0x34,
    ((0x15 << 9) | 144),
    (0x8 << 9) | 0x2e,
    (0x7 << 9) | 0x31,
    (0x7 << 9) | 0x2b,
    ((0x13 << 9) | 274),
    ((0x12 << 9) | 310),
    (0x8 << 9) | 0x36,
    (0x3 << 9) | 0x12,
    ((0x13 << 9) | 213),
    (0x5 << 9) | 0x11,
    ((0x12 << 9) | 62),
    (0x14 << 9) | 0x2,
    (0xf << 9) | 0x1e,
    (0x10 << 9) | 0x17,
    (0xa << 9) | 0x36,
    (0x7 << 9) | 0x34,
    (0x6 << 9) | 0x3b,
    -1, 2,
    ((0x0 << 9) | 184),
    ((0x15 << 9) | 184),
    ((0x0 << 9) | 350),
};

const u16 gEasyChatWordsByLetter_B[] = {
    (0x5 << 9) | 0x16,
    (0x14 << 9) | 0x1c,
    (0xf << 9) | 0x8,
    (0x9 << 9) | 0x2e,
    (0xa << 9) | 0x44,
    (0x1 << 9) | 0x15,
    ((0x0 << 9) | 395),
    (0xd << 9) | 0x2d,
    ((0x0 << 9) | 318),
    ((0x0 << 9) | 378),
    (0x14 << 9) | 0x16,
    ((0x0 << 9) | 323),
    ((0x13 << 9) | 140),
    ((0x13 << 9) | 112),
    (0xc << 9) | 0x4,
    ((0x13 << 9) | 226),
    (0x3 << 9) | 0x28,
    (0x2 << 9) | 0x17,
    (0x11 << 9) | 0xe,
    (0x11 << 9) | 0xc,
    ((0x15 << 9) | 153),
    (0x8 << 9) | 0x6,
    (0x9 << 9) | 0x3f,
    ((0x13 << 9) | 251),
    ((0x0 << 9) | 292),
    (0x2 << 9) | 0xb,
    (0x2 << 9) | 0xc,
    (0xa << 9) | 0x32,
    ((0x15 << 9) | 15),
    (0x5 << 9) | 0x3e,
    (0x8 << 9) | 0x40,
    (0xe << 9) | 0x21,
    (0xa << 9) | 0xe,
    ((0x0 << 9) | 398),
    (0xb << 9) | 0x27,
    -1, 2,
    ((0x0 << 9) | 182),
    ((0x15 << 9) | 182),
    ((0x15 << 9) | 69),
    ((0x13 << 9) | 187),
    (0x8 << 9) | 0x35,
    (0xf << 9) | 0x6,
    (0x11 << 9) | 0x3,
    (0xf << 9) | 0xd,
    (0xa << 9) | 0x3c,
    (0x8 << 9) | 0x31,
    ((0x12 << 9) | 117),
    (0xa << 9) | 0x13,
    (0xd << 9) | 0x15,
    ((0x12 << 9) | 20),
    ((0x12 << 9) | 44),
    ((0x13 << 9) | 307),
    ((0x15 << 9) | 9),
    (0x2 << 9) | 0x65,
    ((0x13 << 9) | 299),
    ((0x0 << 9) | 282),
    (0x11 << 9) | 0x11,
    ((0x15 << 9) | 242),
    ((0x13 << 9) | 59),
    ((0x13 << 9) | 335),
    (0xd << 9) | 0x2c,
    ((0x13 << 9) | 34),
    ((0x13 << 9) | 125),
    ((0x13 << 9) | 198),
    ((0x13 << 9) | 155),
    (0xd << 9) | 0x2e,
    (0xa << 9) | 0x38,
    (0x9 << 9) | 0x24,
    ((0x13 << 9) | 340),
    (0x5 << 9) | 0xc,
    (0xb << 9) | 0x24,
    (0x10 << 9) | 0x14,
    ((0x0 << 9) | 307),
    ((0x12 << 9) | 280),
    (0x5 << 9) | 0xe,
    ((0x12 << 9) | 145),
    ((0x13 << 9) | 61),
    (0x2 << 9) | 0x61,
    ((0x15 << 9) | 1),
    ((0x13 << 9) | 339),
    ((0x13 << 9) | 331),
    (0xa << 9) | 0xa,
    (0x7 << 9) | 0xa,
    ((0x15 << 9) | 12),
    (0x4 << 9) | 0x20,
};

const u16 gEasyChatWordsByLetter_C[] = {
    ((0x0 << 9) | 344),
    ((0x0 << 9) | 345),
    ((0x13 << 9) | 347),
    (0xb << 9) | 0x1c,
    (0xd << 9) | 0xb,
    ((0x0 << 9) | 340),
    ((0x13 << 9) | 293),
    (0x8 << 9) | 0x16,
    (0x3 << 9) | 0xb,
    (0x8 << 9) | 0x15,
    (0x3 << 9) | 0xa,
    (0x14 << 9) | 0x9,
    (0xb << 9) | 0x2e,
    (0xd << 9) | 0x9,
    (0x9 << 9) | 0x25,
    (0x9 << 9) | 0x26,
    ((0x0 << 9) | 330),
    ((0x0 << 9) | 293),
    (0x7 << 9) | 0xc,
    ((0x0 << 9) | 385),
    ((0x15 << 9) | 10),
    (0xb << 9) | 0x1f,
    ((0x15 << 9) | 251),
    (0x1 << 9) | 0x7,
    (0x3 << 9) | 0x1f,
    (0xb << 9) | 0x13,
    (0xd << 9) | 0x1e,
    ((0x15 << 9) | 113),
    ((0x12 << 9) | 268),
    ((0x15 << 9) | 6),
    ((0x12 << 9) | 204),
    ((0x15 << 9) | 4),
    ((0x15 << 9) | 5),
    (0xd << 9) | 0x5,
    ((0x15 << 9) | 152),
    (0xd << 9) | 0x6,
    (0x5 << 9) | 0x22,
    ((0x0 << 9) | 411),
    -1, 2,
    ((0x0 << 9) | 170),
    ((0x15 << 9) | 170),
    (0x2 << 9) | 0x6a,
    (0xf << 9) | 0x1c,
    (0xb << 9) | 0x1a,
    (0xc << 9) | 0x0,
    ((0x12 << 9) | 128),
    ((0x0 << 9) | 373),
    (0xc << 9) | 0x10,
    ((0x0 << 9) | 319),
    (0x2 << 9) | 0x1d,
    ((0x15 << 9) | 36),
    ((0x15 << 9) | 35),
    ((0x15 << 9) | 173),
    (0xa << 9) | 0x15,
    (0x2 << 9) | 0x44,
    ((0x15 << 9) | 91),
    (0xa << 9) | 0x1e,
    (0xb << 9) | 0x6,
    (0xd << 9) | 0x11,
    (0x2 << 9) | 0x8,
    (0x2 << 9) | 0x56,
    ((0x0 << 9) | 281),
    (0xb << 9) | 0x1b,
    (0x3 << 9) | 0x11,
    (0x4 << 9) | 0x28,
    ((0x13 << 9) | 4),
    (0xd << 9) | 0x30,
    (0xc << 9) | 0x7,
    (0xd << 9) | 0x12,
    (0x2 << 9) | 0x4e,
    (0xb << 9) | 0x1,
    ((0x12 << 9) | 109),
    (0xf << 9) | 0x26,
    ((0x13 << 9) | 93),
    (0x4 << 9) | 0x9,
    ((0x12 << 9) | 132),
    (0x11 << 9) | 0x4,
    (0xc << 9) | 0x5,
    ((0x13 << 9) | 160),
    ((0x13 << 9) | 176),
    (0x2 << 9) | 0x15,
    (0x2 << 9) | 0x16,
    ((0x0 << 9) | 326),
    (0xa << 9) | 0x26,
    -1, 2,
    ((0x0 << 9) | 222),
    ((0x15 << 9) | 222),
    ((0x12 << 9) | 322),
    ((0x13 << 9) | 178),
    (0x8 << 9) | 0x8,
    (0xb << 9) | 0x2d,
    (0x4 << 9) | 0x29,
    ((0x12 << 9) | 68),
    (0x14 << 9) | 0x3,
    ((0x13 << 9) | 343),
    ((0x12 << 9) | 152),
    ((0x0 << 9) | 389),
    ((0x0 << 9) | 327),
    (0x6 << 9) | 0x16,
    -1, 2,
    ((0x0 << 9) | 169),
    ((0x15 << 9) | 169),
    ((0x15 << 9) | 159),
    ((0x12 << 9) | 238),
    ((0x12 << 9) | 242),
    (0x11 << 9) | 0x16,
    ((0x13 << 9) | 306),
    (0x6 << 9) | 0x19,
    ((0x15 << 9) | 104),
    (0xe << 9) | 0x7,
    ((0x13 << 9) | 174),
    ((0x12 << 9) | 15),
    (0x2 << 9) | 0x18,
    (0x2 << 9) | 0x63,
    (0x2 << 9) | 0x19,
    ((0x15 << 9) | 155),
};

const u16 gEasyChatWordsByLetter_D[] = {
    (0xe << 9) | 0x25,
    (0x2 << 9) | 0x25,
    (0xd << 9) | 0x1d,
    (0x9 << 9) | 0x3d,
    (0x2 << 9) | 0x0,
    (0x9 << 9) | 0x1f,
    (0xd << 9) | 0x21,
    (0x5 << 9) | 0x1c,
    (0xe << 9) | 0x4,
    (0xe << 9) | 0x9,
    (0xe << 9) | 0x23,
    (0x3 << 9) | 0x3,
    (0x3 << 9) | 0xe,
    (0xf << 9) | 0x23,
    (0x9 << 9) | 0x3e,
    ((0x13 << 9) | 111),
    ((0x0 << 9) | 316),
    ((0x15 << 9) | 225),
    ((0x0 << 9) | 410),
    (0xc << 9) | 0x1a,
    (0xd << 9) | 0x22,
    (0x14 << 9) | 0x8,
    ((0x13 << 9) | 194),
    (0x10 << 9) | 0x1f,
    ((0x13 << 9) | 197),
    ((0x15 << 9) | 87),
    (0x8 << 9) | 0x3b,
    (0x8 << 9) | 0x3c,
    (0xd << 9) | 0x1a,
    (0xa << 9) | 0x29,
    ((0x12 << 9) | 91),
    (0xc << 9) | 0x18,
    ((0x15 << 9) | 50),
    (0x11 << 9) | 0x17,
    ((0x12 << 9) | 50),
    (0xb << 9) | 0x2f,
    (0x9 << 9) | 0x1b,
    (0x9 << 9) | 0xc,
    (0x9 << 9) | 0xd,
    (0x9 << 9) | 0x29,
    (0x9 << 9) | 0x16,
    (0x9 << 9) | 0x23,
    ((0x15 << 9) | 132),
    ((0x13 << 9) | 291),
    ((0x13 << 9) | 146),
    (0x8 << 9) | 0x18,
    (0xa << 9) | 0x16,
    -1, 2,
    ((0x0 << 9) | 85),
    ((0x15 << 9) | 85),
    -1, 2,
    ((0x0 << 9) | 84),
    ((0x15 << 9) | 84),
    (0x8 << 9) | 0x19,
    (0x8 << 9) | 0x3d,
    (0x8 << 9) | 0x17,
    (0x9 << 9) | 0x3c,
    -1, 2,
    ((0x0 << 9) | 232),
    ((0x15 << 9) | 232),
    ((0x13 << 9) | 353),
    ((0x13 << 9) | 24),
    ((0x12 << 9) | 104),
    ((0x12 << 9) | 38),
    ((0x12 << 9) | 3),
    (0xf << 9) | 0x13,
    (0x9 << 9) | 0x20,
    (0x2 << 9) | 0x3e,
    ((0x13 << 9) | 337),
    ((0x13 << 9) | 349),
    ((0x13 << 9) | 82),
    ((0x15 << 9) | 148),
    ((0x13 << 9) | 225),
    ((0x15 << 9) | 149),
    ((0x15 << 9) | 147),
    (0xc << 9) | 0x27,
    ((0x13 << 9) | 138),
    ((0x13 << 9) | 65),
    (0x9 << 9) | 0x33,
    (0xb << 9) | 0x36,
    (0x2 << 9) | 0x4,
    (0x10 << 9) | 0xe,
    (0x2 << 9) | 0x4c,
    ((0x15 << 9) | 96),
    (0x5 << 9) | 0x36,
    ((0x15 << 9) | 51),
    ((0x15 << 9) | 206),
    ((0x0 << 9) | 362),
    ((0x0 << 9) | 361),
    ((0x0 << 9) | 294),
    ((0x13 << 9) | 223),
};

const u16 gEasyChatWordsByLetter_E[] = {
    (0xe << 9) | 0x11,
    (0x2 << 9) | 0x48,
    ((0x12 << 9) | 89),
    (0x3 << 9) | 0x38,
    (0x9 << 9) | 0x2c,
    (0xb << 9) | 0x29,
    (0x6 << 9) | 0x20,
    ((0x15 << 9) | 133),
    (0x2 << 9) | 0x58,
    (0x1 << 9) | 0x8,
    ((0x13 << 9) | 121),
    (0x6 << 9) | 0x18,
    (0x6 << 9) | 0x1a,
    ((0x15 << 9) | 23),
    ((0x15 << 9) | 125),
    (0x2 << 9) | 0x39,
    ((0x0 << 9) | 337),
    -1, 2,
    ((0x0 << 9) | 101),
    ((0x15 << 9) | 101),
    ((0x15 << 9) | 239),
    (0xa << 9) | 0x24,
    ((0x13 << 9) | 52),
    (0x1 << 9) | 0x1a,
    ((0x12 << 9) | 227),
    (0x1 << 9) | 0x5,
    (0xe << 9) | 0xa,
    ((0x12 << 9) | 283),
    ((0x12 << 9) | 203),
    (0x9 << 9) | 0x2a,
    (0x9 << 9) | 0x2b,
    (0x7 << 9) | 0x11,
    ((0x15 << 9) | 244),
    (0xa << 9) | 0x18,
    ((0x13 << 9) | 284),
    (0x3 << 9) | 0x26,
    ((0x15 << 9) | 196),
    (0x7 << 9) | 0x1f,
    (0xc << 9) | 0x17,
    (0x11 << 9) | 0x1,
    (0x8 << 9) | 0x32,
    (0xf << 9) | 0x10,
    (0x11 << 9) | 0xa,
    (0x1 << 9) | 0x4,
    (0xa << 9) | 0x1c,
    (0xa << 9) | 0x2,
    (0x9 << 9) | 0x7,
    (0x10 << 9) | 0xf,
    (0x4 << 9) | 0x14,
    (0x4 << 9) | 0x16,
    ((0x15 << 9) | 102),
    ((0x15 << 9) | 103),
    (0xa << 9) | 0x1,
    (0xa << 9) | 0x25,
    ((0x13 << 9) | 153),
    ((0x0 << 9) | 372),
    ((0x12 << 9) | 326),
    ((0x12 << 9) | 245),
};

const u16 gEasyChatWordsByLetter_F[] = {
    (0xa << 9) | 0x23,
    ((0x12 << 9) | 263),
    (0xb << 9) | 0x4c,
    ((0x13 << 9) | 185),
    (0xb << 9) | 0x4d,
    ((0x13 << 9) | 252),
    ((0x12 << 9) | 313),
    (0xe << 9) | 0x0,
    ((0x13 << 9) | 206),
    (0x5 << 9) | 0x17,
    (0x7 << 9) | 0x3b,
    (0xf << 9) | 0x1d,
    ((0x15 << 9) | 83),
    (0xd << 9) | 0x2a,
    (0xa << 9) | 0x34,
    (0x5 << 9) | 0xb,
    (0x9 << 9) | 0x35,
    ((0x15 << 9) | 22),
    ((0x13 << 9) | 297),
    ((0x0 << 9) | 328),
    (0x7 << 9) | 0x9,
    ((0x15 << 9) | 160),
    (0xd << 9) | 0x2f,
    (0x14 << 9) | 0x1a,
    (0x10 << 9) | 0x20,
    (0x3 << 9) | 0x29,
    (0x2 << 9) | 0x10,
    (0x3 << 9) | 0x1d,
    (0xe << 9) | 0x1b,
    (0x7 << 9) | 0x38,
    (0xe << 9) | 0x14,
    (0x2 << 9) | 0x5a,
    ((0x13 << 9) | 126),
    ((0x13 << 9) | 7),
    ((0x13 << 9) | 83),
    (0xd << 9) | 0x20,
    ((0x12 << 9) | 90),
    ((0x15 << 9) | 180),
    ((0x12 << 9) | 175),
    (0x1 << 9) | 0x16,
    (0x2 << 9) | 0x5b,
    ((0x12 << 9) | 172),
    ((0x12 << 9) | 53),
    ((0x15 << 9) | 136),
    ((0x13 << 9) | 148),
    (0x2 << 9) | 0x68,
    (0x14 << 9) | 0xb,
    ((0x12 << 9) | 260),
    (0xd << 9) | 0x26,
    ((0x12 << 9) | 19),
    ((0x0 << 9) | 334),
    (0x2 << 9) | 0x4b,
    ((0x12 << 9) | 116),
    ((0x12 << 9) | 264),
    (0x3 << 9) | 0x23,
    ((0x12 << 9) | 266),
    (0x8 << 9) | 0x2b,
    (0x7 << 9) | 0x22,
    (0x2 << 9) | 0x3a,
    ((0x13 << 9) | 193),
    (0xe << 9) | 0x8,
    (0xb << 9) | 0x49,
    (0xb << 9) | 0x4a,
    (0x4 << 9) | 0xd,
    ((0x15 << 9) | 205),
    ((0x13 << 9) | 338),
    (0xe << 9) | 0xe,
    (0x5 << 9) | 0x33,
    (0x7 << 9) | 0x8,
    (0xf << 9) | 0x1a,
    (0x11 << 9) | 0x1c,
    ((0x13 << 9) | 218),
    (0x6 << 9) | 0x2b,
    (0xa << 9) | 0xc,
    (0x9 << 9) | 0x9,
    ((0x15 << 9) | 162),
    ((0x13 << 9) | 31),
    ((0x13 << 9) | 210),
    ((0x13 << 9) | 154),
    ((0x13 << 9) | 248),
};

const u16 gEasyChatWordsByLetter_G[] = {
    (0xd << 9) | 0xf,
    ((0x0 << 9) | 394),
    ((0x15 << 9) | 92),
    ((0x15 << 9) | 94),
    (0x3 << 9) | 0x24,
    -1, 2,
    ((0x0 << 9) | 74),
    ((0x15 << 9) | 74),
    (0x1 << 9) | 0xf,
    (0x9 << 9) | 0x1d,
    (0x2 << 9) | 0x1f,
    (0x9 << 9) | 0x4,
    ((0x12 << 9) | 202),
    (0x6 << 9) | 0x13,
    (0x8 << 9) | 0x7,
    -1, 2,
    ((0x0 << 9) | 203),
    ((0x15 << 9) | 203),
    (0x5 << 9) | 0x15,
    (0xb << 9) | 0x2,
    (0x4 << 9) | 0xa,
    (0x3 << 9) | 0x2d,
    (0xb << 9) | 0x3,
    ((0x0 << 9) | 347),
    ((0x13 << 9) | 137),
    ((0x15 << 9) | 207),
    -1, 2,
    ((0x0 << 9) | 44),
    ((0x15 << 9) | 44),
    (0x3 << 9) | 0x1,
    (0x4 << 9) | 0x18,
    (0x3 << 9) | 0x22,
    (0x9 << 9) | 0xb,
    (0x9 << 9) | 0x3,
    (0xa << 9) | 0x8,
    -1, 2,
    ((0x0 << 9) | 42),
    ((0x15 << 9) | 42),
    (0x1 << 9) | 0x17,
    -1, 2,
    ((0x0 << 9) | 118),
    ((0x15 << 9) | 118),
    -1, 2,
    ((0x0 << 9) | 55),
    ((0x15 << 9) | 55),
    -1, 2,
    ((0x0 << 9) | 76),
    ((0x15 << 9) | 76),
    (0xa << 9) | 0x5,
    (0x4 << 9) | 0x10,
    ((0x0 << 9) | 375),
    (0x9 << 9) | 0xa,
    (0x1 << 9) | 0x1,
    (0xd << 9) | 0xe,
    (0x6 << 9) | 0x21,
    ((0x15 << 9) | 210),
    (0x5 << 9) | 0x9,
    (0x5 << 9) | 0x10,
    (0x2 << 9) | 0x1c,
    ((0x12 << 9) | 320),
    -1, 2,
    ((0x0 << 9) | 75),
    ((0x15 << 9) | 75),
    (0x9 << 9) | 0x40,
    (0x1 << 9) | 0x14,
    -1, 2,
    ((0x0 << 9) | 88),
    ((0x15 << 9) | 88),
    ((0x0 << 9) | 405),
    (0x2 << 9) | 0x26,
    (0xc << 9) | 0x9,
    ((0x0 << 9) | 278),
    ((0x13 << 9) | 45),
    ((0x15 << 9) | 58),
    ((0x12 << 9) | 74),
    ((0x12 << 9) | 288),
    ((0x0 << 9) | 352),
    (0x3 << 9) | 0x32,
    ((0x13 << 9) | 12),
    ((0x0 << 9) | 367),
    ((0x12 << 9) | 16),
    (0x2 << 9) | 0x21,
    (0x3 << 9) | 0x14,
    (0x6 << 9) | 0x3d,
    (0x6 << 9) | 0x22,
    -1, 2,
    ((0x0 << 9) | 130),
    ((0x15 << 9) | 130),
};

const u16 gEasyChatWordsByLetter_H[] = {
    (0xc << 9) | 0x8,
    (0x6 << 9) | 0x26,
    (0x6 << 9) | 0x28,
    ((0x12 << 9) | 258),
    (0x11 << 9) | 0x9,
    (0x14 << 9) | 0xf,
    (0x10 << 9) | 0x22,
    (0x9 << 9) | 0x6,
    (0x9 << 9) | 0x5,
    (0x9 << 9) | 0x2f,
    ((0x12 << 9) | 106),
    ((0x0 << 9) | 336),
    (0xa << 9) | 0x4,
    (0x14 << 9) | 0x18,
    ((0x15 << 9) | 93),
    (0x8 << 9) | 0x1e,
    (0x8 << 9) | 0x1f,
    ((0x12 << 9) | 114),
    (0x5 << 9) | 0x1a,
    (0x5 << 9) | 0x1e,
    ((0x12 << 9) | 29),
    ((0x12 << 9) | 215),
    (0xa << 9) | 0x1b,
    (0x9 << 9) | 0x13,
    (0xb << 9) | 0x18,
    (0x9 << 9) | 0x11,
    (0x14 << 9) | 0x1d,
    ((0x13 << 9) | 257),
    (0x6 << 9) | 0x30,
    (0x6 << 9) | 0x25,
    (0x6 << 9) | 0x2f,
    (0x4 << 9) | 0xf,
    ((0x13 << 9) | 270),
    (0x5 << 9) | 0x18,
    -1, 2,
    ((0x0 << 9) | 214),
    ((0x15 << 9) | 214),
    (0xf << 9) | 0xa,
    (0x4 << 9) | 0x2,
    (0x4 << 9) | 0x3,
    (0x4 << 9) | 0x4,
    (0xd << 9) | 0x27,
    (0xd << 9) | 0x29,
    (0x5 << 9) | 0x48,
    (0x4 << 9) | 0x22,
    (0x4 << 9) | 0xe,
    (0x4 << 9) | 0x1a,
    (0x4 << 9) | 0x1e,
    ((0x13 << 9) | 136),
    (0x11 << 9) | 0xf,
    ((0x13 << 9) | 237),
    (0xf << 9) | 0x9,
    (0xf << 9) | 0x0,
    (0x5 << 9) | 0x19,
    (0x14 << 9) | 0x10,
    (0x5 << 9) | 0x1d,
    (0x7 << 9) | 0x10,
    ((0x15 << 9) | 107),
    ((0x15 << 9) | 106),
    ((0x15 << 9) | 237),
    (0x6 << 9) | 0x2a,
    (0x6 << 9) | 0xf,
    ((0x15 << 9) | 250),
    (0xd << 9) | 0x16,
    (0x6 << 9) | 0x31,
    (0xd << 9) | 0x31,
    (0xc << 9) | 0x1,
    (0x4 << 9) | 0x25,
    ((0x15 << 9) | 163),
    (0x10 << 9) | 0xc,
    ((0x15 << 9) | 187),
    ((0x13 << 9) | 30),
    ((0x13 << 9) | 32),
    -1, 2,
    ((0x0 << 9) | 116),
    ((0x15 << 9) | 116),
    (0xa << 9) | 0x0,
    ((0x15 << 9) | 229),
    ((0x15 << 9) | 228),
    (0x7 << 9) | 0xf,
    (0x4 << 9) | 0x8,
    (0x7 << 9) | 0xb,
    ((0x13 << 9) | 336),
    (0x2 << 9) | 0x36,
    (0x4 << 9) | 0x1c,
    (0x6 << 9) | 0x2e,
    (0x10 << 9) | 0x3,
    ((0x0 << 9) | 374),
    (0x9 << 9) | 0x2,
    (0x2 << 9) | 0x49,
    ((0x13 << 9) | 308),
    ((0x13 << 9) | 56),
    (0x11 << 9) | 0xb,
    ((0x13 << 9) | 63),
    (0x2 << 9) | 0xf,
    ((0x13 << 9) | 158),
    ((0x13 << 9) | 304),
    ((0x15 << 9) | 97),
    ((0x12 << 9) | 95),
};

const u16 gEasyChatWordsByLetter_I[] = {
    (0x5 << 9) | 0x1,
    (0x5 << 9) | 0x29,
    (0x1 << 9) | 0x0,
    (0x5 << 9) | 0x26,
    (0x5 << 9) | 0x2a,
    (0x4 << 9) | 0x12,
    (0x2 << 9) | 0x20,
    ((0x12 << 9) | 301),
    ((0x13 << 9) | 58),
    ((0x13 << 9) | 8),
    ((0x13 << 9) | 333),
    ((0x12 << 9) | 196),
    (0xd << 9) | 0x0,
    (0x7 << 9) | 0x19,
    (0x3 << 9) | 0x2f,
    (0x3 << 9) | 0x8,
    -1, 2,
    ((0x0 << 9) | 174),
    ((0x15 << 9) | 174),
    (0xb << 9) | 0x25,
    (0x2 << 9) | 0x47,
    ((0x0 << 9) | 387),
    (0x2 << 9) | 0x64,
    (0x9 << 9) | 0x8,
    (0xa << 9) | 0x27,
    ((0x13 << 9) | 286),
    (0x8 << 9) | 0x37,
    (0x10 << 9) | 0x1d,
    (0x9 << 9) | 0x21,
    (0xc << 9) | 0x12,
    ((0x13 << 9) | 275),
    (0x2 << 9) | 0x30,
    (0xf << 9) | 0xb,
    (0x2 << 9) | 0x51,
    (0x7 << 9) | 0x3a,
    (0x2 << 9) | 0x6,
    (0x3 << 9) | 0x36,
    ((0x13 << 9) | 334),
    ((0x12 << 9) | 231),
    (0x8 << 9) | 0xb,
    (0x8 << 9) | 0x5,
    (0x8 << 9) | 0x13,
    (0x8 << 9) | 0xc,
    (0x8 << 9) | 0x29,
    (0x5 << 9) | 0x31,
    (0xc << 9) | 0x1d,
    ((0x15 << 9) | 2),
};

const u16 gEasyChatWordsByLetter_J[] = {
    -1, 2,
    ((0x0 << 9) | 39),
    ((0x15 << 9) | 39),
    ((0x0 << 9) | 409),
    (0x7 << 9) | 0x24,
    ((0x15 << 9) | 135),
    (0x9 << 9) | 0x1c,
    (0x11 << 9) | 0x6,
    ((0x13 << 9) | 26),
    ((0x15 << 9) | 189),
    (0x7 << 9) | 0x1e,
    ((0x15 << 9) | 124),
};

const u16 gEasyChatWordsByLetter_K[] = {
    ((0x15 << 9) | 140),
    ((0x15 << 9) | 141),
    -1, 2,
    ((0x0 << 9) | 64),
    ((0x15 << 9) | 64),
    ((0x15 << 9) | 14),
    ((0x15 << 9) | 115),
    ((0x12 << 9) | 2),
    ((0x0 << 9) | 317),
    (0x2 << 9) | 0x2f,
    (0x5 << 9) | 0x21,
    (0x14 << 9) | 0xc,
    (0xa << 9) | 0x3f,
    (0xc << 9) | 0x28,
    ((0x12 << 9) | 134),
    -1, 2,
    ((0x0 << 9) | 230),
    ((0x15 << 9) | 230),
    ((0x15 << 9) | 99),
    ((0x0 << 9) | 393),
    ((0x13 << 9) | 282),
    (0x14 << 9) | 0x17,
    (0xb << 9) | 0x20,
    (0xb << 9) | 0x21,
    -1, 2,
    ((0x0 << 9) | 109),
    ((0x15 << 9) | 109),
    ((0x15 << 9) | 98),
    (0x14 << 9) | 0x0,
    ((0x0 << 9) | 404),
};

const u16 gEasyChatWordsByLetter_L[] = {
    (0x9 << 9) | 0x2d,
    (0xa << 9) | 0x3b,
    (0x5 << 9) | 0x32,
    ((0x0 << 9) | 383),
    (0x6 << 9) | 0x39,
    -1, 2,
    ((0x0 << 9) | 171),
    ((0x15 << 9) | 171),
    ((0x15 << 9) | 131),
    ((0x15 << 9) | 246),
    (0xe << 9) | 0x3,
    (0xa << 9) | 0x14,
    (0xe << 9) | 0x10,
    ((0x0 << 9) | 407),
    ((0x0 << 9) | 408),
    (0xb << 9) | 0x16,
    (0x7 << 9) | 0x4,
    (0x3 << 9) | 0x3c,
    (0x11 << 9) | 0xd,
    (0x1 << 9) | 0x18,
    ((0x13 << 9) | 348),
    (0xb << 9) | 0x12,
    ((0x15 << 9) | 166),
    ((0x15 << 9) | 165),
    ((0x12 << 9) | 141),
    ((0x13 << 9) | 73),
    ((0x13 << 9) | 43),
    (0xf << 9) | 0x28,
    (0x3 << 9) | 0x25,
    (0xa << 9) | 0x6,
    (0xc << 9) | 0x11,
    (0x3 << 9) | 0x4,
    (0x8 << 9) | 0xd,
    (0xc << 9) | 0x16,
    (0x1 << 9) | 0x12,
    (0x2 << 9) | 0x52,
    ((0x12 << 9) | 122),
    ((0x15 << 9) | 108),
    (0x7 << 9) | 0x3,
    (0xc << 9) | 0x29,
    ((0x13 << 9) | 113),
    (0x2 << 9) | 0x4d,
    (0x8 << 9) | 0x3a,
    (0x8 << 9) | 0x9,
    (0x9 << 9) | 0x22,
    ((0x0 << 9) | 388),
    (0x2 << 9) | 0x27,
    (0x1 << 9) | 0x9,
    ((0x0 << 9) | 289),
    (0x2 << 9) | 0x55,
    (0x7 << 9) | 0x0,
    (0x4 << 9) | 0x24,
    (0xb << 9) | 0x17,
    (0xc << 9) | 0x13,
    ((0x13 << 9) | 199),
    (0xd << 9) | 0x23,
    (0x6 << 9) | 0x2c,
    (0x10 << 9) | 0x9,
    ((0x0 << 9) | 296),
    (0x9 << 9) | 0x1a,
    (0xd << 9) | 0x35,
    (0xb << 9) | 0x43,
    (0x3 << 9) | 0x31,
    (0x14 << 9) | 0xd,
    (0x14 << 9) | 0xe,
    (0x3 << 9) | 0x2e,
    (0x3 << 9) | 0x30,
    ((0x0 << 9) | 295),
    ((0x0 << 9) | 371),
    (0xa << 9) | 0x3d,
    ((0x12 << 9) | 142),
    (0x10 << 9) | 0x21,
    (0xa << 9) | 0x35,
    ((0x12 << 9) | 67),
    (0xf << 9) | 0x1,
    ((0x0 << 9) | 297),
    ((0x15 << 9) | 249),
    (0xa << 9) | 0x33,
    ((0x0 << 9) | 348),
    ((0x13 << 9) | 295),
    ((0x0 << 9) | 325),
};

const u16 gEasyChatWordsByLetter_M[] = {
    ((0x13 << 9) | 183),
    -1, 2,
    ((0x0 << 9) | 68),
    ((0x15 << 9) | 68),
    (0xc << 9) | 0x23,
    -1, 2,
    ((0x0 << 9) | 67),
    ((0x15 << 9) | 67),
    -1, 2,
    ((0x0 << 9) | 66),
    ((0x15 << 9) | 66),
    (0xd << 9) | 0x13,
    ((0x15 << 9) | 240),
    -1, 2,
    ((0x0 << 9) | 219),
    ((0x15 << 9) | 219),
    ((0x13 << 9) | 277),
    ((0x13 << 9) | 345),
    -1, 2,
    ((0x0 << 9) | 129),
    ((0x15 << 9) | 129),
    (0x2 << 9) | 0x5e,
    ((0x15 << 9) | 126),
    -1, 2,
    ((0x0 << 9) | 81),
    ((0x15 << 9) | 81),
    (0x2 << 9) | 0x28,
    -1, 2,
    ((0x0 << 9) | 82),
    ((0x15 << 9) | 82),
    ((0x13 << 9) | 222),
    (0xc << 9) | 0x24,
    (0xb << 9) | 0x1e,
    (0xd << 9) | 0x1f,
    ((0x0 << 9) | 335),
    (0x5 << 9) | 0x13,
    ((0x0 << 9) | 338),
    ((0x15 << 9) | 56),
    ((0x15 << 9) | 226),
    ((0x15 << 9) | 179),
    -1, 2,
    ((0x0 << 9) | 183),
    ((0x15 << 9) | 183),
    ((0x15 << 9) | 105),
    ((0x0 << 9) | 284),
    (0x2 << 9) | 0x4f,
    ((0x0 << 9) | 312),
    (0x11 << 9) | 0x13,
    (0x3 << 9) | 0x18,
    (0x3 << 9) | 0x0,
    ((0x0 << 9) | 355),
    (0x8 << 9) | 0x26,
    (0x11 << 9) | 0x5,
    (0x5 << 9) | 0x14,
    (0x7 << 9) | 0x2,
    ((0x12 << 9) | 212),
    ((0x0 << 9) | 357),
    ((0x13 << 9) | 96),
    ((0x0 << 9) | 356),
    (0x9 << 9) | 0x0,
    (0x4 << 9) | 0x21,
    (0xb << 9) | 0x0,
    (0x14 << 9) | 0x6,
    ((0x13 << 9) | 72),
    ((0x13 << 9) | 25),
    ((0x13 << 9) | 5),
    ((0x13 << 9) | 224),
    ((0x15 << 9) | 154),
    ((0x12 << 9) | 262),
    ((0x15 << 9) | 52),
    (0xc << 9) | 0x25,
    ((0x0 << 9) | 400),
    ((0x13 << 9) | 232),
    ((0x12 << 9) | 319),
    ((0x0 << 9) | 399),
    ((0x15 << 9) | 11),
    ((0x12 << 9) | 309),
    ((0x13 << 9) | 118),
    ((0x15 << 9) | 151),
    ((0x15 << 9) | 150),
    ((0x0 << 9) | 287),
    ((0x13 << 9) | 208),
    ((0x0 << 9) | 329),
    ((0x15 << 9) | 241),
    ((0x13 << 9) | 102),
    ((0x12 << 9) | 170),
    ((0x13 << 9) | 107),
    ((0x0 << 9) | 354),
    (0x2 << 9) | 0x5c,
    ((0x13 << 9) | 243),
    ((0x12 << 9) | 119),
    ((0x15 << 9) | 200),
    (0x9 << 9) | 0x15,
    (0x7 << 9) | 0xe,
    ((0x12 << 9) | 54),
    ((0x13 << 9) | 296),
    (0xa << 9) | 0x3e,
    (0x6 << 9) | 0x36,
    (0x7 << 9) | 0x35,
    (0x14 << 9) | 0x14,
    ((0x15 << 9) | 146),
    (0xa << 9) | 0x7,
    (0xe << 9) | 0xf,
    (0xc << 9) | 0x2,
    (0xe << 9) | 0x18,
    (0x7 << 9) | 0x32,
    ((0x13 << 9) | 236),
    (0x7 << 9) | 0x36,
    (0xe << 9) | 0x1,
    ((0x12 << 9) | 234),
    (0x5 << 9) | 0x8,
    (0x3 << 9) | 0x3e,
    (0xd << 9) | 0x3,
    (0x5 << 9) | 0x23,
    ((0x15 << 9) | 122),
    (0x5 << 9) | 0x24,
    (0xa << 9) | 0x21,
    (0x14 << 9) | 0x4,
    ((0x13 << 9) | 341),
    ((0x13 << 9) | 300),
    ((0x13 << 9) | 189),
    ((0x13 << 9) | 330),
    ((0x0 << 9) | 283),
    (0x6 << 9) | 0x35,
    -1, 2,
    ((0x0 << 9) | 89),
    ((0x15 << 9) | 89),
    ((0x15 << 9) | 198),
    (0xd << 9) | 0x8,
    (0x7 << 9) | 0x20,
    (0x5 << 9) | 0x28,
    (0x5 << 9) | 0x25,
    (0xa << 9) | 0x3a,
};

const u16 gEasyChatWordsByLetter_N[] = {
    (0xc << 9) | 0x1e,
    (0xd << 9) | 0x28,
    -1, 2,
    ((0x0 << 9) | 177),
    ((0x15 << 9) | 177),
    (0xa << 9) | 0x31,
    (0x2 << 9) | 0x24,
    (0x7 << 9) | 0x21,
    (0x1 << 9) | 0x6,
    ((0x12 << 9) | 267),
    (0xf << 9) | 0x1f,
    (0xe << 9) | 0x28,
    (0xa << 9) | 0xf,
    ((0x13 << 9) | 302),
    (0x9 << 9) | 0x3b,
    (0x9 << 9) | 0x1e,
    (0x14 << 9) | 0xa,
    (0xc << 9) | 0x1f,
    (0xe << 9) | 0x1c,
    (0x9 << 9) | 0x32,
    ((0x15 << 9) | 34),
    ((0x15 << 9) | 31),
    ((0x15 << 9) | 29),
    ((0x15 << 9) | 32),
    ((0x15 << 9) | 30),
    ((0x15 << 9) | 33),
    (0xe << 9) | 0x2b,
    ((0x13 << 9) | 101),
    ((0x12 << 9) | 171),
    (0xe << 9) | 0x2a,
    ((0x0 << 9) | 301),
    -1, 2,
    ((0x0 << 9) | 38),
    ((0x15 << 9) | 38),
    ((0x0 << 9) | 302),
    (0x7 << 9) | 0x6,
    (0x4 << 9) | 0x1d,
    (0x3 << 9) | 0xc,
    (0x3 << 9) | 0x2,
    ((0x15 << 9) | 164),
    (0xa << 9) | 0x12,
    (0xa << 9) | 0x2d,
    (0xa << 9) | 0x2f,
    (0x6 << 9) | 0xd,
    (0x2 << 9) | 0x45,
    ((0x0 << 9) | 320),
    (0x8 << 9) | 0x22,
    (0x7 << 9) | 0x1,
    (0xa << 9) | 0x30,
    (0xe << 9) | 0x1a,
    ((0x0 << 9) | 339),
    ((0x0 << 9) | 299),
};

const u16 gEasyChatWordsByLetter_O[] = {
    (0x2 << 9) | 0x40,
    ((0x12 << 9) | 190),
    ((0x15 << 9) | 224),
    -1, 2,
    ((0x0 << 9) | 43),
    ((0x15 << 9) | 43),
    ((0x12 << 9) | 316),
    (0x8 << 9) | 0x34,
    (0x8 << 9) | 0x2d,
    (0x3 << 9) | 0x1a,
    (0x6 << 9) | 0x1d,
    (0x6 << 9) | 0x33,
    (0x6 << 9) | 0x1c,
    (0x6 << 9) | 0x37,
    (0x6 << 9) | 0xc,
    (0x4 << 9) | 0x7,
    (0x6 << 9) | 0x1b,
    (0x8 << 9) | 0x24,
    (0x6 << 9) | 0x38,
    (0x14 << 9) | 0x1e,
    (0xe << 9) | 0x26,
    ((0x15 << 9) | 138),
    ((0x15 << 9) | 139),
    (0x8 << 9) | 0x2c,
    (0x8 << 9) | 0x43,
    ((0x15 << 9) | 95),
    (0x7 << 9) | 0x16,
    (0x6 << 9) | 0x1e,
    (0x5 << 9) | 0x0,
    (0xf << 9) | 0x27,
    (0x8 << 9) | 0x2,
    (0x8 << 9) | 0xe,
    (0x5 << 9) | 0x40,
    (0x8 << 9) | 0x38,
    ((0x12 << 9) | 200),
    (0xf << 9) | 0xc,
    (0x8 << 9) | 0x28,
    (0xb << 9) | 0x41,
    (0x2 << 9) | 0x2b,
    ((0x12 << 9) | 315),
    (0xa << 9) | 0x22,
    (0xb << 9) | 0x46,
    (0x2 << 9) | 0x5d,
};

const u16 gEasyChatWordsByLetter_P[] = {
    ((0x12 << 9) | 220),
    ((0x15 << 9) | 46),
    ((0x15 << 9) | 47),
    (0x4 << 9) | 0x13,
    (0x5 << 9) | 0x12,
    (0x3 << 9) | 0x33,
    (0xc << 9) | 0x21,
    (0x2 << 9) | 0x67,
    ((0x13 << 9) | 6),
    (0xd << 9) | 0x25,
    ((0x13 << 9) | 64),
    ((0x0 << 9) | 310),
    (0x7 << 9) | 0x2a,
    (0xa << 9) | 0x19,
    ((0x13 << 9) | 195),
    ((0x15 << 9) | 53),
    (0x5 << 9) | 0x35,
    ((0x13 << 9) | 80),
    -1, 2,
    ((0x0 << 9) | 231),
    ((0x15 << 9) | 231),
    (0xc << 9) | 0x1c,
    -1, 2,
    ((0x0 << 9) | 172),
    ((0x15 << 9) | 172),
    (0x2 << 9) | 0x66,
    ((0x15 << 9) | 18),
    ((0x15 << 9) | 17),
    ((0x15 << 9) | 16),
    -1, 2,
    ((0x0 << 9) | 25),
    ((0x15 << 9) | 25),
    ((0x15 << 9) | 221),
    ((0x13 << 9) | 42),
    ((0x15 << 9) | 204),
    -1, 2,
    ((0x0 << 9) | 127),
    ((0x15 << 9) | 127),
    (0x2 << 9) | 0x59,
    (0x5 << 9) | 0x1b,
    (0xd << 9) | 0x32,
    (0x9 << 9) | 0x1,
    (0xb << 9) | 0x4,
    (0xb << 9) | 0x5,
    (0xb << 9) | 0x11,
    (0x2 << 9) | 0x53,
    (0xd << 9) | 0x24,
    ((0x0 << 9) | 353),
    (0x3 << 9) | 0x2b,
    (0x2 << 9) | 0x3c,
    ((0x13 << 9) | 305),
    ((0x13 << 9) | 139),
    (0x2 << 9) | 0x3d,
    ((0x13 << 9) | 40),
    ((0x13 << 9) | 342),
    ((0x13 << 9) | 77),
    (0x11 << 9) | 0x12,
    (0x1 << 9) | 0x10,
    (0x1 << 9) | 0xe,
    (0x1 << 9) | 0xd,
    ((0x15 << 9) | 186),
    ((0x15 << 9) | 60),
    ((0x15 << 9) | 61),
    ((0x15 << 9) | 62),
    ((0x15 << 9) | 77),
    ((0x0 << 9) | 286),
    (0xc << 9) | 0x20,
    ((0x15 << 9) | 137),
    ((0x15 << 9) | 233),
    ((0x13 << 9) | 1),
    ((0x12 << 9) | 181),
    (0x3 << 9) | 0x1e,
    (0xb << 9) | 0x40,
    (0xa << 9) | 0x2e,
    ((0x13 << 9) | 217),
    (0x2 << 9) | 0x54,
    (0xb << 9) | 0x3f,
    (0xa << 9) | 0x1a,
    ((0x15 << 9) | 57),
    (0x7 << 9) | 0x18,
    (0xc << 9) | 0x26,
    ((0x13 << 9) | 182),
    ((0x12 << 9) | 60),
    ((0x12 << 9) | 244),
    -1, 2,
    (0x2 << 9) | 0xe,
    ((0x12 << 9) | 94),
    ((0x12 << 9) | 354),
    -1, 2,
    ((0x0 << 9) | 54),
    ((0x15 << 9) | 54),
    ((0x12 << 9) | 149),
    ((0x15 << 9) | 247),
    (0x2 << 9) | 0x6b,
    ((0x12 << 9) | 228),
    (0x3 << 9) | 0x3b,
};

const u16 gEasyChatWordsByLetter_Q[] = {
    ((0x15 << 9) | 195),
    (0x9 << 9) | 0x42,
    ((0x13 << 9) | 98),
    ((0x15 << 9) | 156),
    (0x7 << 9) | 0x7,
    ((0x15 << 9) | 211),
};

const u16 gEasyChatWordsByLetter_R[] = {
    (0xc << 9) | 0x2a,
    ((0x12 << 9) | 99),
    -1, 2,
    ((0x0 << 9) | 26),
    ((0x15 << 9) | 26),
    ((0x15 << 9) | 243),
    ((0x12 << 9) | 240),
    (0x2 << 9) | 0x3,
    ((0x0 << 9) | 392),
    (0x11 << 9) | 0x14,
    ((0x12 << 9) | 229),
    ((0x15 << 9) | 78),
    (0x9 << 9) | 0x3a,
    (0x7 << 9) | 0x33,
    ((0x15 << 9) | 20),
    ((0x15 << 9) | 19),
    ((0x0 << 9) | 406),
    ((0x13 << 9) | 75),
    ((0x12 << 9) | 13),
    (0x7 << 9) | 0x25,
    (0x7 << 9) | 0x2c,
    (0xf << 9) | 0x3,
    (0x3 << 9) | 0x37,
    (0x7 << 9) | 0x5,
    ((0x12 << 9) | 105),
    ((0x13 << 9) | 278),
    (0x1 << 9) | 0x13,
    ((0x13 << 9) | 115),
    ((0x13 << 9) | 287),
    (0xa << 9) | 0x1f,
    (0xb << 9) | 0x22,
    ((0x0 << 9) | 402),
    ((0x0 << 9) | 401),
    ((0x0 << 9) | 403),
    (0x3 << 9) | 0x34,
    (0xb << 9) | 0x35,
    ((0x0 << 9) | 381),
    ((0x15 << 9) | 223),
    (0xc << 9) | 0x2b,
    ((0x13 << 9) | 156),
    (0x3 << 9) | 0x2a,
    ((0x12 << 9) | 216),
    ((0x13 << 9) | 279),
    ((0x12 << 9) | 179),
    -1, 2,
    ((0x0 << 9) | 112),
    ((0x15 << 9) | 112),
    -1, 2,
    ((0x0 << 9) | 111),
    ((0x15 << 9) | 111),
    (0x11 << 9) | 0x15,
    (0x10 << 9) | 0x1,
    (0xf << 9) | 0x29,
    (0x10 << 9) | 0x1b,
    (0x5 << 9) | 0x42,
    ((0x13 << 9) | 46),
    (0x2 << 9) | 0xa,
    ((0x13 << 9) | 350),
    (0x2 << 9) | 0x7,
    ((0x12 << 9) | 157),
    ((0x12 << 9) | 249),
    ((0x12 << 9) | 88),
    ((0x12 << 9) | 317),
    (0x10 << 9) | 0x2,
    ((0x13 << 9) | 272),
    ((0x13 << 9) | 27),
    ((0x12 << 9) | 205),
    (0x9 << 9) | 0x41,
    (0x11 << 9) | 0x1a,
    ((0x0 << 9) | 363),
    (0x2 << 9) | 0x22,
    (0xd << 9) | 0x10,
    (0x1 << 9) | 0x11,
    (0x3 << 9) | 0x3d,
    (0xb << 9) | 0x38,
    (0x2 << 9) | 0x42,
    (0xb << 9) | 0x37,
};

const u16 gEasyChatWordsByLetter_S[] = {
    ((0x0 << 9) | 322),
    ((0x12 << 9) | 221),
    (0x9 << 9) | 0xe,
    (0x10 << 9) | 0xb,
    ((0x12 << 9) | 219),
    (0xb << 9) | 0xb,
    ((0x0 << 9) | 397),
    (0x2 << 9) | 0x2d,
    ((0x12 << 9) | 328),
    (0x2 << 9) | 0x2e,
    ((0x12 << 9) | 28),
    -1, 2,
    ((0x0 << 9) | 27),
    ((0x15 << 9) | 27),
    -1, 2,
    ((0x0 << 9) | 28),
    ((0x15 << 9) | 28),
    ((0x12 << 9) | 201),
    (0x1 << 9) | 0x3,
    (0x9 << 9) | 0x38,
    (0xe << 9) | 0x1e,
    (0xb << 9) | 0x9,
    (0x9 << 9) | 0x19,
    ((0x12 << 9) | 184),
    (0x10 << 9) | 0x16,
    ((0x0 << 9) | 279),
    (0xc << 9) | 0x6,
    ((0x15 << 9) | 212),
    ((0x13 << 9) | 10),
    ((0x12 << 9) | 103),
    ((0x15 << 9) | 123),
    -1, 2,
    ((0x0 << 9) | 117),
    ((0x15 << 9) | 117),
    -1, 2,
    ((0x0 << 9) | 119),
    ((0x15 << 9) | 119),
    ((0x0 << 9) | 342),
    (0xb << 9) | 0x1d,
    (0xa << 9) | 0x39,
    (0x11 << 9) | 0x10,
    ((0x13 << 9) | 290),
    (0x9 << 9) | 0x39,
    (0x4 << 9) | 0x15,
    ((0x0 << 9) | 298),
    (0xb << 9) | 0x45,
    ((0x15 << 9) | 86),
    (0xa << 9) | 0x43,
    (0xb << 9) | 0x44,
    ((0x13 << 9) | 69),
    ((0x12 << 9) | 120),
    (0x3 << 9) | 0x1b,
    ((0x15 << 9) | 161),
    (0x2 << 9) | 0x3b,
    (0x3 << 9) | 0x2c,
    (0x7 << 9) | 0x2e,
    (0xc << 9) | 0xc,
    ((0x0 << 9) | 379),
    ((0x12 << 9) | 247),
    ((0x12 << 9) | 325),
    (0x2 << 9) | 0x11,
    (0x14 << 9) | 0x12,
    (0x14 << 9) | 0x11,
    (0x10 << 9) | 0x1a,
    (0xf << 9) | 0x24,
    ((0x0 << 9) | 331),
    ((0x12 << 9) | 159),
    (0x5 << 9) | 0x45,
    (0x5 << 9) | 0x49,
    (0x5 << 9) | 0x46,
    (0x2 << 9) | 0x35,
    ((0x0 << 9) | 303),
    ((0x12 << 9) | 329),
    ((0x0 << 9) | 396),
    (0x2 << 9) | 0x23,
    ((0x15 << 9) | 90),
    (0x2 << 9) | 0x6c,
    ((0x0 << 9) | 300),
    (0x2 << 9) | 0x4a,
    ((0x13 << 9) | 351),
    (0x6 << 9) | 0x1f,
    (0xd << 9) | 0xa,
    (0x9 << 9) | 0x31,
    (0xb << 9) | 0x42,
    (0x10 << 9) | 0x1c,
    ((0x0 << 9) | 306),
    ((0x15 << 9) | 213),
    ((0x0 << 9) | 377),
    (0x5 << 9) | 0x20,
    (0x6 << 9) | 0x14,
    ((0x12 << 9) | 324),
    ((0x0 << 9) | 291),
    (0x10 << 9) | 0xa,
    (0x1 << 9) | 0x19,
    ((0x12 << 9) | 318),
    (0xa << 9) | 0x42,
    (0x8 << 9) | 0x33,
    ((0x12 << 9) | 47),
    (0xb << 9) | 0x3d,
    (0x5 << 9) | 0xf,
    -1, 2,
    ((0x0 << 9) | 227),
    ((0x15 << 9) | 227),
    ((0x12 << 9) | 166),
    (0xa << 9) | 0x2b,
    ((0x12 << 9) | 285),
    (0xa << 9) | 0x11,
    ((0x15 << 9) | 188),
    ((0x0 << 9) | 315),
    ((0x13 << 9) | 130),
    ((0x12 << 9) | 143),
    ((0x12 << 9) | 327),
    ((0x13 << 9) | 303),
    ((0x0 << 9) | 366),
    ((0x0 << 9) | 364),
    ((0x13 << 9) | 21),
    ((0x12 << 9) | 163),
    (0xb << 9) | 0x34,
    ((0x13 << 9) | 79),
    ((0x13 << 9) | 214),
    (0xb << 9) | 0x33,
    (0xb << 9) | 0x28,
    (0x10 << 9) | 0x12,
    ((0x15 << 9) | 80),
    ((0x15 << 9) | 199),
    ((0x15 << 9) | 79),
    ((0x13 << 9) | 124),
    ((0x13 << 9) | 188),
    -1, 2,
    ((0x0 << 9) | 218),
    ((0x15 << 9) | 218),
    (0xb << 9) | 0x3e,
    (0xa << 9) | 0x28,
    (0x2 << 9) | 0x12,
    (0x2 << 9) | 0x13,
    ((0x15 << 9) | 235),
    (0x4 << 9) | 0x23,
    (0x14 << 9) | 0x15,
    ((0x12 << 9) | 265),
    (0x3 << 9) | 0x17,
    ((0x12 << 9) | 123),
    ((0x12 << 9) | 108),
    ((0x15 << 9) | 238),
    (0x10 << 9) | 0x11,
    ((0x13 << 9) | 289),
    ((0x15 << 9) | 215),
    ((0x12 << 9) | 173),
    ((0x15 << 9) | 143),
    (0x6 << 9) | 0x2d,
    ((0x0 << 9) | 346),
    ((0x15 << 9) | 209),
    (0x8 << 9) | 0x25,
    ((0x13 << 9) | 135),
    (0xd << 9) | 0x18,
    ((0x12 << 9) | 76),
    ((0x0 << 9) | 349),
    (0x5 << 9) | 0x4a,
    (0x7 << 9) | 0x27,
    (0x5 << 9) | 0x2c,
    (0x7 << 9) | 0x26,
    (0xe << 9) | 0x5,
    (0x5 << 9) | 0x4,
    (0xd << 9) | 0x2,
    (0xd << 9) | 0x19,
    ((0x12 << 9) | 49),
    (0xe << 9) | 0x16,
    (0x4 << 9) | 0xb,
    (0x2 << 9) | 0x57,
    (0x1 << 9) | 0xa,
    ((0x12 << 9) | 209),
    ((0x15 << 9) | 21),
    (0xd << 9) | 0xd,
    (0x2 << 9) | 0x14,
    ((0x0 << 9) | 341),
    ((0x12 << 9) | 169),
    ((0x13 << 9) | 131),
    ((0x13 << 9) | 191),
    ((0x15 << 9) | 167),
    ((0x0 << 9) | 308),
    (0x10 << 9) | 0x7,
    (0x3 << 9) | 0xd,
    ((0x13 << 9) | 255),
    ((0x12 << 9) | 180),
    ((0x13 << 9) | 150),
    ((0x0 << 9) | 351),
    ((0x12 << 9) | 147),
    (0xd << 9) | 0x17,
    (0xe << 9) | 0x22,
    ((0x15 << 9) | 7),
    (0x11 << 9) | 0x8,
    ((0x15 << 9) | 234),
    -1, 2,
    ((0x0 << 9) | 121),
    ((0x15 << 9) | 121),
    (0xe << 9) | 0x17,
    -1, 2,
    ((0x0 << 9) | 120),
    ((0x15 << 9) | 120),
    (0x2 << 9) | 0x31,
    (0x11 << 9) | 0x2,
    (0x2 << 9) | 0x46,
    ((0x13 << 9) | 211),
    ((0x15 << 9) | 208),
    (0x2 << 9) | 0x1,
    (0x2 << 9) | 0x43,
    ((0x13 << 9) | 254),
    ((0x13 << 9) | 23),
    (0xe << 9) | 0x19,
    (0xc << 9) | 0xb,
    (0xb << 9) | 0x23,
    (0xb << 9) | 0x14,
    (0x3 << 9) | 0x16,
    ((0x12 << 9) | 70),
    ((0x12 << 9) | 81),
    (0x3 << 9) | 0x20,
    ((0x13 << 9) | 165),
    (0xc << 9) | 0x22,
    ((0x12 << 9) | 78),
    (0x2 << 9) | 0x1a,
    ((0x12 << 9) | 66),
    ((0x13 << 9) | 164),
    (0x2 << 9) | 0x1b,
    ((0x15 << 9) | 185),
    ((0x15 << 9) | 245),
    (0xe << 9) | 0x1f,
    (0xe << 9) | 0x20,
    ((0x15 << 9) | 192),
    ((0x15 << 9) | 191),
    ((0x13 << 9) | 241),
    (0x11 << 9) | 0x7,
    ((0x12 << 9) | 162),
    ((0x13 << 9) | 276),
    ((0x13 << 9) | 48),
    ((0x13 << 9) | 57),
    (0x9 << 9) | 0x34,
    (0x3 << 9) | 0x13,
    ((0x0 << 9) | 311),
    ((0x0 << 9) | 358),
    ((0x12 << 9) | 207),
    ((0x13 << 9) | 256),
    ((0x0 << 9) | 368),
    ((0x0 << 9) | 285),
    (0x2 << 9) | 0x62,
    ((0x13 << 9) | 186),
    ((0x12 << 9) | 230),
    (0xd << 9) | 0x4,
    ((0x0 << 9) | 305),
    ((0x12 << 9) | 129),
    (0x2 << 9) | 0x2c,
    ((0x15 << 9) | 220),
    ((0x13 << 9) | 14),
    (0x2 << 9) | 0x2a,
    ((0x12 << 9) | 235),
    (0xc << 9) | 0xe,
};

const u16 gEasyChatWordsByLetter_T[] = {
    ((0x13 << 9) | 33),
    ((0x13 << 9) | 294),
    ((0x12 << 9) | 39),
    ((0x0 << 9) | 304),
    (0xb << 9) | 0x47,
    ((0x13 << 9) | 36),
    (0x3 << 9) | 0x10,
    (0x3 << 9) | 0x15,
    (0xb << 9) | 0x3c,
    (0xb << 9) | 0x3b,
    ((0x15 << 9) | 114),
    (0xa << 9) | 0x10,
    ((0x13 << 9) | 269),
    ((0x15 << 9) | 128),
    (0x6 << 9) | 0x24,
    (0xb << 9) | 0xf,
    (0xc << 9) | 0x14,
    (0xb << 9) | 0x10,
    ((0x15 << 9) | 216),
    ((0x13 << 9) | 298),
    ((0x13 << 9) | 100),
    (0xc << 9) | 0x1b,
    -1, 2,
    ((0x0 << 9) | 72),
    ((0x15 << 9) | 72),
    -1, 2,
    ((0x0 << 9) | 73),
    ((0x15 << 9) | 73),
    (0x9 << 9) | 0x30,
    (0xc << 9) | 0x19,
    (0x8 << 9) | 0x42,
    (0x4 << 9) | 0x11,
    (0x4 << 9) | 0x0,
    (0xf << 9) | 0x14,
    (0xf << 9) | 0x19,
    (0x7 << 9) | 0x1d,
    (0xf << 9) | 0x17,
    (0x7 << 9) | 0xd,
    (0x5 << 9) | 0x3a,
    (0x8 << 9) | 0x23,
    (0xf << 9) | 0x11,
    (0xf << 9) | 0x12,
    (0x5 << 9) | 0x37,
    (0x5 << 9) | 0x38,
    (0x5 << 9) | 0x3b,
    (0x5 << 9) | 0x3c,
    (0x10 << 9) | 0x10,
    (0x2 << 9) | 0x2,
    ((0x13 << 9) | 168),
    (0x10 << 9) | 0x13,
    (0xf << 9) | 0x5,
    (0xf << 9) | 0x4,
    (0x9 << 9) | 0x12,
    (0xb << 9) | 0x26,
    (0x10 << 9) | 0x8,
    (0xf << 9) | 0xf,
    (0xf << 9) | 0xe,
    (0x8 << 9) | 0x12,
    (0xf << 9) | 0x15,
    (0xf << 9) | 0x16,
    ((0x12 << 9) | 37),
    (0xb << 9) | 0x31,
    ((0x12 << 9) | 87),
    ((0x13 << 9) | 86),
    ((0x12 << 9) | 85),
    ((0x12 << 9) | 9),
    ((0x13 << 9) | 84),
    (0xe << 9) | 0x29,
    ((0x12 << 9) | 321),
    (0x10 << 9) | 0x5,
    (0x10 << 9) | 0x4,
    (0xe << 9) | 0x13,
    (0x8 << 9) | 0x3,
    (0xa << 9) | 0x2a,
    (0x8 << 9) | 0x2f,
    (0x5 << 9) | 0x47,
    (0x5 << 9) | 0x27,
    (0x5 << 9) | 0x39,
    (0x5 << 9) | 0x3f,
    (0x5 << 9) | 0x2e,
    (0xe << 9) | 0xd,
    ((0x15 << 9) | 175),
    (0xa << 9) | 0xb,
    ((0x15 << 9) | 176),
    (0xe << 9) | 0x2,
    (0x8 << 9) | 0x39,
    (0x7 << 9) | 0x37,
    (0x3 << 9) | 0x21,
    (0x3 << 9) | 0x3a,
    (0xa << 9) | 0x2c,
    ((0x0 << 9) | 280),
    ((0x0 << 9) | 321),
    ((0x12 << 9) | 259),
    (0x2 << 9) | 0x1e,
    (0x7 << 9) | 0x2f,
    ((0x15 << 9) | 158),
    (0x2 << 9) | 0x33,
    (0x2 << 9) | 0x34,
    (0xc << 9) | 0x15,
    (0x11 << 9) | 0x18,
    ((0x13 << 9) | 92),
    (0xd << 9) | 0x7,
    (0x2 << 9) | 0x3f,
    (0x1 << 9) | 0x2,
    (0xc << 9) | 0xf,
    (0x1 << 9) | 0xb,
    (0xb << 9) | 0x19,
    ((0x13 << 9) | 144),
    ((0x0 << 9) | 332),
    (0xd << 9) | 0x1c,
    (0xd << 9) | 0x1b,
    ((0x0 << 9) | 277),
    (0xd << 9) | 0x33,
    ((0x13 << 9) | 161),
    ((0x13 << 9) | 271),
    (0x9 << 9) | 0x10,
    ((0x13 << 9) | 167),
    ((0x0 << 9) | 369),
    (0x2 << 9) | 0x41,
    (0x7 << 9) | 0x2d,
    (0x3 << 9) | 0xf,
    (0xb << 9) | 0x15,
    (0x9 << 9) | 0xf,
    (0xe << 9) | 0xb,
    ((0x13 << 9) | 41),
    (0x10 << 9) | 0x6,
    ((0x13 << 9) | 239),
    (0x2 << 9) | 0x32,
    ((0x15 << 9) | 157),
    ((0x15 << 9) | 248),
    ((0x15 << 9) | 236),
};

const u16 gEasyChatWordsByLetter_U[] = {
    (0x14 << 9) | 0x20,
    (0x6 << 9) | 0x32,
    (0x6 << 9) | 0x9,
    (0xf << 9) | 0x2,
    ((0x15 << 9) | 197),
    (0xa << 9) | 0x20,
    (0x6 << 9) | 0x15,
    (0x5 << 9) | 0xa,
    (0x9 << 9) | 0x43,
    (0x9 << 9) | 0x44,
    (0x7 << 9) | 0x23,
    (0x11 << 9) | 0x19,
    ((0x15 << 9) | 201),
    (0x7 << 9) | 0x30,
    (0xf << 9) | 0x1b,
    (0x14 << 9) | 0x13,
    ((0x12 << 9) | 253),
    (0xa << 9) | 0x1d,
    (0x6 << 9) | 0xe,
    ((0x15 << 9) | 217),
    (0xb << 9) | 0x2a,
    (0x10 << 9) | 0xd,
    (0xb << 9) | 0x2b,
    (0xb << 9) | 0x2c,
};

const u16 gEasyChatWordsByLetter_V[] = {
    (0xd << 9) | 0x34,
    ((0x15 << 9) | 134),
    ((0x15 << 9) | 49),
    ((0x15 << 9) | 48),
    ((0x15 << 9) | 3),
    (0x1 << 9) | 0xc,
    (0x3 << 9) | 0x1c,
    (0x7 << 9) | 0x1a,
    ((0x0 << 9) | 333),
    ((0x13 << 9) | 11),
    (0x3 << 9) | 0x19,
    ((0x15 << 9) | 71),
    (0xd << 9) | 0xc,
    ((0x0 << 9) | 365),
    -1, 2,
    ((0x0 << 9) | 45),
    ((0x15 << 9) | 45),
    ((0x13 << 9) | 22),
    (0x2 << 9) | 0x69,
    ((0x12 << 9) | 233),
    ((0x0 << 9) | 386),
    (0x2 << 9) | 0x37,
    ((0x13 << 9) | 344),
    -1, 2,
    ((0x0 << 9) | 100),
    ((0x15 << 9) | 100),
    (0x10 << 9) | 0x15,
    -1, 2,
    ((0x0 << 9) | 37),
    ((0x15 << 9) | 37),
};

const u16 gEasyChatWordsByLetter_W[] = {
    (0x6 << 9) | 0xa,
    (0x6 << 9) | 0x3e,
    ((0x0 << 9) | 313),
    ((0x0 << 9) | 314),
    (0x9 << 9) | 0x37,
    (0xb << 9) | 0xc,
    (0xb << 9) | 0xd,
    (0xd << 9) | 0x14,
    (0xb << 9) | 0x7,
    (0xb << 9) | 0x8,
    ((0x0 << 9) | 343),
    (0x10 << 9) | 0x0,
    (0x14 << 9) | 0x1b,
    (0x9 << 9) | 0x36,
    (0x9 << 9) | 0x14,
    ((0x15 << 9) | 8),
    (0x8 << 9) | 0x10,
    (0x8 << 9) | 0x1c,
    (0x2 << 9) | 0x5f,
    (0x2 << 9) | 0x38,
    ((0x13 << 9) | 55),
    ((0x13 << 9) | 352),
    ((0x13 << 9) | 346),
    ((0x12 << 9) | 323),
    (0x2 << 9) | 0x60,
    ((0x13 << 9) | 127),
    (0x6 << 9) | 0x23,
    (0x5 << 9) | 0x3d,
    (0x5 << 9) | 0x41,
    (0x5 << 9) | 0x43,
    (0x3 << 9) | 0x39,
    (0xa << 9) | 0x41,
    ((0x12 << 9) | 311),
    (0xe << 9) | 0x15,
    ((0x15 << 9) | 13),
    (0xe << 9) | 0x2c,
    ((0x15 << 9) | 70),
    -1, 2,
    ((0x0 << 9) | 110),
    ((0x15 << 9) | 110),
    (0xa << 9) | 0x9,
    (0x4 << 9) | 0x6,
    (0xa << 9) | 0x40,
    (0x4 << 9) | 0x17,
    (0xb << 9) | 0xa,
    (0x8 << 9) | 0x11,
    (0x8 << 9) | 0x1d,
    (0xf << 9) | 0x22,
    (0x4 << 9) | 0x1b,
    (0xf << 9) | 0x21,
    (0x3 << 9) | 0x9,
    (0xf << 9) | 0x20,
    (0x8 << 9) | 0x1b,
    (0x8 << 9) | 0x41,
    ((0x12 << 9) | 250),
    ((0x13 << 9) | 18),
    ((0x0 << 9) | 324),
    ((0x0 << 9) | 370),
    (0x2 << 9) | 0x29,
    (0x5 << 9) | 0x2b,
    (0x5 << 9) | 0x30,
    (0x5 << 9) | 0x2d,
    (0x6 << 9) | 0x10,
    (0x8 << 9) | 0x1a,
    (0x5 << 9) | 0x2f,
    (0xf << 9) | 0x25,
    -1, 2,
    ((0x0 << 9) | 40),
    ((0x15 << 9) | 40),
    (0x7 << 9) | 0x1c,
    (0x8 << 9) | 0x0,
    (0x8 << 9) | 0x1,
    ((0x12 << 9) | 261),
    (0x10 << 9) | 0x18,
    (0x3 << 9) | 0x6,
    ((0x13 << 9) | 17),
    ((0x0 << 9) | 309),
    (0x14 << 9) | 0x19,
    (0x3 << 9) | 0x5,
    (0xe << 9) | 0x24,
    (0x11 << 9) | 0x1b,
    ((0x13 << 9) | 273),
    (0x8 << 9) | 0x30,
    ((0x12 << 9) | 110),
    (0x8 << 9) | 0x3e,
    (0x10 << 9) | 0x19,
    -1, 2,
    ((0x0 << 9) | 202),
    ((0x15 << 9) | 202),
    (0x5 << 9) | 0x44,
    (0x3 << 9) | 0x7,
    (0x8 << 9) | 0x14,
    (0x8 << 9) | 0x4,
    (0x2 << 9) | 0x50,
    ((0x15 << 9) | 194),
    (0xc << 9) | 0xa,
    (0xc << 9) | 0xd,
    (0xb << 9) | 0x3a,
    (0xb << 9) | 0x39,
    (0xc << 9) | 0x2c,
    (0xb << 9) | 0x32,
    (0x8 << 9) | 0xa,
    (0x6 << 9) | 0x12,
    (0x6 << 9) | 0x3c,
    ((0x13 << 9) | 35),
    (0x6 << 9) | 0x11,
    ((0x0 << 9) | 290),
    ((0x0 << 9) | 360),
};

const u16 gEasyChatWordsByLetter_X[] = {
    -1, 2,
    ((0x0 << 9) | 178),
    ((0x15 << 9) | 178),
};

const u16 gEasyChatWordsByLetter_Y[] = {
    (0x4 << 9) | 0x26,
    ((0x15 << 9) | 193),
    ((0x12 << 9) | 281),
    (0x6 << 9) | 0x3a,
    (0x4 << 9) | 0x5,
    (0x4 << 9) | 0x1f,
    (0x14 << 9) | 0x5,
    (0x4 << 9) | 0x1,
    (0x14 << 9) | 0x1,
    (0xe << 9) | 0xc,
    (0x10 << 9) | 0x1e,
    (0x4 << 9) | 0x27,
    (0x5 << 9) | 0x2,
    (0x5 << 9) | 0x6,
    (0x5 << 9) | 0x7,
    (0x14 << 9) | 0x1f,
    (0x5 << 9) | 0x5,
    (0x5 << 9) | 0x3,
    (0x6 << 9) | 0x27,
};

const u16 gEasyChatWordsByLetter_Z[] = {
    ((0x0 << 9) | 380),
    ((0x13 << 9) | 192),
    ((0x15 << 9) | 145),
    ((0x0 << 9) | 288),
    -1, 2,
    ((0x0 << 9) | 41),
    ((0x15 << 9) | 41),
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseHi[] = {
    ((0x15 << 9) | 173),
    (0x6 << 9) | 0x29,
    ((0x15 << 9) | 13),
    (0xd << 9) | 0x27,
    -1, 2,
    ((0x15 << 9) | 25),
    ((0x0 << 9) | 25),
    ((0x13 << 9) | 113),
    (0x2 << 9) | 0x4a,
    (0xa << 9) | 0x35,
    ((0x15 << 9) | 36),
    (0x2 << 9) | 0x4b,
    ((0x15 << 9) | 18),
    ((0x15 << 9) | 17),
    (0xf << 9) | 0x28,
    -1, 2,
    ((0x15 << 9) | 172),
    ((0x0 << 9) | 172),
    ((0x13 << 9) | 10),
    (0x9 << 9) | 0x34,
    ((0x13 << 9) | 158),
    ((0x15 << 9) | 35),
    (0x2 << 9) | 0x4c,
    (0x11 << 9) | 0xf,
    (0x5 << 9) | 0x35,
    (0xa << 9) | 0x36,
    ((0x15 << 9) | 4),
    -1, 2,
    ((0x15 << 9) | 120),
    ((0x0 << 9) | 120),
    (0xa << 9) | 0x37,
    ((0x15 << 9) | 155),
    ((0x13 << 9) | 52),
    ((0x0 << 9) | 333),
    (0xa << 9) | 0x38,
    ((0x15 << 9) | 191),
    (0xa << 9) | 0x39,
    (0x11 << 9) | 0x10,
    ((0x13 << 9) | 290),
    ((0x15 << 9) | 216),
    (0x6 << 9) | 0x2a,
    ((0x13 << 9) | 146),
    (0x2 << 9) | 0x4d,
    -1, 2,
    ((0x15 << 9) | 100),
    ((0x0 << 9) | 100),
    (0xe << 9) | 0x23,
    ((0x13 << 9) | 339),
    (0xd << 9) | 0x28,
    (0xd << 9) | 0x29,
    ((0x0 << 9) | 328),
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseFu[] = {
    (0x3 << 9) | 0x29,
    ((0x15 << 9) | 146),
    (0xd << 9) | 0x2a,
    (0x9 << 9) | 0x35,
    (0x14 << 9) | 0x1a,
    ((0x13 << 9) | 286),
    ((0x15 << 9) | 136),
    -1, 2,
    ((0x15 << 9) | 65),
    ((0x0 << 9) | 65),
    ((0x15 << 9) | 126),
    ((0x0 << 9) | 352),
    ((0x13 << 9) | 297),
    ((0x15 << 9) | 205),
    ((0x13 << 9) | 18),
    (0x2 << 9) | 0x4e,
    -1, 2,
    ((0x15 << 9) | 40),
    ((0x0 << 9) | 40),
    ((0x13 << 9) | 251),
    (0xa << 9) | 0x3a,
    ((0x15 << 9) | 2),
    ((0x15 << 9) | 1),
    (0x2 << 9) | 0x4f,
    (0x2 << 9) | 0x50,
    ((0x15 << 9) | 3),
    (0xa << 9) | 0x3b,
    (0x3 << 9) | 0x2a,
    (0xb << 9) | 0x3e,
    (0x6 << 9) | 0x2b,
    ((0x15 << 9) | 142),
    (0x10 << 9) | 0x18,
    ((0x15 << 9) | 240),
    (0x6 << 9) | 0x2c,
    ((0x13 << 9) | 59),
    -1, 2,
    ((0x15 << 9) | 174),
    ((0x0 << 9) | 174),
    (0x6 << 9) | 0x2d,
    ((0x13 << 9) | 23),
    (0x2 << 9) | 0x51,
    (0xe << 9) | 0x24,
    (0x2 << 9) | 0x52,
    ((0x0 << 9) | 334),
    (0x2 << 9) | 0x53,
    ((0x13 << 9) | 307),
    ((0x0 << 9) | 353),
    ((0x15 << 9) | 197),
    ((0x13 << 9) | 148),
    (0x10 << 9) | 0x19,
    ((0x13 << 9) | 298),
    (0xb << 9) | 0x3f,
    ((0x15 << 9) | 144),
    (0x14 << 9) | 0x1b,
    -1, 2,
    ((0x15 << 9) | 39),
    ((0x0 << 9) | 39),
    ((0x15 << 9) | 209),
    (0x10 << 9) | 0x1a,
    ((0x13 << 9) | 306),
    ((0x13 << 9) | 299),
    ((0x13 << 9) | 217),
    (0x2 << 9) | 0x54,
    (0x11 << 9) | 0x11,
    (0x11 << 9) | 0x1c,
    (0x6 << 9) | 0x2e,
    ((0x13 << 9) | 284),
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseHe[] = {
    (0x4 << 9) | 0x22,
    ((0x0 << 9) | 326),
    (0x14 << 9) | 0x1c,
    ((0x15 << 9) | 153),
    (0xa << 9) | 0x3c,
    (0xa << 9) | 0x3d,
    (0x6 << 9) | 0x2f,
    -1, 2,
    ((0x15 << 9) | 88),
    ((0x0 << 9) | 88),
    -1, 2,
    ((0x15 << 9) | 89),
    ((0x0 << 9) | 89),
    (0x2 << 9) | 0x55,
    ((0x13 << 9) | 124),
    ((0x13 << 9) | 188),
    ((0x13 << 9) | 137),
    (0x6 << 9) | 0x30,
    -1, 2,
    ((0x15 << 9) | 214),
    ((0x0 << 9) | 214),
    ((0x0 << 9) | 310),
    ((0x15 << 9) | 229),
    ((0x15 << 9) | 53),
    (0x10 << 9) | 0x1b,
    ((0x15 << 9) | 108),
    (0xc << 9) | 0x22,
    (0x2 << 9) | 0x56,
    ((0x13 << 9) | 144),
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseHo[] = {
    ((0x13 << 9) | 342),
    (0x3 << 9) | 0x2b,
    ((0x15 << 9) | 250),
    (0x2 << 9) | 0x57,
    (0xd << 9) | 0x2b,
    (0x2 << 9) | 0x58,
    ((0x13 << 9) | 46),
    ((0x0 << 9) | 314),
    ((0x0 << 9) | 313),
    (0x5 << 9) | 0x36,
    (0xd << 9) | 0x2c,
    ((0x15 << 9) | 163),
    ((0x0 << 9) | 397),
    (0xd << 9) | 0x2d,
    ((0x13 << 9) | 198),
    (0x5 << 9) | 0x37,
    (0x5 << 9) | 0x38,
    (0x5 << 9) | 0x39,
    (0x5 << 9) | 0x3a,
    (0x5 << 9) | 0x3b,
    (0x5 << 9) | 0x3c,
    (0x1 << 9) | 0xd,
    (0x1 << 9) | 0xe,
    (0x1 << 9) | 0xf,
    (0x1 << 9) | 0x10,
    (0x2 << 9) | 0x59,
    ((0x13 << 9) | 293),
    (0x9 << 9) | 0x36,
    ((0x13 << 9) | 343),
    ((0x0 << 9) | 384),
    ((0x13 << 9) | 294),
    ((0x0 << 9) | 286),
    ((0x15 << 9) | 16),
    (0x7 << 9) | 0x2b,
    ((0x15 << 9) | 77),
    ((0x13 << 9) | 125),
    ((0x13 << 9) | 155),
    (0x2 << 9) | 0x5a,
    ((0x13 << 9) | 83),
    (0x2 << 9) | 0x5b,
    ((0x13 << 9) | 7),
    ((0x15 << 9) | 188),
    (0x6 << 9) | 0x31,
    (0xb << 9) | 0x40,
    (0x6 << 9) | 0x32,
    ((0x15 << 9) | 137),
    ((0x15 << 9) | 233),
    ((0x13 << 9) | 344),
    (0x11 << 9) | 0x12,
    ((0x13 << 9) | 195),
    (0x10 << 9) | 0x1c,
    ((0x0 << 9) | 385),
    (0xd << 9) | 0x2e,
    (0x3 << 9) | 0x2c,
    (0x7 << 9) | 0x2c,
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseMa[] = {
    (0x6 << 9) | 0x33,
    (0x8 << 9) | 0x37,
    (0x3 << 9) | 0x2d,
    (0x2 << 9) | 0x5c,
    ((0x0 << 9) | 354),
    (0xe << 9) | 0x25,
    (0x2 << 9) | 0x5d,
    ((0x13 << 9) | 35),
    ((0x13 << 9) | 191),
    -1, 2,
    ((0x15 << 9) | 219),
    ((0x0 << 9) | 219),
    ((0x13 << 9) | 222),
    ((0x0 << 9) | 335),
    -1, 2,
    ((0x15 << 9) | 218),
    ((0x0 << 9) | 218),
    (0x2 << 9) | 0x5e,
    ((0x15 << 9) | 156),
    (0xb << 9) | 0x41,
    (0x3 << 9) | 0x2e,
    (0x3 << 9) | 0x2f,
    (0x3 << 9) | 0x30,
    (0x3 << 9) | 0x31,
    (0x7 << 9) | 0x2d,
    (0x7 << 9) | 0x2e,
    ((0x13 << 9) | 345),
    ((0x13 << 9) | 277),
    (0xc << 9) | 0x23,
    (0x8 << 9) | 0x38,
    (0x11 << 9) | 0x13,
    (0x10 << 9) | 0x1d,
    (0x8 << 9) | 0x39,
    (0x8 << 9) | 0x3a,
    ((0x15 << 9) | 69),
    -1, 2,
    ((0x15 << 9) | 110),
    ((0x0 << 9) | 110),
    (0x4 << 9) | 0x23,
    (0x10 << 9) | 0x1e,
    (0xa << 9) | 0x3e,
    ((0x0 << 9) | 289),
    (0x7 << 9) | 0x2f,
    ((0x13 << 9) | 341),
    ((0x13 << 9) | 183),
    (0xd << 9) | 0x2f,
    (0x7 << 9) | 0x30,
    (0x9 << 9) | 0x37,
    (0x3 << 9) | 0x32,
    ((0x13 << 9) | 182),
    ((0x0 << 9) | 293),
    -1, 2,
    ((0x15 << 9) | 183),
    ((0x0 << 9) | 183),
    -1, 2,
    ((0x15 << 9) | 184),
    ((0x0 << 9) | 184),
    ((0x13 << 9) | 111),
    (0x7 << 9) | 0x31,
    ((0x0 << 9) | 368),
    -1, 2,
    ((0x15 << 9) | 101),
    ((0x0 << 9) | 101),
    ((0x13 << 9) | 27),
    (0xd << 9) | 0x30,
    ((0x15 << 9) | 56),
    (0x9 << 9) | 0x38,
    ((0x15 << 9) | 226),
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseMi[] = {
    (0x3 << 9) | 0x33,
    ((0x13 << 9) | 164),
    (0xf << 9) | 0x29,
    ((0x13 << 9) | 197),
    ((0x13 << 9) | 42),
    (0x2 << 9) | 0x5f,
    ((0x13 << 9) | 346),
    ((0x0 << 9) | 283),
    ((0x13 << 9) | 55),
    ((0x13 << 9) | 296),
    ((0x13 << 9) | 352),
    (0x2 << 9) | 0x60,
    (0xb << 9) | 0x42,
    (0x9 << 9) | 0x39,
    (0x8 << 9) | 0x3b,
    ((0x13 << 9) | 31),
    ((0x13 << 9) | 154),
    ((0x13 << 9) | 194),
    (0xb << 9) | 0x43,
    (0x3 << 9) | 0x34,
    (0x3 << 9) | 0x35,
    ((0x15 << 9) | 147),
    ((0x13 << 9) | 206),
    ((0x13 << 9) | 193),
    ((0x15 << 9) | 151),
    ((0x15 << 9) | 150),
    ((0x13 << 9) | 243),
    ((0x13 << 9) | 248),
    (0xb << 9) | 0x44,
    ((0x13 << 9) | 208),
    ((0x15 << 9) | 241),
    ((0x0 << 9) | 329),
    (0x5 << 9) | 0x3d,
    (0x5 << 9) | 0x3e,
    (0x5 << 9) | 0x3f,
    (0x5 << 9) | 0x40,
    (0x5 << 9) | 0x41,
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseMu[] = {
    (0x7 << 9) | 0x32,
    ((0x15 << 9) | 200),
    (0xe << 9) | 0x26,
    (0x6 << 9) | 0x34,
    (0x2 << 9) | 0x61,
    (0x2 << 9) | 0x62,
    (0x7 << 9) | 0x33,
    ((0x15 << 9) | 238),
    (0x3 << 9) | 0x36,
    (0x14 << 9) | 0x1d,
    (0x6 << 9) | 0x35,
    (0x6 << 9) | 0x36,
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseMe[] = {
    ((0x13 << 9) | 347),
    (0xc << 9) | 0x24,
    ((0x13 << 9) | 72),
    ((0x13 << 9) | 25),
    ((0x13 << 9) | 5),
    ((0x15 << 9) | 154),
    ((0x13 << 9) | 224),
    (0xb << 9) | 0x45,
    ((0x13 << 9) | 237),
    (0x9 << 9) | 0x3a,
    ((0x0 << 9) | 400),
    ((0x15 << 9) | 132),
    ((0x13 << 9) | 232),
    ((0x0 << 9) | 399),
    (0x10 << 9) | 0x1f,
    (0xc << 9) | 0x25,
    (0x7 << 9) | 0x34,
    -1, 2,
    ((0x15 << 9) | 72),
    ((0x0 << 9) | 72),
    (0x10 << 9) | 0x20,
    ((0x15 << 9) | 179),
    ((0x13 << 9) | 213),
    (0x2 << 9) | 0x63,
    (0x2 << 9) | 0x64,
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseMo[] = {
    (0xe << 9) | 0x27,
    (0x2 << 9) | 0x65,
    (0xe << 9) | 0x28,
    (0x7 << 9) | 0x35,
    (0x14 << 9) | 0x1e,
    (0xe << 9) | 0x29,
    ((0x15 << 9) | 180),
    (0x4 << 9) | 0x24,
    (0xb << 9) | 0x46,
    (0x7 << 9) | 0x36,
    (0x8 << 9) | 0x3c,
    (0x2 << 9) | 0x66,
    ((0x13 << 9) | 102),
    (0x7 << 9) | 0x37,
    (0x2 << 9) | 0x67,
    (0x2 << 9) | 0x68,
    (0x3 << 9) | 0x37,
    ((0x15 << 9) | 49),
    (0x8 << 9) | 0x3d,
    ((0x15 << 9) | 114),
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseYa[] = {
    (0x4 << 9) | 0x25,
    (0xc << 9) | 0x26,
    (0xa << 9) | 0x3f,
    ((0x0 << 9) | 318),
    (0xd << 9) | 0x31,
    (0x9 << 9) | 0x3b,
    ((0x13 << 9) | 218),
    (0x9 << 9) | 0x3c,
    (0x7 << 9) | 0x38,
    (0x7 << 9) | 0x39,
    (0x4 << 9) | 0x26,
    ((0x15 << 9) | 199),
    ((0x15 << 9) | 80),
    ((0x13 << 9) | 73),
    ((0x15 << 9) | 79),
    (0x9 << 9) | 0x3d,
    ((0x15 << 9) | 198),
    ((0x0 << 9) | 322),
    (0x9 << 9) | 0x3e,
    (0x9 << 9) | 0x3f,
    (0x2 << 9) | 0x69,
    ((0x0 << 9) | 365),
    (0x14 << 9) | 0x1f,
    ((0x15 << 9) | 193),
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseYu[] = {
    ((0x0 << 9) | 346),
    (0xb << 9) | 0x47,
    (0x11 << 9) | 0x19,
    ((0x13 << 9) | 118),
    (0xc << 9) | 0x27,
    ((0x13 << 9) | 138),
    (0xb << 9) | 0x48,
    (0xb << 9) | 0x49,
    ((0x0 << 9) | 389),
    -1, 2,
    ((0x15 << 9) | 64),
    ((0x0 << 9) | 64),
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseYo[] = {
    (0x8 << 9) | 0x3e,
    (0x4 << 9) | 0x27,
    ((0x13 << 9) | 51),
    (0x4 << 9) | 0x28,
    (0xc << 9) | 0x28,
    (0x2 << 9) | 0x6a,
    (0x8 << 9) | 0x3f,
    ((0x15 << 9) | 246),
    (0x6 << 9) | 0x37,
    (0x8 << 9) | 0x40,
    (0x9 << 9) | 0x40,
    ((0x13 << 9) | 96),
    (0x2 << 9) | 0x6b,
    (0xa << 9) | 0x40,
    ((0x13 << 9) | 289),
    (0x6 << 9) | 0x38,
    (0xd << 9) | 0x32,
    (0xe << 9) | 0x2a,
    (0x8 << 9) | 0x41,
    ((0x0 << 9) | 361),
    (0x3 << 9) | 0x38,
    (0x7 << 9) | 0x3a,
    (0xe << 9) | 0x2b,
    ((0x15 << 9) | 164),
    (0x4 << 9) | 0x29,
    (0x3 << 9) | 0x39,
    (0x3 << 9) | 0x3a,
    (0xa << 9) | 0x41,
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseRa[] = {
    ((0x15 << 9) | 243),
    (0xe << 9) | 0x2c,
    -1, 2,
    ((0x15 << 9) | 26),
    ((0x0 << 9) | 26),
    (0x5 << 9) | 0x42,
    (0xc << 9) | 0x29,
    ((0x0 << 9) | 338),
    (0xa << 9) | 0x42,
    (0x3 << 9) | 0x3b,
    ((0x0 << 9) | 285),
    ((0x0 << 9) | 337),
    (0xa << 9) | 0x43,
    (0xc << 9) | 0x2a,
    ((0x13 << 9) | 295),
    ((0x15 << 9) | 113),
    ((0x15 << 9) | 20),
    ((0x0 << 9) | 407),
    ((0x0 << 9) | 408),
    ((0x0 << 9) | 325),
    ((0x15 << 9) | 131),
    (0x10 << 9) | 0x21,
    -1, 2,
    ((0x15 << 9) | 45),
    ((0x0 << 9) | 45),
    (0x6 << 9) | 0x39,
    ((0x0 << 9) | 392),
    (0xb << 9) | 0x4a,
    (0xb << 9) | 0x4b,
    (0x11 << 9) | 0x14,
    -1, 2,
    ((0x15 << 9) | 171),
    ((0x0 << 9) | 171),
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseRi[] = {
    (0x3 << 9) | 0x3c,
    ((0x13 << 9) | 348),
    ((0x15 << 9) | 5),
    ((0x15 << 9) | 6),
    ((0x13 << 9) | 278),
    ((0x13 << 9) | 115),
    ((0x13 << 9) | 287),
    ((0x13 << 9) | 279),
    (0x11 << 9) | 0x15,
    (0xd << 9) | 0x33,
    ((0x13 << 9) | 82),
    ((0x13 << 9) | 225),
    ((0x13 << 9) | 349),
    (0xd << 9) | 0x34,
    ((0x0 << 9) | 388),
    ((0x15 << 9) | 217),
    (0x2 << 9) | 0x6c,
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseRu[] = {
    ((0x15 << 9) | 124),
    (0x11 << 9) | 0x1a,
    (0x3 << 9) | 0x3d,
    ((0x15 << 9) | 249),
    (0xd << 9) | 0x35,
    ((0x0 << 9) | 348),
    (0x1 << 9) | 0x11,
    (0x8 << 9) | 0x42,
    ((0x0 << 9) | 350),
    ((0x0 << 9) | 297),
    (0x10 << 9) | 0x22,
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseRe[] = {
    -1, 2,
    ((0x15 << 9) | 82),
    ((0x0 << 9) | 82),
    ((0x13 << 9) | 8),
    ((0x13 << 9) | 58),
    ((0x0 << 9) | 402),
    ((0x0 << 9) | 403),
    ((0x0 << 9) | 401),
    ((0x0 << 9) | 406),
    (0x14 << 9) | 0x20,
    ((0x15 << 9) | 166),
    ((0x15 << 9) | 165),
    (0x7 << 9) | 0x3b,
    (0x1 << 9) | 0x12,
    ((0x13 << 9) | 210),
    ((0x13 << 9) | 4),
    (0xc << 9) | 0x2b,
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseRo[] = {
    ((0x13 << 9) | 130),
    -1, 2,
    ((0x15 << 9) | 37),
    ((0x0 << 9) | 37),
    ((0x0 << 9) | 363),
    ((0x13 << 9) | 199),
    ((0x13 << 9) | 350),
    (0x9 << 9) | 0x41,
    (0x9 << 9) | 0x42,
};

const u16 gEasyChatWordsByLetter_UnusedJapaneseWa[] = {
    (0x6 << 9) | 0x3a,
    (0xc << 9) | 0x2c,
    (0x6 << 9) | 0x3b,
    (0x11 << 9) | 0x1b,
    (0x6 << 9) | 0x3c,
    ((0x0 << 9) | 281),
    (0x9 << 9) | 0x43,
    (0x9 << 9) | 0x44,
    (0xb << 9) | 0x4c,
    (0x10 << 9) | 0x23,
    (0x8 << 9) | 0x43,
    (0x3 << 9) | 0x3e,
    (0x5 << 9) | 0x43,
    (0xb << 9) | 0x4d,
    (0x5 << 9) | 0x44,
    (0x5 << 9) | 0x45,
    (0x5 << 9) | 0x46,
    (0x5 << 9) | 0x47,
    (0x5 << 9) | 0x48,
    (0x5 << 9) | 0x49,
    (0x5 << 9) | 0x4a,
    ((0x15 << 9) | 189),
    ((0x13 << 9) | 178),
    (0x6 << 9) | 0x3d,
    ((0x15 << 9) | 158),
    (0x6 << 9) | 0x3e,
    (0x8 << 9) | 0x44,
    ((0x13 << 9) | 165),
    (0xa << 9) | 0x44,
    -1, 2,
    ((0x15 << 9) | 66),
    ((0x0 << 9) | 66),
};

const struct EasyChatWordsByLetter gEasyChatWordsByLetterPointers[] = {
    {
        .words = gEasyChatWordsByLetter_Others,
        .numWords = 10,
    },
    {
        .words = gEasyChatWordsByLetter_A,
        .numWords = 106,
    },
    {
        .words = gEasyChatWordsByLetter_B,
        .numWords = 86,
    },
    {
        .words = gEasyChatWordsByLetter_C,
        .numWords = 119,
    },
    {
        .words = gEasyChatWordsByLetter_D,
        .numWords = 94,
    },
    {
        .words = gEasyChatWordsByLetter_E,
        .numWords = 59,
    },
    {
        .words = gEasyChatWordsByLetter_F,
        .numWords = 80,
    },
    {
        .words = gEasyChatWordsByLetter_G,
        .numWords = 98,
    },
    {
        .words = gEasyChatWordsByLetter_H,
        .numWords = 101,
    },
    {
        .words = gEasyChatWordsByLetter_I,
        .numWords = 48,
    },
    {
        .words = gEasyChatWordsByLetter_J,
        .numWords = 13,
    },
    {
        .words = gEasyChatWordsByLetter_K,
        .numWords = 33,
    },
    {
        .words = gEasyChatWordsByLetter_L,
        .numWords = 82,
    },
    {
        .words = gEasyChatWordsByLetter_M,
        .numWords = 142,
    },
    {
        .words = gEasyChatWordsByLetter_N,
        .numWords = 54,
    },
    {
        .words = gEasyChatWordsByLetter_O,
        .numWords = 44,
    },
    {
        .words = gEasyChatWordsByLetter_P,
        .numWords = 102,
    },
    {
        .words = gEasyChatWordsByLetter_Q,
        .numWords = 6,
    },
    {
        .words = gEasyChatWordsByLetter_R,
        .numWords = 80,
    },
    {
        .words = gEasyChatWordsByLetter_S,
        .numWords = 262,
    },
    {
        .words = gEasyChatWordsByLetter_T,
        .numWords = 133,
    },
    {
        .words = gEasyChatWordsByLetter_U,
        .numWords = 24,
    },
    {
        .words = gEasyChatWordsByLetter_V,
        .numWords = 33,
    },
    {
        .words = gEasyChatWordsByLetter_W,
        .numWords = 111,
    },
    {
        .words = gEasyChatWordsByLetter_X,
        .numWords = 4,
    },
    {
        .words = gEasyChatWordsByLetter_Y,
        .numWords = 19,
    },
    {
        .words = gEasyChatWordsByLetter_Z,
        .numWords = 8,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseHi,
        .numWords = 55,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseFu,
        .numWords = 71,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseHe,
        .numWords = 32,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseHo,
        .numWords = 55,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseMa,
        .numWords = 74,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseMi,
        .numWords = 37,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseMu,
        .numWords = 12,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseMe,
        .numWords = 26,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseMo,
        .numWords = 20,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseYa,
        .numWords = 24,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseYu,
        .numWords = 13,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseYo,
        .numWords = 28,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseRa,
        .numWords = 36,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseRi,
        .numWords = 17,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseRu,
        .numWords = 11,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseRe,
        .numWords = 18,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseRo,
        .numWords = 10,
    },
    {
        .words = gEasyChatWordsByLetter_UnusedJapaneseWa,
        .numWords = 33,
    },
};
# 1022 "src/easy_chat.c" 2

const u8 *const gEasyChatGroupNamePointers[] = {
    [0x0] = gEasyChatGroupName_Pokemon,
    [0x1] = gEasyChatGroupName_Trainer,
    [0x2] = gEasyChatGroupName_Status,
    [0x3] = gEasyChatGroupName_Battle,
    [0x4] = gEasyChatGroupName_Greetings,
    [0x5] = gEasyChatGroupName_People,
    [0x6] = gEasyChatGroupName_Voices,
    [0x7] = gEasyChatGroupName_Speech,
    [0x8] = gEasyChatGroupName_Endings,
    [0x9] = gEasyChatGroupName_Feelings,
    [0xa] = gEasyChatGroupName_Conditions,
    [0xb] = gEasyChatGroupName_Actions,
    [0xc] = gEasyChatGroupName_Lifestyle,
    [0xd] = gEasyChatGroupName_Hobbies,
    [0xe] = gEasyChatGroupName_Time,
    [0xf] = gEasyChatGroupName_Misc,
    [0x10] = gEasyChatGroupName_Adjectives,
    [0x11] = gEasyChatGroupName_Events,
    [0x12] = gEasyChatGroupName_Move1,
    [0x13] = gEasyChatGroupName_Move2,
    [0x14] = gEasyChatGroupName_TrendySaying,
    [0x15] = gEasyChatGroupName_Pokemon2,
};

static const u16 sDefaultProfileWords[] = {
    (0x5 << 9) | 0x29,
    (0x8 << 9) | 0x20,
    (0x1 << 9) | 0xe,
    (0x5 << 9) | 0x33,
};

static const u16 sDefaultBattleStartWords[] = {
    (0x8 << 9) | 0xf,
    (0x5 << 9) | 0x2,
    (0x7 << 9) | 0x25,
    (0x6 << 9) | 0x3,
    (0x4 << 9) | 0x3,
    (0x6 << 9) | 0x0,
};

static const u16 sUnknown_0859E640[] = {
    (0x6 << 9) | 0x3a,
    (0x6 << 9) | 0x3a,
    (0x6 << 9) | 0x1,
    (0x5 << 9) | 0x2a,
    (0x3 << 9) | 0x7,
    (0x6 << 9) | 0x1,
};

static const u16 sUnknown_0859E64C[] = {
    (0x8 << 9) | 0x39,
    (0x9 << 9) | 0x2e,
    (0x6 << 9) | 0x4,
    (0x5 << 9) | 0x3d,
    (0x3 << 9) | 0x30,
    (0x6 << 9) | 0x4,
};

static const u16 sUnknown_0859E658[] = {
    410,
};

void DoEasyChatScreen(u8 type, u16 *words, MainCallback callback, u8 displayedPersonType)
{
    u8 taskId;

    ResetTasks();
    taskId = CreateTask(sub_811A2C0, 0);
    gTasks[taskId].data[1] = type;
    gTasks[taskId].data[7] = displayedPersonType;
    SetWordTaskArg(taskId, 2, (u32)words);
    SetWordTaskArg(taskId, 4, (u32)callback);
    SetMainCallback2(MainCallback_EasyChatScreen);
}

static void MainCallback_EasyChatScreen(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

static void VBlankCallback_EasyChatScreen(void)
{
    TransferPlttBuffer();
    LoadOam();
    ProcessSpriteCopyRequests();
}

static void sub_811A2A4(u8 taskId, TaskFunc taskFunc)
{
    gTasks[taskId].func = taskFunc;
    gTasks[taskId].data[0] = 0;
}

static void sub_811A2C0(u8 taskId)
{
    if (!IsUpdateLinkStateCBActive())
    {
        while (sub_811A428(taskId));
    }
    else
    {
        if (sub_811A428(taskId) == 1)
        {
            return;
        }
    }
    sub_811A2A4(taskId, sub_811A2FC);
}

static void sub_811A2FC(u8 taskId)
{
    u16 v0;
    s16 *data;

    data = gTasks[taskId].data;
    switch (data[0])
    {
    case 0:
        SetVBlankCallback(VBlankCallback_EasyChatScreen);
        BlendPalettes(0xFFFFFFFF, 16, 0);
        BeginNormalPaletteFade(0xFFFFFFFF, -1, 16, 0, ((0) | ((0) << 5) | ((0) << 10)));
        data[0] = 5;
        break;
    case 1:
        v0 = sub_811AAAC();
        if (sub_811A88C(v0))
        {
            BeginNormalPaletteFade(0xFFFFFFFF, -2, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
            data[0] = 3;
            data[6] = v0;
        }
        else if (v0 == 0x18)
        {
            BeginNormalPaletteFade(0xFFFFFFFF, -1, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
            data[0] = 4;
        }
        else if (v0 != 0)
        {
            PlaySE(5);
            sub_811C158(v0);
            data[0] ++;
        }
        break;
    case 2:
        if (!sub_811C170())
            data[0] = 1;
        break;
    case 3:
        if (!gPaletteFade.active)
            sub_811A8A4(data[6]);
        break;
    case 4:
        if (!gPaletteFade.active)
            sub_811A4D0((MainCallback)GetWordTaskArg(taskId, 4));
        break;
    case 5:
        if (!gPaletteFade.active)
            data[0] = 1;
        break;
    }
}

static bool8 sub_811A428(u8 taskId)
{
    s16 *data;

    data = gTasks[taskId].data;
    switch (data[0])
    {
    case 0:
        SetVBlankCallback(((void *)0));
        ResetSpriteData();
        FreeAllSpritePalettes();
        ResetPaletteFade();
        break;
    case 1:
        if (!sub_811F28C())
        {
            sub_811A4D0((MainCallback)GetWordTaskArg(taskId, 4));
        }
        break;
    case 2:
        if (!EasyChat_AllocateResources(data[1], (u16 *)GetWordTaskArg(taskId, 2), data[7]))
        {
            sub_811A4D0((MainCallback)GetWordTaskArg(taskId, 4));
        }
        break;
    case 3:
        if (!sub_811BF8C())
        {
            sub_811A4D0((MainCallback)GetWordTaskArg(taskId, 4));
        }
        break;
    case 4:
        if (sub_811BFA4())
        {
            return 1;
        }
        break;
    default:
        return 0;
    }
    data[0] ++;
    return 1;
}

static void sub_811A4D0(MainCallback callback)
{
    sub_811C13C();
    EasyChat_FreeResources();
    sub_811F2B8();
    FreeAllWindowBuffers();
    SetMainCallback2(callback);
}

void ShowEasyChatScreen(void)
{
    int i;
    u16 *words;
    struct MauvilleManBard *bard;
    u8 displayedPersonType = 3;
    switch (gSpecialVar_0x8004)
    {
    case 0:
        words = gSaveBlock1Ptr->easyChatProfile;
        break;
    case 1:
        words = gSaveBlock1Ptr->easyChatBattleStart;
        break;
    case 2:
        words = gSaveBlock1Ptr->easyChatBattleWon;
        break;
    case 3:
        words = gSaveBlock1Ptr->easyChatBattleLost;
        break;
    case 4:
        words = gSaveBlock1Ptr->mail[gSpecialVar_0x8005].words;
        break;
    case 6:
        bard = &gSaveBlock1Ptr->oldMan.bard;
        for (i = 0; i < 6; i ++)
            bard->temporaryLyrics[i] = bard->songLyrics[i];

        words = bard->temporaryLyrics;
        break;
    case 5:
        words = gSaveBlock1Ptr->tvShows[gSpecialVar_0x8005].bravoTrainer.words;
        displayedPersonType = gSpecialVar_0x8006;
        break;
    case 7:
        words = &gSaveBlock1Ptr->tvShows[gSpecialVar_0x8005].fanclubOpinions.words[gSpecialVar_0x8006];
        displayedPersonType = 1;
        break;
    case 8:
        words = gSaveBlock1Ptr->tvShows[gSpecialVar_0x8005].unkShow04.words;
        displayedPersonType = 0;
        break;
    case 9:
        words = (u16 *)gStringVar3;
        words[0] = gSaveBlock1Ptr->easyChatPairs[0].words[0];
        words[1] = gSaveBlock1Ptr->easyChatPairs[0].words[1];
        break;
    case 10:
        words = gSaveBlock1Ptr->gabbyAndTyData.quote;
        *words = -1;
        displayedPersonType = 1;
        break;
    case 11:
        words = &gSaveBlock1Ptr->tvShows[gSpecialVar_0x8005].bravoTrainer.words[gSpecialVar_0x8006];
        displayedPersonType = 0;
        break;
    case 12:
        words = gSaveBlock1Ptr->tvShows[gSpecialVar_0x8005].fanclubOpinions.words18;
        displayedPersonType = 1;
        break;
    case 13:
        words = (u16 *)gStringVar3;
        InitializeEasyChatWordArray(words, 2);
        break;
    case 14:
        words = gSaveBlock1Ptr->tvShows[gSpecialVar_0x8005].fanClubSpecial.words;
        words[0] = -1;
        displayedPersonType = 2;
        break;
    case 15:
        words = &gSaveBlock1Ptr->lilycoveLady.quiz.playerAnswer;
        break;
    case 16:
        return;
    case 17:
        words = gSaveBlock1Ptr->lilycoveLady.quiz.question;
        break;
    case 18:
        words = &gSaveBlock1Ptr->lilycoveLady.quiz.correctAnswer;
        break;
    case 19:
        words = gSaveBlock2Ptr->apprentices[0].speechWon;
        break;
    case 20:
        words = sub_801B058();
        break;
    default:
        return;
    }

    CleanupOverworldWindowsAndTilemaps();
    DoEasyChatScreen(gSpecialVar_0x8004, words, CB2_ReturnToFieldContinueScript, displayedPersonType);
}

static void CB2_QuizLadyQuestion(void)
{
    LilycoveLady *lilycoveLady;

    UpdatePaletteFade();
    switch (gMain.state)
    {
    case 0:
        FadeScreen(1, 0);
        break;
    case 1:
        if (!gPaletteFade.active)
        {
            lilycoveLady = &gSaveBlock1Ptr->lilycoveLady;
            lilycoveLady->quiz.playerAnswer = -1;
            CleanupOverworldWindowsAndTilemaps();
            DoQuizQuestionEasyChatScreen();
        }
        return;
    }
    gMain.state ++;
}

void QuizLadyShowQuizQuestion(void)
{
    SetMainCallback2(CB2_QuizLadyQuestion);
}

static int sub_811A868(u16 word)
{
    int i;

    for (i = 0; i < (size_t)(sizeof(sUnknown_08597530) / sizeof((sUnknown_08597530)[0])); i ++)
    {
        if (word == sUnknown_08597530[i].word)
            return i;
    }
    return -1;
}

static bool32 sub_811A88C(u16 word)
{
    return sub_811A868(word) == -1 ? 0 : 1;
}

static void sub_811A8A4(u16 word)
{
    int i;

    i = sub_811A868(word);
    ResetTasks();
    sub_811A4D0(sUnknown_08597530[i].callback);
}

static void DoQuizAnswerEasyChatScreen(void)
{
    DoEasyChatScreen(
        15,
        &gSaveBlock1Ptr->lilycoveLady.quiz.playerAnswer,
        CB2_ReturnToFieldContinueScript,
        3);
}

static void DoQuizQuestionEasyChatScreen(void)
{
    DoEasyChatScreen(16,
        gSaveBlock1Ptr->lilycoveLady.quiz.question,
        CB2_ReturnToFieldContinueScript,
        3);
}

static void DoQuizSetAnswerEasyChatScreen(void)
{
    DoEasyChatScreen(18,
        &gSaveBlock1Ptr->lilycoveLady.quiz.correctAnswer,
        CB2_ReturnToFieldContinueScript,
        3);
}

static void DoQuizSetQuestionEasyChatScreen(void)
{
    DoEasyChatScreen(17,
        gSaveBlock1Ptr->lilycoveLady.quiz.question,
        CB2_ReturnToFieldContinueScript,
        3);
}

static bool8 EasyChat_AllocateResources(u8 type, u16 *words, u8 displayedPersonType)
{
    u8 templateId;
    int i;

    sEasyChatScreen = Alloc(sizeof(*sEasyChatScreen));
    if (sEasyChatScreen == ((void *)0))
        return 0;

    sEasyChatScreen->type = type;
    sEasyChatScreen->words = words;
    sEasyChatScreen->mainCursorColumn = 0;
    sEasyChatScreen->mainCursorRow = 0;
    sEasyChatScreen->unk_09 = 0;
    sEasyChatScreen->displayedPersonType = displayedPersonType;
    sEasyChatScreen->unk_13 = 0;
    templateId = GetEachChatScreenTemplateId(type);
    if (type == 16)
    {
        sub_811BDF0(sEasyChatScreen->unk_14);
        sEasyChatScreen->titleText = sEasyChatScreen->unk_14;
        sEasyChatScreen->state = 7;
    }
    else
    {
        sEasyChatScreen->state = 0;
        sEasyChatScreen->titleText = sEasyChatScreenTemplates[templateId].titleText;
    }

    sEasyChatScreen->numColumns = sEasyChatScreenTemplates[templateId].numColumns;
    sEasyChatScreen->numRows = sEasyChatScreenTemplates[templateId].numRows;
    sEasyChatScreen->unk_07 = sEasyChatScreen->numColumns * sEasyChatScreen->numRows;
    sEasyChatScreen->templateId = templateId;
    if (sEasyChatScreen->unk_07 > 9)
        sEasyChatScreen->unk_07 = 9;

    if (words != ((void *)0))
    {
        CpuSet(words, sEasyChatScreen->ecWordBuffer, 0x00000000 | ((sEasyChatScreen->unk_07 * sizeof(u16))/(16/8) & 0x1FFFFF));
    }
    else
    {
        for (i = 0; i < sEasyChatScreen->unk_07; i ++)
            sEasyChatScreen->ecWordBuffer[i] = -1;

        sEasyChatScreen->words = sEasyChatScreen->ecWordBuffer;
    }

    sEasyChatScreen->unk_0d = (sub_811F3AC() - 1) / 2 + 1;
    return 1;
}

static void EasyChat_FreeResources(void)
{
    if (sEasyChatScreen != ((void *)0))
        { Free(sEasyChatScreen); sEasyChatScreen = ((void *)0); };
}

static u16 sub_811AAAC(void)
{
    switch (sEasyChatScreen->state)
    {
    case 0:
        return sub_811AB68();
    case 1:
        return sub_811ACDC();
    case 2:
        return sub_811AE44();
    case 3:
        return sub_811AF00();
    case 4:
        return sub_811AF8C();
    case 5:
        return sub_811B040();
    case 6:
        return sub_811AFEC();
    case 7:
        return sub_811B08C();
    case 8:
        return sub_811B0BC();
    case 9:
        return sub_811B0E8();
    case 10:
        return sub_811B0F8();
    }
    return 0;
}

bool32 sub_811AB44(void)
{
    switch (GetEasyChatScreenFrameId())
    {
    case 2:
    case 7:
    case 8:
        return 1;
    }
    return 0;
}

static u16 sub_811AB68(void)
{
    do
    {
        if (gMain.newKeys & 0x0001)
        {
            sub_811BF78();
            sEasyChatScreen->state = 2;
            sEasyChatScreen->unk_0a = 0;
            sEasyChatScreen->unk_0b = 0;
            sEasyChatScreen->unk_0c = 0;
            return 9;
        }
        else if (gMain.newKeys & 0x0002)
        {
            return sub_811B150();
        }
        else if (gMain.newKeys & 0x0008)
        {
            return sub_811B1B4();
        }
        else if (gMain.newKeys & 0x0040)
        {
            sEasyChatScreen->mainCursorRow--;
            break;
        }
        else if (gMain.newKeys & 0x0020)
        {
            sEasyChatScreen->mainCursorColumn--;
            break;
        }
        else if (gMain.newKeys & 0x0080)
        {
            sEasyChatScreen->mainCursorRow++;
            break;
        }
        else if (gMain.newKeys & 0x0010)
        {
            sEasyChatScreen->mainCursorColumn++;
            break;
        }

        return 0;
    } while (0);

    if (sEasyChatScreen->mainCursorRow < 0)
        sEasyChatScreen->mainCursorRow = sEasyChatScreenTemplates[sEasyChatScreen->templateId].numRows;

    if (sEasyChatScreen->mainCursorRow > sEasyChatScreenTemplates[sEasyChatScreen->templateId].numRows)
        sEasyChatScreen->mainCursorRow = 0;

    if (sEasyChatScreen->mainCursorRow == sEasyChatScreenTemplates[sEasyChatScreen->templateId].numRows)
    {
        if (sEasyChatScreen->mainCursorColumn > 2)
            sEasyChatScreen->mainCursorColumn = 2;

        sEasyChatScreen->state = 1;
        return 3;
    }

    if (sEasyChatScreen->mainCursorColumn < 0)
        sEasyChatScreen->mainCursorColumn = sEasyChatScreenTemplates[sEasyChatScreen->templateId].numColumns - 1;

    if (sEasyChatScreen->mainCursorColumn >= sEasyChatScreenTemplates[sEasyChatScreen->templateId].numColumns)
        sEasyChatScreen->mainCursorColumn = 0;

    if (sub_811AB44() && sEasyChatScreen->mainCursorColumn == 1 && sEasyChatScreen->mainCursorRow == 4)
        sEasyChatScreen->mainCursorColumn = 0;

    return 2;
}

static u16 sub_811ACDC(void)
{
    do
    {
        if (gMain.newKeys & 0x0001)
        {
            switch (sEasyChatScreen->mainCursorColumn)
            {
            case 0:
                return sub_811B184();
            case 1:
                return sub_811B150();
            case 2:
                return sub_811B1B4();
            case 3:
                return sub_811B264();
            }
        }

        if (gMain.newKeys & 0x0002)
        {
            return sub_811B150();
        }
        else if (gMain.newKeys & 0x0008)
        {
            return sub_811B1B4();
        }
        else if (gMain.newKeys & 0x0040)
        {
            sEasyChatScreen->mainCursorRow--;
            break;
        }
        else if (gMain.newKeys & 0x0020)
        {
            sEasyChatScreen->mainCursorColumn--;
            break;
        }
        else if (gMain.newKeys & 0x0080)
        {
            sEasyChatScreen->mainCursorRow = 0;
            break;
        }
        else if (gMain.newKeys & 0x0010)
        {
            sEasyChatScreen->mainCursorColumn++;
            break;
        }

        return 0;
    } while (0);

    if (sEasyChatScreen->mainCursorRow == sEasyChatScreenTemplates[sEasyChatScreen->templateId].numRows)
    {
        int numFooterColumns = FooterHasFourOptions() ? 4 : 3;
        if (sEasyChatScreen->mainCursorColumn < 0)
            sEasyChatScreen->mainCursorColumn = numFooterColumns - 1;

        if (sEasyChatScreen->mainCursorColumn >= numFooterColumns)
            sEasyChatScreen->mainCursorColumn = 0;

        return 3;
    }

    if (sEasyChatScreen->mainCursorColumn >= sEasyChatScreenTemplates[sEasyChatScreen->templateId].numColumns)
        sEasyChatScreen->mainCursorColumn = sEasyChatScreenTemplates[sEasyChatScreen->templateId].numColumns - 1;

    if (sub_811AB44() && sEasyChatScreen->mainCursorColumn == 1 && sEasyChatScreen->mainCursorRow == 4)
        sEasyChatScreen->mainCursorColumn = 0;

    sEasyChatScreen->state = 0;
    return 2;
}

static u16 sub_811AE44(void)
{
    if (gMain.newKeys & 0x0002)
        return sub_811B32C();

    if (gMain.newKeys & 0x0001)
    {
        if (sEasyChatScreen->unk_0a != -1)
            return sub_811B2B0();

        switch (sEasyChatScreen->unk_0b)
        {
        case 0:
            return sub_811B33C();
        case 1:
            return sub_811B368();
        case 2:
            return sub_811B32C();
        }
    }

    if (gMain.newKeys & 0x0004)
        return sub_811B33C();

    if (gMain.newAndRepeatedKeys & 0x0040)
        return sub_811B528(2);

    if (gMain.newAndRepeatedKeys & 0x0080)
        return sub_811B528(3);

    if (gMain.newAndRepeatedKeys & 0x0020)
        return sub_811B528(1);

    if (gMain.newAndRepeatedKeys & 0x0010)
        return sub_811B528(0);

    return 0;
}

static u16 sub_811AF00(void)
{
    if (gMain.newKeys & 0x0002)
    {
        sEasyChatScreen->state = 2;
        return 14;
    }

    if (gMain.newKeys & 0x0001)
        return sub_811B394();

    if (gMain.newKeys & 0x0008)
        return sub_811B794(4);

    if (gMain.newKeys & 0x0004)
        return sub_811B794(5);

    if (gMain.newAndRepeatedKeys & 0x0040)
        return sub_811B794(2);

    if (gMain.newAndRepeatedKeys & 0x0080)
        return sub_811B794(3);

    if (gMain.newAndRepeatedKeys & 0x0020)
        return sub_811B794(1);

    if (gMain.newAndRepeatedKeys & 0x0010)
        return sub_811B794(0);

    return 0;
}

static u16 sub_811AF8C(void)
{
    u8 var0;

    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case -1:
    case 1:
        sEasyChatScreen->state = sub_811B2A4();
        return 7;
    case 0:
        gSpecialVar_Result = 0;
        var0 = sEasyChatScreen->type - 17;
        if (var0 < 2)
            sub_811B3E4();

        return 24;
    default:
        return 0;
    }
}

static u16 sub_811AFEC(void)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case -1:
    case 1:
        sEasyChatScreen->state = sub_811B2A4();
        return 7;
    case 0:
        sub_811BE9C();
        gSpecialVar_Result = sub_811B4EC();
        sub_811B3E4();
        return 24;
    default:
        return 0;
    }
}

static u16 sub_811B040(void)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case -1:
    case 1:
        sEasyChatScreen->state = 1;
        return 7;
    case 0:
        sub_811B418();
        sEasyChatScreen->state = 1;
        return 8;
    default:
        return 0;
    }
}

static u16 sub_811B08C(void)
{
    if (gMain.newKeys & 0x0001)
        return 26;

    if (gMain.newKeys & 0x0002)
        return sub_811B150();

    return 0;
}

static u16 sub_811B0BC(void)
{
    if (gMain.newKeys & (0x0001 | 0x0002))
    {
        sEasyChatScreen->state = sub_811B2A4();
        return 7;
    }

    return 0;
}

static u16 sub_811B0E8(void)
{
    sEasyChatScreen->state = 10;
    return 6;
}

static u16 sub_811B0F8(void)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case -1:
    case 1:
        sub_811B454();
        sEasyChatScreen->stateBackup = 0;
        sEasyChatScreen->state = 8;
        return 31;
    case 0:
        gSpecialVar_Result = sub_811B4EC();
        sub_811B3E4();
        return 24;
    default:
        return 0;
    }
}

static u16 sub_811B150(void)
{
    if (sEasyChatScreen->type == 19
     || sEasyChatScreen->type == 11)
    {
        sEasyChatScreen->stateBackup = sEasyChatScreen->state;
        sEasyChatScreen->state = 8;
        return 34;
    }
    else
    {
        sEasyChatScreen->stateBackup = sEasyChatScreen->state;
        sEasyChatScreen->state = 4;
        return 5;
    }
}

static int sub_811B184(void)
{
    sEasyChatScreen->stateBackup = sEasyChatScreen->state;
    if (sEasyChatScreen->type != 6)
    {
        sEasyChatScreen->state = 5;
        return 4;
    }
    else
    {
        sEasyChatScreen->stateBackup = sEasyChatScreen->state;
        sEasyChatScreen->state = 8;
        return 32;
    }
}

static u16 sub_811B1B4(void)
{
    sEasyChatScreen->stateBackup = sEasyChatScreen->state;
    if (sEasyChatScreen->type == 17)
    {
        if (sub_811BD64())
        {
            sEasyChatScreen->state = 8;
            return 29;
        }

        if (sub_811BDB0())
        {
            sEasyChatScreen->state = 8;
            return 30;
        }

        sEasyChatScreen->state = 6;
        return 6;
    }
    else if (sEasyChatScreen->type == 18)
    {
        if (sub_811BDB0())
        {
            sEasyChatScreen->state = 8;
            return 30;
        }

        if (sub_811BD64())
        {
            sEasyChatScreen->state = 8;
            return 29;
        }

        sEasyChatScreen->state = 6;
        return 6;
    }
    else if (sEasyChatScreen->type == 9
          || sEasyChatScreen->type == 13)
    {
        if (!sub_811BD2C())
        {
            sEasyChatScreen->state = 8;
            return 33;
        }

        sEasyChatScreen->state = 6;
        return 6;
    }
    else if (sEasyChatScreen->type == 19
          || sEasyChatScreen->type == 11)
    {
        if (sub_811BCF4())
        {
            sEasyChatScreen->state = 8;
            return 34;
        }

        sEasyChatScreen->state = 6;
        return 6;
    }
    else if (sEasyChatScreen->type == 20)
    {
        sEasyChatScreen->state = 6;
        return 6;
    }
    else
    {
        if (sub_811BCF4() == 1 || !sub_811B4EC())
        {
            sEasyChatScreen->state = 4;
            return 5;
        }

        sEasyChatScreen->state = 6;
        return 6;
    }
}

static int sub_811B264(void)
{
    sEasyChatScreen->stateBackup = sEasyChatScreen->state;
    switch (sEasyChatScreen->type)
    {
    case 15:
        return 25;
    case 17:
        sub_811B3E4();
        return 28;
    case 18:
        sub_811B3E4();
        return 27;
    default:
        return 0;
    }
}

static u8 sub_811B2A4(void)
{
    return sEasyChatScreen->stateBackup;
}

static int sub_811B2B0(void)
{
    u16 var1;

    if (sEasyChatScreen->unk_09 == 0)
    {
        u8 groupId = sub_811F3B8(sub_811B8E8());
        sub_811F548(0, groupId);
    }
    else
    {
        sub_811F548(1, sub_811B908());
    }

    var1 = sub_811F5B0();
    if (var1 == 0)
        return 0;

    sEasyChatScreen->unk_0f = (var1 - 1) / 2;
    sEasyChatScreen->unk_0e = 0;
    sEasyChatScreen->unk_10 = 0;
    sEasyChatScreen->unk_11 = 0;
    sEasyChatScreen->state = 3;
    return 11;
}

static int sub_811B32C(void)
{
    sEasyChatScreen->state = 0;
    return 10;
}

static int sub_811B33C(void)
{
    sEasyChatScreen->unk_0a = 0;
    sEasyChatScreen->unk_0b = 0;
    sEasyChatScreen->unk_0c = 0;
    if (!sEasyChatScreen->unk_09)
        sEasyChatScreen->unk_09 = 1;
    else
        sEasyChatScreen->unk_09 = 0;

    return 23;
}

static int sub_811B368(void)
{
    if (sEasyChatScreen->type == 6)
    {
        PlaySE(32);
        return 0;
    }
    else
    {
        sub_811B488(0xFFFF);
        return 1;
    }
}

static int sub_811B394(void)
{
    u16 easyChatWord = sub_811F578(sub_811B940());
    if (sub_811BF88(easyChatWord))
    {
        PlaySE(32);
        return 0;
    }
    else
    {
        sub_811B488(easyChatWord);
        if (sEasyChatScreen->type != 6)
        {
            sEasyChatScreen->state = 0;
            return 12;
        }
        else
        {
            sEasyChatScreen->state = 9;
            return 13;
        }
    }
}

static void sub_811B3E4(void)
{
    int i;
    for (i = 0; i < sEasyChatScreen->unk_07; i++)
        sEasyChatScreen->words[i] = sEasyChatScreen->ecWordBuffer[i];
}

static void sub_811B418(void)
{
    int i;
    for (i = 0; i < sEasyChatScreen->unk_07; i++)
        sEasyChatScreen->ecWordBuffer[i] = 0xFFFF;
}

static void sub_811B454(void)
{
    int i;
    for (i = 0; i < sEasyChatScreen->unk_07; i++)
        sEasyChatScreen->ecWordBuffer[i] = sEasyChatScreen->words[i];
}

static void sub_811B488(u16 easyChatWord)
{
    u16 index = sub_811B8C8();
    sEasyChatScreen->ecWordBuffer[index] = easyChatWord;
}

static u8 sub_811B4AC(void)
{
    u16 i;
    for (i = 0; i < sEasyChatScreen->unk_07; i++)
    {
        if (sEasyChatScreen->ecWordBuffer[i] != sEasyChatScreen->words[i])
            return 1;
    }

    return 0;
}

static int sub_811B4EC(void)
{
    u8 var0 = sEasyChatScreen->type - 17;
    if (var0 < 2)
    {
        if (sub_811BD64())
            return 0;

        if (sub_811BDB0())
            return 0;

        return 1;
    }
    else
    {
        return sub_811B4AC();
    }
}

static u16 sub_811B528(int arg0)
{
    if (sEasyChatScreen->unk_0a != -1)
    {
        if (sEasyChatScreen->unk_09 == 0)
            return sub_811B568(arg0);
        else
            return sub_811B634(arg0);
    }
    else
    {
        return sub_811B6C4(arg0);
    }
}

static int sub_811B568(u32 arg0)
{
    switch (arg0)
    {
    case 2:
        if (sEasyChatScreen->unk_0b != -sEasyChatScreen->unk_0c)
        {
            if (sEasyChatScreen->unk_0b)
            {
                sEasyChatScreen->unk_0b--;
                return 15;
            }
            else
            {
                sEasyChatScreen->unk_0c--;
                return 17;
            }
        }
        break;
    case 3:
        if (sEasyChatScreen->unk_0b + sEasyChatScreen->unk_0c < sEasyChatScreen->unk_0d - 1)
        {
            int var0;
            if (sEasyChatScreen->unk_0b < 3)
            {
                sEasyChatScreen->unk_0b++;
                var0 = 15;
            }
            else
            {
                sEasyChatScreen->unk_0c++;
                var0 = 16;
            }

            sub_811B978();
            return var0;
        }
        break;
    case 1:
        if (sEasyChatScreen->unk_0a)
            sEasyChatScreen->unk_0a--;
        else
            sub_811B744();

        return 15;
    case 0:
        if (sEasyChatScreen->unk_0a < 1)
        {
            sEasyChatScreen->unk_0a++;
            if (sub_811B9C8())
                sub_811B744();
        }
        else
        {
            sub_811B744();
        }
        return 15;
    }

    return 0;
}

static int sub_811B634(u32 arg0)
{
    switch (arg0)
    {
    case 2:
        if (sEasyChatScreen->unk_0b > 0)
            sEasyChatScreen->unk_0b--;
        else
            sEasyChatScreen->unk_0b = 3;

        sub_811B978();
        return 15;
    case 3:
        if (sEasyChatScreen->unk_0b < 3)
            sEasyChatScreen->unk_0b++;
        else
            sEasyChatScreen->unk_0b = 0;

        sub_811B978();
        return 15;
    case 0:
        sEasyChatScreen->unk_0a++;
        if (sub_811B9C8())
            sub_811B744();

        return 15;
    case 1:
        sEasyChatScreen->unk_0a--;
        if (sEasyChatScreen->unk_0a < 0)
            sub_811B744();

        return 15;
    }

    return 0;
}

static int sub_811B6C4(u32 arg0)
{
    switch (arg0)
    {
    case 2:
        if (sEasyChatScreen->unk_0b)
            sEasyChatScreen->unk_0b--;
        else
            sEasyChatScreen->unk_0b = 2;

        return 15;
    case 3:
        if (sEasyChatScreen->unk_0b < 2)
            sEasyChatScreen->unk_0b++;
        else
            sEasyChatScreen->unk_0b = 0;

        return 15;
    case 1:
        sEasyChatScreen->unk_0b++;
        sub_811B768();
        return 15;
    case 0:
        sEasyChatScreen->unk_0a = 0;
        sEasyChatScreen->unk_0b++;
        return 15;
    }

    return 0;
}

static void sub_811B744(void)
{
    sEasyChatScreen->unk_0a = 0xFF;
    if (sEasyChatScreen->unk_0b)
        sEasyChatScreen->unk_0b--;
}

static void sub_811B768(void)
{
    if (sEasyChatScreen->unk_09 == 0)
    {
        sEasyChatScreen->unk_0a = 1;
        sub_811B978();
    }
    else
    {
        sEasyChatScreen->unk_0a = sub_811B960(sEasyChatScreen->unk_0b);
    }
}

static u16 sub_811B794(u32 arg0)
{
    u16 result;
    switch (arg0)
    {
    case 2:
        if (sEasyChatScreen->unk_11 + sEasyChatScreen->unk_0e > 0)
        {
            if (sEasyChatScreen->unk_11 > 0)
            {
                sEasyChatScreen->unk_11--;
                result = 18;
            }
            else
            {
                sEasyChatScreen->unk_0e--;
                result = 19;
            }

            sub_811B9A0();
            return result;
        }
        break;
    case 3:
        if (sEasyChatScreen->unk_11 + sEasyChatScreen->unk_0e < sEasyChatScreen->unk_0f)
        {
            if (sEasyChatScreen->unk_11 < 3)
            {
                sEasyChatScreen->unk_11++;
                result = 18;
            }
            else
            {
                sEasyChatScreen->unk_0e++;
                result = 20;
            }

            sub_811B9A0();
            return result;
        }
        break;
    case 1:
        if (sEasyChatScreen->unk_10 > 0)
            sEasyChatScreen->unk_10--;
        else
            sEasyChatScreen->unk_10 = 1;

        sub_811B9A0();
        return 18;
    case 0:
        if (sEasyChatScreen->unk_10 < 1)
        {
            sEasyChatScreen->unk_10++;
            if (sub_811BA1C())
                sEasyChatScreen->unk_10 = 0;
        }
        else
        {
            sEasyChatScreen->unk_10 = 0;
        }
        return 18;
    case 4:
        if (sEasyChatScreen->unk_0e)
        {
            if (sEasyChatScreen->unk_0e > 3)
                sEasyChatScreen->unk_0e -= 4;
            else
                sEasyChatScreen->unk_0e = 0;

            return 21;
        }
        break;
    case 5:
        if (sEasyChatScreen->unk_0e <= sEasyChatScreen->unk_0f - 4)
        {
            sEasyChatScreen->unk_0e += 4;
            if (sEasyChatScreen->unk_0e > sEasyChatScreen->unk_0f - 3)
                sEasyChatScreen->unk_0e = sEasyChatScreen->unk_0f + 0xFD;

            sub_811B9A0();
            return 22;
        }
        break;
    }

    return 0;
}

static u16 sub_811B8C8(void)
{
    return (sEasyChatScreen->mainCursorRow * sEasyChatScreen->numColumns) + sEasyChatScreen->mainCursorColumn;
}

static u16 sub_811B8E8(void)
{
    return 2 * (sEasyChatScreen->unk_0b + sEasyChatScreen->unk_0c) + sEasyChatScreen->unk_0a;
}

static int sub_811B908(void)
{
    int var0 = (u8)sEasyChatScreen->unk_0a < 7 ? sEasyChatScreen->unk_0a : 0;
    int var1 = (u8)sEasyChatScreen->unk_0b < 4 ? sEasyChatScreen->unk_0b : 0;
    return sUnknown_08597748[var1][var0];
}

static u16 sub_811B940(void)
{
    return 2 * (sEasyChatScreen->unk_11 + sEasyChatScreen->unk_0e) + sEasyChatScreen->unk_10;
}

static u8 sub_811B960(u8 arg0)
{
    switch (arg0)
    {
    case 0:
    default:
        return 6;
    case 1:
        return 5;
    }
}

static void sub_811B978(void)
{
    while (sub_811B9C8())
    {
        if (sEasyChatScreen->unk_0a)
            sEasyChatScreen->unk_0a--;
        else
            break;
    }
}

static void sub_811B9A0(void)
{
    while (sub_811BA1C())
    {
        if (sEasyChatScreen->unk_10)
            sEasyChatScreen->unk_10--;
        else
            break;
    }
}

static u8 sub_811B9C8(void)
{
    if (sEasyChatScreen->unk_09 == 0)
        return sub_811B8E8() >= sub_811F3AC() ? 1 : 0;
    else
        return sEasyChatScreen->unk_0a > sub_811B960(sEasyChatScreen->unk_0b) ? 1 : 0;
}

static u8 sub_811BA1C(void)
{
    return sub_811B940() >= sub_811F5B0() ? 1 : 0;
}

static int FooterHasFourOptions(void)
{
    return sEasyChatScreenTemplates[sEasyChatScreen->templateId].fourFooterOptions;
}

static u8 GetEasyChatScreenType(void)
{
    return sEasyChatScreen->type;
}

static u8 GetEasyChatScreenFrameId(void)
{
    return sEasyChatScreenTemplates[sEasyChatScreen->templateId].frameId;
}

const u8 *GetTitleText(void)
{
    return sEasyChatScreen->titleText;
}

static u16 *GetEasyChatWordBuffer(void)
{
    return sEasyChatScreen->ecWordBuffer;
}

static u8 GetNumRows(void)
{
    return sEasyChatScreen->numRows;
}

static u8 GetNumColumns(void)
{
    return sEasyChatScreen->numColumns;
}

static u8 GetMainCursorColumn(void)
{
    return sEasyChatScreen->mainCursorColumn;
}

static u8 GetMainCursorRow(void)
{
    return sEasyChatScreen->mainCursorRow;
}

static void GetEasyChatInstructionsText(const u8 **str1, const u8 **str2)
{
    *str1 = sEasyChatScreenTemplates[sEasyChatScreen->templateId].instructionsText1;
    *str2 = sEasyChatScreenTemplates[sEasyChatScreen->templateId].instructionsText2;
}

static void GetEasyChatConfirmText(const u8 **str1, const u8 **str2)
{
    *str1 = sEasyChatScreenTemplates[sEasyChatScreen->templateId].confirmText1;
    *str2 = sEasyChatScreenTemplates[sEasyChatScreen->templateId].confirmText2;
}

static void sub_811BB40(const u8 **str1, const u8 **str2)
{
    switch (sEasyChatScreen->type)
    {
    case 4:
        *str1 = gText_StopGivingPkmnMail;
        *str2 = ((void *)0);
        break;
    case 15:
    case 16:
        *str1 = gText_LikeToQuitQuiz;
        *str2 = gText_ChallengeQuestionMark;
        break;
    default:
        *str1 = gText_QuitEditing;
        *str2 = ((void *)0);
        break;
    }

}

static void GetEasyChatConfirmDeletionText(const u8 **str1, const u8 **str2)
{
    *str1 = gText_AllTextBeingEditedWill;
    *str2 = gText_BeDeletedThatOkay;
}

void sub_811BB9C(u8 *arg0, u8 *arg1)
{
    *arg0 = sEasyChatScreen->unk_0a;
    *arg1 = sEasyChatScreen->unk_0b;
}

u8 sub_811BBB0(void)
{
    return sEasyChatScreen->unk_09;
}

u8 sub_811BBBC(void)
{
    return sEasyChatScreen->unk_0c;
}

void sub_811BBC8(u8 *arg0, u8 *arg1)
{
    *arg0 = sEasyChatScreen->unk_10;
    *arg1 = sEasyChatScreen->unk_11;
}

u8 sub_811BBDC(void)
{
    return sEasyChatScreen->unk_0e;
}

u8 sub_811BBE8(void)
{
    return sEasyChatScreen->unk_0f;
}

static u8 unref_sub_811BBF4(void)
{
    return 0;
}

int sub_811BBF8(void)
{
    switch (sEasyChatScreen->state)
    {
    case 2:
        if (sEasyChatScreen->unk_09 == 0 && sEasyChatScreen->unk_0c)
            return 1;
        break;
    case 3:
        if (sEasyChatScreen->unk_0e)
            return 1;
        break;
    }

    return 0;
}

int sub_811BC2C(void)
{
    switch (sEasyChatScreen->state)
    {
    case 2:
        if (sEasyChatScreen->unk_09 == 0 && sEasyChatScreen->unk_0c + 4 <= sEasyChatScreen->unk_0d - 1)
            return 1;
        break;
    case 3:
        if (sEasyChatScreen->unk_0e + 4 <= sEasyChatScreen->unk_0f)
            return 1;
        break;
    }

    return 0;
}

static int FooterHasFourOptions_(void)
{
    return FooterHasFourOptions();
}

static bool8 IsPhraseDifferentThanPlayerInput(const u16 *phrase, u8 phraseLength)
{
    u8 i;

    for (i = 0; i < phraseLength; i++)
    {
        if (phrase[i] != sEasyChatScreen->ecWordBuffer[i])
            return 1;
    }

    return 0;
}

static u8 GetDisplayedPersonType(void)
{
    return sEasyChatScreen->displayedPersonType;
}

static u8 GetEachChatScreenTemplateId(u8 type)
{
    u32 i;

    for (i = 0; i < (size_t)(sizeof(sEasyChatScreenTemplates) / sizeof((sEasyChatScreenTemplates)[0])); i++)
    {
        if (sEasyChatScreenTemplates[i].type == type)
            return i;
    }

    return 0;
}

static int sub_811BCF4(void)
{
    int i;

    for (i = 0; i < sEasyChatScreen->unk_07; i++)
    {
        if (sEasyChatScreen->ecWordBuffer[i] != 0xFFFF)
            return 0;
    }

    return 1;
}

static int sub_811BD2C(void)
{
    int i;

    for (i = 0; i < sEasyChatScreen->unk_07; i++)
    {
        if (sEasyChatScreen->ecWordBuffer[i] == 0xFFFF)
            return 0;
    }

    return 1;
}

static int sub_811BD64(void)
{
    int i;
    struct SaveBlock1 *saveBlock1;

    if (sEasyChatScreen->type == 17)
        return sub_811BCF4();

    saveBlock1 = gSaveBlock1Ptr;
    for (i = 0; i < 9; i++)
    {
        if (saveBlock1->lilycoveLady.quiz.question[i] != 0xFFFF)
            return 0;
    }

    return 1;
}

static int sub_811BDB0(void)
{
    struct LilycoveLadyQuiz *quiz;
    if (sEasyChatScreen->type == 18)
        return sub_811BCF4();

    quiz = &gSaveBlock1Ptr->lilycoveLady.quiz;
    return quiz->correctAnswer == 0xFFFF ? 1 : 0;
}

static void sub_811BDF0(u8 *arg0)
{
    u8 name[32];
    struct SaveBlock1 *saveBlock1 = gSaveBlock1Ptr;
    DynamicPlaceholderTextUtil_Reset();
    if (StringLength(saveBlock1->lilycoveLady.quiz.playerName) != 0)
    {
        TVShowConvertInternationalString(name, saveBlock1->lilycoveLady.quiz.playerName, saveBlock1->lilycoveLady.quiz.language);
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, name);
    }
    else
    {
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, gText_Lady);
    }

    DynamicPlaceholderTextUtil_ExpandPlaceholders(arg0, gText_F700sQuiz);
}

static void sub_811BE54(void)
{
    int i;
    u16 *ecWord;
    u8 *str;

    ecWord = sEasyChatScreen->ecWordBuffer;
    str = gStringVar2;
    i = 0;
    while (i < sEasyChatScreen->unk_07)
    {
        str = CopyEasyChatWordPadded(str, *ecWord, 0);
        *str = 0;
        str++;
        ecWord++;
        i++;
    }

    str--;
    str[0] = 0xFF;
}

static void sub_811BE9C(void)
{
    switch (sEasyChatScreen->type)
    {
    case 0:
        FlagSet((((0x500 + 864 - 1) + 1) + 0x5));
        break;
    case 20:
        if (DidPlayerInputMysteryGiftPhrase())
            gSpecialVar_0x8004 = 2;
        else
            gSpecialVar_0x8004 = 0;
        break;
    case 9:
        sub_811BE54();
        gSpecialVar_0x8004 = sub_81226D8(sEasyChatScreen->ecWordBuffer);
        break;
    case 13:
        gSpecialVar_0x8004 = DidPlayerInputABerryMasterWifePhrase();
        break;
    }
}

static int DidPlayerInputMysteryGiftPhrase(void)
{
    return !IsPhraseDifferentThanPlayerInput(sMysteryGiftPhrase, (size_t)(sizeof(sMysteryGiftPhrase) / sizeof((sMysteryGiftPhrase)[0])));
}

static u16 DidPlayerInputABerryMasterWifePhrase(void)
{
    int i;
    for (i = 0; i < (int)(size_t)(sizeof(sBerryMasterWifePhrases) / sizeof((sBerryMasterWifePhrases)[0])); i++)
    {
        if (!IsPhraseDifferentThanPlayerInput(sBerryMasterWifePhrases[i], (size_t)(sizeof(*sBerryMasterWifePhrases) / sizeof((*sBerryMasterWifePhrases)[0]))))
            return i + 1;
    }

    return 0;
}

static void sub_811BF78(void)
{
    sEasyChatScreen->unk_13 = 0;
}

static int sub_811BF88(int easyChatWord)
{
    return 0;
}

static bool8 sub_811BF8C(void)
{
    if (!sub_811CE94())
        return 0;
    else
        return 1;
}

static bool8 sub_811BFA4(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        ResetBgsAndClearDma3BusyFlags(0);
        InitBgsFromTemplates(0, sEasyChatBgTemplates, (size_t)(sizeof(sEasyChatBgTemplates) / sizeof((sEasyChatBgTemplates)[0])));
        SetBgTilemapBuffer(3, sUnknown_0203A11C->unkB00);
        SetBgTilemapBuffer(1, sUnknown_0203A11C->unk300);
        InitWindows(sEasyChatWindowTemplates);
        DeactivateAllTextPrinters();
        sub_811CF64();
        sub_811CF04();
        { vu32 tmp = (vu32)(0); CpuFastSet((void *)&tmp, (void *)0x7000000, 0x01000000 | ((0x400)/(32/8) & 0x1FFFFF)); };
        break;
    case 1:
        DecompressAndLoadBgGfxUsingHeap(3, gEasyChatWindow_Gfx, 0, 0, 0);
        CopyToBgTilemapBuffer(3, gEasyChatWindow_Tilemap, 0, 0);
        sub_811D60C();
        sub_811D424(sUnknown_0203A11C->unk300);
        sub_811D230();
        sub_811E948();
        CopyBgTilemapBufferToVram(3);
        break;
    case 2:
        DecompressAndLoadBgGfxUsingHeap(1, sUnknown_08597B54, 0, 0, 0);
        CopyBgTilemapBufferToVram(1);
        break;
    case 3:
        sub_811CFCC();
        sub_811D0BC();
        sub_811D2C8();
        sub_811D684();
        break;
    case 4:
        sub_811DE90();
        if (GetEasyChatScreenType() != 16)
            sub_811DEC4();
        break;
    case 5:
        if (IsDma3ManagerBusyWithBgCopy())
        {
            return 1;
        }
        else
        {
            sub_811DE5C(0, 0, 0, 0);
            SetGpuReg(0x48, ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)) | (1 << 4) | (1 << 5));
            SetGpuReg(0x4a, (1 << 0)
                                       | (1 << 1)
                                       | (1 << 3)
                                       | (1 << 4)
                                       | (1 << 5));
            ShowBg(3);
            ShowBg(1);
            ShowBg(2);
            ShowBg(0);
            sub_811E5D4();
            sub_811E720();
            sub_811E828();
        }
        break;
    default:
        return 0;
    }

    sUnknown_0203A11C->unk0++;
    return 1;
}

static void sub_811C13C(void)
{
    if (sUnknown_0203A11C)
        { Free(sUnknown_0203A11C); sUnknown_0203A11C = ((void *)0); };
}

static void sub_811C158(u16 arg0)
{
    sUnknown_0203A11C->unk4 = arg0;
    sUnknown_0203A11C->unk0 = 0;
    sub_811C170();
}

static bool8 sub_811C170(void)
{
    switch (sUnknown_0203A11C->unk4)
    {
    case 0: return 0;
    case 1: return sub_811C2D4();
    case 2: return sub_811C30C();
    case 3: return sub_811C3E4();
    case 4: return sub_811C48C();
    case 5: return sub_811C404();
    case 6: return sub_811C448();
    case 7: return sub_811C4D0();
    case 8: return sub_811C518();
    case 9: return sub_811C554();
    case 10: return sub_811C620();
    case 11: return sub_811C830();
    case 12: return sub_811C8F0();
    case 13: return sub_811C99C();
    case 14: return sub_811CA5C();
    case 15: return sub_811C780();
    case 16: return sub_811C78C();
    case 17: return sub_811C7D4();
    case 18: return sub_811CB18();
    case 19: return sub_811CB98();
    case 20: return sub_811CB24();
    case 21: return sub_811CC90();
    case 22: return sub_811CC08();
    case 23: return sub_811C6C0();
    case 24: return 0;
    case 25: return 0;
    case 26: return 0;
    case 27: return 0;
    case 28: return 0;
    case 29: return sub_811CD14();
    case 30: return sub_811CD54();
    case 31: return sub_811CD94();
    case 32: return sub_811CDD4();
    case 33: return sub_811CE14();
    case 34: return sub_811CE54();
    default: return 0;
    }
}

static bool8 sub_811C2D4(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811D2C8();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811C30C(void)
{
    u8 i;
    u16 *ecWordBuffer;
    u16 *ecWord;
    u8 frameId;
    u8 cursorColumn, cursorRow, numColumns;
    s16 var1;
    int stringWidth;
    int trueStringWidth;
    u8 var2;
    u8 str[64];

    ecWordBuffer = GetEasyChatWordBuffer();
    frameId = GetEasyChatScreenFrameId();
    cursorColumn = GetMainCursorColumn();
    cursorRow = GetMainCursorRow();
    numColumns = GetNumColumns();
    ecWord = &ecWordBuffer[cursorRow * numColumns];
    var1 = 8 * sPhraseFrameDimensions[frameId].left + 13;
    for (i = 0; i < cursorColumn; i++)
    {
        if (*ecWord == 0xFFFF)
        {
            stringWidth = 72;
        }
        else
        {
            CopyEasyChatWord(str, *ecWord);
            stringWidth = GetStringWidth(1, str, 0);
        }

        trueStringWidth = stringWidth + 17;
        var1 += trueStringWidth;
        ecWord++;
    }

    var2 = 8 * (sPhraseFrameDimensions[frameId].top + cursorRow * 2);
    sub_811DF60(var1, var2 + 8);
    return 0;
}

static bool8 sub_811C3E4(void)
{
    u8 xOffset = GetFooterOptionXOffset(GetMainCursorColumn());
    sub_811DF60(xOffset, 96);
    return 0;
}

static bool8 sub_811C404(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DF90();
        sub_811D104(2);
        sub_811D214(1);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811C448(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DF90();
        sub_811D104(3);
        sub_811D214(0);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811C48C(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DF90();
        sub_811D104(1);
        sub_811D214(1);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811C4D0(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DFB0();
        sub_811D104(0);
        sub_811D2C8();
        ShowBg(0);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811C518(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DFB0();
        sub_811D104(0);
        sub_811D2C8();
        sUnknown_0203A11C->unk0++;

    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811C554(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DF90();
        HideBg(0);
        sub_811DE5C(0, 0, 0, 0);
        sub_811D6D4();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811D9CC(0);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 2:
        if (!IsDma3ManagerBusyWithBgCopy() && !sub_811DAA4())
            sUnknown_0203A11C->unk0++;
        break;
    case 3:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811E3AC();
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 4:
        if (!sub_811E418())
        {
            sub_811DFC8();
            sub_811E6E0(0);
            sub_811E64C();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    default:
        return 0;
    }

    return 1;
}

static bool8 sub_811C620(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811E050();
        sub_811E4AC();
        sub_811E6B0();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        if (sub_811E4D0() == 1)
            break;

        sub_811D9CC(1);
        sUnknown_0203A11C->unk0++;

    case 2:
        if (!sub_811DAA4())
            sUnknown_0203A11C->unk0++;
        break;
    case 3:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811DFB0();
            ShowBg(0);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 4:
        return 0;
    }

    return 1;
}

static bool8 sub_811C6C0(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811E050();
        sub_811E6B0();
        sub_811E55C();
        sub_811D9CC(5);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        if (!sub_811DAA4() && !sub_811E5B8())
        {
            sub_811D6D4();
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 2:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811D9CC(6);
            sub_811E578();
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 3:
        if (!sub_811DAA4() && !sub_811E5B8())
        {
            sub_811E64C();
            sub_811DFC8();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    case 4:
        return 0;
    }

    return 1;
}

static bool8 sub_811C780(void)
{
    sub_811E088();
    return 0;
}

static bool8 sub_811C78C(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DDAC(1, 4);
        sUnknown_0203A11C->unk0++;

    case 1:
        if (!sub_811DE10())
        {
            sub_811E088();
            sub_811E64C();
            return 0;
        }
        break;
    }

    return 1;
}

static bool8 sub_811C7D4(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DDAC(-1, 4);
        sUnknown_0203A11C->unk0++;

    case 1:
        if (!sub_811DE10())
        {
            sub_811E64C();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    case 2:
        return 0;
    }

    return 1;
}

static bool8 sub_811C830(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811E050();
        sub_811E4AC();
        sub_811E6B0();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        if (!sub_811E4D0())
        {
            sub_811D9B4();
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 2:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811D9CC(2);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 3:
        if (!sub_811DAA4())
        {
            sub_811D698(2);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 4:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811E288();
            sub_811E6E0(1);
            sub_811E64C();
            sub_811E794();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    case 5:
        return 0;
    }

    return 1;
}

static bool8 sub_811C8F0(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811D2C8();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        sub_811E380();
        sub_811E6B0();
        sub_811E7F8();
        sub_811D9B4();
        sUnknown_0203A11C->unk0++;
        break;
    case 2:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811D9CC(3);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 3:
        if (!sub_811DAA4())
        {
            ShowBg(0);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 4:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811DFB0();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    case 5:
        return 0;
    }

    return 1;
}

static bool8 sub_811C99C(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811D2C8();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        sub_811E380();
        sub_811E6B0();
        sub_811E7F8();
        sub_811D9B4();
        sUnknown_0203A11C->unk0++;
        break;
    case 2:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811D9CC(3);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 3:
        if (!sub_811DAA4())
        {
            sub_811D104(3);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 4:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            ShowBg(0);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 5:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811DFB0();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    case 6:
        return 0;
    }

    return 1;
}

static bool8 sub_811CA5C(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811E380();
        sub_811E6B0();
        sub_811E7F8();
        sub_811D9B4();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811D9CC(4);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 2:
        if (!sub_811DAA4())
        {
            sub_811D6D4();
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 3:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811E3AC();
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 4:
        if (!sub_811E418())
        {
            sub_811DFC8();
            sub_811E6E0(0);
            sub_811E64C();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    }

    return 1;
}

static bool8 sub_811CB18(void)
{
    sub_811E30C();
    return 0;
}

static bool8 sub_811CB24(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811D7A4();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811DDAC(1, 4);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 2:
        if (!sub_811DE10())
        {
            sub_811E30C();
            sub_811E64C();
            sub_811E794();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    case 3:
        return 0;
    }

    return 1;
}

static bool8 sub_811CB98(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811D7C8();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            sub_811DDAC(-1, 4);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 2:
        if (!sub_811DE10())
        {
            sub_811E64C();
            sub_811E794();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    case 3:
        return 0;
    }

    return 1;
}

static bool8 sub_811CC08(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811D7EC();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            s16 var0 = sub_811BBDC() - sub_811DE48();
            sub_811DDAC(var0, 8);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 2:
        if (!sub_811DE10())
        {
            sub_811E30C();
            sub_811E64C();
            sub_811E794();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    case 3:
        return 0;
    }

    return 1;
}

static bool8 sub_811CC90(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811D830();
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            s16 var0 = sub_811BBDC() - sub_811DE48();
            sub_811DDAC(var0, 8);
            sUnknown_0203A11C->unk0++;
        }
        break;
    case 2:
        if (!sub_811DE10())
        {
            sub_811E64C();
            sub_811E794();
            sUnknown_0203A11C->unk0++;
            return 0;
        }
        break;
    case 3:
        return 0;
    }

    return 1;
}

static bool8 sub_811CD14(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DF90();
        sub_811D104(4);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811CD54(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DF90();
        sub_811D104(5);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811CD94(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DF90();
        sub_811D104(6);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811CDD4(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DF90();
        sub_811D104(7);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811CE14(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DF90();
        sub_811D104(8);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811CE54(void)
{
    switch (sUnknown_0203A11C->unk0)
    {
    case 0:
        sub_811DF90();
        sub_811D104(9);
        sUnknown_0203A11C->unk0++;
        break;
    case 1:
        return IsDma3ManagerBusyWithBgCopy();
    }

    return 1;
}

static bool8 sub_811CE94(void)
{
    sUnknown_0203A11C = Alloc(sizeof(*sUnknown_0203A11C));
    if (!sUnknown_0203A11C)
        return 0;

    sUnknown_0203A11C->unk0 = 0;
    sUnknown_0203A11C->unk2D8 = ((void *)0);
    sUnknown_0203A11C->unk2DC = ((void *)0);
    sUnknown_0203A11C->unk2E0 = ((void *)0);
    sUnknown_0203A11C->unk2E4 = ((void *)0);
    sUnknown_0203A11C->unk2E8 = ((void *)0);
    sUnknown_0203A11C->unk2EC = ((void *)0);
    sUnknown_0203A11C->unk2F0 = ((void *)0);
    sUnknown_0203A11C->unk2F4 = ((void *)0);
    sUnknown_0203A11C->unk2F8 = ((void *)0);
    sUnknown_0203A11C->unk2FC = ((void *)0);
    sUnknown_0203A11C->unkA = FooterHasFourOptions_();
    return 1;
}

static void sub_811CF04(void)
{
    ChangeBgX(3, 0, 0);
    ChangeBgY(3, 0, 0);
    ChangeBgX(1, 0, 0);
    ChangeBgY(1, 0, 0);
    ChangeBgX(2, 0, 0);
    ChangeBgY(2, 0, 0);
    ChangeBgX(0, 0, 0);
    ChangeBgY(0, 0, 0);
    SetGpuReg(0x0, 0x0000 | 0x0040 | 0x1000 | 0x2000);
}

static void sub_811CF64(void)
{
    ResetPaletteFade();
    LoadPalette(gEasyChatMode_Pal, 0, 32);
    LoadPalette(sUnknown_08597B14, 1 * 16, 32);
    LoadPalette(sUnknown_08597B34, 4 * 16, 32);
    LoadPalette(sUnknown_08597C1C, 10 * 16, 8);
    LoadPalette(sUnknown_08597C24, 11 * 16, 12);
    LoadPalette(sUnknown_08597C24, 15 * 16, 12);
    LoadPalette(sUnknown_08597C24, 3 * 16, 12);
}

static void sub_811CFCC(void)
{
    int xOffset;
    const u8 *titleText = GetTitleText();
    if (!titleText)
        return;

    xOffset = GetStringCenterAlignXOffset(1, titleText, 144);
    FillWindowPixelBuffer(0, ((0) | ((0) << 4)));
    sub_811D058(0, 1, titleText, xOffset, 1, 0xFF, 0x0, 0x2, 0x3);
    PutWindowTilemap(0);
    CopyWindowToVram(0, 3);
}

void sub_811D028(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16))
{
    AddTextPrinterParameterized(windowId, fontId, str, x, y, speed, callback);
}

static void sub_811D058(u8 windowId, u8 fontId, const u8 *str, u8 left, u8 top, u8 speed, u8 bg, u8 fg, u8 shadow)
{
    u8 color[3];
    color[0] = bg;
    color[1] = fg;
    color[2] = shadow;
    AddTextPrinterParameterized3(windowId, fontId, left, top, color, speed, str);
}

static void sub_811D0BC(void)
{
    FillBgTilemapBufferRect(0, 0, 0, 0, 32, 20, 17);
    LoadUserWindowBorderGfx(1, 1, 0xE0);
    DrawTextBorderOuter(1, 1, 14);
    sub_811D104(0);
    PutWindowTilemap(1);
    CopyBgTilemapBufferToVram(0);
}

static void sub_811D104(u8 arg0)
{
    const u8 *text2 = ((void *)0);
    const u8 *text1 = ((void *)0);
    switch (arg0)
    {
    case 0:
        GetEasyChatInstructionsText(&text1, &text2);
        break;
    case 2:
        sub_811BB40(&text1, &text2);
        break;
    case 3:
        GetEasyChatConfirmText(&text1, &text2);
        break;
    case 1:
        GetEasyChatConfirmDeletionText(&text1, &text2);
        break;
    case 4:
        text1 = gText_CreateAQuiz;
        break;
    case 5:
        text1 = gText_SelectTheAnswer;
        break;
    case 6:
        text1 = gText_OnlyOnePhrase;
        text2 = gText_OriginalSongWillBeUsed;
        break;
    case 7:
        text1 = gText_LyricsCantBeDeleted;
        break;
    case 8:
        text1 = gText_CombineTwoWordsOrPhrases3;
        break;
    case 9:
        text1 = gText_YouCannotQuitHere;
        text2 = gText_SectionMustBeCompleted;
        break;
    }

    FillWindowPixelBuffer(1, ((1) | ((1) << 4)));
    if (text1)
        sub_811D028(1, 1, text1, 0, 1, 0xFF, 0);

    if (text2)
        sub_811D028(1, 1, text2, 0, 17, 0xFF, 0);

    CopyWindowToVram(1, 3);
}

static void sub_811D214(u8 initialCursorPos)
{
    CreateYesNoMenu(&sEasyChatYesNoWindowTemplate, 1, 14, initialCursorPos);
}

static void sub_811D230(void)
{
    u8 frameId;
    struct WindowTemplate template;

    frameId = GetEasyChatScreenFrameId();
    template.bg = 3;
    template.tilemapLeft = sPhraseFrameDimensions[frameId].left;
    template.tilemapTop = sPhraseFrameDimensions[frameId].top;
    template.width = sPhraseFrameDimensions[frameId].width;
    template.height = sPhraseFrameDimensions[frameId].height;
    template.paletteNum = 11;
    template.baseBlock = 0x6C;
    sUnknown_0203A11C->windowId = AddWindow(&template);
    PutWindowTilemap(sUnknown_0203A11C->windowId);
}

static void sub_811D2C8(void)
{
    u8 spC[4];
    u16 *ecWord;
    u8 numColumns, numRows;
    u8 *str;
    int frameId;
    int var1;
    int i, j, k;

    ecWord = GetEasyChatWordBuffer();
    numColumns = GetNumColumns();
    numRows = GetNumRows();
    frameId = GetEasyChatScreenFrameId();
    var1 = 0;
    if (frameId == 7)
        var1 = 1;

    FillWindowPixelBuffer(sUnknown_0203A11C->windowId, ((1) | ((1) << 4)));
    for (i = 0; i < numRows; i++)
    {
        memcpy(spC, sText_Clear17, sizeof(sText_Clear17));
        if (var1)
            spC[2] = 6;

        str = sUnknown_0203A11C->unkB;
        sUnknown_0203A11C->unkB[0] = 0xFF;
        str = StringAppend(str, spC);
        for (j = 0; j < numColumns; j++)
        {
            if (*ecWord != 0xFFFF)
            {
                str = CopyEasyChatWord(str, *ecWord);
                ecWord++;
            }
            else
            {
                ecWord++;
                if (!var1)
                {
                    str = WriteColorChangeControlCode(str, 0, 4);
                    for (k = 0; k < 12; k++)
                    {
                        *str = 0xAE;
                        str++;
                    }

                    str = WriteColorChangeControlCode(str, 0, 2);
                }
            }

            if (var1)
                spC[2] = 3;

            str = StringAppend(str, spC);
            if (frameId == 2 || frameId == 7 || frameId == 8)
            {
                if (j == 0 && i == 4)
                    break;
            }
        }

        *str = 0xFF;
        sub_811D028(sUnknown_0203A11C->windowId, 1, sUnknown_0203A11C->unkB, 0, i * 16 + 1, 0xFF, 0);
    }

    CopyWindowToVram(sUnknown_0203A11C->windowId, 3);
}

static void sub_811D424(u16 *tilemap)
{
    u8 frameId;
    int right, bottom;
    int x, y;

    frameId = GetEasyChatScreenFrameId();
    { vu32 tmp = (vu32)(0); CpuFastSet((void *)&tmp, tilemap, 0x01000000 | ((0x800)/(32/8) & 0x1FFFFF)); };
    if (frameId == 2 || frameId == 8)
    {
        right = sPhraseFrameDimensions[frameId].left + sPhraseFrameDimensions[frameId].width;
        bottom = sPhraseFrameDimensions[frameId].top + sPhraseFrameDimensions[frameId].height;
        for (y = sPhraseFrameDimensions[frameId].top; y < bottom; y++)
        {
            x = sPhraseFrameDimensions[frameId].left - 1;
            tilemap[y * 32 + x] = 0x1005;
            x++;
            for (; x < right; x++)
                tilemap[y * 32 + x] = 0x1000;

            tilemap[y* 32 + x] = 0x1007;
        }
    }
    else
    {
        y = sPhraseFrameDimensions[frameId].top - 1;
        x = sPhraseFrameDimensions[frameId].left - 1;
        right = sPhraseFrameDimensions[frameId].left + sPhraseFrameDimensions[frameId].width;
        bottom = sPhraseFrameDimensions[frameId].top + sPhraseFrameDimensions[frameId].height;
        tilemap[y * 32 + x] = 0x1001;
        x++;
        for (; x < right; x++)
            tilemap[y * 32 + x] = 0x1002;

        tilemap[y * 32 + x] = 0x1003;
        y++;
        for (; y < bottom; y++)
        {
            x = sPhraseFrameDimensions[frameId].left - 1;
            tilemap[y * 32 + x] = 0x1005;
            x++;
            for (; x < right; x++)
                tilemap[y * 32 + x] = 0x1000;

            tilemap[y* 32 + x] = 0x1007;
        }

        x = sPhraseFrameDimensions[frameId].left - 1;
        tilemap[y * 32 + x] = 0x1009;
        x++;
        for (; x < right; x++)
            tilemap[y * 32 + x] = 0x100A;

        tilemap[y * 32 + x] = 0x100B;
    }
}

static void sub_811D60C(void)
{
    u8 frameId;
    u16 *tilemap;

    tilemap = GetBgTilemapBuffer(3);
    frameId = GetEasyChatScreenFrameId();
    switch (sPhraseFrameDimensions[frameId].footerId)
    {
    case 2:
        tilemap += 0x2A0;
        CopyToBgTilemapBufferRect(3, tilemap, 0, 11, 32, 2);
        break;
    case 1:
        tilemap += 0x300;
        CopyToBgTilemapBufferRect(3, tilemap, 0, 11, 32, 2);
        break;
    case 3:
        CopyToBgTilemapBufferRect(3, tilemap, 0, 10, 32, 4);
        break;
    }
}

static void sub_811D684(void)
{
    PutWindowTilemap(2);
    CopyBgTilemapBufferToVram(2);
}

static void sub_811D698(u32 arg0)
{
    sub_811DD84();
    FillWindowPixelBuffer(2, ((1) | ((1) << 4)));
    switch (arg0)
    {
    case 0:
        sub_811D6F4();
        break;
    case 1:
        PrintEasyChatKeyboardText();
        break;
    case 2:
        sub_811D794();
        break;
    }

    CopyWindowToVram(2, 2);
}

static void sub_811D6D4(void)
{
    if (!sub_811BBB0())
        sub_811D698(0);
    else
        sub_811D698(1);
}

static void sub_811D6F4(void)
{
    int i;
    int x, y;

    i = 0;
    y = 97;
    while (1)
    {
        for (x = 0; x < 2; x++)
        {
            u8 groupId = sub_811F3B8(i++);
            if (groupId == 0x16)
            {
                sub_811DDAC(sub_811BBBC(), 0);
                return;
            }

            sub_811D028(2, 1, GetEasyChatWordGroupName(groupId), x * 84 + 10, y, 0xFF, ((void *)0));
        }

        y += 16;
    }
}

static void PrintEasyChatKeyboardText(void)
{
    u32 i;

    for (i = 0; i < (size_t)(sizeof(sEasyChatKeyboardText) / sizeof((sEasyChatKeyboardText)[0])); i++)
        sub_811D028(2, 1, sEasyChatKeyboardText[i], 10, 97 + i * 16, 0xFF, ((void *)0));
}

static void sub_811D794(void)
{
    sub_811D864(0, 4);
}

static void sub_811D7A4(void)
{
    u8 var0 = sub_811BBDC() + 3;
    sub_811D950(var0, 1);
    sub_811D864(var0, 1);
}

static void sub_811D7C8(void)
{
    u8 var0 = sub_811BBDC();
    sub_811D950(var0, 1);
    sub_811D864(var0, 1);
}

static void sub_811D7EC(void)
{
    u8 var0 = sub_811BBDC();
    u8 var1 = var0 + 4;
    u8 var2 = sub_811BBE8() + 1;
    if (var1 > var2)
        var1 = var2;

    if (var0 < var1)
    {
        u8 var3 = var1 - var0;
        sub_811D950(var0, var3);
        sub_811D864(var0, var3);
    }
}

static void sub_811D830(void)
{
    u8 var0 = sub_811BBDC();
    u8 var1 = sub_811DE48();
    if (var0 < var1)
    {
        u8 var2 = var1 - var0;
        sub_811D950(var0, var2);
        sub_811D864(var0, var2);
    }
}

static void sub_811D864(u8 arg0, u8 arg1)
{
    int i, j;
    u16 easyChatWord;
    u8 *str;
    int y;
    int var0;

    var0 = arg0 * 2;
    y = (arg0 * 16 + 96) & 0xFF;
    y++;
    for (i = 0; i < arg1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            easyChatWord = sub_811F578(var0++);
            if (easyChatWord != 0xFFFF)
            {
                CopyEasyChatWordPadded(sUnknown_0203A11C->unkCC, easyChatWord, 0);
                if (!sub_811BF88(easyChatWord))
                    sub_811D028(2, 1, sUnknown_0203A11C->unkCC, (j * 13 + 3) * 8, y, 0xFF, ((void *)0));
                else
                    sub_811D058(2, 1, sUnknown_0203A11C->unkCC, (j * 13 + 3) * 8, y, 0xFF, 0x1, 0x5, 0x3);
            }
        }

        y += 16;
    }

    CopyWindowToVram(2, 2);
}

static void sub_811D950(u8 arg0, u8 arg1)
{
    int y;
    int var0;
    int var1;
    int var2;

    y = (arg0 * 16 + 96) & 0xFF;
    var2 = arg1 * 16;
    var0 = y + var2;
    if (var0 > 255)
    {
        var1 = var0 - 256;
        var2 = 256 - y;
    }
    else
    {
        var1 = 0;
    }

    FillWindowPixelRect(2, ((1) | ((1) << 4)), 0, y, 224, var2);
    if (var1)
        FillWindowPixelRect(2, ((1) | ((1) << 4)), 0, 0, 224, var1);
}

static void sub_811D9B4(void)
{
    FillWindowPixelBuffer(2, ((1) | ((1) << 4)));
    CopyWindowToVram(2, 2);
}

static void sub_811D9CC(int arg0)
{
    switch (arg0)
    {
    case 0:
        sUnknown_0203A11C->unk6 = 0;
        sUnknown_0203A11C->unk7 = 10;
        break;
    case 1:
        sUnknown_0203A11C->unk6 = 9;
        sUnknown_0203A11C->unk7 = 0;
        break;
    case 2:
        sUnknown_0203A11C->unk6 = 11;
        sUnknown_0203A11C->unk7 = 17;
        break;
    case 3:
        sUnknown_0203A11C->unk6 = 17;
        sUnknown_0203A11C->unk7 = 0;
        break;
    case 4:
        sUnknown_0203A11C->unk6 = 17;
        sUnknown_0203A11C->unk7 = 10;
        break;
    case 5:
        sUnknown_0203A11C->unk6 = 18;
        sUnknown_0203A11C->unk7 = 22;
        break;
    case 6:
        sUnknown_0203A11C->unk6 = 22;
        sUnknown_0203A11C->unk7 = 18;
        break;
    }

    sUnknown_0203A11C->unk8 = sUnknown_0203A11C->unk6 < sUnknown_0203A11C->unk7 ? 1 : -1;
}

static bool8 sub_811DAA4(void)
{
    u8 var0, var1;
    if (sUnknown_0203A11C->unk6 == sUnknown_0203A11C->unk7)
        return 0;

    sUnknown_0203A11C->unk6 += sUnknown_0203A11C->unk8;
    sub_811DADC(sUnknown_0203A11C->unk6);
    var0 = sUnknown_0203A11C->unk6;
    var1 = sUnknown_0203A11C->unk7;
    return (var0 ^ var1) > 0;
}

static void sub_811DADC(u8 arg0)
{
    FillBgTilemapBufferRect_Palette0(1, 0, 0, 10, 30, 10);
    switch (arg0)
    {
    case 0:
        break;
    case 1:
        sub_811DC28(11, 14, 3, 2);
        break;
    case 2:
        sub_811DC28(9, 14, 7, 2);
        break;
    case 3:
        sub_811DC28(7, 14, 11, 2);
        break;
    case 4:
        sub_811DC28(5, 14, 15, 2);
        break;
    case 5:
        sub_811DC28(3, 14, 19, 2);
        break;
    case 6:
        sub_811DC28(1, 14, 23, 2);
        break;
    case 11:
        sub_811DC28(1, 10, 24, 10);
        break;
    case 12:
        sub_811DC28(1, 10, 25, 10);
        break;
    case 13:
        sub_811DC28(1, 10, 26, 10);
        break;
    case 14:
        sub_811DC28(1, 10, 27, 10);
        break;
    case 15:
        sub_811DC28(1, 10, 28, 10);
        break;
    case 16:
        sub_811DC28(1, 10, 29, 10);
        break;
    case 17:
        sub_811DC28(0, 10, 30, 10);
        break;
    case 10:
    case 18:
        sub_811DC28(1, 10, 23, 10);
        break;
    case 9:
    case 19:
        sub_811DC28(1, 11, 23, 8);
        break;
    case 8:
    case 20:
        sub_811DC28(1, 12, 23, 6);
        break;
    case 7:
    case 21:
        sub_811DC28(1, 13, 23, 4);
        break;
    case 22:
        sub_811DC28(1, 14, 23, 2);
        break;
    }

    CopyBgTilemapBufferToVram(1);
}

static void sub_811DC28(int left, int top, int width, int height)
{
    u16 *tilemap;
    int right;
    int bottom;
    int x, y;

    tilemap = sUnknown_0203A11C->unk300;
    right = left + width - 1;
    bottom = top + height - 1;
    x = left;
    y = top;
    tilemap[y * 32 + x] = 0x4001;
    x++;
    for (; x < right; x++)
        tilemap[y * 32 + x] = 0x4002;

    tilemap[y * 32 + x] = 0x4003;
    y++;
    for (; y < bottom; y++)
    {
        tilemap[y * 32 + left] = 0x4005;
        x = left + 1;
        for (; x < right; x++)
            tilemap[y * 32 + x] = 0x4000;

        tilemap[y * 32 + x] = 0x4007;
    }

    tilemap[y * 32 + left] = 0x4009;
    x = left + 1;
    for (; x < right; x++)
        tilemap[y * 32 + x] = 0x400A;

    tilemap[y * 32 + x] = 0x400B;
    sub_811DE5C((left + 1) * 8, (top + 1) * 8, (width - 2) * 8, (height - 2) * 8);
}

static void sub_811DD84(void)
{
    ChangeBgY(2, 0x800, 0);
    sUnknown_0203A11C->unk2CE = 0;
}

static void sub_811DDAC(s16 arg0, u8 arg1)
{
    int bgY;
    s16 var0;

    bgY = GetBgY(2);
    sUnknown_0203A11C->unk2CE += arg0;
    var0 = arg0 * 16;
    bgY += var0 << 8;
    if (arg1)
    {
        sUnknown_0203A11C->unk2D0 = bgY;
        sUnknown_0203A11C->unk2D4 = arg1 * 256;
        if (var0 < 0)
            sUnknown_0203A11C->unk2D4 = -sUnknown_0203A11C->unk2D4;
    }
    else
    {
        ChangeBgY(2, bgY, 0);
    }
}

static bool8 sub_811DE10(void)
{
    int bgY;

    bgY = GetBgY(2);
    if (bgY == sUnknown_0203A11C->unk2D0)
    {
        return 0;
    }
    else
    {
        ChangeBgY(2, sUnknown_0203A11C->unk2D4, 1);
        return 1;
    }
}

static int sub_811DE48(void)
{
    return sUnknown_0203A11C->unk2CE;
}

static void sub_811DE5C(u8 left, u8 top, u8 width, u8 height)
{
    u16 horizontalDimensions = (((left) << 8) | (left + width));
    u16 verticalDimensions = (((top) << 8) | (top + height));
    SetGpuReg(0x40, horizontalDimensions);
    SetGpuReg(0x44, verticalDimensions);
}

static void sub_811DE90(void)
{
    u32 i;

    LoadSpriteSheets(sEasyChatSpriteSheets);
    LoadSpritePalettes(sEasyChatSpritePalettes);
    for (i = 0; i < (size_t)(sizeof(sUnknown_08597CE8) / sizeof((sUnknown_08597CE8)[0])); i++)
        LoadCompressedSpriteSheet(&sUnknown_08597CE8[i]);
}

static void sub_811DEC4(void)
{
    u8 frameId = GetEasyChatScreenFrameId();
    int x = sPhraseFrameDimensions[frameId].left * 8 + 13;
    int y = sPhraseFrameDimensions[frameId].top * 8 + 8;
    u8 spriteId = CreateSprite(&sUnknown_08597D18, x, y, 2);
    sUnknown_0203A11C->unk2D8 = &gSprites[spriteId];
    gSprites[spriteId].data[1] = 1;
}

static void sub_811DF28(struct Sprite *sprite)
{
    if (sprite->data[1])
    {
        if (++sprite->data[0] > 2)
        {
            sprite->data[0] = 0;
            if (++sprite->pos2.x > 0)
                sprite->pos2.x = -6;
        }
    }
}

static void sub_811DF60(u8 x, u8 y)
{
    sUnknown_0203A11C->unk2D8->pos1.x = x;
    sUnknown_0203A11C->unk2D8->pos1.y = y;
    sUnknown_0203A11C->unk2D8->pos2.x = 0;
    sUnknown_0203A11C->unk2D8->data[0] = 0;
}

static void sub_811DF90(void)
{
    sUnknown_0203A11C->unk2D8->data[0] = 0;
    sUnknown_0203A11C->unk2D8->data[1] = 0;
    sUnknown_0203A11C->unk2D8->pos2.x = 0;
}

static void sub_811DFB0(void)
{
    sUnknown_0203A11C->unk2D8->data[1] = 1;
}

static void sub_811DFC8(void)
{
    u8 spriteId = CreateSprite(&sUnknown_08597D68, 0, 0, 3);
    sUnknown_0203A11C->unk2DC = &gSprites[spriteId];
    sUnknown_0203A11C->unk2DC->pos2.x = 32;

    spriteId = CreateSprite(&sUnknown_08597D68, 0, 0, 3);
    sUnknown_0203A11C->unk2E0 = &gSprites[spriteId];
    sUnknown_0203A11C->unk2E0->pos2.x = -32;

    sUnknown_0203A11C->unk2DC->hFlip = 1;
    sub_811E088();
}

static void sub_811E050(void)
{
    DestroySprite(sUnknown_0203A11C->unk2DC);
    sUnknown_0203A11C->unk2DC = ((void *)0);
    DestroySprite(sUnknown_0203A11C->unk2E0);
    sUnknown_0203A11C->unk2E0 = ((void *)0);
}

static void sub_811E088(void)
{
    u8 var0;
    u8 var1;

    if (sUnknown_0203A11C->unk2DC && sUnknown_0203A11C->unk2E0)
    {
        sub_811BB9C(&var0, &var1);
        if (!sub_811BBB0())
            sub_811E0EC(var0, var1);
        else
            sub_811E1A4(var0, var1);
    }
}

static void sub_811E0EC(s8 arg0, s8 arg1)
{
    if (arg0 != -1)
    {
        StartSpriteAnim(sUnknown_0203A11C->unk2DC, 0);
        sUnknown_0203A11C->unk2DC->pos1.x = arg0 * 84 + 58;
        sUnknown_0203A11C->unk2DC->pos1.y = arg1 * 16 + 96;

        StartSpriteAnim(sUnknown_0203A11C->unk2E0, 0);
        sUnknown_0203A11C->unk2E0->pos1.x = arg0 * 84 + 58;
        sUnknown_0203A11C->unk2E0->pos1.y = arg1 * 16 + 96;
    }
    else
    {
        StartSpriteAnim(sUnknown_0203A11C->unk2DC, 1);
        sUnknown_0203A11C->unk2DC->pos1.x = 216;
        sUnknown_0203A11C->unk2DC->pos1.y = arg1 * 16 + 112;

        StartSpriteAnim(sUnknown_0203A11C->unk2E0, 1);
        sUnknown_0203A11C->unk2E0->pos1.x = 216;
        sUnknown_0203A11C->unk2E0->pos1.y = arg1 * 16 + 112;
    }
}

static void sub_811E1A4(s8 arg0, s8 arg1)
{
    int anim;
    int x, y;

    if (arg0 != -1)
    {
        y = arg1 * 16 + 96;
        x = 32;
        if (arg0 == 6 && arg1 == 0)
        {
            x = 158;
            anim = 2;
        }
        else
        {
            x += sUnknown_08597D08[arg0 < (size_t)(sizeof(sUnknown_08597D08) / sizeof((sUnknown_08597D08)[0])) ? arg0 : 0];
            anim = 3;
        }

        StartSpriteAnim(sUnknown_0203A11C->unk2DC, anim);
        sUnknown_0203A11C->unk2DC->pos1.x = x;
        sUnknown_0203A11C->unk2DC->pos1.y = y;

        StartSpriteAnim(sUnknown_0203A11C->unk2E0, anim);
        sUnknown_0203A11C->unk2E0->pos1.x = x;
        sUnknown_0203A11C->unk2E0->pos1.y = y;
    }
    else
    {
        StartSpriteAnim(sUnknown_0203A11C->unk2DC, 1);
        sUnknown_0203A11C->unk2DC->pos1.x = 216;
        sUnknown_0203A11C->unk2DC->pos1.y = arg1 * 16 + 112;

        StartSpriteAnim(sUnknown_0203A11C->unk2E0, 1);
        sUnknown_0203A11C->unk2E0->pos1.x = 216;
        sUnknown_0203A11C->unk2E0->pos1.y = arg1 * 16 + 112;
    }
}

static void sub_811E288(void)
{
    u8 spriteId = CreateSprite(&sUnknown_08597D18, 0, 0, 4);
    sUnknown_0203A11C->unk2E4 = &gSprites[spriteId];
    sUnknown_0203A11C->unk2E4->callback = sub_811E2DC;
    sUnknown_0203A11C->unk2E4->oam.priority = 2;
    sub_811E30C();
}

static void sub_811E2DC(struct Sprite *sprite)
{
    if (++sprite->data[0] > 2)
    {
        sprite->data[0] = 0;
        if (++sprite->pos2.x > 0)
            sprite->pos2.x = -6;
    }
}

static void sub_811E30C(void)
{
    s8 var0, var1, x, y;

    sub_811BBC8(&var0, &var1);
    x = var0 * 13;
    x = x * 8 + 28;
    y = var1 * 16 + 96;
    sub_811E34C(x, y);
}

static void sub_811E34C(u8 x, u8 y)
{
    if (sUnknown_0203A11C->unk2E4)
    {
        sUnknown_0203A11C->unk2E4->pos1.x = x;
        sUnknown_0203A11C->unk2E4->pos1.y = y;
        sUnknown_0203A11C->unk2E4->pos2.x = 0;
        sUnknown_0203A11C->unk2E4->data[0] = 0;
    }
}

static void sub_811E380(void)
{
    if (sUnknown_0203A11C->unk2E4)
    {
        DestroySprite(sUnknown_0203A11C->unk2E4);
        sUnknown_0203A11C->unk2E4 = ((void *)0);
    }
}

static void sub_811E3AC(void)
{
    u8 spriteId = CreateSprite(&sUnknown_08597DF0, 208, 128, 6);
    sUnknown_0203A11C->unk2E8 = &gSprites[spriteId];
    sUnknown_0203A11C->unk2E8->pos2.x = -64;

    spriteId = CreateSprite(&sUnknown_08597DD0, 208, 80, 5);
    sUnknown_0203A11C->unk2EC = &gSprites[spriteId];
    sUnknown_0203A11C->unk9 = 0;
}

static bool8 sub_811E418(void)
{
    switch (sUnknown_0203A11C->unk9)
    {
    default:
        return 0;
    case 0:
        sUnknown_0203A11C->unk2E8->pos2.x += 8;
        if (sUnknown_0203A11C->unk2E8->pos2.x >= 0)
        {
            sUnknown_0203A11C->unk2E8->pos2.x = 0;
            if (!sub_811BBB0())
                StartSpriteAnim(sUnknown_0203A11C->unk2EC, 1);
            else
                StartSpriteAnim(sUnknown_0203A11C->unk2EC, 2);

            sUnknown_0203A11C->unk9++;
        }
        break;
    case 1:
        if (sUnknown_0203A11C->unk2EC->animEnded)
        {
            sUnknown_0203A11C->unk9 = 2;
            return 0;
        }
    }

    return 1;
}

static void sub_811E4AC(void)
{
    sUnknown_0203A11C->unk9 = 0;
    StartSpriteAnim(sUnknown_0203A11C->unk2EC, 3);
}

static bool8 sub_811E4D0(void)
{
    switch (sUnknown_0203A11C->unk9)
    {
    default:
        return 0;
    case 0:
        if (sUnknown_0203A11C->unk2EC->animEnded)
            sUnknown_0203A11C->unk9 = 1;
        break;
    case 1:
        sUnknown_0203A11C->unk2E8->pos2.x -= 8;
        if (sUnknown_0203A11C->unk2E8->pos2.x <= -64)
        {
            DestroySprite(sUnknown_0203A11C->unk2EC);
            DestroySprite(sUnknown_0203A11C->unk2E8);
            sUnknown_0203A11C->unk2EC = ((void *)0);
            sUnknown_0203A11C->unk2E8 = ((void *)0);
            sUnknown_0203A11C->unk9++;
            return 0;
        }
    }

    return 1;
}

static void sub_811E55C(void)
{
    StartSpriteAnim(sUnknown_0203A11C->unk2EC, 4);
}

static void sub_811E578(void)
{
    if (!sub_811BBB0())
        StartSpriteAnim(sUnknown_0203A11C->unk2EC, 1);
    else
        StartSpriteAnim(sUnknown_0203A11C->unk2EC, 2);
}

static bool8 sub_811E5B8(void)
{
    return !sUnknown_0203A11C->unk2EC->animEnded;
}

static void sub_811E5D4(void)
{
    u8 spriteId = CreateSprite(&sUnknown_08597E48, 96, 80, 0);
    if (spriteId != 64)
        sUnknown_0203A11C->unk2F0 = &gSprites[spriteId];

    spriteId = CreateSprite(&sUnknown_08597E48, 96, 156, 0);
    if (spriteId != 64)
    {
        sUnknown_0203A11C->unk2F4 = &gSprites[spriteId];
        sUnknown_0203A11C->unk2F4->vFlip = 1;
    }

    sub_811E6B0();
}

static void sub_811E64C(void)
{
    sUnknown_0203A11C->unk2F0->invisible = !sub_811BBF8();
    sUnknown_0203A11C->unk2F4->invisible = !sub_811BC2C();
}

static void sub_811E6B0(void)
{
    sUnknown_0203A11C->unk2F0->invisible = 1;
    sUnknown_0203A11C->unk2F4->invisible = 1;
}

static void sub_811E6E0(int arg0)
{
    if (!arg0)
    {
        sUnknown_0203A11C->unk2F0->pos1.x = 96;
        sUnknown_0203A11C->unk2F4->pos1.x = 96;
    }
    else
    {
        sUnknown_0203A11C->unk2F0->pos1.x = 120;
        sUnknown_0203A11C->unk2F4->pos1.x = 120;
    }
}

static void sub_811E720(void)
{
    u8 spriteId = CreateSprite(&sUnknown_08597E30, 220, 84, 1);
    if (spriteId != 64)
        sUnknown_0203A11C->unk2F8 = &gSprites[spriteId];

    spriteId = CreateSprite(&sUnknown_08597E30, 220, 156, 1);
    if (spriteId != 64)
    {
        sUnknown_0203A11C->unk2FC = &gSprites[spriteId];
        StartSpriteAnim(sUnknown_0203A11C->unk2FC, 1);
    }

    sub_811E7F8();
}

static void sub_811E794(void)
{
    sUnknown_0203A11C->unk2F8->invisible = !sub_811BBF8();
    sUnknown_0203A11C->unk2FC->invisible = !sub_811BC2C();
}

static void sub_811E7F8(void)
{
    sUnknown_0203A11C->unk2F8->invisible = 1;
    sUnknown_0203A11C->unk2FC->invisible = 1;
}

static void sub_811E828(void)
{
    int graphicsId;
    u8 spriteId;

    switch (GetDisplayedPersonType())
    {
    case 0:
        graphicsId = 67;
        break;
    case 1:
        graphicsId = 68;
        break;
    case 2:
        graphicsId = 7;
        break;
    default:
        return;
    }

    if (GetEasyChatScreenFrameId() != 4)
        return;

    spriteId = AddPseudoObjectEvent(graphicsId, SpriteCallbackDummy, 76, 40, 0);
    if (spriteId != 64)
    {
        gSprites[spriteId].oam.priority = 0;
        StartSpriteAnim(&gSprites[spriteId], 2);
    }

    spriteId = AddPseudoObjectEvent(
        gSaveBlock2Ptr->playerGender == 0 ? 100 : 105,
        SpriteCallbackDummy,
        52,
        40,
        0);

    if (spriteId != 64)
    {
        gSprites[spriteId].oam.priority = 0;
        StartSpriteAnim(&gSprites[spriteId], 3);
    }
}

int GetFooterIndex(void)
{
    u8 frameId = GetEasyChatScreenFrameId();
    switch (sPhraseFrameDimensions[frameId].footerId)
    {
    case 1:
        return 1;
    case 2:
        return 2;
    case 0:
        return 0;
    default:
        return 3;
    }
}

static int GetFooterOptionXOffset(int option)
{
    int footerIndex = GetFooterIndex();
    if (footerIndex < 3)
        return sFooterOptionXOffsets[footerIndex][option] + 4;
    else
        return 0;
}

static void sub_811E948(void)
{
    int i;
    u16 windowId;
    struct WindowTemplate template;
    int footerId = GetFooterIndex();
    if (footerId == 3)
        return;

    template.bg = 3;
    template.tilemapLeft = 1;
    template.tilemapTop = 11;
    template.width = 28;
    template.height = 2;
    template.paletteNum = 11;
    template.baseBlock = 0x34;
    windowId = AddWindow(&template);
    FillWindowPixelBuffer(windowId, ((1) | ((1) << 4)));
    for (i = 0; i < 4; i++)
    {
        const u8 *str = sFooterTextOptions[footerId][i];
        if (str)
        {
            int x = sFooterOptionXOffsets[footerId][i];
            sub_811D028(windowId, 1, str, x, 1, 0, ((void *)0));
        }
    }

    PutWindowTilemap(windowId);
}

static bool8 IsEasyChatGroupUnlocked(u8 groupId)
{
    switch (groupId)
    {
    case 0x14:
        return FlagGet((((0x500 + 864 - 1) + 1) + 0x6));
    case 0x11:
    case 0x12:
    case 0x13:
        return FlagGet((((0x500 + 864 - 1) + 1) + 0x4));
    case 0x15:
        return EasyChatIsNationalPokedexEnabled();
    default:
        return 1;
    }
}

u16 EasyChat_GetNumWordsInGroup(u8 groupId)
{
    if (groupId == 0x0)
        return GetNationalPokedexCount(FLAG_GET_SEEN);

    if (IsEasyChatGroupUnlocked(groupId))
        return gEasyChatGroups[groupId].numEnabledWords;

    return 0;
}

bool8 sub_811EAA4(u16 easyChatWord)
{
    u16 i;
    u8 groupId;
    u32 index;
    u16 numWords;
    const u16 *list;
    if (easyChatWord == 0xFFFF)
        return 0;

    groupId = ((easyChatWord) >> 9);
    index = ((easyChatWord) & 0x1FF);
    if (groupId >= 0x16)
        return 1;

    numWords = gEasyChatGroups[groupId].numWords;
    switch (groupId)
    {
    case 0x0:
    case 0x15:
    case 0x12:
    case 0x13:
        list = gEasyChatGroups[groupId].wordData.valueList;
        for (i = 0; i < numWords; i++)
        {
            if (index == list[i])
                return 0;
        }
        return 1;
    default:
        if (index >= numWords)
            return 1;
        else
            return 0;
    }
}

bool8 ECWord_CheckIfOutsideOfValidRange(u16 easyChatWord)
{
    int numWordsInGroup;
    u8 groupId = ((easyChatWord) >> 9);
    u32 index = ((easyChatWord) & 0x1FF);
    if (groupId >= 0x16)
        return 1;

    switch (groupId)
    {
    case 0x0:
    case 0x15:
        numWordsInGroup = gNumSpeciesNames;
        break;
    case 0x12:
    case 0x13:
        numWordsInGroup = gUnknown_085FA1D4;
        break;
    default:
        numWordsInGroup = gEasyChatGroups[groupId].numWords;
        break;
    }

    if (numWordsInGroup <= index)
        return 1;
    else
        return 0;
}

const u8 *GetEasyChatWord(u8 groupId, u16 index)
{
    switch (groupId)
    {
    case 0x0:
    case 0x15:
        return gSpeciesNames[index];
    case 0x12:
    case 0x13:
        return gMoveNames[index];
    default:
        return gEasyChatGroups[groupId].wordData.words[index].text;
    }
}

u8 *CopyEasyChatWord(u8 *dest, u16 easyChatWord)
{
    u8 *resultStr;
    if (sub_811EAA4(easyChatWord))
    {
        resultStr = StringCopy(dest, gText_ThreeQuestionMarks);
    }
    else if (easyChatWord != 0xFFFF)
    {
        u16 index = ((easyChatWord) & 0x1FF);
        u8 groupId = ((easyChatWord) >> 9);
        resultStr = StringCopy(dest, GetEasyChatWord(groupId, index));
    }
    else
    {
        *dest = 0xFF;
        resultStr = dest;
    }

    return resultStr;
}

u8 *ConvertEasyChatWordsToString(u8 *dest, const u16 *src, u16 columns, u16 rows)
{
    u16 i, j;
    u16 numColumns = columns - 1;

    for (i = 0; i < rows; i++)
    {
        for (j = 0; j < numColumns; j++)
        {
            dest = CopyEasyChatWord(dest, *src);
            if (*src != 0xFFFF)
            {
                *dest = 0x00;
                dest++;
            }

            src++;
        }

        dest = CopyEasyChatWord(dest, *(src++));
        *dest = 0xFE;
        dest++;
    }

    dest--;
    *dest = 0xFF;
    return dest;
}

u8 *unref_sub_811EC98(u8 *dest, const u16 *src, u16 columns, u16 rows)
{
    u16 i, j, k;
    u16 numColumns;
    int var0, var1;

    numColumns = columns;
    var1 = 0;
    columns--;
    for (i = 0; i < rows; i++)
    {
        const u16 *var2 = src;
        var0 = 0;
        for (j = 0; j < numColumns; j++)
        {
            if (var2[j] != 0xFFFF)
                var0 = 1;
        }

        if (!var0)
        {
            src += numColumns;
            continue;
        }

        for (k = 0; k < columns; k++)
        {
            dest = CopyEasyChatWord(dest, *src);
            if (*src != 0xFFFF)
            {
                *dest = 0x00;
                dest++;
            }

            src++;
        }

        dest = CopyEasyChatWord(dest, *(src++));
        if (var1 == 0)
            *dest = 0xFE;
        else
            *dest = 0xFA;

        dest++;
        var1++;
    }

    dest--;
    *dest = 0xFF;
    return dest;
}

static u16 GetEasyChatWordStringLength(u16 easyChatWord)
{
    if (easyChatWord == 0xFFFF)
        return 0;

    if (sub_811EAA4(easyChatWord))
    {
        return StringLength(gText_ThreeQuestionMarks);
    }
    else
    {
        u16 index = ((easyChatWord) & 0x1FF);
        u8 groupId = ((easyChatWord) >> 9);
        return StringLength(GetEasyChatWord(groupId, index));
    }
}

static bool8 CanPhraseFitInXRowsYCols(const u16 *easyChatWords, u8 numRows, u8 numColumns, u16 maxLength)
{
    u8 i, j;

    for (i = 0; i < numColumns; i++)
    {
        u16 totalLength = numRows - 1;
        for (j = 0; j < numRows; j++)
            totalLength += GetEasyChatWordStringLength(*(easyChatWords++));

        if (totalLength > maxLength)
            return 1;
    }

    return 0;
}

u16 GetRandomEasyChatWordFromGroup(u16 groupId)
{
    u16 index = Random() % gEasyChatGroups[groupId].numWords;
    if (groupId == 0x0
     || groupId == 0x15
     || groupId == 0x12
     || groupId == 0x13)
    {
        index = gEasyChatGroups[groupId].wordData.valueList[index];
    }

    return ((((groupId) & 0x7F) << 9) | ((index) & 0x1FF));
}

u16 GetRandomEasyChatWordFromUnlockedGroup(u16 groupId)
{
    if (!IsEasyChatGroupUnlocked(groupId))
        return 0xFFFF;

    if (groupId == 0x0)
        return GetRandomUnlockedEasyChatPokemon();

    return GetRandomEasyChatWordFromGroup(groupId);
}

void ShowEasyChatProfile(void)
{
    u16 *easyChatWords;
    int columns, rows;
    switch (gSpecialVar_0x8004)
    {
    case 0:
        easyChatWords = gSaveBlock1Ptr->easyChatProfile;
        columns = 2;
        rows = 2;
        break;
    case 1:
        easyChatWords = gSaveBlock1Ptr->easyChatBattleStart;
        if (CanPhraseFitInXRowsYCols(gSaveBlock1Ptr->easyChatBattleStart, 3, 2, 18))
        {
            columns = 2;
            rows = 3;
        }
        else
        {
            columns = 3;
            rows = 2;
        }
        break;
    case 2:
        easyChatWords = gSaveBlock1Ptr->easyChatBattleWon;
        columns = 3;
        rows = 2;
        break;
    case 3:
        easyChatWords = gSaveBlock1Ptr->easyChatBattleLost;
        columns = 3;
        rows = 2;
        break;
    default:
        return;
    }

    ConvertEasyChatWordsToString(gStringVar4, easyChatWords, columns, rows);
    ShowFieldAutoScrollMessage(gStringVar4);
}


void BufferDeepLinkPhrase(void)
{
    int groupId = Random() & 1 ? 0xd : 0xc;
    u16 easyChatWord = GetRandomEasyChatWordFromUnlockedGroup(groupId);
    CopyEasyChatWord(gStringVar2, easyChatWord);
}

static bool8 IsAdditionalPhraseUnlocked(u8 additionalPhraseId)
{
    int byteOffset = additionalPhraseId / 8;
    int shift = additionalPhraseId % 8;
    return (gSaveBlock1Ptr->additionalPhrases[byteOffset] >> shift) & 1;
}

void UnlockAdditionalPhrase(u8 additionalPhraseId)
{
    if (additionalPhraseId < 33)
    {
        int byteOffset = additionalPhraseId / 8;
        int shift = additionalPhraseId % 8;
        gSaveBlock1Ptr->additionalPhrases[byteOffset] |= 1 << shift;
    }
}

static u8 GetNumAdditionalPhrasesUnlocked(void)
{
    u8 i;
    u8 numAdditionalPhrasesUnlocked;

    for (i = 0, numAdditionalPhrasesUnlocked = 0; i < 33; i++)
    {
        if (IsAdditionalPhraseUnlocked(i))
            numAdditionalPhrasesUnlocked++;
    }

    return numAdditionalPhrasesUnlocked;
}

u16 GetNewHipsterPhraseToTeach(void)
{
    u16 i;
    u16 additionalPhraseId;
    u8 numAdditionalPhrasesUnlocked = GetNumAdditionalPhrasesUnlocked();
    if (numAdditionalPhrasesUnlocked == 33)
        return 0xFFFF;

    additionalPhraseId = Random() % (33 - numAdditionalPhrasesUnlocked);
    for (i = 0; i < 33; i++)
    {
        if (!IsAdditionalPhraseUnlocked(i))
        {
            if (additionalPhraseId)
            {
                additionalPhraseId--;
            }
            else
            {
                UnlockAdditionalPhrase(i);
                return ((((0x14) & 0x7F) << 9) | ((i) & 0x1FF));
            }
        }
    }

    return 0xFFFF;
}


u16 GetRandomTaughtHipsterPhrase(void)
{
    u16 i;
    u16 additionalPhraseId = GetNumAdditionalPhrasesUnlocked();
    if (additionalPhraseId == 0)
        return 0xFFFF;

    additionalPhraseId = Random() % additionalPhraseId;
    for (i = 0; i < 33; i++)
    {
        if (IsAdditionalPhraseUnlocked(i))
        {
            if (additionalPhraseId)
                additionalPhraseId--;
            else
                return ((((0x14) & 0x7F) << 9) | ((i) & 0x1FF));
        }
    }

    return 0xFFFF;
}

static bool8 EasyChatIsNationalPokedexEnabled(void)
{
    return IsNationalPokedexEnabled();
}

static u16 GetRandomUnlockedEasyChatPokemon(void)
{
    u16 i;
    u16 numWords;
    const u16 *species;
    u16 index = EasyChat_GetNumWordsInGroup(0x0);
    if (index == 0)
        return 0xFFFF;

    index = Random() % index;
    species = gEasyChatGroups[0x0].wordData.valueList;
    numWords = gEasyChatGroups[0x0].numWords;
    for (i = 0; i < numWords; i++)
    {
        u16 dexNum = SpeciesToNationalPokedexNum(*species);
        if (GetSetPokedexFlag(dexNum, FLAG_GET_SEEN))
        {
            if (index)
                index--;
            else
                return ((((0x0) & 0x7F) << 9) | ((*species) & 0x1FF));
        }

        species++;
    }

    return 0xFFFF;
}

void InitEasyChatPhrases(void)
{
    u16 i, j;

    for (i = 0; i < 4; i++)
        gSaveBlock1Ptr->easyChatProfile[i] = sDefaultProfileWords[i];

    for (i = 0; i < 6; i++)
        gSaveBlock1Ptr->easyChatBattleStart[i] = sDefaultBattleStartWords[i];

    for (i = 0; i < 6; i++)
        gSaveBlock1Ptr->easyChatBattleWon[i] = sUnknown_0859E640[i];

    for (i = 0; i < 6; i++)
        gSaveBlock1Ptr->easyChatBattleLost[i] = sUnknown_0859E64C[i];

    for (i = 0; i < 16; i++)
    {
        for (j = 0; j < 9; j++)
            gSaveBlock1Ptr->mail[i].words[j] = 0xFFFF;
    }





    for (i = 0; i < 64; i++)
        gSaveBlock1Ptr->additionalPhrases[i] = 0;
}

static bool8 sub_811F28C(void)
{
    sUnknown_0203A120 = Alloc(sizeof(*sUnknown_0203A120));
    if (!sUnknown_0203A120)
        return 0;

    sub_811F2D4();
    sub_811F46C();
    return 1;
}

static void sub_811F2B8(void)
{
    if (sUnknown_0203A120)
        { Free(sUnknown_0203A120); sUnknown_0203A120 = ((void *)0); };
}

static void sub_811F2D4(void)
{
    int i;

    sUnknown_0203A120->unk0 = 0;
    if (GetNationalPokedexCount(FLAG_GET_SEEN))
        sUnknown_0203A120->unk2[sUnknown_0203A120->unk0++] = 0x0;

    for (i = 0x1; i <= 0x10; i++)
        sUnknown_0203A120->unk2[sUnknown_0203A120->unk0++] = i;

    if (FlagGet((((0x500 + 864 - 1) + 1) + 0x4)))
    {
        sUnknown_0203A120->unk2[sUnknown_0203A120->unk0++] = 0x11;
        sUnknown_0203A120->unk2[sUnknown_0203A120->unk0++] = 0x12;
        sUnknown_0203A120->unk2[sUnknown_0203A120->unk0++] = 0x13;
    }

    if (FlagGet((((0x500 + 864 - 1) + 1) + 0x6)))
        sUnknown_0203A120->unk2[sUnknown_0203A120->unk0++] = 0x14;

    if (IsNationalPokedexEnabled())
        sUnknown_0203A120->unk2[sUnknown_0203A120->unk0++] = 0x15;
}

static u8 sub_811F3AC(void)
{
    return sUnknown_0203A120->unk0;
}

static u8 sub_811F3B8(u8 index)
{
    if (index >= sUnknown_0203A120->unk0)
        return 0x16;
    else
        return sUnknown_0203A120->unk2[index];
}

u8 *unref_sub_811F3E0(u8 *dest, u8 groupId, u16 totalChars)
{
    u16 i;
    u8 *str = StringCopy(dest, gEasyChatGroupNamePointers[groupId]);
    for (i = str - dest; i < totalChars; i++)
    {
        *str = 0x00;
        str++;
    }

    *str = 0xFF;
    return str;
}

static const u8 *GetEasyChatWordGroupName(u8 groupId)
{
    return gEasyChatGroupNamePointers[groupId];
}

static u8 *CopyEasyChatWordPadded(u8 *dest, u16 easyChatWord, u16 totalChars)
{
    u16 i;
    u8 *str = CopyEasyChatWord(dest, easyChatWord);
    for (i = str - dest; i < totalChars; i++)
    {
        *str = 0x00;
        str++;
    }

    *str = 0xFF;
    return str;
}

static void sub_811F46C(void)
{
    int i, j, k;
    int numWords;
    const u16 *words;
    u16 numToProcess;
    int index;

    for (i = 0; i < 27; i++)
    {
        numWords = gEasyChatWordsByLetterPointers[i].numWords;
        words = gEasyChatWordsByLetterPointers[i].words;
        sUnknown_0203A120->unk2E[i] = 0;
        index = 0;
        for (j = 0; j < numWords; j++)
        {
            if (*words == 0xFFFF)
            {
                words++;
                numToProcess = *words;
                words++;
                j += 1 + numToProcess;
            }
            else
            {
                numToProcess = 1;
            }

            for (k = 0; k < numToProcess; k++)
            {
                if (sub_811F860(words[k]))
                {
                    sUnknown_0203A120->unk64[i][index++] = words[k];
                    sUnknown_0203A120->unk2E[i]++;
                    break;
                }
            }

            words += numToProcess;
        }
    }
}

static void sub_811F548(int arg0, u16 groupId)
{
    if (!arg0)
        sUnknown_0203A120->unk3BA0 = sub_811F5C4(groupId);
    else
        sUnknown_0203A120->unk3BA0 = sub_811F6B8(groupId);
}

static u16 sub_811F578(u16 arg0)
{
    if (arg0 >= sUnknown_0203A120->unk3BA0)
        return 0xFFFF;
    else
        return sUnknown_0203A120->unk3984[arg0];
}

static u16 sub_811F5B0(void)
{
    return sUnknown_0203A120->unk3BA0;
}

static u16 sub_811F5C4(u16 groupId)
{
    u32 i;
    int totalWords;
    const u16 *list;
    const struct EasyChatWordInfo *wordInfo;
    u16 numWords = gEasyChatGroups[groupId].numWords;

    if (groupId == 0x0 || groupId == 0x15
     || groupId == 0x12 || groupId == 0x13)
    {
        list = gEasyChatGroups[groupId].wordData.valueList;
        for (i = 0, totalWords = 0; i < numWords; i++)
        {
            if (sub_811F764(list[i], groupId))
                sUnknown_0203A120->unk3984[totalWords++] = ((((groupId) & 0x7F) << 9) | ((list[i]) & 0x1FF));
        }

        return totalWords;
    }
    else
    {
        wordInfo = gEasyChatGroups[groupId].wordData.words;
        for (i = 0, totalWords = 0; i < numWords; i++)
        {
            u16 alphabeticalOrder = wordInfo[i].alphabeticalOrder;
            if (sub_811F764(alphabeticalOrder, groupId))
                sUnknown_0203A120->unk3984[totalWords++] = ((((groupId) & 0x7F) << 9) | ((alphabeticalOrder) & 0x1FF));
        }

        return totalWords;
    }
}

static u16 sub_811F6B8(u16 alphabeticalGroup)
{
    u16 i;
    u16 totalWords;

    for (i = 0, totalWords = 0; i < sUnknown_0203A120->unk2E[alphabeticalGroup]; i++)
        sUnknown_0203A120->unk3984[totalWords++] = sUnknown_0203A120->unk64[alphabeticalGroup][i];

    return totalWords;
}

static bool8 sub_811F72C(u8 arg0)
{
    int i;
    for (i = 0; i < sUnknown_0203A120->unk0; i++)
    {
        if (sUnknown_0203A120->unk2[i] == arg0)
            return 1;
    }

    return 0;
}

static bool8 sub_811F764(u16 wordIndex, u8 groupId)
{
    switch (groupId)
    {
    case 0x0:
        return GetSetPokedexFlag(SpeciesToNationalPokedexNum(wordIndex), FLAG_GET_SEEN);
    case 0x15:
        if (sub_811F838(wordIndex))
            GetSetPokedexFlag(SpeciesToNationalPokedexNum(wordIndex), FLAG_GET_SEEN);
        return 1;
    case 0x12:
    case 0x13:
        return 1;
    case 0x14:
        return IsAdditionalPhraseUnlocked(wordIndex);
    default:
        return gEasyChatGroups[groupId].wordData.words[wordIndex].enabled;
    }
}

static int sub_811F838(u16 species)
{
    u32 i;
    for (i = 0; i < (size_t)(sizeof(sUnknown_0859E658) / sizeof((sUnknown_0859E658)[0])); i++)
    {
        if (sUnknown_0859E658[i] == species)
            return 1;
    }

    return 0;
}

static u8 sub_811F860(u16 easyChatWord)
{
    u8 groupId = ((easyChatWord) >> 9);
    u32 index = ((easyChatWord) & 0x1FF);
    if (!sub_811F72C(groupId))
        return 0;
    else
        return sub_811F764(index, groupId);
}

void InitializeEasyChatWordArray(u16 *words, u16 length)
{
    u16 i;
    for (i = length - 1; i != 0xFFFF; i--)
        *(words++) = 0xFFFF;
}

void sub_811F8BC(void)
{
    int i;
    u16 *words = sub_801B058();
    for (i = 0; i < 4; i++)
        words[i] = 0xFFFF;
}

bool32 sub_811F8D8(int easyChatWord)
{
    int groupId = ((easyChatWord) >> 9);
    int mask = 0x7F;
    int index = ((easyChatWord) & 0x1FF);
    if (!IsEasyChatGroupUnlocked(groupId & mask))
        return 0;
    else
        return sub_811F764(index, groupId & mask);
}
