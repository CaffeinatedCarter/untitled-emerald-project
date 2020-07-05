# 1 "src/intro.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/intro.c"
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
# 2 "src/intro.c" 2
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
# 3 "src/intro.c" 2
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
# 4 "src/intro.c" 2
# 1 "include/scanline_effect.h" 1
# 17 "include/scanline_effect.h"
struct ScanlineEffectParams
{
    volatile void *dmaDest;
    u32 dmaControl;
    u8 initState;
    u8 unused9;
};

struct ScanlineEffect
{
    void *dmaSrcBuffers[2];
    volatile void *dmaDest;
    u32 dmaControl;
    void (*setFirstScanlineReg)(void);
    u8 srcBuffer;
    u8 state;
    u8 unused16;
    u8 unused17;
    u8 waveTaskId;
};

extern struct ScanlineEffect gScanlineEffect;

extern u16 gScanlineEffectRegBuffers[2][0x3C0];

void ScanlineEffect_Stop(void);
void ScanlineEffect_Clear(void);
void ScanlineEffect_SetParams(struct ScanlineEffectParams);
void ScanlineEffect_InitHBlankDmaTransfer(void);
u8 ScanlineEffect_InitWave(u8 startLine, u8 endLine, u8 frequency, u8 amplitude, u8 delayInterval, u8 regOffset, bool8 a7);
# 5 "src/intro.c" 2
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
# 6 "src/intro.c" 2
# 1 "include/title_screen.h" 1



extern const u16 gIntroWaterDropAlphaBlend[];

void CB2_InitTitleScreen(void);
# 7 "src/intro.c" 2
# 1 "include/libgcnmultiboot.h" 1



struct GcmbStruct
{
    u16 gcmb_field_0;
    vu8 gcmb_field_2;
    u8 filler3[0x2C - 0x3];
};

void GameCubeMultiBoot_Main(struct GcmbStruct *pStruct);
void GameCubeMultiBoot_ExecuteProgram(struct GcmbStruct *pStruct);
void GameCubeMultiBoot_Init(struct GcmbStruct *pStruct);
void GameCubeMultiBoot_HandleSerialInterrupt(struct GcmbStruct *pStruct);
void GameCubeMultiBoot_Quit(void);
# 8 "src/intro.c" 2
# 1 "gflib/malloc.h" 1
# 15 "gflib/malloc.h"
extern u8 gHeap[];

void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 9 "src/intro.c" 2
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
# 10 "src/intro.c" 2
# 1 "include/link.h" 1
# 98 "include/link.h"
struct LinkStatus
{
    u32 localId:2;
    u32 playerCount:3;
    u32 master:1;
    u32 connEstablished:1;
    u32 unused_7:1;
    u32 receivedNothing:1;
    u32 unused_9:7;
    u32 errors:7;
};






enum
{
    LINK_STATE_START0,
    LINK_STATE_START1,
    LINK_STATE_HANDSHAKE,
    LINK_STATE_INIT_TIMER,
    LINK_STATE_CONN_ESTABLISHED,
};

enum
{
    EXCHANGE_NOT_STARTED,
    EXCHANGE_COMPLETE,
    EXCHANGE_TIMED_OUT,
    EXCHANGE_IN_PROGRESS,
    EXCHANGE_PLAYER_NOT_READY,
    EXCHANGE_PARTNER_NOT_READY,
    EXCHANGE_STAT_6,
    EXCHANGE_STAT_7
};

enum
{
    QUEUE_FULL_NONE,
    QUEUE_FULL_SEND,
    QUEUE_FULL_RECV,
};

enum
{
    LAG_NONE,
    LAG_MASTER,
    LAG_SLAVE,
};

struct LinkPlayer
{
               u16 version;
               u16 lp_field_2;
               u32 trainerId;
               u8 name[7 + 1];
               u8 progressFlags;
               u8 neverRead;
               u8 progressFlagsCopy;
               u8 gender;
               u32 linkType;
               u16 id;
               u16 language;
};

struct LinkPlayerBlock
{
    char magic1[16];
    struct LinkPlayer linkPlayer;
    char magic2[16];
};



struct SendQueue
{
                u16 data[8][50];
                u8 pos;
                u8 count;
};

struct RecvQueue
{
    u16 data[4][8][50];
    u8 pos;
    u8 count;
};

struct Link
{
                u8 isMaster;
                u8 state;
                u8 localId;
                u8 playerCount;
                u16 tempRecvBuffer[4];
                bool8 receivedNothing;
                s8 serialIntrCounter;
                bool8 handshakeAsMaster;
                u8 link_field_F;


                bool8 hardwareError;
                bool8 badChecksum;
                u8 queueFull;
                u8 lag;

                u16 checksum;

                u8 sendCmdIndex;
                u8 recvCmdIndex;

                struct SendQueue sendQueue;
                struct RecvQueue recvQueue;
};

struct BlockRequest
{
    void * address;
    u32 size;
};

extern const struct BlockRequest sBlockRequestLookupTable[5];

extern struct Link gLink;
extern u16 gRecvCmds[5][8];
extern u8 gBlockSendBuffer[0x100];
extern u16 gLinkType;
extern u32 gLinkStatus;
extern u16 gBlockRecvBuffer[5][0x100 / 2];
extern u16 gSendCmd[8];
extern struct LinkPlayer gLinkPlayers[5];
extern u16 word_3002910[];
extern bool8 gReceivedRemoteLinkPlayers;
extern u32 gUnknown_020223C0;
extern bool8 gLinkVSyncDisabled;
extern u32 gLinkStatus;


bool8 IsWirelessAdapterConnected(void);
void Task_DestroySelf(u8 taskId);
void OpenLink(void);
void CloseLink(void);
u16 LinkMain2(const u16 *);
void sub_8007B14(void);
bool32 sub_8007B24(void);
void ClearLinkCallback(void);
void ClearLinkCallback_2(void);
u8 GetLinkPlayerCount(void);
void OpenLinkTimed(void);
u8 GetLinkPlayerDataExchangeStatusTimed(int lower, int upper);
bool8 IsLinkPlayerDataExchangeComplete(void);
u32 GetLinkPlayerTrainerId(u8);
void ResetLinkPlayers(void);
void sub_8007E24(void);
void sub_8007E4C(void);
u8 GetMultiplayerId(void);
u8 bitmask_all_link_players_but_self(void);
bool8 SendBlock(u8, const void *, u16);
u8 GetBlockReceivedStatus(void);
void ResetBlockReceivedFlags(void);
void ResetBlockReceivedFlag(u8);
u8 GetLinkPlayerCount_2(void);
bool8 IsLinkMaster(void);
void CB2_LinkError(void);
u8 GetSioMultiSI(void);
bool8 IsLinkConnectionEstablished(void);
bool8 HasLinkErrorOccurred(void);
void ResetSerial(void);
u32 LinkMain1(u8 *shouldAdvanceLinkState, u16 *sendCmd, u16 (*recvCmds)[8]);
void LinkVSync(void);
void Timer3Intr(void);
void SerialCB(void);
bool32 InUnionRoom(void);
void LoadWirelessStatusIndicatorSpriteGfx(void);
bool8 IsLinkTaskFinished(void);
void CreateWirelessStatusIndicatorSprite(u8, u8);
void sub_800ADF8(void);
void sub_800B488(void);
void CheckShouldAdvanceLinkState(void);
void sub_8011BD0(void);
u8 IsLinkMaster(void);
void sub_800AC34(void);
bool8 HandleLinkConnection(void);
void SetLinkDebugValues(u32 seed, u32 flags);
void sub_800A418(void);
void SetSuppressLinkErrorMessage(bool8 flag);
void sub_800B524(struct LinkPlayer *linkPlayer);
u8 GetSioMultiSI(void);
void sub_800AAF4(void);
void sub_800AF18(u32 status, u8 lastSendQueueCount, u8 lastRecvQueueCount, u8 unk_06);
void sub_800B348(void);
void sub_800B3A4(u32 who);
bool32 sub_800A07C(void);
void ResetLinkPlayerCount(void);
void sub_800AA04(u8 a0);
void sub_800B4C0(void);
bool32 sub_800B504(void);

extern u16 gLinkPartnersHeldKeys[6];
extern u32 gLinkDebugSeed;
extern struct LinkPlayerBlock gLocalLinkPlayerBlock;
extern bool8 gLinkErrorOccurred;
extern u32 gLinkDebugFlags;
extern bool8 gRemoteLinkPlayersNotReceived[4];
extern u8 gBlockReceivedStatus[4];
extern u16 gLinkHeldKeys;
extern u32 gLinkStatus;
extern u8 gUnknown_030030E4;
extern u8 gUnknown_030030E8;
extern u8 gUnknown_030030EC[4];
extern u8 gUnknown_030030F0[4];
extern u16 gUnknown_030030F4;
extern u8 gSuppressLinkErrorMessage;
extern u8 gWirelessCommType;
extern bool8 gSavedLinkPlayerCount;
extern u8 gSavedMultiplayerId;
extern struct LinkTestBGInfo gLinkTestBGInfo;
extern void (*gLinkCallback)(void);
extern bool8 gShouldAdvanceLinkState;
extern u16 gLinkTestBlockChecksums[4];
extern u8 gBlockRequestType;
extern u8 gLastSendQueueCount;
extern u8 gLastRecvQueueCount;
extern u16 gLinkSavedIme;
extern u32 gFiller_03003074;
extern u32 gFiller_03003154;
extern u32 gFiller_03003158;
extern u32 gFiller_0300315c;
extern u32 gFiller_03004138;
extern u32 gFiller_0300413C;
extern u32 gFiller_03003080;
extern struct LinkPlayer gLocalLinkPlayer;

bool32 Link_AnyPartnersPlayingRubyOrSapphire(void);
bool32 sub_800A03C(void);
void SetLocalLinkPlayerId(u8);
u8 GetSavedPlayerCount(void);
void sub_8009FAC(void);
bool8 sub_800A4D8(u8 a0);
u8 sub_800A9D8(void);
u8 sub_800A0C8(s32, s32);
u8 sub_800A9A8(void);
void sub_800AD10(void);
void sub_800AB18(void);
void sub_8009F18(void);
bool8 sub_800AA60(void);
void sub_800ABF4(u16 a0);
bool32 IsSendingKeysToLink(void);
u32 GetLinkRecvQueueLength(void);
# 11 "src/intro.c" 2
# 1 "include/multiboot_pokemon_colosseum.h" 1



extern const u16 gMultiBootProgram_PokemonColosseum_Start[0x14000];
# 12 "src/intro.c" 2
# 1 "include/load_save.h" 1



extern struct SaveBlock1 gSaveblock1;
extern struct SaveBlock2 gSaveblock2;
extern struct PokemonStorage gPokemonStorage;

extern bool32 gFlashMemoryPresent;
extern struct SaveBlock1 *gSaveBlock1Ptr;
extern struct SaveBlock2 *gSaveBlock2Ptr;
extern struct PokemonStorage *gPokemonStoragePtr;

void CheckForFlashMemory(void);
void ClearSav2(void);
void ClearSav1(void);
void SetSaveBlocksPointers(u16 offset);
void MoveSaveBlocks_ResetHeap(void);
u32 UseContinueGameWarp(void);
void ClearContinueGameWarpStatus(void);
void SetContinueGameWarpStatus(void);
void SetContinueGameWarpStatusToDynamicWarp(void);
void ClearContinueGameWarpStatus2(void);
void SavePlayerParty(void);
void LoadPlayerParty(void);
void SaveObjectEvents(void);
void LoadObjectEvents(void);
void SaveSerializedGame(void);
void LoadSerializedGame(void);
void LoadPlayerBag(void);
void SavePlayerBag(void);
void ApplyNewEncryptionKeyToHword(u16 *hWord, u32 newKey);
void ApplyNewEncryptionKeyToWord(u32 *word, u32 newKey);
# 13 "src/intro.c" 2
# 1 "include/save.h" 1



struct SaveSectionLocation
{
    void *data;
    u16 size;
};

struct SaveSection
{
    u8 data[0xFF4];
    u16 id;
    u16 checksum;
    u32 security;
    u32 counter;
};


struct UnkSaveSection
{
    u8 data[0xFF4];
    u32 security;
};

struct SaveSectionOffsets
{
    u16 toAdd;
    u16 size;
};
# 39 "include/save.h"
enum
{
    ENABLE,
    DISABLE,
    CHECK
};


enum
{
    SAVE_NORMAL,
    SAVE_LINK,

    SAVE_LINK2,
    SAVE_HALL_OF_FAME,
    SAVE_OVERWRITE_DIFFERENT_FILE,
    SAVE_HALL_OF_FAME_ERASE_BEFORE
};
# 77 "include/save.h"
extern u16 gLastWrittenSector;
extern u32 gLastSaveCounter;
extern u16 gLastKnownGoodSector;
extern u32 gDamagedSaveSectors;
extern u32 gSaveCounter;
extern struct SaveSection *gFastSaveSection;
extern u16 gUnknown_03006208;
extern u16 gSaveFileStatus;
extern void (*gGameContinueCallback)(void);
extern struct SaveSectionLocation gRamSaveSectionLocations[];
extern u16 gUnknown_03006294;

extern struct SaveSection gSaveDataBuffer;

void ClearSaveData(void);
void Save_ResetSaveCounters(void);
u8 HandleSavingData(u8 saveType);
u8 TrySavingData(u8 saveType);
bool8 sub_8153380(void);
bool8 sub_81533AC(void);
bool8 sub_81533E0(void);
bool8 sub_8153408(void);
bool8 FullSaveGame(void);
bool8 CheckSaveFile(void);
u8 Save_LoadGameData(u8 saveType);
u16 sub_815355C(void);
u32 TryReadSpecialSaveSection(u8 sector, u8* dst);
u32 TryWriteSpecialSaveSection(u8 sector, u8* src);
void sub_8153688(u8 taskId);


void DoSaveFailedScreen(u8 saveType);
# 14 "src/intro.c" 2
# 1 "include/new_game.h" 1



extern bool8 gDifferentSaveFile;


extern bool8 gEnableContestDebugging;

void SetTrainerId(u32 trainerId, u8 *dst);
u32 GetTrainerId(u8 *trainerId);
void CopyTrainerId(u8 *dst, u8 *src);
void NewGameInitData(void);
void ResetMenuAndMonGlobals(void);
void Sav2_ClearSetDefault(void);
# 15 "src/intro.c" 2
# 1 "include/m4a.h" 1



# 1 "include/gba/m4a_internal.h" 1



# 1 "include/gba/gba.h" 1
# 5 "include/gba/m4a_internal.h" 2
# 39 "include/gba/m4a_internal.h"
struct WaveData
{
    u16 type;
    u16 status;
    u32 freq;
    u32 loopStart;
    u32 size;
    s8 data[1];
};
# 57 "include/gba/m4a_internal.h"
struct ToneData
{
    u8 type;
    u8 key;
    u8 length;
    u8 pan_sweep;
    struct WaveData *wav;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;
};

struct CgbChannel
{
    u8 sf;
    u8 ty;
    u8 rightVolume;
    u8 leftVolume;
    u8 at;
    u8 de;
    u8 su;
    u8 re;
    u8 ky;
    u8 ev;
    u8 eg;
    u8 ec;
    u8 echoVolume;
    u8 echoLength;
    u8 d1;
    u8 d2;
    u8 gt;
    u8 mk;
    u8 ve;
    u8 pr;
    u8 rp;
    u8 d3[3];
    u8 d5;
    u8 sg;
    u8 n4;
    u8 pan;
    u8 panMask;
    u8 mo;
    u8 le;
    u8 sw;
    u32 fr;
    u32 *wp;
    u32 cp;
    u32 tp;
    u32 pp;
    u32 np;
    u8 d4[8];
};

struct MusicPlayerTrack;

struct SoundChannel
{
    u8 status;
    u8 type;
    u8 rightVolume;
    u8 leftVolume;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;
    u8 ky;
    u8 ev;
    u8 er;
    u8 el;
    u8 echoVolume;
    u8 echoLength;
    u8 d1;
    u8 d2;
    u8 gt;
    u8 mk;
    u8 ve;
    u8 pr;
    u8 rp;
    u8 d3[3];
    u32 ct;
    u32 fw;
    u32 freq;
    struct WaveData *wav;
    u32 cp;
    struct MusicPlayerTrack *track;
    u32 pp;
    u32 np;
    u32 d4;
    u16 xpi;
    u16 xpc;
};





struct SoundInfo
{




    u32 ident;

    vu8 pcmDmaCounter;


    u8 reverb;
    u8 maxChans;
    u8 masterVolume;
    u8 freq;

    u8 mode;
    u8 c15;
    u8 pcmDmaPeriod;
    u8 maxLines;
    u8 gap[3];
    s32 pcmSamplesPerVBlank;
    s32 pcmFreq;
    s32 divFreq;
    struct CgbChannel *cgbChans;
    u32 func;
    u32 intp;
    void (*CgbSound)(void);
    void (*CgbOscOff)(u8);
    u32 (*MidiKeyToCgbFreq)(u8, u8, u8);
    u32 MPlayJumpTable;
    u32 plynote;
    u32 ExtVolPit;
    u8 gap2[16];
    struct SoundChannel chans[12];
    s8 pcmBuffer[1584 * 2];
};

struct SongHeader
{
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct ToneData *tone;
    u8 *part[1];
};

struct PokemonCrySong
{
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    struct ToneData *tone;
    u8 *part[2];
    u8 gap;
    u8 part0;
    u8 tuneValue;
    u8 gotoCmd;
    u32 gotoTarget;
    u8 part1;
    u8 tuneValue2;
    u8 cont[2];
    u8 volCmd;
    u8 volumeValue;
    u8 unkCmd0D[2];
    u32 unkCmd0DParam;
    u8 xreleCmd[2];
    u8 releaseValue;
    u8 panCmd;
    u8 panValue;
    u8 tieCmd;
    u8 tieKeyValue;
    u8 tieVelocityValue;
    u8 unkCmd0C[2];
    u16 unkCmd0CParam;
    u8 end[2];
};
# 241 "include/gba/m4a_internal.h"
struct MusicPlayerTrack
{
    u8 flags;
    u8 wait;
    u8 patternLevel;
    u8 repN;
    u8 gateTime;
    u8 key;
    u8 velocity;
    u8 runningStatus;
    u8 keyM;
    u8 pitM;
    s8 keyShift;
    s8 keyShiftX;
    s8 tune;
    u8 pitX;
    s8 bend;
    u8 bendRange;
    u8 volMR;
    u8 volML;
    u8 vol;
    u8 volX;
    s8 pan;
    s8 panX;
    s8 modM;
    u8 mod;
    u8 modT;
    u8 lfoSpeed;
    u8 lfoSpeedC;
    u8 lfoDelay;
    u8 lfoDelayC;
    u8 priority;
    u8 echoVolume;
    u8 echoLength;
    struct SoundChannel *chan;
    struct ToneData tone;
    u8 gap[10];
    u16 unk_3A;
    u32 unk_3C;
    u8 *cmdPtr;
    u8 *patternStack[3];
};
# 294 "include/gba/m4a_internal.h"
struct MusicPlayerInfo
{
    struct SongHeader *songHeader;
    u32 status;
    u8 trackCount;
    u8 priority;
    u8 cmd;
    u8 unk_B;
    u32 clock;
    u8 gap[8];
    u8 *memAccArea;
    u16 tempoD;
    u16 tempoU;
    u16 tempoI;
    u16 tempoC;
    u16 fadeOI;
    u16 fadeOC;
    u16 fadeOV;
    struct MusicPlayerTrack *tracks;
    struct ToneData *tone;
    u32 ident;
    u32 func;
    u32 intp;
};

struct MusicPlayer
{
    struct MusicPlayerInfo *info;
    struct MusicPlayerTrack *track;
    u8 unk_8;
    u16 unk_A;
};

struct Song
{
    struct SongHeader *header;
    u16 ms;
    u16 me;
};

extern const struct MusicPlayer gMPlayTable[];
extern const struct Song gSongTable[];



extern u8 gMPlayMemAccArea[];






extern struct PokemonCrySong gPokemonCrySong;
extern struct PokemonCrySong gPokemonCrySongs[];

extern struct MusicPlayerInfo gPokemonCryMusicPlayers[];
extern struct MusicPlayerTrack gPokemonCryTracks[];

extern char SoundMainRAM[];

extern void *gMPlayJumpTable[];

typedef void (*XcmdFunc)(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
extern const XcmdFunc gXcmdTable[];

extern struct CgbChannel gCgbChans[];

extern const u8 gScaleTable[];
extern const u32 gFreqTable[];
extern const u16 gPcmSamplesPerVBlankTable[];

extern const u8 gCgbScaleTable[];
extern const s16 gCgbFreqTable[];
extern const u8 gNoiseTable[];

extern const struct PokemonCrySong gPokemonCrySongTemplate;

extern const struct ToneData voicegroup000;

extern char gNumMusicPlayers[];
extern char gMaxLines[];




u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void);
void TrackStop(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track);
void MPlayMain(void);
void RealClearChain(void *x);

void MPlayContinue(struct MusicPlayerInfo *mplayInfo);
void MPlayStart(struct MusicPlayerInfo *mplayInfo, struct SongHeader *songHeader);
void m4aMPlayStop(struct MusicPlayerInfo *mplayInfo);
void FadeOutBody(struct MusicPlayerInfo *mplayInfo);
void TrkVolPitSet(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track);
void MPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed);
void ClearChain(void *x);
void Clear64byte(void *addr);
void SoundInit(struct SoundInfo *soundInfo);
void MPlayExtender(struct CgbChannel *cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(struct MusicPlayerInfo *mplayInfo, struct MusicPlayerTrack *track, u8 a3);
void CgbSound(void);
void CgbOscOff(u8);
void CgbModVol(struct CgbChannel *chan);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void DummyFunc(void);
void MPlayJumpTableCopy(void **mplayJumpTable);
void SampleFreqSet(u32 freq);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);

void m4aMPlayTempoControl(struct MusicPlayerInfo *mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s8 pan);
void ClearModM(struct MusicPlayerTrack *track);
void m4aMPlayModDepthSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 lfoSpeed);

struct MusicPlayerInfo *SetPokemonCryTone(struct ToneData *tone);
void SetPokemonCryVolume(u8 val);
void SetPokemonCryPanpot(s8 val);
void SetPokemonCryPitch(s16 val);
void SetPokemonCryLength(u16 val);
void SetPokemonCryRelease(u8 val);
void SetPokemonCryProgress(u32 val);
int IsPokemonCryPlaying(struct MusicPlayerInfo *mplayInfo);
void SetPokemonCryChorus(s8 val);
void SetPokemonCryStereo(u32 val);
void SetPokemonCryPriority(u8 val);


void ply_fine(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_goto(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_patt(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_pend(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_rept(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_memacc(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_prio(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_tempo(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_keysh(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_voice(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_vol(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_pan(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_bend(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_bendr(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_lfos(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_lfodl(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_mod(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_modt(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_tune(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_port(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xcmd(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_endtie(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_note(struct MusicPlayerInfo *, struct MusicPlayerTrack *);


void ply_xxx(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xwave(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xtype(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xatta(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xdeca(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xsust(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xrele(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xiecv(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xiecl(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xleng(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xswee(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xcmd_0C(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
void ply_xcmd_0D(struct MusicPlayerInfo *, struct MusicPlayerTrack *);
# 5 "include/m4a.h" 2

void m4aSoundVSync(void);
void m4aSoundVSyncOn(void);

void m4aSoundInit(void);
void m4aSoundMain(void);
void m4aSongNumStart(u16 n);
void m4aSongNumStartOrChange(u16 n);
void m4aSongNumStop(u16 n);
void m4aMPlayAllStop(void);
void m4aMPlayContinue(struct MusicPlayerInfo *mplayInfo);
void m4aMPlayFadeOut(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aMPlayFadeOutTemporarily(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aMPlayFadeIn(struct MusicPlayerInfo *mplayInfo, u16 speed);
void m4aMPlayImmInit(struct MusicPlayerInfo *mplayInfo);

extern struct MusicPlayerInfo gMPlayInfo_BGM;
extern struct MusicPlayerInfo gMPlayInfo_SE1;
extern struct MusicPlayerInfo gMPlayInfo_SE2;
extern struct MusicPlayerInfo gMPlayInfo_SE3;
extern struct SoundInfo gSoundInfo;
# 16 "src/intro.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 20 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 17 "src/intro.c" 2
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
# 18 "src/intro.c" 2
# 1 "include/constants/songs.h" 1
# 19 "src/intro.c" 2
# 1 "include/intro_credits_graphics.h" 1



extern u16 gUnknown_0203BD24;
extern s16 gUnknown_0203BD26;
extern s16 gUnknown_0203BD28;

extern const struct CompressedSpriteSheet gIntro2BrendanSpriteSheet[];
extern const struct CompressedSpriteSheet gIntro2MaySpriteSheet[];
extern const struct CompressedSpriteSheet gIntro2BicycleSpriteSheet[];
extern const struct CompressedSpriteSheet gIntro2FlygonSpriteSheet[];
extern const struct SpritePalette gIntroBikeAndFlygonPalette[];
extern const struct CompressedSpriteSheet gUnknown_085F5334[];
extern const struct CompressedSpriteSheet gUnknown_085F5344[];
extern const struct CompressedSpriteSheet gUnknown_085F5354[];
extern const struct CompressedSpriteSheet gUnknown_085F53AC[];
extern const struct CompressedSpriteSheet gUnknown_085F53BC[];
extern const struct SpritePalette gUnknown_085F5384[];

void load_intro_part2_graphics(u8 a);
void sub_817B150(u8 a);
void sub_817B1C8(u8);
void sub_817B3A8(u8);
u8 CreateBicycleAnimationTask(u8 a, u16 b, u16 c, u16 d);
void sub_817B540(u8);
u8 intro_create_brendan_sprite(s16 a, s16 b);
u8 intro_create_may_sprite(s16 a, s16 b);
u8 intro_create_flygon_sprite(s16 a, s16 b);
# 20 "src/intro.c" 2
# 1 "include/trig.h" 1



extern const s16 gSineTable[];

s16 Sin(s16 index, s16 amplitude);
s16 Cos(s16 index, s16 amplitude);
s16 Sin2(u16 angle);
s16 Cos2(u16 angle);
# 21 "src/intro.c" 2
# 1 "include/intro.h" 1
# 9 "include/intro.h"
void CB2_InitCopyrightScreenAfterBootup(void);
void CB2_InitCopyrightScreenAfterBootup(void);
void CB2_InitCopyrightScreenAfterTitleScreen(void);
void PanFadeAndZoomScreen(u16, u16, u16, u16);
# 22 "src/intro.c" 2
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
# 23 "src/intro.c" 2
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
# 24 "src/intro.c" 2
# 1 "include/constants/species.h" 1
# 25 "src/intro.c" 2
# 1 "include/util.h" 1





extern const u8 gMiscBlank_Gfx[];
extern const u32 gBitTable[];

u8 CreateInvisibleSpriteWithCallback(void (*)(struct Sprite *));
void StoreWordInTwoHalfwords(u16 *, u32);
void LoadWordFromTwoHalfwords(u16 *, u32 *);
int CountTrailingZeroBits(u32 value);
u16 CalcCRC16(const u8 *data, s32 length);
u16 CalcCRC16WithTable(const u8 *data, u32 length);
u32 CalcByteArraySum(const u8* data, u32 length);
void BlendPalette(u16 palOffset, u16 numEntries, u8 coeff, u16 blendColor);
void DoBgAffineSet(struct BgAffineDstData *dest, u32 texX, u32 texY, s16 scrX, s16 scrY, s16 sx, s16 sy, u16 alpha);
void CopySpriteTiles(u8 shape, u8 size, u8 *tiles, u16 *tilemap, u8 *output);
# 26 "src/intro.c" 2

# 1 "include/constants/rgb.h" 1
# 28 "src/intro.c" 2
# 1 "include/constants/battle_anim.h" 1
# 29 "src/intro.c" 2
# 91 "src/intro.c"
extern const struct CompressedSpriteSheet gBattleAnimPicTable[];
extern const struct CompressedSpritePalette gBattleAnimPaletteTable[];
extern const struct SpriteTemplate gAncientPowerRockSpriteTemplate[];


__attribute__((section("ewram_data"))) u16 gIntroCharacterGender = 0;
__attribute__((section("ewram_data"))) u16 gUnknown_0203BCCA = 0;
__attribute__((section("ewram_data"))) u16 gIntroGraphicsFlygonYOffset = 0;


u32 gIntroFrameCounter;
struct GcmbStruct gMultibootProgramStruct;


static const u16 gIntro1DropsPal[] = INCBIN_U16("graphics/intro/intro1_drops.gbapal");
static const u16 gIntro1GFLogoPal[] = INCBIN_U16("graphics/intro/intro1_gflogo.gbapal");
static const u32 gIntroTiles[] = INCBIN_U32("graphics/intro/intro.4bpp.lz");
static const u16 gIntro1BGPals[16][16] = INCBIN_U16("graphics/intro/intro1_bgpal.gbapal");
static const u32 gIntro1BG0_Tilemap[] = INCBIN_U32("graphics/intro/intro1_bg0_map.bin.lz");
static const u32 gIntro1BG1_Tilemap[] = INCBIN_U32("graphics/intro/intro1_bg1_map.bin.lz");
static const u32 gIntro1BG2_Tilemap[] = INCBIN_U32("graphics/intro/intro1_bg2_map.bin.lz");
static const u32 gIntro1BG3_Tilemap[] = INCBIN_U32("graphics/intro/intro1_bg3_map.bin.lz");
static const u32 gIntro1BGLeavesGfx[] = INCBIN_U32("graphics/intro/introgfx.4bpp.lz");
static const u16 gIntro3PokeballPal[] = INCBIN_U16("graphics/intro/intro3_pokeball.gbapal");
static const u32 gIntro3Pokeball_Tilemap[] = INCBIN_U32("graphics/intro/intro3_pokeball_map.bin.lz");
static const u32 gIntro3Pokeball_Gfx[] = INCBIN_U32("graphics/intro/intro3_pokeball.8bpp.lz");
static const u16 gIntro3Streaks_Pal_Unused[] = INCBIN_U16("graphics/intro/intro3_streaks.gbapal");
static const u32 gIntro3Streaks_Gfx_Unused[] = INCBIN_U32("graphics/intro/intro3_streaks.4bpp.lz");
static const u32 gIntro3Streaks_Tilemap_Unused[] = INCBIN_U32("graphics/intro/intro3_streaks_map.bin.lz");
static const u16 gIntro3Misc1Palette[] = INCBIN_U16("graphics/intro/intro3_misc1.gbapal");
static const u16 gIntro3Misc2Palette_Unused[] = INCBIN_U16("graphics/intro/intro3_misc2.gbapal");
static const u32 gIntro3MiscTiles[] = INCBIN_U32("graphics/intro/intro3_misc.4bpp.lz");
static const u16 gIntro1FlygonPalette[] = INCBIN_U16("graphics/intro/intro1_flygon.gbapal");
static const u32 gIntro1EonTiles_Unused[] = INCBIN_U32("graphics/intro/intro1_eon.4bpp.lz");
static const u8 sUnknownBytes[] = {
    0x02, 0x03, 0x04, 0x05, 0x01, 0x01, 0x01, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x02, 0x0D,
    0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x02, 0x0D, 0x0E, 0x0F,
    0x10, 0x11, 0x12, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x02, 0x0D, 0x0E, 0x0F, 0x10,
    0x11, 0x12, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x00
};
static const struct CompressedSpriteSheet gIntroSpriteSheet_Sparkle[] =
{
    {gIntro1SparkleGfx, 0x400, 1505},
    {((void *)0)},
};
static const struct SpritePalette gIntroPalette_Lightning[] =
{
    {gIntro3LightningPal, 1505},
    {((void *)0)},
};
static const struct OamData gUnknown_085E4A94 =
{
    .y = 160,
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
static const union AnimCmd gUnknown_085E4A9C[] =
{
    {.frame = {0, 2}},
    {.frame = {4, 2}},
    {.frame = {8, 2}},
    {.frame = {12, 2}},
    {.frame = {16, 2}},
    {.jump = {.type = -2, .target = 0}},
};
static const union AnimCmd *const gUnknown_085E4AB4[] =
{
    gUnknown_085E4A9C,
};
static void sub_816D338(struct Sprite *sprite);
static const struct SpriteTemplate gUnknown_085E4AB8 =
{
    .tileTag = 1505,
    .paletteTag = 1505,
    .oam = &gUnknown_085E4A94,
    .anims = gUnknown_085E4AB4,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = sub_816D338,
};
static const u8 gUnknown_085E4AD0[][2] =
{
    {0x7C, 0x28},
    {0x66, 0x1E},
    {0x4D, 0x1E},
    {0x36, 0x0F},
    {0x94, 0x09},
    {0x3F, 0x1C},
    {0x5D, 0x28},
    {0x94, 0x20},
    {0xAD, 0x29},
    {0x5E, 0x14},
    {0xD0, 0x26},
    {0x00, 0x00},
};
static const struct CompressedSpriteSheet gIntroPokemonRunningSpriteSheet[] =
{
    {gIntro2VolbeatGfx, 0x400, 1500},
    {gIntro2TorchicGfx, 0xC00, 1501},
    {gIntro2ManectricGfx, 0x2000, 1502},
    {((void *)0)},
};
static const struct SpritePalette gIntroPokemonRunningPalette[] =
{
    {gIntro2VolbeatPal, 1500},
    {gIntro2TorchicPal, 1501},
    {gIntro2ManectricPal, 1502},
    {((void *)0)},
};
static const struct OamData gUnknown_085E4B28 =
{
    .y = 160,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((2 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((2 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd gUnknown_085E4B30[] =
{
    {.frame = {0, 2}},
    {.frame = {16, 2}},
    {.jump = {.type = -2, .target = 0}},
};
static const union AnimCmd *const gUnknown_085E4B3C[] =
{
    gUnknown_085E4B30,
};
static void sub_816D81C(struct Sprite *sprite);
static const struct SpriteTemplate gUnknown_085E4B40 =
{
    .tileTag = 1500,
    .paletteTag = 1500,
    .oam = &gUnknown_085E4B28,
    .anims = gUnknown_085E4B3C,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = sub_816D81C,
};
static const struct OamData gUnknown_085E4B58 =
{
    .y = 160,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((2 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((2 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd gUnknown_085E4B60[] =
{
    {.frame = {0, 5}},
    {.frame = {16, 5}},
    {.frame = {32, 5}},
    {.frame = {16, 5}},
    {.jump = {.type = -2, .target = 0}},
};
static const union AnimCmd gUnknown_085E4B74[] =
{
    {.frame = {0, 3}},
    {.frame = {16, 3}},
    {.frame = {32, 3}},
    {.frame = {16, 3}},
    {.jump = {.type = -2, .target = 0}},
};
static const union AnimCmd gUnknown_085E4B88[] =
{
    {.frame = {48, 4}},
    {.frame = {64, 6}},
    {.frame = {80, 0}},
    {.type = -1},
};
static const union AnimCmd *const gUnknown_085E4B98[] =
{
    gUnknown_085E4B60,
    gUnknown_085E4B74,
    gUnknown_085E4B88,
};
static void sub_816D9C0(struct Sprite *sprite);
static const struct SpriteTemplate gUnknown_085E4BA4 =
{
    .tileTag = 1501,
    .paletteTag = 1501,
    .oam = &gUnknown_085E4B58,
    .anims = gUnknown_085E4B98,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = sub_816D9C0,
};
static const struct OamData gUnknown_085E4BBC =
{
    .y = 160,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((3 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 1,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd gUnknown_085E4BC4[] =
{
    {.frame = {0, 4}},
    {.frame = {64, 4}},
    {.frame = {128, 4}},
    {.frame = {192, 4}},
    {.jump = {.type = -2, .target = 0}},
};
static const union AnimCmd *const gUnknown_085E4BD8[] =
{
    gUnknown_085E4BC4,
};
static void sub_816DAE8(struct Sprite *sprite);
static const struct SpriteTemplate gUnknown_085E4BDC =
{
    .tileTag = 1502,
    .paletteTag = 1502,
    .oam = &gUnknown_085E4BBC,
    .anims = gUnknown_085E4BD8,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = sub_816DAE8,
};
static const struct CompressedSpriteSheet gIntroRayquazaLightningSpriteSheet[] =
{
    {gIntro3LightningGfx, 0xC00, 1503},
    {((void *)0)},
};
static const struct SpritePalette gIntroRayquazaLightningPalette[] =
{
    {gIntro3LightningPal, 1503},
    {((void *)0)},
};
static const struct OamData gUnknown_085E4C14 =
{
    .y = 160,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((2 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((2 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd gUnknown_085E4C1C[] =
{
    {.frame = {0, 2}},
    {.frame = {48, 2}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4C28[] =
{
    {.frame = {16, 2}},
    {.frame = {64, 2}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4C34[] =
{
    {.frame = {32, 2}},
    {.frame = {80, 2}},
    {.type = -1},
};
static const union AnimCmd *const gUnknown_085E4C40[] =
{
    gUnknown_085E4C1C,
    gUnknown_085E4C28,
    gUnknown_085E4C34,
};
static void SpriteCB_IntroRayquazaLightning(struct Sprite *sprite);
static const struct SpriteTemplate gIntroLightningSprite =
{
    .tileTag = 1503,
    .paletteTag = 1503,
    .oam = &gUnknown_085E4C14,
    .anims = gUnknown_085E4C40,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_IntroRayquazaLightning,
};
static const s16 gIntroGroudonRockData[][3] =
{
    {0x68, 0x00, 0x0C0},
    {0x8E, 0x03, 0x280},
    {0x53, 0x01, 0x180},
    {0x9B, 0x00, 0x080},
    {0x38, 0x02, 0x200},
    {0xAE, 0x01, 0x100},
};
static const struct CompressedSpriteSheet gUnknown_085E4C88[] =
{
    {gIntro2BubblesGfx, 0x600, 1504},
    {((void *)0)},
};
static const struct SpritePalette gUnknown_085E4C98[] =
{
    {gIntro2BubblesPal, 1504},
    {((void *)0)},
};
static const s16 gIntroKyogreBubbleData[][3] =
{
    {0x42, 0x40, 0x1},
    {0x60, 0x60, 0x8},
    {0x80, 0x40, 0x1},
    {0x90, 0x30, 0x8},
    {0xA0, 0x48, 0x1},
    {0xB0, 0x60, 0x8},
    {0x60, 0x60, 0x4},
    {0x70, 0x68, 0x8},
    {0x80, 0x60, 0x4},
    {0x58, 0x20, 0x4},
    {0x68, 0x18, 0x8},
    {0x78, 0x20, 0x4},
};
static const struct OamData gUnknown_085E4CF0 =
{
    .y = 160,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((2 << 2) | (2)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((2 << 2) | (2)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd gUnknown_085E4CF8[] =
{
    {.frame = {0, 4}},
    {.frame = {8, 4}},
    {.frame = {16, 4}},
    {.frame = {24, 4}},
    {.frame = {32, 4}},
    {.type = -1},
};
static const union AnimCmd *const gUnknown_085E4D10[] =
{
    gUnknown_085E4CF8,
};
static void SpriteCB_IntroKyogreBubbles(struct Sprite *sprite);
static const struct SpriteTemplate gUnknown_085E4D14 =
{
    .tileTag = 1504,
    .paletteTag = 1504,
    .oam = &gUnknown_085E4CF0,
    .anims = gUnknown_085E4D10,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_IntroKyogreBubbles,
};
static const struct OamData gUnknown_085E4D2C =
{
    .y = 160,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((2 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((2 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd gUnknown_085E4D34[] =
{
    {.frame = {16, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4D3C[] =
{
    {.frame = {24, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4D44[] =
{
    {.frame = {0, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4D4C[] =
{
    {.frame = {48, 8}},
    {.type = -1},
};
static const union AnimCmd *const gUnknown_085E4D54[] =
{
    gUnknown_085E4D34,
    gUnknown_085E4D3C,
    gUnknown_085E4D44,
    gUnknown_085E4D4C,
};
static void sub_816F454(struct Sprite *sprite);
static const struct SpriteTemplate gIntroWaterDropSprite =
{
    .tileTag = 2000,
    .paletteTag = 2000,
    .oam = &gUnknown_085E4D2C,
    .anims = gUnknown_085E4D54,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = sub_816F454,
};
static const union AnimCmd gUnknown_085E4D7C[] =
{
    {.frame = {0, 4}},
    {.frame = {64, 4}},
    {.frame = {128, 4}},
    {.frame = {192, 4}},
    {.jump = {.type = -2, .target = 0}},
};
static const union AnimCmd gUnknown_085E4D90[] =
{
    {.frame = {0, 8}},
    {.frame = {64, 8}},
    {.frame = {128, 8}},
    {.frame = {192, 8}},
    {.jump = {.type = -2, .target = 0}},
};
static const union AnimCmd gUnknown_085E4DA4[] =
{
    {.frame = {256, 4}},
    {.frame = {0x140, 4}},
    {.frame = {0x180, 4}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4DB4[] =
{
    {.frame = {0x180, 16}},
    {.frame = {0x140, 16}},
    {.frame = {256, 16}},
    {.type = -1},
};
static const union AnimCmd *const gIntroBicycleAnimationCommands[] =
{
    gUnknown_085E4D7C,
    gUnknown_085E4D90,
    gUnknown_085E4DA4,
    gUnknown_085E4DB4,
};
static const struct OamData gUnknown_085E4DD4 =
{
    .y = 160,
    .affineMode = 3,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((1 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((1 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const struct OamData gUnknown_085E4DDC =
{
    .y = 160,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((0 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((0 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const struct OamData gUnknown_085E4DE4 =
{
    .y = 160,
    .affineMode = 3,
    .objMode = 1,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (2)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((3 << 2) | (2)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd gUnknown_085E4DEC[] =
{
    {.frame = {80, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4DF4[] =
{
    {.frame = {84, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4DFC[] =
{
    {.frame = {88, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E04[] =
{
    {.frame = {92, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E0C[] =
{
    {.frame = {96, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E14[] =
{
    {.frame = {100, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E1C[] =
{
    {.frame = {104, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E24[] =
{
    {.frame = {112, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E2C[] =
{
    {.frame = {113, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E34[] =
{
    {.frame = {114, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E3C[] =
{
    {.frame = {115, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E44[] =
{
    {.frame = {116, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E4C[] =
{
    {.frame = {117, 8}},
    {.type = -1},
};
static const union AnimCmd gUnknown_085E4E54[] =
{
    {.frame = {128, 8}},
    {.type = -1},
};
static const union AnimCmd *const gUnknown_085E4E5C[] =
{
    gUnknown_085E4DEC,
    gUnknown_085E4DF4,
    gUnknown_085E4DFC,
    gUnknown_085E4E04,
    gUnknown_085E4E0C,
    gUnknown_085E4E14,
    gUnknown_085E4E1C,
};
static const union AnimCmd *const gUnknown_085E4E78[] =
{
    gUnknown_085E4E24,
    gUnknown_085E4E2C,
    gUnknown_085E4E34,
    gUnknown_085E4E3C,
    gUnknown_085E4E44,
    gUnknown_085E4E4C,
};
static const union AnimCmd *const gUnknown_085E4E90[] =
{
    gUnknown_085E4E54,
};
static const s16 gUnknown_085E4E94[][2] =
{
    {0, -72},
    {1, -56},
    {2, -40},
    {3, -24},
    {4, 8},
    {5, 24},
    {3, 40},
    {1, 56},
    {6, 72},
    {0, -28},
    {1, -20},
    {2, -12},
    {3, -4},
    {2, 4},
    {4, 12},
    {5, 20},
    {3, 28},
};
static const union AffineAnimCmd gUnknown_085E4ED8[] =
{
    {.frame = {.xScale = 128, .yScale = 128, .rotation = 0, .duration = 0}},
    {.type = 0x7FFF},
};
static const union AffineAnimCmd gUnknown_085E4EE8[] =
{
    {.frame = {.xScale = 128, .yScale = 128, .rotation = 0, .duration = 0}},
    {.frame = {.xScale = 16, .yScale = 16, .rotation = 0, .duration = 16}},
    {.frame = {.xScale = -16, .yScale = -16, .rotation = 0, .duration = 8}},
    {.type = 0x7FFF},
};
static const union AffineAnimCmd gUnknown_085E4F08[] =
{
    {.frame = {.xScale = 256, .yScale = 256, .rotation = 0, .duration = 0}},
    {.frame = {.xScale = 8, .yScale = 8, .rotation = 0, .duration = 48}},
    {.type = 0x7FFF},
};
static const union AffineAnimCmd gUnknown_085E4F20[] =
{
    {.frame = {.xScale = 256, .yScale = 256, .rotation = 0, .duration = 0}},
    {.frame = {.xScale = 2, .yScale = 2, .rotation = 0, .duration = 48}},
    {.type = 0x7FFF},
};
static const union AffineAnimCmd *const gUnknown_085E4F38[] =
{
    gUnknown_085E4ED8,
    gUnknown_085E4EE8,
    gUnknown_085E4F08,
    gUnknown_085E4F20,
};
static const u16 gUnknown_085E4F48[] =
{
    0x100, 0xC0, 0x80, 0x40, 0x00, 0x40, 0x80, 0xC0, 0x100
};
static void sub_816FB38(struct Sprite *sprite);
static const struct SpriteTemplate gUnknown_085E4F5C =
{
    .tileTag = 2000,
    .paletteTag = 2001,
    .oam = &gUnknown_085E4DD4,
    .anims = gUnknown_085E4E5C,
    .images = ((void *)0),
    .affineAnims = gUnknown_085E4F38,
    .callback = sub_816FB38,
};
static const struct SpriteTemplate gUnknown_085E4F74 =
{
    .tileTag = 2000,
    .paletteTag = 2001,
    .oam = &gUnknown_085E4DDC,
    .anims = gUnknown_085E4E78,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = sub_816FB38,
};
static void sub_816FD44(struct Sprite *sprite);
static const struct SpriteTemplate gUnknown_085E4F8C =
{
    .tileTag = 2000,
    .paletteTag = 2001,
    .oam = &gUnknown_085E4DE4,
    .anims = gUnknown_085E4E90,
    .images = ((void *)0),
    .affineAnims = gUnknown_085E4F38,
    .callback = sub_816FD44,
};
static const u8 gUnknown_085E4FA4[] =
{
    0x00, 0x17, 0x17, 0x31, 0x3E, 0x24, 0x24, 0x0A, 0x0A
};
static const struct OamData gUnknown_085E4FB0 =
{
    .y = 160,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (1)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((3 << 2) | (1)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd gUnknown_085E4FB8[] =
{
    {.frame = {0, 10}},
    {.jump = {.type = -2, .target = 0}},
};
static const union AnimCmd *const gUnknown_085E4FC0[] =
{
    gUnknown_085E4FB8,
};
static void sub_816FEDC(struct Sprite *sprite);
static const struct SpriteTemplate gUnknown_085E4FC4 =
{
    .tileTag = 2002,
    .paletteTag = 2002,
    .oam = &gUnknown_085E4FB0,
    .anims = gUnknown_085E4FC0,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = sub_816FEDC,
};
static const struct CompressedSpriteSheet gIntroSpriteSheet_WaterDropAndLogo[] =
{
    {gIntroTiles, 0x1400, 2000},
    {((void *)0)},
};
static const struct CompressedSpriteSheet gIntroSpriteSheet_Flygon[] =
{
    {gIntro1FlygonGfx, 0x400, 2002},
    {((void *)0)},
};
static const struct SpritePalette gIntroPalette_DropLogoFlygon[] =
{
    {gIntro1DropsPal, 2000},
    {gIntro1GFLogoPal, 2001},
    {gIntro1FlygonPalette, 2002},
    {((void *)0)},
};
static const struct OamData gUnknown_085E501C =
{
    .y = 160,
    .affineMode = 0,
    .objMode = 0,
    .mosaic = 0,
    .bpp = 0,
    .shape = (((3 << 2) | (0)) & 0x03),
    .x = 0,
    .matrixNum = 0,
    .size = ((((3 << 2) | (0)) >> 2) & 0x03),
    .tileNum = 0,
    .priority = 0,
    .paletteNum = 0,
    .affineParam = 0,
};
static const union AnimCmd gUnknown_085E5024[] =
{
    {.frame = {16, 8}},
    {.type = -1},
};
static const union AnimCmd *const gUnknown_085E502C[] =
{
    gUnknown_085E5024,
};
static void SpriteCB_IntroRayquazaHyperbeam(struct Sprite *sprite);
static const struct SpriteTemplate gIntroRayquazaHyperbeamSprite =
{
    .tileTag = 2003,
    .paletteTag = 2003,
    .oam = &gUnknown_085E501C,
    .anims = gUnknown_085E502C,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_IntroRayquazaHyperbeam,
};
static const struct CompressedSpriteSheet gIntroRayquazaGlowSpriteSheet[] =
{
    {gIntro3MiscTiles, 0xA00, 2003},
    {((void *)0)},
};
static const struct SpritePalette gIntroRayquazaGlowPalette[] =
{
    {gIntro3Misc1Palette, 2003},
    {((void *)0)},
};


static void MainCB2_EndIntro(void);
static void Task_IntroLoadPart1Graphics(u8);
static u8 CreateWaterDrop(s16, s16, u16, u16, u16, u8);
static void Task_IntroFadeIn(u8);
static void intro_reset_and_hide_bgs(void);
static void Task_IntroWaterDrops(u8);
static void Task_IntroWaterDrops_1(u8);
static void Task_IntroWaterDrops_2(u8);
static void Task_IntroWaterDrops_3(u8);
static void Task_IntroScrollDownAndShowFlygon(u8);
static void Task_IntroWaitToSetupPart2(u8);
static void Task_IntroLoadPart2Graphics(u8);
static void Task_IntroStartBikeRide(u8);
static void Task_IntroHandleBikeAndFlygonMovement(u8);
static void Task_IntroWaitToSetupPart3(u8);
static void Task_IntroLoadPart3Graphics(u8);
static void Task_IntroSpinAndZoomPokeball(u8);
static void Task_IntroWaitToSetupPart3LegendsFight(u8);
static void Task_IntroLoadGroudonScene(u8);
static void Task_IntroLoadPart3Graphics1(u8);
static void Task_IntroLoadPart3Graphics2(u8);
static void Task_IntroLoadPart3Graphics3(u8);
static void Task_IntroLoadPart3Graphics4(u8);
static void Task_IntroGroudonScene(u8);
static void Task_IntroLoadKyogreScene(u8);
static void Task_IntroKyogreScene(u8);
static void Task_IntroLoadClouds1(u8);
static void Task_IntroLoadClouds2(u8);
static void Task_IntroLoadClouds3(u8);
static void Task_IntroCloudScene(u8);
static void Task_IntroLoadRayquazaLightningScene(u8);
static void Task_IntroRayquazaLightningScene(u8);
static void Task_IntroLoadRayquazaGlowScene(u8);
static void Task_IntroRayquazaGlowScene_0(u8);
static void Task_EndIntroMovie(u8);
static void CreateGroudonRockSprites(u8);
static void SpriteCB_IntroGroudonRocks(struct Sprite *);
static void CreateKyogreBubbleSprites_0(u8);
static void CreateKyogreBubbleSprites_1(void);
static void Task_IntroRayquazaGlowScene_1(u8);
static void sub_816F46C(struct Sprite *);
static void sub_816F5B4(struct Sprite *);
static void sub_816F660(struct Sprite *);
static void SpriteCB_WaterDropFall(struct Sprite *);
static void sub_816F318(struct Sprite *);
static void SpriteCB_IntroGraphicsBicycle(struct Sprite *);
static void SpriteCB_IntroGraphicsFlygon(struct Sprite *);
static u8 CreatePart1Animations(s16, s16, s16);

static void VBlankCB_Intro(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
    ScanlineEffect_InitHBlankDmaTransfer();
}

static void MainCB2_Intro(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
    if (gMain.newKeys && !gPaletteFade.active)
        SetMainCallback2(MainCB2_EndIntro);
    else if (gIntroFrameCounter != -1)
        gIntroFrameCounter++;
}

static void MainCB2_EndIntro(void)
{
    if (!UpdatePaletteFade())
        SetMainCallback2(CB2_InitTitleScreen);
}

static void LoadCopyrightGraphics(u16 tilesetAddress, u16 tilemapAddress, u16 paletteAddress)
{
    LZ77UnCompVram(gIntroCopyright_Gfx, (void *)(0x6000000 + tilesetAddress));
    LZ77UnCompVram(gIntroCopyright_Tilemap, (void *)(0x6000000 + tilemapAddress));
    LoadPalette(gIntroCopyright_Pal, paletteAddress, 0x20);
}

static void SerialCB_CopyrightScreen(void)
{
    GameCubeMultiBoot_HandleSerialInterrupt(&gMultibootProgramStruct);
}

static u8 SetUpCopyrightScreen(void)
{
    u16 ime;

    switch (gMain.state)
    {
    case 0:
        SetVBlankCallback(((void *)0));
        SetGpuReg(0x50, 0);
        SetGpuReg(0x52, 0);
        SetGpuReg(0x54, 0);
        *(u16 *)0x5000000 = 0x7FFF;
        SetGpuReg(0x0, 0);
        SetGpuReg(0x10, 0);
        SetGpuReg(0x12, 0);
        { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, (void *)0x6000000, 0x04000000 | 0x01000000 | ((0x18000)/(32/8) & 0x1FFFFF)); };
        { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, (void *)0x7000000, 0x04000000 | 0x01000000 | ((0x400)/(32/8) & 0x1FFFFF)); };
        { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, (void *)(0x5000000 + 2), 0x00000000 | 0x01000000 | ((0x400 - 2)/(16/8) & 0x1FFFFF)); };
        ResetPaletteFade();
        LoadCopyrightGraphics(0, 0x3800, 0);
        ScanlineEffect_Stop();
        ResetTasks();
        ResetSpriteData();
        FreeAllSpritePalettes();
        BeginNormalPaletteFade(0xFFFFFFFF, 0, 0x10, 0, (((31) | ((31) << 5) | ((31) << 10)) | 0x8000));
        SetGpuReg(0x8, (0)
                                   | ((0) << 2)
                                   | ((7) << 8)
                                   | 0x0000
                                   | 0x0000);
        EnableInterrupts((1 << 0));
        SetVBlankCallback(VBlankCB_Intro);
        (*(vu16 *)(0x4000000 + 0x0)) = 0x0000 | 0x0040 | 0x0100;
        SetSerialCallback(SerialCB_CopyrightScreen);
        GameCubeMultiBoot_Init(&gMultibootProgramStruct);
    default:
        UpdatePaletteFade();
        gMain.state++;
        GameCubeMultiBoot_Main(&gMultibootProgramStruct);
        break;
    case 140:
        GameCubeMultiBoot_Main(&gMultibootProgramStruct);
        if (gMultibootProgramStruct.gcmb_field_2 != 1)
        {
            BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 0x10, ((0) | ((0) << 5) | ((0) << 10)));
            gMain.state++;
        }
        break;
    case 141:
        if (UpdatePaletteFade())
            break;
        CreateTask(Task_IntroLoadPart1Graphics, 0);
        SetMainCallback2(MainCB2_Intro);
        if (gMultibootProgramStruct.gcmb_field_2 != 0)
        {
            if (gMultibootProgramStruct.gcmb_field_2 == 2)
            {

                if (*(u32 *)(0x02000000 + 0xAC) == 0x65366347)
                {
                    CpuSet(&gMultiBootProgram_PokemonColosseum_Start, (void *)0x02000000, 0x00000000 | ((sizeof(gMultiBootProgram_PokemonColosseum_Start))/(16/8) & 0x1FFFFF));
                    *(u32 *)(0x02000000 + 0xAC) = 0x65366347;
                }
                GameCubeMultiBoot_ExecuteProgram(&gMultibootProgramStruct);
            }
        }
        else
        {
            GameCubeMultiBoot_Quit();
            SetSerialCallback(SerialCB);
        }
        return 0;
    }

    return 1;
}

void CB2_InitCopyrightScreenAfterBootup(void)
{
    if (!SetUpCopyrightScreen())
    {
        SetSaveBlocksPointers(sub_815355C());
        ResetMenuAndMonGlobals();
        Save_ResetSaveCounters();
        Save_LoadGameData(SAVE_NORMAL);
        if (gSaveFileStatus == 0 || gSaveFileStatus == 2)
            Sav2_ClearSetDefault();
        SetPokemonCryStereo(gSaveBlock2Ptr->optionsSound);
        InitHeap(gHeap, 0x1C000);
    }
}

void CB2_InitCopyrightScreenAfterTitleScreen(void)
{
    SetUpCopyrightScreen();
}

static void Task_IntroLoadPart1Graphics(u8 taskId)
{
    SetVBlankCallback(((void *)0));
    gIntroCharacterGender = Random() & 1;
    intro_reset_and_hide_bgs();
    SetGpuReg(0x1e, 0);
    SetGpuReg(0x1a, 0x50);
    SetGpuReg(0x16, 0x18);
    SetGpuReg(0x12, 0x28);
    LZ77UnCompVram(gIntro1BGLeavesGfx, (void *)0x6000000);
    LZ77UnCompVram(gIntro1BG0_Tilemap, (void *)((0x6000000 + (0x4000 * (2)))));
    { vu16 *_dest = (vu16 *)((0x6000000 + (0x800 * (17)))); u32 _size = 0x800; { vu16 tmp = (vu16)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((_size)/(16/8))); dmaRegs[2]; }; }; };
    LZ77UnCompVram(gIntro1BG1_Tilemap, (void *)((0x6000000 + (0x800 * (18)))));
    { vu16 *_dest = (vu16 *)((0x6000000 + (0x800 * (19)))); u32 _size = 0x800; { vu16 tmp = (vu16)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((_size)/(16/8))); dmaRegs[2]; }; }; };
    LZ77UnCompVram(gIntro1BG2_Tilemap, (void *)((0x6000000 + (0x800 * (20)))));
    { vu16 *_dest = (vu16 *)((0x6000000 + (0x800 * (21)))); u32 _size = 0x800; { vu16 tmp = (vu16)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((_size)/(16/8))); dmaRegs[2]; }; }; };
    LZ77UnCompVram(gIntro1BG3_Tilemap, (void *)((0x6000000 + (0x800 * (22)))));
    { vu16 *_dest = (vu16 *)((0x6000000 + (0x800 * (23)))); u32 _size = 0x800; { vu16 tmp = (vu16)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((_size)/(16/8))); dmaRegs[2]; }; }; };
    LoadPalette(gIntro1BGPals, 0, sizeof(gIntro1BGPals));
    SetGpuReg(0xe, (3) | ((0) << 2) | ((22) << 8) | 0x0000 | 0x8000);
    SetGpuReg(0xc, (2) | ((0) << 2) | ((20) << 8) | 0x0000 | 0x8000);
    SetGpuReg(0xa, (1) | ((0) << 2) | ((18) << 8) | 0x0000 | 0x8000);
    SetGpuReg(0x8, (0) | ((0) << 2) | ((16) << 8) | 0x0000 | 0x8000);
    LoadCompressedSpriteSheet(gIntroSpriteSheet_WaterDropAndLogo);
    LoadCompressedSpriteSheet(gIntroSpriteSheet_Flygon);
    LoadSpritePalettes(gIntroPalette_DropLogoFlygon);
    LoadCompressedSpriteSheet(gIntroSpriteSheet_Sparkle);
    LoadSpritePalettes(gIntroPalette_Lightning);
    CpuSet(gPlttBufferUnfaded + 0x100, gPlttBufferUnfaded + 0x1F0, 0x00000000 | ((0x20)/(16/8) & 0x1FFFFF));
    CpuSet(gPlttBufferUnfaded + 0x100, gPlttBufferUnfaded + 0x1E1, 0x00000000 | ((0x1E)/(16/8) & 0x1FFFFF));
    CpuSet(gPlttBufferUnfaded + 0x100, gPlttBufferUnfaded + 0x1D2, 0x00000000 | ((0x1C)/(16/8) & 0x1FFFFF));
    CpuSet(gPlttBufferUnfaded + 0x100, gPlttBufferUnfaded + 0x1C3, 0x00000000 | ((0x1A)/(16/8) & 0x1FFFFF));
    CpuSet(gPlttBufferUnfaded + 0x100, gPlttBufferUnfaded + 0x1B4, 0x00000000 | ((0x18)/(16/8) & 0x1FFFFF));
    CpuSet(gPlttBufferUnfaded + 0x100, gPlttBufferUnfaded + 0x1A5, 0x00000000 | ((0x16)/(16/8) & 0x1FFFFF));
    CpuSet(gPlttBufferUnfaded + 0x100, gPlttBufferUnfaded + 0x196, 0x00000000 | ((0x14)/(16/8) & 0x1FFFFF));
    CreatePart1Animations(0x78, 0x50, 0);
    gTasks[taskId].data[0] = CreateWaterDrop(236, -14, 0x200, 1, 0x78, 0);
    gTasks[taskId].func = Task_IntroFadeIn;
}

static void Task_IntroFadeIn(u8 taskId)
{
    BeginNormalPaletteFade(0xFFFFFFFF, 0, 16, 0, ((0) | ((0) << 5) | ((0) << 10)));
    SetVBlankCallback(VBlankCB_Intro);
    SetGpuReg(0x0, 0x0000 | 0x0040 | 0x0F00 | 0x1000);
    gTasks[taskId].func = Task_IntroWaterDrops;
    gIntroFrameCounter = 0;
    m4aSongNumStart(414);
    ResetSerial();
}

static void Task_IntroWaterDrops(u8 taskId)
{

    if (gIntroFrameCounter == 76)
        gSprites[gTasks[taskId].data[0]].data[0] = 1;

    if (gIntroFrameCounter == 128)
        CreateTask(Task_IntroWaterDrops_1, 0);


    if (gIntroFrameCounter == 251)
        gSprites[gTasks[taskId].data[0]].data[0] = 2;

    if (gIntroFrameCounter == 256)
        CreateTask(Task_IntroWaterDrops_2, 0);

    if (gIntroFrameCounter == 368)
        CreateWaterDrop(48, 0, 0x400, 5, 0x70, 1);

    if (gIntroFrameCounter == 384)
        CreateWaterDrop(200, 60, 0x400, 9, 0x80, 1);

    if (gIntroFrameCounter == 560)
        CreateTask(Task_IntroWaterDrops_3, 0);

    if (gIntroFrameCounter > 560)
    {
        gTasks[taskId].data[1] = 0x50;
        gTasks[taskId].data[2] = 0;
        gTasks[taskId].data[3] = 0x18;
        gTasks[taskId].data[4] = 0;
        gTasks[taskId].data[5] = 0x28;
        gTasks[taskId].data[6] = 0;
        gTasks[taskId].func = Task_IntroScrollDownAndShowFlygon;
    }
}

static void Task_IntroWaterDrops_3(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    if (++data[2] & 1)
        data[3]++;

    switch (data[0])
    {
    case 0:
        CreateSprite(&gUnknown_085E4AB8, gUnknown_085E4AD0[data[4]][0], gUnknown_085E4AD0[data[4]][1] + data[3], 0);
        data[0]++;
        data[1] = 0xC;
        data[4]++;
        break;
    case 1:
        if (!--data[1])
            data[0] = 0;
        break;
    }

    if (data[3] > 0x3C)
        DestroyTask(taskId);
}

static void sub_816D338(struct Sprite *sprite)
{
    if (++sprite->data[0] == 0xC)
        DestroySprite(sprite);
}

static void Task_IntroScrollDownAndShowFlygon(u8 taskId)
{
    if (gIntroFrameCounter < 904)
    {
        s32 r2;


        r2 = (gTasks[taskId].data[1] << 16) + (u16)gTasks[taskId].data[2];
        r2 -= 0x6000;
        gTasks[taskId].data[1] = r2 >> 16;
        gTasks[taskId].data[2] = r2;
        SetGpuReg(0x1a, gTasks[taskId].data[1]);
        r2 = (gTasks[taskId].data[3] << 16) + (u16)gTasks[taskId].data[4];
        r2 -= 0x8000;
        gTasks[taskId].data[3] = r2 >> 16;
        gTasks[taskId].data[4] = r2;
        SetGpuReg(0x16, gTasks[taskId].data[3]);
        r2 = (gTasks[taskId].data[5] << 16) + (u16)gTasks[taskId].data[6];
        r2 -= 0xC000;
        gTasks[taskId].data[5] = r2 >> 16;
        gTasks[taskId].data[6] = r2;
        SetGpuReg(0x12, gTasks[taskId].data[5]);


        if (gIntroFrameCounter == 832)
        {
            u8 spriteId = CreateSprite(&gUnknown_085E4FC4, 120, 160, 10);
            gSprites[spriteId].invisible = 1;
        }
    }
    else
    {

        if (gIntroFrameCounter > 1007)
        {
            BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | 0x8000));
            gTasks[taskId].func = Task_IntroWaitToSetupPart2;
        }
    }
}

static void Task_IntroWaitToSetupPart2(u8 taskId)
{
    if (gIntroFrameCounter > 1026)
        gTasks[taskId].func = Task_IntroLoadPart2Graphics;
}

static void Task_IntroLoadPart2Graphics(u8 taskId)
{
    intro_reset_and_hide_bgs();
    SetVBlankCallback(((void *)0));
    ResetSpriteData();
    FreeAllSpritePalettes();
    gUnknown_0203BD24 = 0;
    gUnknown_0203BD26 = 0;
    gIntroGraphicsFlygonYOffset = 0;
    load_intro_part2_graphics(1);
    gTasks[taskId].func = Task_IntroStartBikeRide;
}

static void Task_IntroStartBikeRide(u8 taskId)
{
    u8 spriteId;

    if (gIntroCharacterGender == 0)
        LoadCompressedSpriteSheet(gIntro2BrendanSpriteSheet);
    else
        LoadCompressedSpriteSheet(gIntro2MaySpriteSheet);

    LoadCompressedSpriteSheet(gIntro2BicycleSpriteSheet);
    LoadCompressedSpriteSheet(gIntro2FlygonSpriteSheet);

    for (spriteId = 0; spriteId < 3; spriteId++)
    {
        LoadCompressedSpriteSheet(&gIntroPokemonRunningSpriteSheet[spriteId]);
    }

    LoadSpritePalettes(gIntroBikeAndFlygonPalette);
    LoadSpritePalettes(gIntroPokemonRunningPalette);
    CreateSprite(&gUnknown_085E4BDC, 0x110, 0x80, 0);
    CreateSprite(&gUnknown_085E4BA4, 0x120, 0x6E, 1);

    if (gIntroCharacterGender == 0)
        spriteId = intro_create_brendan_sprite(0x110, 100);
    else
        spriteId = intro_create_may_sprite(0x110, 100);

    gSprites[spriteId].callback = SpriteCB_IntroGraphicsBicycle;
    gSprites[spriteId].anims = gIntroBicycleAnimationCommands;
    gTasks[taskId].data[1] = spriteId;
    CreateSprite(&gUnknown_085E4B40, 0x110, 0x50, 0x4);
    spriteId = intro_create_flygon_sprite(-0x40, 0x3C);
    gSprites[spriteId].callback = SpriteCB_IntroGraphicsFlygon;
    gTasks[taskId].data[2] = spriteId;
    BeginNormalPaletteFade(0xFFFFFFFF, 0, 16, 0, (((31) | ((31) << 5) | ((31) << 10)) | 0x8000));
    SetVBlankCallback(VBlankCB_Intro);
    gTasks[taskId].data[0] = CreateBicycleAnimationTask(1, 0x4000, 0x400, 0x10);
    sub_817B150(1);
    gTasks[taskId].func = Task_IntroHandleBikeAndFlygonMovement;
}

static void Task_IntroHandleBikeAndFlygonMovement(u8 taskId)
{
    s16 a;
    u16 offset;

    if (gIntroFrameCounter == 1856)
    {
        gUnknown_0203BD28 = 2;

        DestroyTask(gTasks[taskId].data[0]);
    }
    if (gIntroFrameCounter > 1946)
    {
        BeginNormalPaletteFade(0xFFFFFFFF, 8, 0, 16, (((31) | ((31) << 5) | ((31) << 10)) | 0x8000));
        gTasks[taskId].func = Task_IntroWaitToSetupPart3;
    }
    if (gIntroFrameCounter == 1109)
        gSprites[gTasks[taskId].data[1]].data[0] = 1;
    if (gIntroFrameCounter == 1214)
        gSprites[gTasks[taskId].data[1]].data[0] = 0;
    if (gIntroFrameCounter == 1394)
        gSprites[gTasks[taskId].data[2]].data[0] = 1;
    if (gIntroFrameCounter == 1398)
        gSprites[gTasks[taskId].data[1]].data[0] = 2;
    if (gIntroFrameCounter == 1576)
        gSprites[gTasks[taskId].data[1]].data[0] = 3;
    if (gIntroFrameCounter == 1727)
        gSprites[gTasks[taskId].data[1]].data[0] = 4;

    offset = Sin(gTasks[taskId].data[3] >> 2 & 0x7F, 48);
    gIntroGraphicsFlygonYOffset = offset;
    if (gTasks[taskId].data[3] < 512)
        gTasks[taskId].data[3]++;
    sub_817B540(0);
}

static void Task_IntroWaitToSetupPart3(u8 taskId)
{
    if (gIntroFrameCounter > 2068)
        gTasks[taskId].func = Task_IntroLoadPart3Graphics;
}

static void sub_816D81C(struct Sprite *sprite)
{
    sprite->data[3] += 4;
    switch (sprite->data[0])
    {
    case 0:
        if (++sprite->data[1] < 180)
            break;
        ++sprite->data[0];
    case 1:
        sprite->pos1.x -= 4;
        if (sprite->pos1.x == 0x3C)
        {
            sprite->data[0] = 8;
            sprite->data[1] = 20;
            sprite->data[2] = 2;
        }
        break;
    case 2:
        sprite->pos1.x += 8;
        sprite->pos1.y -= 2;
        if (sprite->pos1.x == 0x7C)
        {
            sprite->data[0] = 8;
            sprite->data[1] = 20;
            sprite->data[2] = 3;
        }
        break;
    case 3:
        sprite->pos1.y += 4;
        if (sprite->pos1.y == 0x50)
        {
            sprite->data[0] = 8;
            sprite->data[1] = 10;
            sprite->data[2] = 4;
        }
        break;
    case 4:
        sprite->pos1.x -= 8;
        sprite->pos1.y -= 2;
        if (sprite->pos1.x == 0x3C)
        {
            sprite->data[0] = 8;
            sprite->data[1] = 10;
            sprite->data[2] = 5;
        }
        break;
    case 5:
        sprite->pos1.x += 0x3C;
        sprite->data[4] = 0xC0;
        sprite->data[5] = 0x80;
        sprite->data[6] = 0x3;
        sprite->data[0]++;
    case 6:
        sprite->pos2.x = Sin((u8)sprite->data[4], 0x3C);
        sprite->pos2.y = Sin((u8)sprite->data[5], 0x14);
        sprite->data[4] += 2;
        sprite->data[5] += 4;
        if ((sprite->data[4] & 0xFF) == 0x40)
        {
            sprite->hFlip = 0;
            if (!--sprite->data[6])
            {
                sprite->pos1.x += sprite->pos2.x;
                sprite->pos2.x = 0;
                sprite->data[0]++;
            }
        }
        break;
    case 7:
        sprite->pos1.x -= 2;
        sprite->pos2.y = Sin((u8)sprite->data[5], 0x14);
        sprite->data[5] += 4;
        if (sprite->pos1.x < -16)
            DestroySprite(sprite);
        break;
    case 8:
        sprite->pos2.y = Cos((u8)sprite->data[3], 2);
        if (!--sprite->data[1])
            sprite->data[0] = sprite->data[2];
        break;
    }
}

static void sub_816D9C0(struct Sprite *sprite)
{
    switch (sprite->data[0])
    {
    case 0:
        if (gIntroFrameCounter == 1224)
        {
            StartSpriteAnim(sprite, 1);
            sprite->data[0]++;
        }
        break;
    case 1:
        if (gIntroFrameCounter == 1576)
        {
            StartSpriteAnim(sprite, 0);
            sprite->data[0]++;
        }
        else
        {
            sprite->data[1] += 0x40;
            if (sprite->data[1] & 0xFF00)
            {
                sprite->pos1.x--;
                sprite->data[1] &= 0xFF;
            }
        }
        break;
    case 2:
        if (gIntroFrameCounter != 1735)
        {
            sprite->data[1] += 0x20;
            if (sprite->data[1] & 0xFF00)
            {
                sprite->pos1.x++;
                sprite->data[1] &= 0xFF;
            }
        }
        else
        {
            StartSpriteAnim(sprite, 1);
            sprite->data[0]++;
            sprite->data[2] = 0x50;
        }
        break;
    case 3:
        if (--sprite->data[2])
        {
            sprite->data[1] += 0x40;
            if (sprite->data[1] & 0xFF00)
            {
                sprite->pos1.x--;
                sprite->data[1] &= 0xFF;
            }
        }
        else
        {
            StartSpriteAnim(sprite, 2);
            sprite->data[0]++;
        }
        break;
    case 4:
        if (sprite->animEnded)
            sprite->pos1.x += 4;

        if (sprite->pos1.x > 336)
        {
            StartSpriteAnim(sprite, 1);
            sprite->data[0]++;
        }
        break;
    case 5:
        if (gIntroFrameCounter > 1855)
            sprite->pos1.x -= 2;
        break;
    }
}

static void sub_816DAE8(struct Sprite *sprite)
{
    switch (sprite->data[0])
    {
    case 0:
        if (gIntroFrameCounter == 1088)
            sprite->data[0]++;
        break;
    case 1:
        sprite->pos1.x -= 2;
        if (gIntroFrameCounter != 1168)
            break;
        sprite->pos1.y -= 12;
        sprite->data[1] = 0x80;
        sprite->data[2] = 0;
        sprite->data[0]++;
    case 2:
        if (sprite->pos1.x + sprite->pos2.x <= -0x20)
        {
            DestroySprite(sprite);
        }
        else
        {
            if ((sprite->data[1] & 0xFF) < 0x40)
            {
                sprite->pos2.x = Sin((u8)sprite->data[1], 0x10);
            }
            else
            {
                if ((sprite->data[1] & 0xFF) == 0x40)
                    sprite->pos1.x -= 0x30;
                sprite->pos2.x = Sin((u8)sprite->data[1], 0x40);
            }
            sprite->data[1]++;
            sprite->pos2.y = Cos((u8)sprite->data[2], 0xC);
            sprite->data[2]++;
        }
        break;
    }
}

static void Task_IntroLoadPart3Graphics(u8 taskId)
{
    intro_reset_and_hide_bgs();
    LZ77UnCompVram(gIntro3Pokeball_Gfx, (void *)0x6000000);
    LZ77UnCompVram(gIntro3Pokeball_Tilemap, (void *)((0x6000000 + (0x4000 * (1)))));
    LoadPalette(gIntro3PokeballPal, 0, 0x200);
    gTasks[taskId].data[0] = 0;
    gTasks[taskId].data[1] = 0;
    gTasks[taskId].data[2] = 0;
    gTasks[taskId].data[3] = 0;
    PanFadeAndZoomScreen(0x78, 0x50, 0, 0);
    ResetSpriteData();
    FreeAllSpritePalettes();
    BeginNormalPaletteFade(0xFFFFFFFF, 0, 0x10, 0, (((31) | ((31) << 5) | ((31) << 10)) | 0x8000));
    SetGpuReg(0xc, (3) | ((0) << 2) | ((8) << 8) | 0x0080 | 0x4000);
    SetGpuReg(0x0, 0x0001 | 0x0040 | 0x0400 | 0x1000);
    gTasks[taskId].func = Task_IntroSpinAndZoomPokeball;
    gIntroFrameCounter = 0;
    m4aSongNumStart(442);
}

static void Task_IntroSpinAndZoomPokeball(u8 taskId)
{
    gTasks[taskId].data[0] += 0x400;

    if (gTasks[taskId].data[1] <= 0x6BF)
    {
        gTasks[taskId].data[1] += gTasks[taskId].data[2];
        gTasks[taskId].data[2] += 2;
    }
    else
    {
        gTasks[taskId].func = Task_IntroWaitToSetupPart3LegendsFight;
    }

    PanFadeAndZoomScreen(0x78, 0x50, 0x10000 / gTasks[taskId].data[1], gTasks[taskId].data[0]);

    if (gIntroFrameCounter == 28)
        BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 0x10, (((31) | ((31) << 5) | ((31) << 10)) | 0x8000));
}

static void Task_IntroWaitToSetupPart3LegendsFight(u8 taskId)
{
    if (gIntroFrameCounter > 43)
        gTasks[taskId].func = Task_IntroLoadGroudonScene;
}

static void Task_IntroLoadGroudonScene(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        intro_reset_and_hide_bgs();
        ResetSpriteData();
        FreeAllSpritePalettes();
        gReservedSpritePaletteCount = 8;
        LZDecompressVram(gIntro3GroudonGfx, (void *)0x6000000);
        LZDecompressVram(gIntro3GroudonTilemap, (void *)((0x6000000 + (0x4000 * (3)))));
        LZDecompressVram(gIntro3LegendBgGfx, (void *)((0x6000000 + (0x4000 * (1)))));
        LZDecompressVram(gIntro3GroudonBgTilemap, (void *)((0x6000000 + (0x800 * (28)))));
        LoadCompressedSpriteSheetUsingHeap(&gBattleAnimPicTable[(((10000 + 58) - 10000))]);
        LoadCompressedSpritePaletteUsingHeap(&gBattleAnimPaletteTable[(((10000 + 58) - 10000))]);
        CpuSet(gIntro3BgPal, gPlttBufferUnfaded, 0x00000000 | ((sizeof(gIntro3BgPal))/(16/8) & 0x1FFFFF));
        gTasks[taskId].func = Task_IntroLoadPart3Graphics1;
    }
}

static void Task_IntroLoadPart3Graphics1(u8 taskId)
{
    SetGpuReg(0x40, 0xF0);
    SetGpuReg(0x44, 0xA0);
    SetGpuReg(0x48, 0x3F);
    SetGpuReg(0x4a, 0);
    SetGpuReg(0xc, (0)
                               | ((0) << 2)
                               | ((24) << 8)
                               | 0x0080
                               | 0x2000
                               | 0x8000);
    SetGpuReg(0xa, (1)
                               | ((1) << 2)
                               | ((28) << 8)
                               | 0x0000
                               | 0x0000);
    SetGpuReg(0x0, 0x0001
                                | 0x0040
                                | 0x0200
                                | 0x0400
                                | 0x1000
                                | 0x2000);
    BeginNormalPaletteFade(0xFFFFFFFF, 0, 0x10, 0, (((31) | ((31) << 5) | ((31) << 10)) | 0x8000));
    gTasks[taskId].data[0] = 0;
    gTasks[taskId].data[1] = 0xFFA0;
    gTasks[taskId].data[2] = 0xFF51;
    gTasks[taskId].data[3] = 0x100;
    PanFadeAndZoomScreen(0xFFA0, 0xFF51, 0x100, 0);
    gTasks[taskId].func = Task_IntroLoadPart3Graphics2;
}

static void Task_IntroLoadPart3Graphics2(u8 taskId)
{
    if (gTasks[taskId].data[0] != 32)
    {
        gTasks[taskId].data[0] += 4;
        SetGpuReg(0x44, (gTasks[taskId].data[0] * 256) - (gTasks[taskId].data[0] - 160));
    }
    else
    {
        SetGpuReg(0x44, 0x2080);
        gTasks[taskId].func = Task_IntroLoadPart3Graphics3;
    }
}

static void Task_IntroLoadPart3Graphics3(u8 taskId)
{
    gTasks[taskId].func = Task_IntroLoadPart3Graphics4;
}

static void Task_IntroLoadPart3Graphics4(u8 taskId)
{
    gTasks[taskId].data[0] = 0;
    gTasks[taskId].func = Task_IntroGroudonScene;
    ScanlineEffect_InitWave(0, 0xA0, 0x4, 4, 1, 4, 0);
}

static void Task_IntroGroudonScene(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    data[5]++;
    if ((u16)(data[0] - 1) < 7 && data[5] % 2 == 0)
        data[4] ^= 3;
    PanFadeAndZoomScreen(data[1], data[2] + data[4], data[3], 0);
    switch (data[0])
    {
    case 0:
        data[1] += 0x10;
        if (data[1] == 0xA0)
        {
            data[0]++;
            data[6] = 2;
            data[7] = 0x1E2;
            CreateGroudonRockSprites(taskId);
        }
        break;
    case 1:
        if (--data[6] == 0)
        {
            data[6] = 2;
            CpuSet(&gIntro3BgPal[data[7]], &gPlttBufferFaded[31], 0x00000000 | ((sizeof(u16))/(16/8) & 0x1FFFFF));
            data[7] += 2;
            if (data[7] == 0x1EC)
                data[0]++;
        }
        break;
    case 2:
        if (--data[6] == 0)
        {
            data[6] = 2;
            data[0]++;
        }
        break;
    case 3:
        if (--data[6] == 0)
        {
            data[6] = 2;
            CpuSet(&gIntro3BgPal[data[7]], &gPlttBufferFaded[31], 0x00000000 | ((sizeof(u16))/(16/8) & 0x1FFFFF));
            data[7] -= 2;
            if (data[7] == 0x1E0)
            {
                data[6] = 8;
                data[0]++;
            }
        }
        break;
    case 4:
        if (--data[6] == 0)
        {
            data[1] = -0x60;
            data[2] = 0xA9;
            data[6] = 3;
            data[0]++;
        }
        break;
    case 5:
        if (--data[6] == 0)
        {
            data[1] = 0x50;
            data[2] = 0x29;
            data[6] = 0x10;
            PlayCryInternal(405, 0, 100, 10, 0);
            data[0]++;
        }
        break;
    case 6:
        if (--data[6] == 0)
        {
            data[1] = 0x50;
            data[2] = 0x28;
            data[0]++;
        }
        break;
    case 7:
        data[1] += 4;
        data[2] += 4;
        data[6] += 0x666;
        data[3] = Sin((data[6] & 0xFF00) >> 8, 0x40) + 0x100;
        if (data[1] == 0x78)
        {
            BeginNormalPaletteFade(0xFFFFFFFE, 3, 0, 16, ((31) | ((31) << 5) | ((31) << 10)));
            data[3] = 0x100;
            data[4] = 0;
            data[0]++;
        }
        break;
    case 8:
        if (data[3])
            data[3] -= 8;
        else
            data[0]++;
        break;
    case 9:
        if (!gPaletteFade.active)
        {
            gTasks[taskId].func = Task_IntroLoadKyogreScene;
            gScanlineEffect.state = 3;
        }
        break;
    }
}

static void CreateGroudonRockSprites(u8 a0)
{
    int i;
    u8 spriteId;

    for (i = 0; i < 6; i++)
    {
        spriteId = CreateSprite(gAncientPowerRockSpriteTemplate, gIntroGroudonRockData[i][0], 0xA0, i);
        gSprites[spriteId].callback = SpriteCB_IntroGroudonRocks;
        gSprites[spriteId].oam.priority = 0;
        gSprites[spriteId].data[1] = i;
        gSprites[spriteId].data[4] = a0;
        StartSpriteAnim(&gSprites[spriteId], gIntroGroudonRockData[i][1]);
    }
}

static void SpriteCB_IntroGroudonRocks(struct Sprite *sprite)
{
    sprite->data[3]++;
    if (sprite->data[3] % 2 == 0)
        sprite->pos2.y ^= 3;

    switch(sprite->data[0])
    {
    case 0:
        sprite->data[2] += gIntroGroudonRockData[sprite->data[1]][2];
        sprite->pos1.y -= (sprite->data[2] & 0xFF00) >> 8;
        sprite->data[2] &= 0xFF;
        if (gTasks[sprite->data[4]].data[0] > 7)
            sprite->data[0]++;
        break;
    case 1:
        if (sprite->pos1.x < 0x78)
            sprite->pos1.x -= 2;
        else
            sprite->pos1.x += 2;

        if (sprite->pos1.y < 0x50)
            sprite->pos1.y -= 2;
        else
            sprite->pos1.y += 2;
        break;
    }
}

static void Task_IntroLoadKyogreScene(u8 taskId)
{
    ResetSpriteData();
    LZDecompressVram(gIntro3KyogreGfx, (void *)0x6000000);
    LZDecompressVram(gIntro3KyogreTilemap, (void *)((0x6000000 + (0x4000 * (3)))));
    LZDecompressVram(gIntro3KyogreBgTilemap, (void *)((0x6000000 + (0x800 * (28)))));
    LoadCompressedSpriteSheet(gUnknown_085E4C88);
    LoadSpritePalette(gUnknown_085E4C98);
    BeginNormalPaletteFade(0xFFFFFFFE, 0, 0x10, 0, (((31) | ((31) << 5) | ((31) << 10)) | 0x8000));
    gTasks[taskId].func = Task_IntroKyogreScene;
    gTasks[taskId].data[0] = 0;
    gTasks[taskId].data[1] = 0x150;
    gTasks[taskId].data[2] = 0x50;
    gTasks[taskId].data[6] = 0x10;
    gTasks[taskId].data[3] = 0x100;
    PanFadeAndZoomScreen(0x150, 0x50, 0x100, 0);
    ScanlineEffect_InitWave(0, 0xA0, 4, 4, 1, 6, 0);
}

static void Task_IntroKyogreScene(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    PanFadeAndZoomScreen(data[1], data[2], data[3], 0);

    switch (data[0])
    {
    case 0:
        if (--data[6] != 0)
            break;
        data[0]++;
    case 1:
        data[6] += 4;
        gTasks[taskId].data[1] = 0x158 - Sin(data[6], 0x100);
        gTasks[taskId].data[2] = 0x54 - Cos(data[6], 0x40);
        if (data[6] == 0x40)
        {
            data[6] = 0x19;
            data[7] = 1;
            data[0]++;
            CreateKyogreBubbleSprites_0(0);
        }
        break;
    case 2:
        if (--data[6] == 0)
        {
            gTasks[taskId].data[1] += 0x100;
            gTasks[taskId].data[2] -= 0x102;
            data[6] = 8;
            data[0]++;
            CreateKyogreBubbleSprites_0(0);
            CreateKyogreBubbleSprites_1();
        }
        break;
    case 3:
        if (--data[6] == 0)
        {
            gTasks[taskId].data[1] -= 0x100;
            gTasks[taskId].data[2] += 0x102;
            data[6] = 8;
            data[0]++;
        }
        break;
    case 4:
        if (--data[6] == 0)
        {
            gTasks[taskId].data[2] -= 0xFC;
            data[6] = 8;
            data[0]++;
        }
        break;
    case 5:
        if (--data[6] == 0)
        {
            gTasks[taskId].data[2] += 0xFC;
            if (data[7] != 0)
            {
                data[6] = 12;
                data[7]--;
                data[0] = 2;
            }
            else
            {
                data[6] = 1;
                data[0]++;
                PlayCryInternal(404, 0, 120, 10, 0);
            }
        }
        break;
    case 6:
        if (--data[6] == 0)
        {
            data[6] = 4;
            data[7] = 0x1EA;
            data[0]++;
        }
        break;
    case 7:
        if (--data[6] == 0)
        {
            data[6] = 4;
            CpuSet(&gIntro3BgPal[data[7]], &gPlttBufferFaded[47], 0x00000000 | ((sizeof(u16))/(16/8) & 0x1FFFFF));
            data[7] -= 2;
            if (data[7] == 0x1E0)
                data[0]++;
        }
        break;
    case 8:
        if (--data[6] == 0)
        {
            data[6] = 4;
            data[7] = 0x1E2;
            data[0]++;
        }
        break;
    case 9:
        if (--data[6] == 0)
        {
            data[6] = 4;
            CpuSet(&gIntro3BgPal[data[7]], &gPlttBufferFaded[47], 0x00000000 | ((sizeof(u16))/(16/8) & 0x1FFFFF));
            data[7] += 2;
            if (data[7] == 0x1EE)
            {
                data[6] = 0x10;
                data[0]++;
            }
        }
        break;
    case 10:
        if (--data[6] == 0)
        {
            data[6] = 0;
            data[0]++;
            CreateKyogreBubbleSprites_0(taskId);
        }
        break;
    case 11:
        data[6] += 4;
        data[3] -= 8;
        gTasks[taskId].data[1] = Sin(data[6], 0x3C) + 0x58;
        if (data[6] == 0x40)
        {
            BeginNormalPaletteFade(0xFFFFFFFE, 3, 0, 16, ((31) | ((31) << 5) | ((31) << 10)));
            data[0]++;
        }
        break;
    case 12:
        data[6] += 4;
        data[3] -= 8;
        gTasks[taskId].data[1] = Sin(data[6], 0x14) + 0x80;
        if (data[6] == 0x80)
            data[0]++;
        break;
    case 13:
        if (!gPaletteFade.active)
        {
            gTasks[taskId].func = Task_IntroLoadClouds1;
            gScanlineEffect.state = 3;
        }
        break;
    }
}

static void CreateKyogreBubbleSprites_0(u8 taskId)
{
    int i;
    u8 spriteId;

    for (i = 0; i < 6; i++)
    {
        spriteId = CreateSprite(&gUnknown_085E4D14, gIntroKyogreBubbleData[i][0], gIntroKyogreBubbleData[i][1], i);
        gSprites[spriteId].invisible = 1;
        gSprites[spriteId].data[5] = taskId;
        gSprites[spriteId].data[6] = gIntroKyogreBubbleData[i][2];
        gSprites[spriteId].data[7] = 0x40;
    }
}

static void CreateKyogreBubbleSprites_1(void)
{
    int i;
    u8 spriteId;

    for (i = 0; i < 6; i++)
    {
        spriteId = CreateSprite(&gUnknown_085E4D14, gIntroKyogreBubbleData[i + 6][0], gIntroKyogreBubbleData[i + 6][1], i);
        gSprites[spriteId].invisible = 1;
        gSprites[spriteId].data[6] = gIntroKyogreBubbleData[i][2];
        gSprites[spriteId].data[7] = 0x40;
    }
}

static void SpriteCB_IntroKyogreBubbles(struct Sprite *sprite)
{
    switch(sprite->data[0])
    {
    case 0:
        if (sprite->data[6] == 0)
        {
            sprite->data[1] = (sprite->data[1] + 11) & 0xFF;
            sprite->pos2.x = Sin(sprite->data[1], 4);
            sprite->data[2] += 0x30;
            sprite->pos2.y = -(sprite->data[2] >> 8);
            if (sprite->animEnded)
                DestroySprite(sprite);
        }
        else if (--sprite->data[6] == 0)
        {
            StartSpriteAnim(sprite, 0);
            sprite->invisible = 0;
        }
        if (gTasks[sprite->data[5]].data[0] > 11)
            sprite->data[0]++;
        break;
    case 1:
        if (sprite->pos1.x < 120)
            sprite->pos1.x -= 3;
        else
            sprite->pos1.x += 3;

        if (sprite->pos1.y < 80)
            sprite->pos1.y -= 3;
        else
            sprite->pos1.y += 3;
        if ((u16)(sprite->pos1.y - 20) > 140)
            DestroySprite(sprite);
        break;
    }
}

static void Task_IntroLoadClouds1(u8 taskId)
{
    SetGpuReg(0x50, (1 << 0)
                               | (1 << 1)
                               | (1 << 2)
                               | (2 << 6));
    SetGpuReg(0x52, (((31) << 8) | (31)));
    SetGpuReg(0x54, 31);
    SetGpuReg(0x8, (0)
                               | ((0) << 2)
                               | ((24) << 8)
                               | 0x0000
                               | 0x4000);
    SetGpuReg(0xa, (0)
                               | ((1) << 2)
                               | ((26) << 8)
                               | 0x0000
                               | 0x4000);
    SetGpuReg(0xc, (2)
                               | ((1) << 2)
                               | ((28) << 8)
                               | 0x0000
                               | 0x0000);
    SetGpuReg(0x0, 0x0000
                                | 0x0040
                                | 0x0100
                                | 0x0200
                                | 0x0400
                                | 0x1000
                                | 0x2000);
    SetGpuReg(0x10, 80);
    SetGpuReg(0x12, 0);
    SetGpuReg(0x14, -80);
    SetGpuReg(0x16, 0);
    SetGpuReg(0x18, 0);
    SetGpuReg(0x1a, 0);
    LZDecompressVram(gIntro3CloudsGfx, (void *)0x6000000);
    LZDecompressVram(gIntro3CloudsGfx, (void *)((0x6000000 + (0x4000 * (1)))));
    LZDecompressVram(gIntro3Clouds3Tilemap, (void *)((0x6000000 + (0x800 * (28)))));
    gTasks[taskId].func = Task_IntroLoadClouds2;
}

static void Task_IntroLoadClouds2(u8 taskId)
{
    LZDecompressVram(gIntro3Clouds1Tilemap, (void *)((0x6000000 + (0x4000 * (3)))));
    LZDecompressVram(gIntro3Clouds2Tilemap, (void *)((0x6000000 + (0x800 * (26)))));
    gTasks[taskId].func = Task_IntroLoadClouds3;
}

static void Task_IntroLoadClouds3(u8 taskId)
{
    SetGpuReg(0x50, 0);
    SetGpuReg(0x52, 0);
    SetGpuReg(0x54, 0);
    gTasks[taskId].func = Task_IntroCloudScene;
    gTasks[taskId].data[0] = 0;
    gTasks[taskId].data[6] = 16;
}

static void Task_IntroCloudScene(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    SetGpuReg(0x10, (data[6] >> 8));
    SetGpuReg(0x14, -(data[6] >> 8));

    switch (data[0])
    {
    case 0:
        if (--data[6] == 0)
        {
            BeginNormalPaletteFade(0xFFFFFFFE, 0, 16, 0, (((31) | ((31) << 5) | ((31) << 10)) | 0x8000));
            data[6] = 0x5000;
            data[0]++;
        }
        break;
    case 1:
        if (data[6] == 0x2800)
            BeginNormalPaletteFade(0x0000FFFE, 3, 0, 16, ((9) | ((10) << 5) | ((10) << 10)));

        if (data[6] != 0)
            data[6] -= 0x80;
        else if (!gPaletteFade.active)
            gTasks[taskId].func = Task_IntroLoadRayquazaLightningScene;
        break;
    }
}

static void Task_IntroLoadRayquazaLightningScene(u8 taskId)
{
    LZDecompressVram(gIntro3RayquazaTilemap, (void *)((0x6000000 + (0x800 * (28)))));
    LZDecompressVram(gIntro3Clouds4Tilemap, (void *)((0x6000000 + (0x4000 * (3)))));
    LZDecompressVram(gIntro3RayquazaGfx, (void *)((0x6000000 + (0x4000 * (1)))));
    LZDecompressVram(gIntro3Clouds2Gfx, (void *)0x6000000);
    SetGpuReg(0x0, 0x0000
                                | 0x0040
                                | 0x0100
                                | 0x0400
                                | 0x1000
                                | 0x2000);
    gTasks[taskId].func = Task_IntroRayquazaLightningScene;
    gTasks[taskId].data[0] = 0;
    gTasks[taskId].data[6] = 1;
    gTasks[taskId].data[7] = 0;
    LoadCompressedSpriteSheetUsingHeap(gIntroRayquazaLightningSpriteSheet);
    LoadSpritePalettes(gIntroRayquazaLightningPalette);
}

static void Task_IntroRayquazaLightningScene(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    u8 spriteId;

    switch (data[0])
    {
    case 0:
        if (--data[6] == 0)
        {
            CreateSprite(&gIntroLightningSprite, 200, 48, 0);
            spriteId = CreateSprite(&gIntroLightningSprite, 200, 80, 1);
            StartSpriteAnim(&gSprites[spriteId], 1);
            spriteId = CreateSprite(&gIntroLightningSprite, 200, 112, 2);
            StartSpriteAnim(&gSprites[spriteId], 2);
            data[0]++;
            data[6] = 72;
        }
        break;
    case 1:
        if (--data[6] == 0)
        {
            CreateSprite(&gIntroLightningSprite, 40, 48, 0);
            spriteId = CreateSprite(&gIntroLightningSprite, 40, 80, 1);
            StartSpriteAnim(&gSprites[spriteId], 1);
            spriteId = CreateSprite(&gIntroLightningSprite, 40, 112, 2);
            StartSpriteAnim(&gSprites[spriteId], 2);
            data[0]++;
            data[6] = 48;
        }
        break;
    case 2:
        if (--data[6] == 0)
            gTasks[taskId].func = Task_IntroLoadRayquazaGlowScene;
        break;
    }
}

static void SpriteCB_IntroRayquazaLightning(struct Sprite *sprite)
{
    if (sprite->animEnded)
        sprite->invisible = 1;

    switch(sprite->data[0])
    {
    case 0:
        sprite->data[1] = 0x1C2;
        sprite->data[0]++;
    case 1:
        CpuSet(&gIntro3BgPal[sprite->data[1]], &gPlttBufferFaded[93], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
        sprite->data[1] += 2;
        if (sprite->data[1] != 0x1CE)
            break;
        sprite->data[1] = 0x1CC;
        sprite->data[2] = 4;
        sprite->data[0]++;
    case 2:
        if (--sprite->data[2] == 0)
        {
            sprite->data[2] = 4;
            CpuSet(&gIntro3BgPal[sprite->data[1]], &gPlttBufferFaded[93], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
            sprite->data[1] -= 2;
            if (sprite->data[1] == 0x1C0)
                DestroySprite(sprite);
        }
        break;
    }
}

static void Task_IntroLoadRayquazaGlowScene(u8 taskId)
{
    u8 newTaskId;

    LoadCompressedSpriteSheet(gIntroRayquazaGlowSpriteSheet);
    LoadSpritePalettes(gIntroRayquazaGlowPalette);
    SetGpuReg(0x0, 0x0000
                                | 0x0040
                                | 0x0100
                                | 0x0400
                                | 0x1000
                                | 0x2000);
    gTasks[taskId].func = Task_IntroRayquazaGlowScene_0;
    BeginNormalPaletteFade(0x0000FFDE, 0, 16, 0, ((9) | ((10) << 5) | ((10) << 10)));
    gTasks[taskId].data[0] = 0;
    gTasks[taskId].data[1] = 0xA8;
    gTasks[taskId].data[2] = -0x10;
    gTasks[taskId].data[3] = -0x88;
    gTasks[taskId].data[4] = -0x10;
    newTaskId = CreateTask(Task_IntroRayquazaGlowScene_1, 0);
    gTasks[newTaskId].data[4] = taskId;
}

static void Task_IntroRayquazaGlowScene_0(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (data[7] % 2 == 0)
        data[6] ^= 2;

    data[7]++;

    switch(data[0])
    {
    case 0:
        if ((data[7] & 1) != 0)
        {
            data[1] -= 2;
            data[2]++;
            data[3] += 2;
            data[4]++;
        }
        if (data[1] == 0x68)
        {
            data[0]++;
            data[5] = 1;
        }
        break;
    case 1:
        data[0]++;
        data[5] = 4;
        break;
    case 2:
        data[1] += 4;
        data[2] -= 2;
        data[3] -= 4;
        data[4] -= 2;
        if (!gPaletteFade.active)
        {
            data[5] = 0x8C;
            data[0]++;
        }
        break;
    case 3:
        if (--data[5] == 0)
            gTasks[taskId].func = Task_EndIntroMovie;
        break;
    }
}

static void Task_EndIntroMovie(u8 taskId)
{
    DestroyTask(taskId);
    SetMainCallback2(MainCB2_EndIntro);
}

static void Task_IntroRayquazaGlowScene_1(u8 taskId)
{

    u8 spriteId;
    s16 *data = gTasks[taskId].data;
    data[2]++;

    switch(data[0])
    {
    case 0:
        if ((data[2] & 1) != 0)
        {
            CpuSet(&gIntro3BgPal[0x1A2 + data[1] * 2], &gPlttBufferFaded[94], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
            data[1]++;
        }
        if (data[1] == 6)
        {
            data[0]++;
            data[1] = 0;
            data[3] = 10;
        }
        break;
    case 1:
        if (data[3] == 0)
        {
            if ((data[2] & 1) != 0)
            {
                CpuSet(&gIntro3BgPal[0x1A2 + data[1] * 2], &gPlttBufferFaded[88], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                data[1]++;
            }
            if (data[1] == 6)
            {
                data[0]++;
                data[3] = 10;
            }
        }
        else
        {
            data[3]--;
        }
        break;
    case 2:
        if (data[3] == 0)
        {
            if ((data[2] & 1) != 0)
            {
                CpuSet(&gIntro3BgPal[0x182 + data[1] * 2], &gPlttBufferFaded[92], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                data[1]++;
            }
            if (data[1] == 6)
            {
                spriteId = CreateSprite(&gIntroRayquazaHyperbeamSprite, 120, 88, 15);
                PlaySE(103);
                gSprites[spriteId].invisible = 1;
                gSprites[spriteId].data[3] = data[4];
                data[0]++;
                data[3] = 16;
            }
        }
        else
        {
            data[3]--;
        }
        break;
    case 3:
        if ((data[2] & 1) != 0)
        {
            if (--data[3] != 0)
            {
                BlendPalette(0x50, 16, data[3], ((9) | ((10) << 5) | ((10) << 10)));
                CpuSet(&gIntro3BgPal[0x1AC], &gPlttBufferFaded[94], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                CpuSet(&gIntro3BgPal[0x1AC], &gPlttBufferFaded[88], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                CpuSet(&gIntro3BgPal[0x18C], &gPlttBufferFaded[92], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
            }
            else
            {
                data[0]++;
                data[3] = 53;
            }
        }
        break;
    case 4:
        if (--data[3] == 0)
        {
            BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 16, ((31) | ((31) << 5) | ((31) << 10)));
            data[0]++;
        }
        break;
    case 5:
        if (!gPaletteFade.active)
            DestroyTask(taskId);
        break;
    }
}

static void intro_reset_and_hide_bgs(void)
{
    SetGpuReg(0x0, 0);
    SetGpuReg(0x1c, 0);
    SetGpuReg(0x1e, 0);
    SetGpuReg(0x18, 0);
    SetGpuReg(0x1a, 0);
    SetGpuReg(0x14, 0);
    SetGpuReg(0x16, 0);
    SetGpuReg(0x10, 0);
    SetGpuReg(0x12, 0);
    SetGpuReg(0x50, 0);
    SetGpuReg(0x52, 0);
    SetGpuReg(0x54, 0);
}

static void Task_IntroWaterDrops_1(u8 taskId)
{
    switch (gTasks[taskId].data[0])
    {
    case 0:
    default:
        SetGpuReg(0x50, (1 << 6)
                                   | (1 << 8)
                                   | (1 << 9)
                                   | (1 << 10)
                                   | (1 << 11)
                                   | (1 << 12)
                                   | (1 << 13));
        SetGpuReg(0x52, gIntroWaterDropAlphaBlend[31]);
        SetGpuReg(0x54, 0);
        gTasks[taskId].data[1] = 0x40;
        gTasks[taskId].data[0]++;
        break;
    case 1:
        if (gTasks[taskId].data[1] != 0)
        {
            u8 tmp;

            gTasks[taskId].data[1]--;
            tmp = gTasks[taskId].data[1] / 2;
            SetGpuReg(0x52, gIntroWaterDropAlphaBlend[tmp]);
        }
        else
        {
            SetGpuReg(0x52, gIntroWaterDropAlphaBlend[0]);
            gTasks[taskId].data[1] = 0x10;
            gTasks[taskId].data[0]++;
        }
        break;
    case 2:
        SetGpuReg(0x50, 0);
        SetGpuReg(0x52, 0);
        SetGpuReg(0x54, 0);
        DestroyTask(taskId);
        break;
    }
}

static void Task_IntroWaterDrops_2(u8 taskId)
{
    switch (gTasks[taskId].data[0])
    {
    case 0:
    default:
        SetGpuReg(0x50, (1 << 6)
                                   | (1 << 8)
                                   | (1 << 9)
                                   | (1 << 10)
                                   | (1 << 11)
                                   | (1 << 12)
                                   | (1 << 13));
        SetGpuReg(0x52, gIntroWaterDropAlphaBlend[0]);
        SetGpuReg(0x54, 0);
        gTasks[taskId].data[1] = 0;
        gTasks[taskId].data[0]++;
        break;
    case 1:
        if (gTasks[taskId].data[1] < 62)
        {
            u8 tmp;

            gTasks[taskId].data[1]++;
            tmp = gTasks[taskId].data[1] / 2;
            SetGpuReg(0x52, gIntroWaterDropAlphaBlend[tmp]);
        }
        else
        {
            SetGpuReg(0x52, gIntroWaterDropAlphaBlend[31]);
            gTasks[taskId].data[1] = 0x10;
            gTasks[taskId].data[0]++;
        }
        break;
    case 2:
        if (gTasks[taskId].data[1] != 0)
        {
            gTasks[taskId].data[1]--;
        }
        else
        {
            SetGpuReg(0x50, 0);
            SetGpuReg(0x52, 0);
            SetGpuReg(0x54, 0);
            DestroyTask(taskId);
        }
        break;
    }
}

void PanFadeAndZoomScreen(u16 screenX, u16 screenY, u16 zoom, u16 alpha)
{
    struct BgAffineSrcData src;
    struct BgAffineDstData dest;

    src.texX = 0x8000;
    src.texY = 0x8000;
    src.scrX = screenX;
    src.scrY = screenY;
    src.sx = zoom;
    src.sy = zoom;
    src.alpha = alpha;
    BgAffineSet(&src, &dest, 1);
    SetGpuReg(0x20, dest.pa);
    SetGpuReg(0x22, dest.pb);
    SetGpuReg(0x24, dest.pc);
    SetGpuReg(0x26, dest.pd);
    SetGpuReg(0x28, dest.dx);
    SetGpuReg(0x2a, dest.dx >> 16);
    SetGpuReg(0x2c, dest.dy);
    SetGpuReg(0x2e, dest.dy >> 16);
}

static void sub_816F318(struct Sprite *sprite)
{
    u8 r0;

    if (sprite->data[2] >= 192)
    {
        if (sprite->data[3] != 0)
        {
            sprite->data[3]--;
        }
        else
        {
            sprite->invisible = 0;
            SetOamMatrix(sprite->data[1], sprite->data[2], 0, 0, sprite->data[2]);
            sprite->data[2] = (sprite->data[2] * 95) / 100;
            r0 = (sprite->data[2] - 192) / 128 + 9;
            if (r0 > 15)
                r0 = 15;
            sprite->oam.paletteNum = r0;
        }
    }
    else
    {
        DestroySprite(sprite);
    }
}

static void sub_816F3A4(struct Sprite *sprite)
{
    if (gSprites[sprite->data[7]].data[7] != 0)
    {
        sprite->invisible = 1;
        sprite->pos1.x += sprite->pos2.x;
        sprite->pos1.y += sprite->pos2.y;
        StartSpriteAnim(sprite, 3);
        sprite->data[2] = 1024;
        sprite->data[3] = 8 * (sprite->data[1] & 3);
        sprite->callback = sub_816F318;
        sprite->oam.shape = (((3 << 2) | (1)) & 0x03);
        sprite->oam.size = ((((3 << 2) | (1)) >> 2) & 0x03);
        CalcCenterToCornerVec(sprite, (((3 << 2) | (1)) & 0x03), ((((3 << 2) | (1)) >> 2) & 0x03), 2);
    }
    else
    {
        sprite->pos2.x = gSprites[sprite->data[7]].pos2.x;
        sprite->pos2.y = gSprites[sprite->data[7]].pos2.y;
        sprite->pos1.x = gSprites[sprite->data[7]].pos1.x;
        sprite->pos1.y = gSprites[sprite->data[7]].pos1.y;
    }
}

static void sub_816F454(struct Sprite *sprite)
{
    if (sprite->data[0] != 0)
        sprite->callback = sub_816F46C;
}

static void sub_816F46C(struct Sprite *sprite)
{
    if (sprite->pos1.x <= 116)
    {
        sprite->pos1.y += sprite->pos2.y;
        sprite->pos2.y = 0;
        sprite->pos1.x += 4;
        sprite->pos2.x = -4;
        sprite->data[4] = 128;
        sprite->callback = sub_816F5B4;
    }
    else
    {
        u16 data2;
        u16 data3;
        u16 data4;
        s16 sin1;
        s16 sin2;
        s16 sin3;
        s16 sin4;
        s16 var1;
        s16 var2;
        s16 var3;
        s16 var4;
        s16 temp;

        data4 = sprite->data[4];
        sin1 = gSineTable[(u8)data4];
        sin2 = gSineTable[(u8)(data4 + 64)];
        sprite->data[4] += 2;
        sprite->pos2.y = sin1 / 32;
        sprite->pos1.x--;
        if (sprite->pos1.x & 1)
            sprite->pos1.y++;
        temp = -sin2 / 16;
        data2 = sprite->data[2];
        data3 = sprite->data[3];
        sin3 = gSineTable[(u8)(temp - 16)];
        sin4 = gSineTable[(u8)(temp + 48)];
        var1 = sin4 * data2 / 256;
        var2 = -sin3 * data3 / 256;
        var3 = sin3 * data2 / 256;
        var4 = sin4 * data3 / 256;
        SetOamMatrix(sprite->data[1], data2, 0, 0, data3);
        SetOamMatrix(sprite->data[1] + 1, var1, var3, var2, var4);
        SetOamMatrix(sprite->data[1] + 2, var1, var3, var2 * 2, var4 * 2);
    }
}

static void sub_816F5B4(struct Sprite *sprite)
{
    SetOamMatrix(sprite->data[1], sprite->data[6] + 64, 0, 0, sprite->data[6] + 64);
    SetOamMatrix(sprite->data[1] + 1, sprite->data[6] + 64, 0, 0, sprite->data[6] + 64);
    SetOamMatrix(sprite->data[1] + 2, sprite->data[6] + 64, 0, 0, sprite->data[6] + 64);
    if (sprite->data[4] != 64)
    {
        u16 data4;

        sprite->data[4] -= 8;
        data4 = sprite->data[4];
        sprite->pos2.x = gSineTable[(u8)(data4 + 64)] / 64;
        sprite->pos2.y = gSineTable[(u8)data4] / 64;
    }
    else
    {
        sprite->data[4] = 0;
        sprite->callback = sub_816F660;
    }
}

static void sub_816F660(struct Sprite *sprite)
{
    if (sprite->data[0] != 2)
    {
        s16 r2;

        sprite->data[4] += 8;
        r2 = gSineTable[(u8)sprite->data[4]] / 16 + 64;
        sprite->pos2.x = gSineTable[(u8)(r2 + 64)] / 64;
        sprite->pos2.y = gSineTable[(u8)r2] / 64;
    }
    else
    {
        sprite->callback = SpriteCB_WaterDropFall;
    }
}

static void SpriteCB_WaterDropFall(struct Sprite *sprite)
{
    if (sprite->pos1.y < sprite->data[5])
    {
        sprite->pos1.y += 4;
    }
    else
    {
        sprite->data[7] = 1;
        sprite->invisible = 1;
        sprite->pos1.x += sprite->pos2.x;
        sprite->pos1.y += sprite->pos2.y;
        StartSpriteAnim(sprite, 3);
        sprite->data[2] = 1024;
        sprite->data[3] = 8 * (sprite->data[1] & 3);
        sprite->callback = sub_816F318;
        sprite->oam.shape = (((3 << 2) | (1)) & 0x03);
        sprite->oam.size = ((((3 << 2) | (1)) >> 2) & 0x03);
        CalcCenterToCornerVec(sprite, (((3 << 2) | (1)) & 0x03), ((((3 << 2) | (1)) >> 2) & 0x03), 2);
    }
}


static void SpriteCB_WaterDropFall_2(struct Sprite *sprite)
{
    if (sprite->pos1.y < sprite->data[5])
    {
        sprite->pos1.y += 4;
    }
    else
    {
        sprite->data[7] = 1;
        sprite->invisible = 1;
        sprite->pos1.x += sprite->pos2.x;
        sprite->pos1.y += sprite->pos2.y;
        StartSpriteAnim(sprite, 3);
        sprite->data[2] = 1024;
        sprite->data[3] = 8 * (sprite->data[1] & 3);
        sprite->callback = sub_816F318;
        sprite->oam.shape = (((3 << 2) | (1)) & 0x03);
        sprite->oam.size = ((((3 << 2) | (1)) >> 2) & 0x03);
        CalcCenterToCornerVec(sprite, (((3 << 2) | (1)) & 0x03), ((((3 << 2) | (1)) >> 2) & 0x03), 2);
    }
}

static u8 CreateWaterDrop(s16 x, s16 y, u16 c, u16 d, u16 e, u8 fallImmediately)
{
    u8 spriteId;
    u8 oldSpriteId;

    spriteId = CreateSprite(&gIntroWaterDropSprite, x, y, 1);
    gSprites[spriteId].data[0] = 0;
    gSprites[spriteId].data[7] = 0;
    gSprites[spriteId].data[1] = d;
    gSprites[spriteId].data[2] = c;
    gSprites[spriteId].data[3] = c;
    gSprites[spriteId].data[5] = e;
    gSprites[spriteId].data[6] = c;
    gSprites[spriteId].oam.affineMode = 3;
    gSprites[spriteId].oam.matrixNum = d;
    CalcCenterToCornerVec(&gSprites[spriteId], (((2 << 2) | (0)) & 0x03), ((((2 << 2) | (0)) >> 2) & 0x03), 2);
    StartSpriteAnim(&gSprites[spriteId], 2);
    if (!fallImmediately)
        gSprites[spriteId].callback = sub_816F454;
    else
        gSprites[spriteId].callback = SpriteCB_WaterDropFall_2;
    oldSpriteId = spriteId;

    spriteId = CreateSprite(&gIntroWaterDropSprite, x, y, 1);
    gSprites[spriteId].data[7] = oldSpriteId;
    gSprites[spriteId].data[1] = d + 1;
    gSprites[spriteId].oam.affineMode = 3;
    gSprites[spriteId].oam.matrixNum = d + 1;
    CalcCenterToCornerVec(&gSprites[spriteId], (((2 << 2) | (0)) & 0x03), ((((2 << 2) | (0)) >> 2) & 0x03), 2);
    gSprites[spriteId].callback = sub_816F3A4;

    spriteId = CreateSprite(&gIntroWaterDropSprite, x, y, 1);
    gSprites[spriteId].data[7] = oldSpriteId;
    gSprites[spriteId].data[1] = d + 2;
    StartSpriteAnim(&gSprites[spriteId], 1);
    gSprites[spriteId].oam.affineMode = 3;
    gSprites[spriteId].oam.matrixNum = d + 2;
    CalcCenterToCornerVec(&gSprites[spriteId], (((2 << 2) | (0)) & 0x03), ((((2 << 2) | (0)) >> 2) & 0x03), 2);
    gSprites[spriteId].callback = sub_816F3A4;

    SetOamMatrix(d, c + 32, 0, 0, c + 32);
    SetOamMatrix(d + 1, c + 32, 0, 0, c + 32);
    SetOamMatrix(d + 2, c + 32, 0, 0, 2 * (c + 32));

    return oldSpriteId;
}

static void SpriteCB_IntroGraphicsBicycle(struct Sprite *sprite)
{
    switch (sprite->data[0])
    {
    case 0:
        StartSpriteAnimIfDifferent(sprite, 0);
        sprite->pos1.x--;
        break;
    case 1:
        StartSpriteAnimIfDifferent(sprite, 0);
        if (gIntroFrameCounter & 7)
            return;
        sprite->pos1.x++;
        break;
    case 2:
        if (sprite->pos1.x <= 120 || gIntroFrameCounter & 7)
            sprite->pos1.x++;
        break;
    case 3:
        break;
    case 4:
        if (sprite->pos1.x > -32)
            sprite->pos1.x -= 2;
        break;
    }
    if (gIntroFrameCounter & 7)
        return;
    if (sprite->pos2.y != 0)
    {
        sprite->pos2.y = 0;
    }
    else
    {
        switch (Random() & 3)
        {
        case 0:
            sprite->pos2.y = -1;
            break;
        case 1:
            sprite->pos2.y = 1;
            break;
        case 2:
        case 3:
            sprite->pos2.y = 0;
            break;
        }
    }
}

static void SpriteCB_IntroGraphicsFlygon(struct Sprite *sprite)
{
    switch (sprite->data[0])
    {
    case 0:
        break;
    case 1:
        if (sprite->pos2.x + sprite->pos1.x < 304)
            sprite->pos2.x += 8;
        else
            sprite->data[0] = 2;
        break;
    case 2:
        if (sprite->pos2.x + sprite->pos1.x > 120)
            sprite->pos2.x -= 1;
        else
            sprite->data[0] = 3;
        break;
    case 3:
        if (sprite->pos2.x > 0)
            sprite->pos2.x -= 2;
        break;
    }
    sprite->pos2.y = Sin((u8)sprite->data[1], 8) - gIntroGraphicsFlygonYOffset;
    sprite->data[1] += 4;
}

static void sub_816FB38(struct Sprite *sprite)
{
    switch (sprite->data[0])
    {
    case 0:
        if (sprite->data[1] != 0)
        {
            sprite->data[1]--;
        }
        else
        {
            sprite->invisible = 0;
            StartSpriteAffineAnim(sprite, 1);
            sprite->data[0]++;
        }
        break;
    case 1:
        if (gIntroFrameCounter == 0x90)
        {
            sprite->data[0]++;
            sprite->data[1] = 9;
            sprite->data[3] = 2;
        }
        break;
    case 2:
        if (sprite->data[3] == 0)
        {
            sprite->data[3] = 2;
            if (sprite->data[1] != 0)
            {
                CpuSet(&gIntro1GameFreakTextFadePal[sprite->data[1]], &gPlttBufferFaded[0x11F], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                CpuSet(&gIntro1GameFreakTextFadePal[sprite->data[1] + 0x10], &gPlttBufferFaded[0x114], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                CpuSet(&gIntro1GameFreakTextFadePal[sprite->data[1] + 0x20], &gPlttBufferFaded[0x11A], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                sprite->data[1]--;
            }
            else
            {
                CpuSet(&gIntro1GameFreakTextFadePal[sprite->data[1]], &gPlttBufferFaded[0x11F], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                CpuSet(&gIntro1GameFreakTextFadePal[sprite->data[1] + 0x10], &gPlttBufferFaded[0x114], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                CpuSet(&gIntro1GameFreakTextFadePal[sprite->data[1] + 0x20], &gPlttBufferFaded[0x11A], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                sprite->data[0]++;
            }
        }
        else
        {
            sprite->data[3]--;
        }
        break;
    case 3:
        if (sprite->data[3] != 0)
        {
            sprite->data[3]--;
        }
        else
        {
            sprite->data[3] = 2;
            if (sprite->data[1] < 10)
            {
                CpuSet(&gIntro1GameFreakTextFadePal[sprite->data[1]], &gPlttBufferFaded[0x11F], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                CpuSet(&gIntro1GameFreakTextFadePal[sprite->data[1] + 0x10], &gPlttBufferFaded[0x114], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                CpuSet(&gIntro1GameFreakTextFadePal[sprite->data[1] + 0x20], &gPlttBufferFaded[0x11A], 0x00000000 | ((2)/(16/8) & 0x1FFFFF));
                sprite->data[1]++;
            }
            else
            {
                sprite->data[0]++;
            }
        }
        break;
    case 4:
        if (gIntroFrameCounter == 0x110)
        {
            StartSpriteAffineAnim(sprite, 2);
            sprite->oam.objMode = 1;
            sprite->data[0]++;
        }
        break;
    case 5:
        sprite->data[3] += gUnknown_085E4F48[sprite->data[2]];
        sprite->pos2.x = (sprite->data[3] & 0xFF00) >> 8;
        if (sprite->data[2] < 4)
        {
            s16 temp = sprite->pos2.x;
            sprite->pos2.x = -temp;
        }
        if (sprite->affineAnimEnded)
            DestroySprite(sprite);
        break;
    }
}

static void sub_816FD44(struct Sprite *sprite)
{
    switch(sprite->data[0])
    {
    case 0:
        if (gIntroFrameCounter == 0x80)
        {
            sprite->invisible = 0;
            sprite->data[0]++;
        }
        break;
    case 1:
        if (gIntroFrameCounter == 0x110)
        {
            StartSpriteAffineAnim(sprite, 3);
            sprite->data[0]++;
        }
        break;
    case 2:
        if (sprite->affineAnimEnded)
            DestroySprite(sprite);
        break;
    }
}

static u8 CreatePart1Animations(s16 a0, s16 a1, s16 a2)
{
    u16 i;
    u8 spriteId;

    for (i = 0; i < 9; i++)
    {
        spriteId = CreateSprite(&gUnknown_085E4F5C, gUnknown_085E4E94[i][1] + a0, a1 - 4, 0);
        gSprites[spriteId].data[0] = 0;
        gSprites[spriteId].data[1] = gUnknown_085E4FA4[i];
        gSprites[spriteId].data[2] = i;
        gSprites[spriteId].invisible = 1;
        gSprites[spriteId].oam.matrixNum = i + 12;
        StartSpriteAnim(&gSprites[spriteId], gUnknown_085E4E94[i][0]);
        StartSpriteAffineAnim(&gSprites[spriteId], 0);
    }
    spriteId = CreateSprite(&gUnknown_085E4F8C, 120, a1 - 6, 0);
    gSprites[spriteId].data[0] = 0;
    gSprites[spriteId].invisible = 1;
    gSprites[spriteId].oam.matrixNum = i + 12;
    StartSpriteAffineAnim(&gSprites[spriteId], 1);
    return spriteId;
}

static void sub_816FEDC(struct Sprite *sprite)
{
    sprite->data[7]++;

    if (sprite->data[0] != 0)
    {
        s16 sin1;
        s16 sin2;

        s16 a, b, c, d;

        sin1 = gSineTable[(u8)sprite->data[2]];
        sin2 = gSineTable[(u8)(sprite->data[2] + 64)];

        d = ((int)((sin2 * sprite->data[1]) / 256));
        c = ((int)((-sin1 * sprite->data[1]) / 256));
        b = ((int)((sin1 * sprite->data[1]) / 256));
        a = ((int)((sin2 * sprite->data[1]) / 256));

        SetOamMatrix(1, a, b, c, d);
    }

    switch (sprite->data[0])
    {
    case 0:
    default:
        sprite->oam.affineMode = 3;
        sprite->oam.matrixNum = 1;
        CalcCenterToCornerVec(sprite, (((3 << 2) | (1)) & 0x03), ((((3 << 2) | (1)) >> 2) & 0x03), 3);
        sprite->invisible = 0;
        sprite->data[0] = 1;
        sprite->data[1] = 0x80;
        sprite->data[2] = 0;
        sprite->data[3] = 0;
        break;
    case 1:
        sprite->pos2.x = -Sin((u8)sprite->data[3], 140);
        sprite->pos2.y = -Sin((u8)sprite->data[3], 120);
        sprite->data[1] += 7;
        sprite->data[3] += 3;
        if (sprite->pos1.x + sprite->pos2.x <= -16)
        {
            sprite->oam.priority = 3;
            sprite->data[0]++;
            sprite->pos1.x = 20;
            sprite->pos1.y = 40;
            sprite->data[1] = 0x200;
            sprite->data[2] = 0;
            sprite->data[3] = 0x10;
        }
        break;
    case 2:
        sprite->pos2.x = Sin((u8)sprite->data[3], 34);
        sprite->pos2.y = -Cos((u8)sprite->data[3], 60);
        sprite->data[1] += 2;
        if (sprite->data[7] % 5 == 0)
            sprite->data[3]++;
        break;
    }
}

static void SpriteCB_IntroRayquazaHyperbeam(struct Sprite *sprite)
{
    u16 foo;



    switch (sprite->data[0])
    {
    case 0:
    default:
        sprite->invisible = 0;
        sprite->oam.affineMode = 3;
        sprite->oam.matrixNum = 18;
        CalcCenterToCornerVec(sprite, (((3 << 2) | (0)) & 0x03), ((((3 << 2) | (0)) >> 2) & 0x03), 3);
        sprite->data[1] = 0;
        sprite->data[0] = 1;

    case 1:
        sprite->data[7]++;
        if (sprite->data[7] & 1)
        {
            sprite->invisible = 1;
        }
        else
        {
            sprite->invisible = 0;
            if (sprite->data[1] < 64)
                sprite->data[1]++;
        }
        foo = 256 - gSineTable[(u8)sprite->data[1]] / 2;
        SetOamMatrix(18, foo, 0, 0, foo);
        break;
    }
}
