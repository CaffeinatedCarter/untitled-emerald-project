# 1 "src/graphics.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/graphics.c"
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
# 2 "src/graphics.c" 2

const u32 gBattleTextboxTiles[] = INCBIN_U32("graphics/battle_interface/textbox.4bpp.lz");
const u32 gBattleTextboxPalette[] = INCBIN_U32("graphics/battle_interface/textbox.gbapal.lz");
const u32 gBattleTextboxTilemap[] = INCBIN_U32("graphics/battle_interface/textbox_map.bin.lz");

const u32 gMonStillFrontPic_CircledQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/circled/front.4bpp.lz");
const u32 gMonBackPic_CircledQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/circled/back.4bpp.lz");
const u32 gMonPalette_CircledQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/circled/normal.gbapal.lz");
const u32 gMonShinyPalette_CircledQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/circled/shiny.gbapal.lz");

const u32 gUnusedGfx_OldCharmap[] = INCBIN_U32("graphics/unused/old_charmap.4bpp.lz");
const u32 gUnusedTimemap_OldCharmap[] = INCBIN_U32("graphics/unused/old_charmap.bin.lz");
const u32 gUnusedPal_OldCharmap[] = INCBIN_U32("graphics/unused/old_charmap.gbapal.lz");

const u32 gSmokescreenImpactTiles[] = INCBIN_U32("graphics/battle_anims/sprites/smokescreen_impact.4bpp.lz");
const u32 gSmokescreenImpactPalette[] = INCBIN_U32("graphics/battle_anims/sprites/smokescreen_impact.gbapal.lz");

# 1 "src/data/graphics/interface_pokeballs.h" 1
const u32 gInterfaceGfx_PokeBall[] = INCBIN_U32("graphics/interface/ball/poke.4bpp.lz");
const u32 gInterfacePal_PokeBall[] = INCBIN_U32("graphics/interface/ball/poke.gbapal.lz");

const u32 gInterfaceGfx_GreatBall[] = INCBIN_U32("graphics/interface/ball/great.4bpp.lz");
const u32 gInterfacePal_GreatBall[] = INCBIN_U32("graphics/interface/ball/great.gbapal.lz");

const u32 gInterfaceGfx_SafariBall[] = INCBIN_U32("graphics/interface/ball/safari.4bpp.lz");
const u32 gInterfacePal_SafariBall[] = INCBIN_U32("graphics/interface/ball/safari.gbapal.lz");

const u32 gInterfaceGfx_UltraBall[] = INCBIN_U32("graphics/interface/ball/ultra.4bpp.lz");
const u32 gInterfacePal_UltraBall[] = INCBIN_U32("graphics/interface/ball/ultra.gbapal.lz");

const u32 gInterfaceGfx_MasterBall[] = INCBIN_U32("graphics/interface/ball/master.4bpp.lz");
const u32 gInterfacePal_MasterBall[] = INCBIN_U32("graphics/interface/ball/master.gbapal.lz");

const u32 gInterfaceGfx_NetBall[] = INCBIN_U32("graphics/interface/ball/net.4bpp.lz");
const u32 gInterfacePal_NetBall[] = INCBIN_U32("graphics/interface/ball/net.gbapal.lz");

const u32 gInterfaceGfx_DiveBall[] = INCBIN_U32("graphics/interface/ball/dive.4bpp.lz");
const u32 gInterfacePal_DiveBall[] = INCBIN_U32("graphics/interface/ball/dive.gbapal.lz");

const u32 gInterfaceGfx_NestBall[] = INCBIN_U32("graphics/interface/ball/nest.4bpp.lz");
const u32 gInterfacePal_NestBall[] = INCBIN_U32("graphics/interface/ball/nest.gbapal.lz");

const u32 gInterfaceGfx_RepeatBall[] = INCBIN_U32("graphics/interface/ball/repeat.4bpp.lz");
const u32 gInterfacePal_RepeatBall[] = INCBIN_U32("graphics/interface/ball/repeat.gbapal.lz");

const u32 gInterfaceGfx_TimerBall[] = INCBIN_U32("graphics/interface/ball/timer.4bpp.lz");
const u32 gInterfacePal_TimerBall[] = INCBIN_U32("graphics/interface/ball/timer.gbapal.lz");

const u32 gInterfaceGfx_LuxuryBall[] = INCBIN_U32("graphics/interface/ball/luxury.4bpp.lz");
const u32 gInterfacePal_LuxuryBall[] = INCBIN_U32("graphics/interface/ball/luxury.gbapal.lz");

const u32 gInterfaceGfx_PremierBall[] = INCBIN_U32("graphics/interface/ball/premier.4bpp.lz");
const u32 gInterfacePal_PremierBall[] = INCBIN_U32("graphics/interface/ball/premier.gbapal.lz");

const u32 gOpenPokeballGfx[] = INCBIN_U32("graphics/interface/ball_open.4bpp.lz");
# 20 "src/graphics.c" 2

const u32 gBlankGfxCompressed[] = INCBIN_U32("graphics/interface/blank.4bpp.lz");


const u32 gBattleAnimSpriteGfx_Bubble[] = INCBIN_U32("graphics/battle_anims/sprites/bubble.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Bone[] = INCBIN_U32("graphics/battle_anims/sprites/bone.4bpp.lz");
const u32 gBattleAnimSpriteGfx_AirWave[] = INCBIN_U32("graphics/battle_anims/sprites/air_wave.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Orb[] = INCBIN_U32("graphics/battle_anims/sprites/orb.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Sword[] = INCBIN_U32("graphics/battle_anims/sprites/sword.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Seed[] = INCBIN_U32("graphics/battle_anims/sprites/seed.4bpp.lz");

const u32 gBattleAnimSpritePal_RainDrops[] = INCBIN_U32("graphics/battle_anims/sprites/rain_drops.gbapal.lz");
const u32 gBattleAnimSpritePal_Bone[] = INCBIN_U32("graphics/battle_anims/sprites/bone.gbapal.lz");
const u32 gBattleAnimSpritePal_AirWave[] = INCBIN_U32("graphics/battle_anims/sprites/air_wave.gbapal.lz");
const u32 gBattleAnimSpritePal_Orb[] = INCBIN_U32("graphics/battle_anims/sprites/orb.gbapal.lz");
const u32 gBattleAnimSpritePal_Sword[] = INCBIN_U32("graphics/battle_anims/sprites/sword.gbapal.lz");
const u32 gBattleAnimSpritePal_Seed[] = INCBIN_U32("graphics/battle_anims/sprites/seed.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Needle[] = INCBIN_U32("graphics/battle_anims/sprites/needle.4bpp.lz");
const u32 gBattleAnimSpritePal_Needle[] = INCBIN_U32("graphics/battle_anims/sprites/needle.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Explosion6[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_6.4bpp.lz");
const u32 gBattleAnimSpritePal_Explosion6[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_6.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PinkOrb[] = INCBIN_U32("graphics/battle_anims/sprites/pink_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_PinkOrb[] = INCBIN_U32("graphics/battle_anims/sprites/pink_orb.gbapal.lz");

const u32 gBattleAnimSpritePal_IceCube[] = INCBIN_U32("graphics/battle_anims/sprites/ice_cube.gbapal.lz");
const u32 gBattleAnimSpriteGfx_IceCube[] = INCBIN_U32("graphics/battle_anims/sprites/ice_cube.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Gust[] = INCBIN_U32("graphics/battle_anims/sprites/gust.4bpp.lz");
const u32 gBattleAnimSpritePal_Gust[] = INCBIN_U32("graphics/battle_anims/sprites/gust.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spark2[] = INCBIN_U32("graphics/battle_anims/sprites/spark_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Spark2[] = INCBIN_U32("graphics/battle_anims/sprites/spark_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Orange[] = INCBIN_U32("graphics/battle_anims/sprites/orange.4bpp.lz");
const u32 gBattleAnimSpritePal_Orange[] = INCBIN_U32("graphics/battle_anims/sprites/orange.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spikes[] = INCBIN_U32("graphics/battle_anims/sprites/spikes.4bpp.lz");
const u32 gBattleAnimSpritePal_Spikes[] = INCBIN_U32("graphics/battle_anims/sprites/spikes.gbapal.lz");

const u32 gBattleAnimSpriteGfx_YellowBall[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_ball.4bpp.lz");
const u32 gBattleAnimSpritePal_YellowBall[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_ball.gbapal.lz");

const u32 gBattleAnimSpriteGfx_TiedBag[] = INCBIN_U32("graphics/battle_anims/sprites/tied_bag.4bpp.lz");
const u32 gBattleAnimSpritePal_TiedBag[] = INCBIN_U32("graphics/battle_anims/sprites/tied_bag.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BlackSmoke[] = INCBIN_U32("graphics/battle_anims/sprites/black_smoke.4bpp.lz");
const u32 gBattleAnimSpritePal_BlackSmoke[] = INCBIN_U32("graphics/battle_anims/sprites/black_smoke.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BlackBall[] = INCBIN_U32("graphics/battle_anims/sprites/black_ball.4bpp.lz");

const u32 gUnknownGfx_C035B8[] = INCBIN_U32("graphics/unknown/unknown_C035B8.4bpp.lz");

const u32 gBattleAnimSpritePal_Glass[] = INCBIN_U32("graphics/battle_anims/sprites/glass.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Glass[] = INCBIN_U32("graphics/battle_anims/sprites/glass.4bpp.lz");

const u32 gBattleAnimSpriteGfx_HornHit[] = INCBIN_U32("graphics/battle_anims/sprites/horn_hit.4bpp.lz");
const u32 gBattleAnimSpritePal_HornHit[] = INCBIN_U32("graphics/battle_anims/sprites/horn_hit.gbapal.lz");

const u32 gBattleAnimSpritePal_BlueShards[] = INCBIN_U32("graphics/battle_anims/sprites/blue_shards.gbapal.lz");
const u32 gBattleAnimSpriteGfx_BlueShards[] = INCBIN_U32("graphics/battle_anims/sprites/blue_shards.4bpp.lz");

const u32 gUnused_BattleSpritePalette_023[] = INCBIN_U32("graphics/unused/battle_anim_023.gbapal.lz");

const u32 gUnusedGfx_MusicNotes[] = INCBIN_U32("graphics/unused/music_notes.4bpp.lz");

const u32 gBattleAnimSpritePal_Hit[] = INCBIN_U32("graphics/battle_anims/sprites/hit.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Hit[] = INCBIN_U32("graphics/battle_anims/sprites/hit.4bpp.lz");

const u32 gBattleAnimSpritePal_Hit2[] = INCBIN_U32("graphics/battle_anims/sprites/hit_2.gbapal.lz");

const u32 gBattleAnimSpritePal_WavingHand[] = INCBIN_U32("graphics/battle_anims/sprites/waving_hand.gbapal.lz");
const u32 gBattleAnimSpriteGfx_WavingHand[] = INCBIN_U32("graphics/battle_anims/sprites/waving_hand.4bpp.lz");

const u32 gBattleAnimSpriteGfx_ClosingEye[] = INCBIN_U32("graphics/battle_anims/sprites/closing_eye.4bpp.lz");
const u32 gBattleAnimSpritePal_ClosingEye[] = INCBIN_U32("graphics/battle_anims/sprites/closing_eye.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BlueStar[] = INCBIN_U32("graphics/battle_anims/sprites/blue_star.4bpp.lz");
const u32 gBattleAnimSpritePal_BlueStar[] = INCBIN_U32("graphics/battle_anims/sprites/blue_star.gbapal.lz");

const u32 gBattleAnimSpritePal_BubbleBurst[] = INCBIN_U32("graphics/battle_anims/sprites/bubble_burst.gbapal.lz");
const u32 gBattleAnimSpriteGfx_BubbleBurst[] = INCBIN_U32("graphics/battle_anims/sprites/bubble_burst.4bpp.lz");

const u32 gBattleAnimSpriteGfx_HitDuplicate[] = INCBIN_U32("graphics/battle_anims/sprites/hit_duplicate.4bpp.lz");
const u32 gBattleAnimSpritePal_HitDuplicate[] = INCBIN_U32("graphics/battle_anims/sprites/hit_duplicate.gbapal.lz");

const u32 gBattleAnimSpritePal_Leer[] = INCBIN_U32("graphics/battle_anims/sprites/leer.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Leer[] = INCBIN_U32("graphics/battle_anims/sprites/leer.4bpp.lz");

const u32 gBattleAnimSpritePal_BlueBurst[] = INCBIN_U32("graphics/battle_anims/sprites/blue_burst.gbapal.lz");
const u32 gBattleAnimSpriteGfx_BlueBurst[] = INCBIN_U32("graphics/battle_anims/sprites/blue_burst.4bpp.lz");

const u32 gBattleAnimSpriteGfx_SmallEmber[] = INCBIN_U32("graphics/battle_anims/sprites/small_ember.4bpp.lz");
const u32 gBattleAnimSpritePal_SmallEmber[] = INCBIN_U32("graphics/battle_anims/sprites/small_ember.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GraySmoke[] = INCBIN_U32("graphics/battle_anims/sprites/gray_smoke.4bpp.lz");
const u32 gBattleAnimSpritePal_GraySmoke[] = INCBIN_U32("graphics/battle_anims/sprites/gray_smoke.gbapal.lz");

const u32 gBattleAnimSpritePal_Fire[] = INCBIN_U32("graphics/battle_anims/sprites/fire.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Fire[] = INCBIN_U32("graphics/battle_anims/sprites/fire.4bpp.lz");

const u32 gBattleAnimSpriteGfx_SpinningFire[] = INCBIN_U32("graphics/battle_anims/sprites/spinning_fire.4bpp.lz");
const u32 gBattleAnimSpriteGfx_FirePlume[] = INCBIN_U32("graphics/battle_anims/sprites/fire_plume.4bpp.lz");

const u32 gBattleAnimSpritePal_Lightning2[] = INCBIN_U32("graphics/battle_anims/sprites/lightning_2.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Lightning2[] = INCBIN_U32("graphics/battle_anims/sprites/lightning_2.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Lightning[] = INCBIN_U32("graphics/battle_anims/sprites/lightning.4bpp.lz");

const u32 gUnknownGfx_C06D98[] = INCBIN_U32("graphics/unknown/unknown_C06D98.4bpp.lz");
const u32 gUnknownPal_C06D98[] = INCBIN_U32("graphics/unknown/unknown_C06D98.gbapal.lz");
const u32 gUnknownPal_C06D98_2[] = INCBIN_U32("graphics/unknown/unknown_C06D98_2.gbapal.lz");



const u32 gOldBattleInterfaceGfx[] = INCBIN_U32("graphics/unused/obi1.4bpp.lz");
const u32 gOldBattleInterfacePal_1_2_3[] = INCBIN_U32("graphics/unused/obi_palpak1.gbapal.lz");
const u32 gOldBattleInterfacePal4[] = INCBIN_U32("graphics/unused/old_pal4.gbapal.lz");
const u32 gOldBattleInterfacePal_5_6_7[] = INCBIN_U32("graphics/unused/obi_palpak3.gbapal.lz");
const u32 gOldBattleInterfaceGfx2[] = INCBIN_U32("graphics/unused/obi2.4bpp.lz");
const u32 gOldBattleInterfaceTilemap[] = INCBIN_U32("graphics/unused/old_battle_interface_tilemap.bin.lz");

const u32 gBattleAnimSpritePal_ClawSlash2[] = INCBIN_U32("graphics/battle_anims/sprites/claw_slash_2.gbapal.lz");
const u32 gBattleAnimSpritePal_ClawSlash[] = INCBIN_U32("graphics/battle_anims/sprites/claw_slash.gbapal.lz");

const u32 gBattleAnimSpriteGfx_ClawSlash2[] = INCBIN_U32("graphics/battle_anims/sprites/claw_slash_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_ClawSlash[] = INCBIN_U32("graphics/battle_anims/sprites/claw_slash.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Scratch3[] = INCBIN_U32("graphics/battle_anims/sprites/scratch_3.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Scratch2[] = INCBIN_U32("graphics/battle_anims/sprites/scratch_2.4bpp.lz");

const u32 gPartyMenuHpBar_Gfx[] = INCBIN_U32("graphics/interface/party_menu_hpbar.4bpp.lz");

const u32 gBattleAnimSpriteGfx_BubbleBurst2[] = INCBIN_U32("graphics/battle_anims/sprites/bubble_burst_2.4bpp.lz");

const u32 gBattleAnimSpritePal_BubbleBurst2[] = INCBIN_U32("graphics/battle_anims/sprites/bubble_burst_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_IceChunk[] = INCBIN_U32("graphics/battle_anims/sprites/ice_chunk.4bpp.lz");
const u32 gBattleAnimSpritePal_IceChunk[] = INCBIN_U32("graphics/battle_anims/sprites/ice_chunk.gbapal.lz");

const u32 gBattleAnimSpritePal_Glass2[] = INCBIN_U32("graphics/battle_anims/sprites/glass_2.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Glass2[] = INCBIN_U32("graphics/battle_anims/sprites/glass_2.4bpp.lz");

const u32 gBattleAnimSpritePal_PinkHeart2[] = INCBIN_U32("graphics/battle_anims/sprites/pink_heart_2.gbapal.lz");
const u32 gBattleAnimSpriteGfx_PinkHeart2[] = INCBIN_U32("graphics/battle_anims/sprites/pink_heart_2.4bpp.lz");

const u32 gUnknown_08C08F0C[] = INCBIN_U32("graphics/battle_interface/unused_window.4bpp.lz");
const u32 gUnknown_08C093C8[] = INCBIN_U32("graphics/battle_interface/unused_window.gbapal.lz");

const u32 gUnknown_08C093F0[] = INCBIN_U32("graphics/interface/hp_numbers.4bpp.lz");

const u32 gBattleAnimSpriteGfx_SapDrip[] = INCBIN_U32("graphics/battle_anims/sprites/sap_drip.4bpp.lz");
const u32 gBattleAnimSpritePal_SapDrip[] = INCBIN_U32("graphics/battle_anims/sprites/sap_drip.gbapal.lz");

const u32 gBattleAnimSpritePal_SapDrip2[] = INCBIN_U32("graphics/battle_anims/sprites/sap_drip_2.gbapal.lz");

const u32 gUnusedGfx_Window2[] = INCBIN_U32("graphics/battle_interface/unused_window2.4bpp.lz");
const u32 gUnusedGfx_Window2Bar[] = INCBIN_U32("graphics/battle_interface/unused_window2bar.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Sparkle1[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_1.4bpp.lz");
const u32 gBattleAnimSpritePal_Sparkle1[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_1.gbapal.lz");

const u32 gBattleAnimSpritePal_Sparkle2[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_2.gbapal.lz");
const u32 gBattleAnimSpritePal_HumanoidFoot[] = INCBIN_U32("graphics/battle_anims/sprites/humanoid_foot.gbapal.lz");

const u32 gBattleAnimSpriteGfx_HumanoidFoot[] = INCBIN_U32("graphics/battle_anims/sprites/humanoid_foot.4bpp.lz");
const u32 gBattleAnimSpriteGfx_MonsterFoot[] = INCBIN_U32("graphics/battle_anims/sprites/monster_foot.4bpp.lz");
const u32 gBattleAnimSpriteGfx_HumanoidHand[] = INCBIN_U32("graphics/battle_anims/sprites/humanoid_hand.4bpp.lz");

const u32 gUnusedGfx_LineSketch[] = INCBIN_U32("graphics/unused/line_sketch.4bpp.lz");
const u32 gUnusedPal_LineSketch[] = INCBIN_U32("graphics/unused/line_sketch.gbapal.lz");

const u32 gBattleAnimSpriteGfx_YellowUnk[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_unk.4bpp.lz");
const u32 gBattleAnimSpritePal_YellowUnk[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_unk.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SlamHit[] = INCBIN_U32("graphics/battle_anims/sprites/slam_hit.4bpp.lz");
const u32 gBattleAnimSpritePal_SlamHit[] = INCBIN_U32("graphics/battle_anims/sprites/slam_hit.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RedFist[] = INCBIN_U32("graphics/battle_anims/sprites/red_fist.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Ring[] = INCBIN_U32("graphics/battle_anims/sprites/ring.4bpp.lz");
const u32 gBattleAnimSpritePal_Ring[] = INCBIN_U32("graphics/battle_anims/sprites/ring.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Rocks[] = INCBIN_U32("graphics/battle_anims/sprites/rocks.4bpp.lz");
const u32 gBattleAnimSpritePal_Rocks[] = INCBIN_U32("graphics/battle_anims/sprites/rocks.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Z[] = INCBIN_U32("graphics/battle_anims/sprites/z.4bpp.lz");
const u32 gBattleAnimSpritePal_Z[] = INCBIN_U32("graphics/battle_anims/sprites/z.gbapal.lz");

const u32 gBattleAnimSpriteGfx_YellowUnk2[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_unk_2.4bpp.lz");
const u32 gBattleAnimSpritePal_YellowUnk2[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_unk_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_AirSlash[] = INCBIN_U32("graphics/battle_anims/sprites/air_slash.4bpp.lz");
const u32 gBattleAnimSpritePal_AirSlash[] = INCBIN_U32("graphics/battle_anims/sprites/air_slash.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SpinningGreenOrbs[] = INCBIN_U32("graphics/battle_anims/sprites/spinning_green_orbs.4bpp.lz");
const u32 gBattleAnimSpritePal_SpinningGreenOrbs[] = INCBIN_U32("graphics/battle_anims/sprites/spinning_green_orbs.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Leaf[] = INCBIN_U32("graphics/battle_anims/sprites/leaf.4bpp.lz");
const u32 gBattleAnimSpritePal_Leaf[] = INCBIN_U32("graphics/battle_anims/sprites/leaf.gbapal.lz");

const u32 gUnusedGfx_Metronome[] = INCBIN_U32("graphics/unused/metronome_hand_small.4bpp.lz");

const u32 gBattleAnimSpritePal_Clapping[] = INCBIN_U32("graphics/battle_anims/sprites/clapping.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PoisonPowder[] = INCBIN_U32("graphics/battle_anims/sprites/poison_powder.4bpp.lz");
const u32 gBattleAnimSpritePal_PoisonPowder[] = INCBIN_U32("graphics/battle_anims/sprites/poison_powder.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BrownTriangle[] = INCBIN_U32("graphics/battle_anims/sprites/brown_triangle.4bpp.lz");
const u32 gBattleAnimSpritePal_BrownTriangle[] = INCBIN_U32("graphics/battle_anims/sprites/brown_triangle.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Sparkle3[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_3.4bpp.lz");
const u32 gBattleAnimSpritePal_Sparkle3[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_3.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Sparkle4[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_4.4bpp.lz");

const u32 gBattleAnimSpriteGfx_MusicNotes[] = INCBIN_U32("graphics/battle_anims/sprites/music_notes.4bpp.lz");
const u32 gBattleAnimSpritePal_MusicNotes[] = INCBIN_U32("graphics/battle_anims/sprites/music_notes.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Duck[] = INCBIN_U32("graphics/battle_anims/sprites/duck.4bpp.lz");
const u32 gBattleAnimSpritePal_Duck[] = INCBIN_U32("graphics/battle_anims/sprites/duck.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Alert[] = INCBIN_U32("graphics/battle_anims/sprites/alert.4bpp.lz");
const u32 gBattleAnimSpritePal_Alert[] = INCBIN_U32("graphics/battle_anims/sprites/alert.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Shock4[] = INCBIN_U32("graphics/battle_anims/sprites/shock_4.4bpp.lz");
const u32 gBattleAnimSpritePal_Shock4[] = INCBIN_U32("graphics/battle_anims/sprites/shock_4.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Shock[] = INCBIN_U32("graphics/battle_anims/sprites/shock.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Bell2[] = INCBIN_U32("graphics/battle_anims/sprites/bell_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Bell2[] = INCBIN_U32("graphics/battle_anims/sprites/bell_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PinkGlove[] = INCBIN_U32("graphics/battle_anims/sprites/pink_glove.4bpp.lz");
const u32 gBattleAnimSpritePal_PinkGlove[] = INCBIN_U32("graphics/battle_anims/sprites/pink_glove.gbapal.lz");

const u16 gUnknown_C0CA1C[] = INCBIN_U16("graphics/unknown/unknown_C0CA1C.bin");
const u16 gUnknown_C0CA40[] = INCBIN_U16("graphics/unknown/unknown_C0CA40.bin");
const u16 gUnknown_C0CA64[] = INCBIN_U16("graphics/unknown/unknown_C0CA64.bin");
const u32 gUnusedGfx8bpp_LineSketch2[] = INCBIN_U32("graphics/unused/line_sketch_2.8bpp.lz");
const u16 gUnknown_C0CAE0[] = INCBIN_U16("graphics/unknown/unknown_C0CAE0.bin");
const u32 gUnusedTilemap_LineSketch2[] = INCBIN_U32("graphics/unused/line_sketch_2.bin.lz");

const u32 gBattleAnimSpriteGfx_BlueLines[] = INCBIN_U32("graphics/battle_anims/sprites/blue_lines.4bpp.lz");
const u32 gBattleAnimSpritePal_BlueLines[] = INCBIN_U32("graphics/battle_anims/sprites/blue_lines.gbapal.lz");

const u32 gBattleAnimSpritePal_Impact3[] = INCBIN_U32("graphics/battle_anims/sprites/impact_3.gbapal.lz");
const u32 gBattleAnimSpritePal_Impact2[] = INCBIN_U32("graphics/battle_anims/sprites/impact_2.gbapal.lz");
const u32 gBattleAnimSpritePal_Reticle[] = INCBIN_U32("graphics/battle_anims/sprites/reticle.gbapal.lz");
const u32 gBattleAnimSpritePal_Breath[] = INCBIN_U32("graphics/battle_anims/sprites/breath.gbapal.lz");
const u32 gBattleAnimSpritePal_Snowball[] = INCBIN_U32("graphics/battle_anims/sprites/snowball.gbapal.lz");
const u32 gBattleAnimSpritePal_Vine[] = INCBIN_U32("graphics/battle_anims/sprites/vine.gbapal.lz");
const u32 gBattleAnimSpritePal_Sword2[] = INCBIN_U32("graphics/battle_anims/sprites/sword_2.gbapal.lz");
const u32 gBattleAnimSpritePal_RedTube[] = INCBIN_U32("graphics/battle_anims/sprites/red_tube.gbapal.lz");
const u32 gBattleAnimSpritePal_Amnesia[] = INCBIN_U32("graphics/battle_anims/sprites/amnesia.gbapal.lz");
const u32 gBattleAnimSpritePal_String2[] = INCBIN_U32("graphics/battle_anims/sprites/string_2.gbapal.lz");

const u32 gUnknown_D0D2B4[] = INCBIN_U32("graphics/unknown/unknown_D0D2B4.bin.lz");

const u32 gBattleAnimSpritePal_Pencil2[] = INCBIN_U32("graphics/battle_anims/sprites/pencil_2.gbapal.lz");
const u32 gBattleAnimSpritePal_Petal[] = INCBIN_U32("graphics/battle_anims/sprites/petal.gbapal.lz");
const u32 gBattleAnimSpritePal_BentSpoon[] = INCBIN_U32("graphics/battle_anims/sprites/bent_spoon.gbapal.lz");
const u32 gBattleAnimSpritePal_Coin[] = INCBIN_U32("graphics/battle_anims/sprites/coin.gbapal.lz");
const u32 gBattleAnimSpritePal_CrackedEgg[] = INCBIN_U32("graphics/battle_anims/sprites/cracked_egg.gbapal.lz");
const u32 gBattleAnimSpritePal_FreshEgg[] = INCBIN_U32("graphics/battle_anims/sprites/fresh_egg.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Impact3[] = INCBIN_U32("graphics/battle_anims/sprites/impact_3.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Impact2[] = INCBIN_U32("graphics/battle_anims/sprites/impact_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Reticle[] = INCBIN_U32("graphics/battle_anims/sprites/reticle.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Breath[] = INCBIN_U32("graphics/battle_anims/sprites/breath.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Snowball[] = INCBIN_U32("graphics/battle_anims/sprites/snowball.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Vine[] = INCBIN_U32("graphics/battle_anims/sprites/vine.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Sword2[] = INCBIN_U32("graphics/battle_anims/sprites/sword_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Clapping[] = INCBIN_U32("graphics/battle_anims/sprites/clapping.4bpp.lz");
const u32 gBattleAnimSpriteGfx_RedTube[] = INCBIN_U32("graphics/battle_anims/sprites/red_tube.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Amnesia[] = INCBIN_U32("graphics/battle_anims/sprites/amnesia.4bpp.lz");
const u32 gBattleAnimSpriteGfx_String2[] = INCBIN_U32("graphics/battle_anims/sprites/string_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Pencil2[] = INCBIN_U32("graphics/battle_anims/sprites/pencil_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Petal[] = INCBIN_U32("graphics/battle_anims/sprites/petal.4bpp.lz");
const u32 gBattleAnimSpriteGfx_BentSpoon[] = INCBIN_U32("graphics/battle_anims/sprites/bent_spoon.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Web[] = INCBIN_U32("graphics/battle_anims/sprites/web.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Coin[] = INCBIN_U32("graphics/battle_anims/sprites/coin.4bpp.lz");
const u32 gBattleAnimSpriteGfx_CrackedEgg[] = INCBIN_U32("graphics/battle_anims/sprites/cracked_egg.4bpp.lz");
const u32 gBattleAnimSpriteGfx_HatchedEgg[] = INCBIN_U32("graphics/battle_anims/sprites/hatched_egg.4bpp.lz");
const u32 gBattleAnimSpriteGfx_FreshEgg[] = INCBIN_U32("graphics/battle_anims/sprites/fresh_egg.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Fangs[] = INCBIN_U32("graphics/battle_anims/sprites/fangs.4bpp.lz");
const u32 gBattleAnimSpritePal_Fangs[] = INCBIN_U32("graphics/battle_anims/sprites/fangs.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Explosion2[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Explosion2[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Explosion3[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_3.4bpp.lz");

const u32 gBattleAnimSpriteGfx_WaterDroplet[] = INCBIN_U32("graphics/battle_anims/sprites/water_droplet.4bpp.lz");
const u32 gBattleAnimSpritePal_WaterDroplet[] = INCBIN_U32("graphics/battle_anims/sprites/water_droplet.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WaterDroplet2[] = INCBIN_U32("graphics/battle_anims/sprites/water_droplet_2.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Seed2[] = INCBIN_U32("graphics/battle_anims/sprites/seed_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Seed2[] = INCBIN_U32("graphics/battle_anims/sprites/seed_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Sprout[] = INCBIN_U32("graphics/battle_anims/sprites/sprout.4bpp.lz");

const u32 gBattleAnimSpriteGfx_RedWand[] = INCBIN_U32("graphics/battle_anims/sprites/red_wand.4bpp.lz");
const u32 gBattleAnimSpritePal_RedWand[] = INCBIN_U32("graphics/battle_anims/sprites/red_wand.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PurpleGreenUnk[] = INCBIN_U32("graphics/battle_anims/sprites/purple_green_unk.4bpp.lz");
const u32 gBattleAnimSpritePal_PurpleGreenUnk[] = INCBIN_U32("graphics/battle_anims/sprites/purple_green_unk.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WaterColumn[] = INCBIN_U32("graphics/battle_anims/sprites/water_column.4bpp.lz");
const u32 gBattleAnimSpritePal_WaterColumn[] = INCBIN_U32("graphics/battle_anims/sprites/water_column.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MudUnk[] = INCBIN_U32("graphics/battle_anims/sprites/mud_unk.4bpp.lz");
const u32 gBattleAnimSpritePal_MudUnk[] = INCBIN_U32("graphics/battle_anims/sprites/mud_unk.gbapal.lz");

const u32 gUnusedTilemap_BlueFrame[] = INCBIN_U32("graphics/unused/blue_frame.bin.lz");
const u32 gUnusedTilemap_RedYellowGreenFrame[] = INCBIN_U32("graphics/unused/redyellowgreen_frame.bin.lz");
const u32 gUnusedGfx_ColorFrames[] = INCBIN_U32("graphics/unused/color_frames.4bpp.lz");
const u32 gUnusedPal_ColorFrames[] = INCBIN_U32("graphics/unused/color_frames.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RainDrops[] = INCBIN_U32("graphics/battle_anims/sprites/rain_drops.4bpp.lz");

const u32 gUnusedGfx8bpp_WaterSplash [] = INCBIN_U32("graphics/unused/water_splash.8bpp.lz");
const u32 gUnusedTilemap_WaterSplash[] = INCBIN_U32("graphics/unused/water_splash.bin.lz");
const u32 gUnusedPalette_WaterSplash[] = INCBIN_U32("graphics/unused/water_splash.gbapal.lz");

const u32 gUnusedGfx_BasicFrame[] = INCBIN_U32("graphics/unused/basic_frame.4bpp.lz");
const u32 gUnusedPal_BasicFrame[] = INCBIN_U32("graphics/unused/basic_frame.gbapal.lz");
const u32 gUnusedTilemap_BasicFrame[] = INCBIN_U32("graphics/unused/basic_frame.bin.lz");



const u16 gBattleInterface_BallStatusBarPal[] = INCBIN_U16("graphics/battle_interface/ball_status_bar.gbapal");

const u16 gBattleInterface_BallDisplayPal[] = INCBIN_U16("graphics/battle_interface/ball_display.gbapal");


const u8 gHealthboxElementsGfxTable[] = INCBIN_U8("graphics/battle_interface/hpbar.4bpp",
                                                  "graphics/battle_interface/expbar.4bpp",
                                                  "graphics/battle_interface/status_psn.4bpp",
                                                  "graphics/battle_interface/status_par.4bpp",
                                                  "graphics/battle_interface/status_slp.4bpp",
                                                  "graphics/battle_interface/status_frz.4bpp",
                                                  "graphics/battle_interface/status_brn.4bpp",
                                                  "graphics/battle_interface/misc.4bpp",
                                                  "graphics/battle_interface/hpbar_anim.4bpp",
                                                  "graphics/battle_interface/misc_frameend.4bpp");

const u8 gBattleInterface_BallDisplayGfx[] = INCBIN_U8("graphics/battle_interface/ball_display.4bpp");


const u8 gUnknown_08C1249C[] = INCBIN_U8("graphics/battle_interface/ball_display_unused_extra.4bpp");
const u8 gBattleInterfaceGfx_Status2[] = INCBIN_U8("graphics/battle_interface/status2.4bpp");
const u8 gBattleInterfaceGfx_Status3[] = INCBIN_U8("graphics/battle_interface/status3.4bpp");
const u8 gBattleInterfaceGfx_Status4[] = INCBIN_U8("graphics/battle_interface/status4.4bpp");
const u8 gUnknown_D12FEC[] = INCBIN_U8("graphics/unknown/unknown_D12FEC.4bpp");
const u8 gUnknown_D1300C[] = INCBIN_U8("graphics/unknown/unknown_D1300C.4bpp");
const u32 gBattleInterfaceGfx_UnusedWindow3[] = INCBIN_U32("graphics/battle_interface/unused_window3.4bpp.lz");
const u32 gBattleInterfaceGfx_UnusedWindow4[] = INCBIN_U32("graphics/battle_interface/unused_window4.4bpp.lz");

const u32 gBattleAnimSpriteGfx_FurySwipes[] = INCBIN_U32("graphics/battle_anims/sprites/fury_swipes.4bpp.lz");
const u32 gBattleAnimSpritePal_FurySwipes[] = INCBIN_U32("graphics/battle_anims/sprites/fury_swipes.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Vine2[] = INCBIN_U32("graphics/battle_anims/sprites/vine_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Vine2[] = INCBIN_U32("graphics/battle_anims/sprites/vine_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Teeth[] = INCBIN_U32("graphics/battle_anims/sprites/teeth.4bpp.lz");
const u32 gBattleAnimSpritePal_Teeth[] = INCBIN_U32("graphics/battle_anims/sprites/teeth.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Bone2[] = INCBIN_U32("graphics/battle_anims/sprites/bone_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Bone2[] = INCBIN_U32("graphics/battle_anims/sprites/bone_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WhiteBag[] = INCBIN_U32("graphics/battle_anims/sprites/white_bag.4bpp.lz");
const u32 gBattleAnimSpritePal_WhiteBag[] = INCBIN_U32("graphics/battle_anims/sprites/white_bag.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Unknown[] = INCBIN_U32("graphics/battle_anims/sprites/unknown.4bpp.lz");
const u32 gBattleAnimSpritePal_Unknown[] = INCBIN_U32("graphics/battle_anims/sprites/unknown.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PurpleCoral[] = INCBIN_U32("graphics/battle_anims/sprites/purple_coral.4bpp.lz");
const u32 gBattleAnimSpritePal_PurpleCoral[] = INCBIN_U32("graphics/battle_anims/sprites/purple_coral.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PurpleDroplet[] = INCBIN_U32("graphics/battle_anims/sprites/purple_droplet.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Shock2[] = INCBIN_U32("graphics/battle_anims/sprites/shock_2.4bpp.lz");
const u32 gBattleAnimSpritePal_Shock2[] = INCBIN_U32("graphics/battle_anims/sprites/shock_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_ClosingEye2[] = INCBIN_U32("graphics/battle_anims/sprites/closing_eye_2.4bpp.lz");
const u32 gBattleAnimSpritePal_ClosingEye2[] = INCBIN_U32("graphics/battle_anims/sprites/closing_eye_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MetalBall[] = INCBIN_U32("graphics/battle_anims/sprites/metal_ball.4bpp.lz");
const u32 gBattleAnimSpritePal_MetalBall[] = INCBIN_U32("graphics/battle_anims/sprites/metal_ball.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MonsterDoll[] = INCBIN_U32("graphics/battle_anims/sprites/monster_doll.4bpp.lz");
const u32 gBattleAnimSpritePal_MonsterDoll[] = INCBIN_U32("graphics/battle_anims/sprites/monster_doll.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Whirlwind[] = INCBIN_U32("graphics/battle_anims/sprites/whirlwind.4bpp.lz");
const u32 gBattleAnimSpritePal_Whirlwind[] = INCBIN_U32("graphics/battle_anims/sprites/whirlwind.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Whirlwind2[] = INCBIN_U32("graphics/battle_anims/sprites/whirlwind_2.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Explosion4[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_4.4bpp.lz");
const u32 gBattleAnimSpritePal_Explosion4[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_4.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Explosion5[] = INCBIN_U32("graphics/battle_anims/sprites/explosion_5.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Tongue[] = INCBIN_U32("graphics/battle_anims/sprites/tongue.4bpp.lz");
const u32 gBattleAnimSpritePal_Tongue[] = INCBIN_U32("graphics/battle_anims/sprites/tongue.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Smoke[] = INCBIN_U32("graphics/battle_anims/sprites/smoke.4bpp.lz");
const u32 gBattleAnimSpritePal_Smoke[] = INCBIN_U32("graphics/battle_anims/sprites/smoke.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Smoke2[] = INCBIN_U32("graphics/battle_anims/sprites/smoke_2.4bpp.lz");

const u32 gBattleAnimSpriteGfx_BlueFlames[] = INCBIN_U32("graphics/battle_anims/sprites/blue_flames.4bpp.lz");
const u32 gBattleAnimSpritePal_BlueFlames[] = INCBIN_U32("graphics/battle_anims/sprites/blue_flames.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BlueFlames2[] = INCBIN_U32("graphics/battle_anims/sprites/blue_flames_2.4bpp.lz");



const u32 gUnusedGfx_OldContest[] = INCBIN_U32("graphics/unused/old_contest.4bpp.lz");
const u32 gUnusedPal_OldContest[] = INCBIN_U32("graphics/unused/old_contest.gbapal.lz");
const u32 gUnusedTilemap_OldContest[] = INCBIN_U32("graphics/unused/old_contest.bin.lz");

const u32 gUnknownTilemap_C15BC0[] = INCBIN_U32("graphics/unknown/unknown_C15BC0.bin.lz");

const u32 gUnusedGfx_OldContest2[] = INCBIN_U32("graphics/unused/old_contest_2.4bpp.lz");
const u32 gOldContestPalette[] = INCBIN_U32("graphics/unused/old_contest_2.gbapal.lz");
const u32 gOldContestGfx[] = INCBIN_U32("graphics/unused/old_contest_2.bin.lz");

const u32 gUnknown_08C17170[] = INCBIN_U32("graphics/unknown/unknown_C17170.bin.lz");

const u32 gUnknown_08C17410[] = INCBIN_U32("graphics/unknown/unknown_C17410.bin.lz");

const u32 gUnknown_08C1751C[] = INCBIN_U32("graphics/unknown/unknown_C1751C.bin.lz");

const u32 gUnknown_08C17980[] = INCBIN_U32("graphics/unknown/unknown_C17980.bin.lz");

const u32 gContestMiscGfx[] = INCBIN_U32("graphics/contest/misc.4bpp.lz");

const u32 gContestAudienceGfx[] = INCBIN_U32("graphics/contest/audience.4bpp.lz");

const u32 gUnknown_08C19168[] = INCBIN_U32("graphics/contest/faces.4bpp.lz");

const u32 gContestJudgeSymbolsGfx[] = INCBIN_U32("graphics/contest/judge_symbols.4bpp.lz");
const u32 gContest3Pal[] = INCBIN_U32("graphics/contest/judge_symbols.gbapal.lz");

const u8 gTiles_8C19450[] = INCBIN_U8("graphics/contest/heart.4bpp");

const u32 gUnknownGfx_C19470[] = INCBIN_U32("graphics/unknown/unknown_C19470.4bpp.lz");
const u32 gUnknownPal_C19470[] = INCBIN_U32("graphics/unknown/unknown_C19470.gbapal.lz");

const u32 gUnknown_08C19588[] = INCBIN_U32("graphics/contest/misc_2.4bpp.lz");

const u32 gUnknown_08C19EEC[] = INCBIN_U32("graphics/contest/misc_2_tilemap_1.bin.lz");
const u32 gUnknown_08C1A000[] = INCBIN_U32("graphics/contest/misc_2_tilemap_2.bin.lz");
const u32 gUnknown_08C1A12C[] = INCBIN_U32("graphics/contest/misc_2_tilemap_3.bin.lz");

const u32 gUnknown_08C1A2B4[] = INCBIN_U32("graphics/contest/misc_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Impact[] = INCBIN_U32("graphics/battle_anims/sprites/impact.4bpp.lz");
const u32 gBattleAnimSpritePal_Impact[] = INCBIN_U32("graphics/battle_anims/sprites/impact.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Particles[] = INCBIN_U32("graphics/battle_anims/sprites/particles.4bpp.lz");

const u32 gBattleAnimSpriteGfx_CircleImpact[] = INCBIN_U32("graphics/battle_anims/sprites/circle_impact.4bpp.lz");
const u32 gBattleAnimSpritePal_CircleImpact[] = INCBIN_U32("graphics/battle_anims/sprites/circle_impact.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Scratch[] = INCBIN_U32("graphics/battle_anims/sprites/scratch.4bpp.lz");

const u32 gBattleAnimSpriteGfx_SharpTeeth[] = INCBIN_U32("graphics/battle_anims/sprites/sharp_teeth.4bpp.lz");
const u32 gBattleAnimSpritePal_SharpTeeth[] = INCBIN_U32("graphics/battle_anims/sprites/sharp_teeth.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Clamp[] = INCBIN_U32("graphics/battle_anims/sprites/clamp.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Cut[] = INCBIN_U32("graphics/battle_anims/sprites/cut.4bpp.lz");

const u32 gBattleAnimSpriteGfx_RainbowRings[] = INCBIN_U32("graphics/battle_anims/sprites/rainbow_rings.4bpp.lz");
const u32 gBattleAnimSpritePal_RainbowRings[] = INCBIN_U32("graphics/battle_anims/sprites/rainbow_rings.gbapal.lz");

const u32 gBattleAnimSpriteGfx_IceCrystals[] = INCBIN_U32("graphics/battle_anims/sprites/ice_crystals.4bpp.lz");
const u32 gBattleAnimSpritePal_IceCrystals[] = INCBIN_U32("graphics/battle_anims/sprites/ice_crystals.gbapal.lz");

const u32 gBattleAnimSpriteGfx_IceSpikes[] = INCBIN_U32("graphics/battle_anims/sprites/ice_spikes.4bpp.lz");

const u32 gUnusedGfx_OldBeatUp[] = INCBIN_U32("graphics/unused/old_beatup.4bpp.lz");
const u32 gUnusedPal_OldBeatUp[] = INCBIN_U32("graphics/unused/old_beatup.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Orbs[] = INCBIN_U32("graphics/battle_anims/sprites/orbs.4bpp.lz");
const u32 gBattleAnimSpritePal_Orbs[] = INCBIN_U32("graphics/battle_anims/sprites/orbs.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WaterOrb[] = INCBIN_U32("graphics/battle_anims/sprites/water_orb.4bpp.lz");

const u32 gBattleAnimSpriteGfx_WaterImpact[] = INCBIN_U32("graphics/battle_anims/sprites/water_impact.4bpp.lz");
const u32 gBattleAnimSpritePal_WaterImpact[] = INCBIN_U32("graphics/battle_anims/sprites/water_impact.gbapal.lz");

const u32 gBattleAnimSpritePal_BrownOrb[] = INCBIN_U32("graphics/battle_anims/sprites/brown_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MudSand[] = INCBIN_U32("graphics/battle_anims/sprites/mud_sand.4bpp.lz");
const u32 gBattleAnimSpritePal_MudSand[] = INCBIN_U32("graphics/battle_anims/sprites/mud_sand.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PoisonBubble[] = INCBIN_U32("graphics/battle_anims/sprites/poison_bubble.4bpp.lz");
const u32 gBattleAnimSpritePal_PoisonBubble[] = INCBIN_U32("graphics/battle_anims/sprites/poison_bubble.gbapal.lz");

const u32 gBattleAnimSpriteGfx_ToxicBubble[] = INCBIN_U32("graphics/battle_anims/sprites/toxic_bubble.4bpp.lz");

const u32 gBattleAnimSpriteGfx_HornHit2[] = INCBIN_U32("graphics/battle_anims/sprites/horn_hit_2.4bpp.lz");
const u32 gBattleAnimSpritePal_HornHit2[] = INCBIN_U32("graphics/battle_anims/sprites/horn_hit_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_AirWave2[] = INCBIN_U32("graphics/battle_anims/sprites/air_wave_2.4bpp.lz");
const u32 gBattleAnimSpritePal_AirWave2[] = INCBIN_U32("graphics/battle_anims/sprites/air_wave_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SmallBubbles[] = INCBIN_U32("graphics/battle_anims/sprites/small_bubbles.4bpp.lz");
const u32 gBattleAnimSpritePal_SmallBubbles[] = INCBIN_U32("graphics/battle_anims/sprites/small_bubbles.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RoundShadow[] = INCBIN_U32("graphics/battle_anims/sprites/round_shadow.4bpp.lz");
const u32 gBattleAnimSpritePal_RoundShadow[] = INCBIN_U32("graphics/battle_anims/sprites/round_shadow.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Sunlight[] = INCBIN_U32("graphics/battle_anims/sprites/sunlight.4bpp.lz");
const u32 gBattleAnimSpritePal_Sunlight[] = INCBIN_U32("graphics/battle_anims/sprites/sunlight.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spore[] = INCBIN_U32("graphics/battle_anims/sprites/spore.4bpp.lz");

const u32 gBattleAnimSpritePal_Spore[] = INCBIN_U32("graphics/battle_anims/sprites/spore.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Flower[] = INCBIN_U32("graphics/battle_anims/sprites/flower.4bpp.lz");
const u32 gBattleAnimSpritePal_Flower[] = INCBIN_U32("graphics/battle_anims/sprites/flower.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RazorLeaf[] = INCBIN_U32("graphics/battle_anims/sprites/razor_leaf.4bpp.lz");
const u32 gBattleAnimSpritePal_RazorLeaf[] = INCBIN_U32("graphics/battle_anims/sprites/razor_leaf.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MistCloud[] = INCBIN_U32("graphics/battle_anims/sprites/mist_cloud.4bpp.lz");
const u32 gBattleAnimSpritePal_MistCloud[] = INCBIN_U32("graphics/battle_anims/sprites/mist_cloud.gbapal.lz");

const u32 gUnknownGfx_D1C060[] = INCBIN_U32("graphics/unknown/unknown_D1C060.4bpp.lz");
const u32 gUnknownPal_D1C060[] = INCBIN_U32("graphics/unknown/unknown_D1C060.gbapal.lz");
const u32 gUnknownTilemap_D1C060[] = INCBIN_U32("graphics/unknown/unknown_D1C060.bin.lz");

const u32 gBattleAnimSpriteGfx_WhirlwindLines[] = INCBIN_U32("graphics/battle_anims/sprites/whirlwind_lines.4bpp.lz");
const u32 gBattleAnimSpritePal_WhirlwindLines[] = INCBIN_U32("graphics/battle_anims/sprites/whirlwind_lines.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GoldRing[] = INCBIN_U32("graphics/battle_anims/sprites/gold_ring.4bpp.lz");
const u32 gBattleAnimSpritePal_GoldRing[] = INCBIN_U32("graphics/battle_anims/sprites/gold_ring.gbapal.lz");

const u32 gBattleAnimSpritePal_BlueRing2[] = INCBIN_U32("graphics/battle_anims/sprites/blue_ring_2.gbapal.lz");
const u32 gBattleAnimSpritePal_PurpleRing[] = INCBIN_U32("graphics/battle_anims/sprites/purple_ring.gbapal.lz");
const u32 gBattleAnimSpritePal_BlueRing[] = INCBIN_U32("graphics/battle_anims/sprites/blue_ring.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GreenLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/green_light_wall.4bpp.lz");
const u32 gBattleAnimSpritePal_GreenLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/green_light_wall.gbapal.lz");

const u32 gBattleAnimSpritePal_BlueLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/blue_light_wall.gbapal.lz");
const u32 gBattleAnimSpritePal_RedLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/red_light_wall.gbapal.lz");
const u32 gBattleAnimSpritePal_GrayLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/gray_light_wall.gbapal.lz");
const u32 gBattleAnimSpritePal_OrangeLightWall[] = INCBIN_U32("graphics/battle_anims/sprites/orange_light_wall.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BlackBall2[] = INCBIN_U32("graphics/battle_anims/sprites/black_ball_2.4bpp.lz");
const u32 gBattleAnimSpritePal_BlackBall2[] = INCBIN_U32("graphics/battle_anims/sprites/black_ball_2.gbapal.lz");

const u32 gBattleAnimSpritePal_PurpleGasCloud[] = INCBIN_U32("graphics/battle_anims/sprites/purple_gas_cloud.gbapal.lz");

const u32 gContestJudgeGfx[] = INCBIN_U32("graphics/contest/judge.4bpp.lz");
const u32 gContest2Pal[] = INCBIN_U32("graphics/contest/judge.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spark[] = INCBIN_U32("graphics/battle_anims/sprites/spark.4bpp.lz");
const u32 gBattleAnimSpritePal_Spark[] = INCBIN_U32("graphics/battle_anims/sprites/spark.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SparkH[] = INCBIN_U32("graphics/battle_anims/sprites/spark_h.4bpp.lz");

const u32 gBattleAnimBgImage_Dark[] = INCBIN_U32("graphics/battle_anims/backgrounds/dark.4bpp.lz");
const u32 gBattleAnimBgPalette_Dark[] = INCBIN_U32("graphics/battle_anims/backgrounds/dark.gbapal.lz");
const u32 gBattleAnimBgTilemap_Dark[] = INCBIN_U32("graphics/battle_anims/backgrounds/dark.bin.lz");

const u32 gMetalShineGfx[] = INCBIN_U32("graphics/battle_anims/masks/metal_shine.4bpp.lz");
const u32 gMetalShinePalette[] = INCBIN_U32("graphics/battle_anims/masks/metal_shine.gbapal.lz");
const u32 gMetalShineTilemap[] = INCBIN_U32("graphics/battle_anims/masks/metal_shine.bin.lz");

const u32 gUnusedGfx_Goosuto[] = INCBIN_U32("graphics/unused/goosuto.4bpp.lz");
const u32 gUnusedPal_Goosuto[] = INCBIN_U32("graphics/unused/goosuto.gbapal.lz");
const u32 gUnusedTilemap_Goosuto[] = INCBIN_U32("graphics/unused/goosuto.bin.lz");

const u32 gBattleAnimSpriteGfx_YellowStar[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_star.4bpp.lz");
const u32 gBattleAnimSpritePal_YellowStar[] = INCBIN_U32("graphics/battle_anims/sprites/yellow_star.gbapal.lz");

const u32 gBattleAnimSpriteGfx_LargeFreshEgg[] = INCBIN_U32("graphics/battle_anims/sprites/large_fresh_egg.4bpp.lz");
const u32 gBattleAnimSpritePal_LargeFreshEgg[] = INCBIN_U32("graphics/battle_anims/sprites/large_fresh_egg.gbapal.lz");

const u32 gBattleAnimSpriteGfx_ShadowBall[] = INCBIN_U32("graphics/battle_anims/sprites/shadow_ball.4bpp.lz");
const u32 gBattleAnimSpritePal_ShadowBall[] = INCBIN_U32("graphics/battle_anims/sprites/shadow_ball.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Lick[] = INCBIN_U32("graphics/battle_anims/sprites/lick.4bpp.lz");
const u32 gBattleAnimSpritePal_Lick[] = INCBIN_U32("graphics/battle_anims/sprites/lick.gbapal.lz");

const u32 gBattleAnimSpriteGfx_VoidLines[] = INCBIN_U32("graphics/battle_anims/sprites/void_lines.4bpp.lz");
const u32 gBattleAnimSpritePal_VoidLines[] = INCBIN_U32("graphics/battle_anims/sprites/void_lines.gbapal.lz");

const u32 gBattleAnimSpritePal_String[] = INCBIN_U32("graphics/battle_anims/sprites/string.gbapal.lz");
const u32 gBattleAnimSpriteGfx_String[] = INCBIN_U32("graphics/battle_anims/sprites/string.4bpp.lz");

const u32 gBattleAnimSpriteGfx_WebThread[] = INCBIN_U32("graphics/battle_anims/sprites/web_thread.4bpp.lz");
const u32 gBattleAnimSpriteGfx_SpiderWeb[] = INCBIN_U32("graphics/battle_anims/sprites/spider_web.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Lightbulb[] = INCBIN_U32("graphics/battle_anims/sprites/lightbulb.4bpp.lz");
const u32 gBattleAnimSpritePal_Lightbulb[] = INCBIN_U32("graphics/battle_anims/sprites/lightbulb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Slash[] = INCBIN_U32("graphics/battle_anims/sprites/slash.4bpp.lz");
const u32 gBattleAnimSpritePal_Slash[] = INCBIN_U32("graphics/battle_anims/sprites/slash.gbapal.lz");

const u32 gBattleAnimSpriteGfx_FocusEnergy[] = INCBIN_U32("graphics/battle_anims/sprites/focus_energy.4bpp.lz");
const u32 gBattleAnimSpritePal_FocusEnergy[] = INCBIN_U32("graphics/battle_anims/sprites/focus_energy.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SphereToCube[] = INCBIN_U32("graphics/battle_anims/sprites/sphere_to_cube.4bpp.lz");
const u32 gBattleAnimSpritePal_SphereToCube[] = INCBIN_U32("graphics/battle_anims/sprites/sphere_to_cube.gbapal.lz");

const u32 gBattleAnimBgImage_Psychic[] = INCBIN_U32("graphics/battle_anims/backgrounds/psychic.4bpp.lz");
const u32 gBattleAnimBgPalette_Psychic[] = INCBIN_U32("graphics/battle_anims/backgrounds/psychic.gbapal.lz");
const u32 gBattleAnimBgTilemap_Psychic[] = INCBIN_U32("graphics/battle_anims/backgrounds/psychic.bin.lz");

const u32 gBattleAnimSpriteGfx_Eye[] = INCBIN_U32("graphics/battle_anims/sprites/eye.4bpp.lz");
const u32 gBattleAnimSpritePal_Eye[] = INCBIN_U32("graphics/battle_anims/sprites/eye.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Tendrils[] = INCBIN_U32("graphics/battle_anims/sprites/tendrils.4bpp.lz");
const u32 gBattleAnimSpritePal_Tendrils[] = INCBIN_U32("graphics/battle_anims/sprites/tendrils.gbapal.lz");

const u32 gHealthboxSinglesPlayerGfx[] = INCBIN_U32("graphics/battle_interface/healthbox_singles_player.4bpp.lz");
const u32 gHealthboxSinglesOpponentGfx[] = INCBIN_U32("graphics/battle_interface/healthbox_singles_opponent.4bpp.lz");
const u32 gHealthboxDoublesPlayerGfx[] = INCBIN_U32( "graphics/battle_interface/healthbox_doubles_player.4bpp.lz");
const u32 gHealthboxDoublesOpponentGfx[] = INCBIN_U32("graphics/battle_interface/healthbox_doubles_opponent.4bpp.lz");
const u32 gHealthboxSafariGfx[] = INCBIN_U32("graphics/battle_interface/healthbox_safari.4bpp.lz");

const u32 gUnusedGfx_Shadow[] = INCBIN_U32("graphics/unused/shadow.4bpp.lz");
const u32 gUnusedPal_Shadow[] = INCBIN_U32("graphics/unused/shadow.gbapal.lz");

const u32 gBattleAnimSpriteGfx_LockOn[] = INCBIN_U32("graphics/battle_anims/sprites/lock_on.4bpp.lz");
const u32 gBattleAnimSpritePal_LockOn[] = INCBIN_U32("graphics/battle_anims/sprites/lock_on.gbapal.lz");

const u32 gBattleAnimSpriteGfx_OpeningEye[] = INCBIN_U32("graphics/battle_anims/sprites/opening_eye.4bpp.lz");
const u32 gBattleAnimSpritePal_OpeningEye[] = INCBIN_U32("graphics/battle_anims/sprites/opening_eye.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RoundWhiteHalo[] = INCBIN_U32("graphics/battle_anims/sprites/round_white_halo.4bpp.lz");
const u32 gBattleAnimSpritePal_RoundWhiteHalo[] = INCBIN_U32("graphics/battle_anims/sprites/round_white_halo.gbapal.lz");

const u32 gBattleAnimSpriteGfx_TealAlert[] = INCBIN_U32("graphics/battle_anims/sprites/teal_alert.4bpp.lz");
const u32 gBattleAnimSpritePal_TealAlert[] = INCBIN_U32("graphics/battle_anims/sprites/teal_alert.gbapal.lz");

const u32 gBattleAnimSpriteGfx_FangAttack[] = INCBIN_U32("graphics/battle_anims/sprites/fang_attack.4bpp.lz");
const u32 gBattleAnimSpritePal_FangAttack[] = INCBIN_U32("graphics/battle_anims/sprites/fang_attack.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PurpleHandOutline[] = INCBIN_U32("graphics/battle_anims/sprites/purple_hand_outline.4bpp.lz");
const u32 gBattleAnimSpritePal_PurpleHandOutline[] = INCBIN_U32("graphics/battle_anims/sprites/purple_hand_outline.gbapal.lz");

const u32 gUnknown_08C20668[] = INCBIN_U32("graphics/battle_anims/masks/curse.4bpp.lz");
const u32 gUnknown_08C20684[] = INCBIN_U32("graphics/battle_anims/masks/curse.bin.lz");

const u32 gBattleAnimSpriteGfx_Pencil[] = INCBIN_U32("graphics/battle_anims/sprites/pencil.4bpp.lz");
const u32 gBattleAnimSpritePal_Pencil[] = INCBIN_U32("graphics/battle_anims/sprites/pencil.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spiral[] = INCBIN_U32("graphics/battle_anims/sprites/spiral.4bpp.lz");
const u32 gBattleAnimSpritePal_Spiral[] = INCBIN_U32("graphics/battle_anims/sprites/spiral.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Moon[] = INCBIN_U32("graphics/battle_anims/sprites/moon.4bpp.lz");
const u32 gBattleAnimSpritePal_Moon[] = INCBIN_U32("graphics/battle_anims/sprites/moon.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GreenSparkle[] = INCBIN_U32("graphics/battle_anims/sprites/green_sparkle.4bpp.lz");
const u32 gBattleAnimSpritePal_GreenSparkle[] = INCBIN_U32("graphics/battle_anims/sprites/green_sparkle.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SnoreZ[] = INCBIN_U32("graphics/battle_anims/sprites/snore_z.4bpp.lz");
const u32 gBattleAnimSpritePal_SnoreZ[] = INCBIN_U32("graphics/battle_anims/sprites/snore_z.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Explosion[] = INCBIN_U32("graphics/battle_anims/sprites/explosion.4bpp.lz");
const u32 gBattleAnimSpritePal_Explosion[] = INCBIN_U32("graphics/battle_anims/sprites/explosion.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Nail[] = INCBIN_U32("graphics/battle_anims/sprites/nail.4bpp.lz");
const u32 gBattleAnimSpritePal_Nail[] = INCBIN_U32("graphics/battle_anims/sprites/nail.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GhostlySpirit[] = INCBIN_U32("graphics/battle_anims/sprites/ghostly_spirit.4bpp.lz");
const u32 gBattleAnimSpritePal_GhostlySpirit[] = INCBIN_U32("graphics/battle_anims/sprites/ghostly_spirit.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WarmRock[] = INCBIN_U32("graphics/battle_anims/sprites/warm_rock.4bpp.lz");
const u32 gBattleAnimSpritePal_WarmRock[] = INCBIN_U32("graphics/battle_anims/sprites/warm_rock.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PunchImpact[] = INCBIN_U32("graphics/battle_anims/sprites/punch_impact.4bpp.lz");
const u32 gBattleAnimSpritePal_PunchImpact[] = INCBIN_U32("graphics/battle_anims/sprites/punch_impact.gbapal.lz");

const u32 gBattleAnimSpriteGfx_BreakingEgg[] = INCBIN_U32("graphics/battle_anims/sprites/breaking_egg.4bpp.lz");
const u32 gBattleAnimSpritePal_BreakingEgg[] = INCBIN_U32("graphics/battle_anims/sprites/breaking_egg.gbapal.lz");

const u32 gBattleAnimSpriteGfx_ThinRing[] = INCBIN_U32("graphics/battle_anims/sprites/thin_ring.4bpp.lz");
const u32 gBattleAnimSpritePal_ThinRing[] = INCBIN_U32("graphics/battle_anims/sprites/thin_ring.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MusicNotes2[] = INCBIN_U32("graphics/battle_anims/sprites/music_notes_2.4bpp.lz");
const u32 gBattleAnimSpritePal_MusicNotes2[] = INCBIN_U32("graphics/battle_anims/sprites/music_notes_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Bell[] = INCBIN_U32("graphics/battle_anims/sprites/bell.4bpp.lz");
const u32 gBattleAnimSpritePal_Bell[] = INCBIN_U32("graphics/battle_anims/sprites/bell.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SpeedDust[] = INCBIN_U32("graphics/battle_anims/sprites/speed_dust.4bpp.lz");
const u32 gBattleAnimSpritePal_SpeedDust[] = INCBIN_U32("graphics/battle_anims/sprites/speed_dust.gbapal.lz");

const u32 gBattleAnimSpriteGfx_TornMetal[] = INCBIN_U32("graphics/battle_anims/sprites/torn_metal.4bpp.lz");

const u32 gBattleAnimSpriteGfx_ThoughtBubble[] = INCBIN_U32("graphics/battle_anims/sprites/thought_bubble.4bpp.lz");
const u32 gBattleAnimSpritePal_ThoughtBubble[] = INCBIN_U32("graphics/battle_anims/sprites/thought_bubble.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Finger[] = INCBIN_U32("graphics/battle_anims/sprites/finger.4bpp.lz");
const u32 gBattleAnimSpritePal_Finger[] = INCBIN_U32("graphics/battle_anims/sprites/finger.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MagentaHeart[] = INCBIN_U32("graphics/battle_anims/sprites/magenta_heart.4bpp.lz");

const u32 gBattleAnimSpritePal_PinkHeart[] = INCBIN_U32("graphics/battle_anims/sprites/pink_heart.gbapal.lz");
const u32 gBattleAnimSpritePal_MagentaHeart[] = INCBIN_U32("graphics/battle_anims/sprites/magenta_heart.gbapal.lz");
const u32 gBattleAnimSpritePal_RedHeart[] = INCBIN_U32("graphics/battle_anims/sprites/red_heart.gbapal.lz");

const u32 gBattleAnimBgImage_Attract[] = INCBIN_U32("graphics/battle_anims/backgrounds/attract.4bpp.lz");
const u32 gBattleAnimBgPalette_Attract[] = INCBIN_U32("graphics/battle_anims/backgrounds/attract.gbapal.lz");
const u32 gBattleAnimBgTilemap_Attract[] = INCBIN_U32("graphics/battle_anims/backgrounds/attract.bin.lz");

const u32 gBattleAnimSpriteGfx_RedOrb[] = INCBIN_U32("graphics/battle_anims/sprites/red_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_RedOrb[] = INCBIN_U32("graphics/battle_anims/sprites/red_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_CircleOfLight[] = INCBIN_U32("graphics/battle_anims/sprites/circle_of_light.4bpp.lz");
const u32 gBattleAnimSpriteGfx_ElectricOrbs[] = INCBIN_U32("graphics/battle_anims/sprites/electric_orbs.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Electricity[] = INCBIN_U32("graphics/battle_anims/sprites/electricity.4bpp.lz");

const u32 gBattleAnimSpritePal_ElectricOrbs[] = INCBIN_U32("graphics/battle_anims/sprites/electric_orbs.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Finger2[] = INCBIN_U32("graphics/battle_anims/sprites/finger_2.4bpp.lz");

const u32 gBattleAnimSpriteGfx_MovementWaves[] = INCBIN_U32("graphics/battle_anims/sprites/movement_waves.4bpp.lz");
const u32 gBattleAnimSpritePal_MovementWaves[] = INCBIN_U32("graphics/battle_anims/sprites/movement_waves.gbapal.lz");

const u32 gBattleAnimBgPalette_ScaryFace[] = INCBIN_U32("graphics/battle_anims/backgrounds/scary_face.gbapal.lz");
const u32 gBattleAnimBgImage_ScaryFace[] = INCBIN_U32("graphics/battle_anims/backgrounds/scary_face.4bpp.lz");

const u32 gBattleAnimSpritePal_EyeSparkle[] = INCBIN_U32("graphics/battle_anims/sprites/eye_sparkle.gbapal.lz");
const u32 gBattleAnimSpriteGfx_EyeSparkle[] = INCBIN_U32("graphics/battle_anims/sprites/eye_sparkle.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Anger[] = INCBIN_U32("graphics/battle_anims/sprites/anger.4bpp.lz");
const u32 gBattleAnimSpritePal_Anger[] = INCBIN_U32("graphics/battle_anims/sprites/anger.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Conversion[] = INCBIN_U32("graphics/battle_anims/sprites/conversion.4bpp.lz");
const u32 gBattleAnimSpritePal_Conversion[] = INCBIN_U32("graphics/battle_anims/sprites/conversion.gbapal.lz");

const u32 gBattleAnimSpritePal_Angel[] = INCBIN_U32("graphics/battle_anims/sprites/angel.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Angel[] = INCBIN_U32("graphics/battle_anims/sprites/angel.4bpp.lz");

const u32 gBattleAnimSpritePal_Devil[] = INCBIN_U32("graphics/battle_anims/sprites/devil.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Devil[] = INCBIN_U32("graphics/battle_anims/sprites/devil.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Swipe[] = INCBIN_U32("graphics/battle_anims/sprites/swipe.4bpp.lz");
const u32 gBattleAnimSpritePal_Swipe[] = INCBIN_U32("graphics/battle_anims/sprites/swipe.gbapal.lz");

const u32 gBattleAnimSpritePal_Roots[] = INCBIN_U32("graphics/battle_anims/sprites/roots.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Roots[] = INCBIN_U32("graphics/battle_anims/sprites/roots.4bpp.lz");

const u32 gBattleAnimSpritePal_ItemBag[] = INCBIN_U32("graphics/battle_anims/sprites/item_bag.gbapal.lz");
const u32 gBattleAnimSpriteGfx_ItemBag[] = INCBIN_U32("graphics/battle_anims/sprites/item_bag.4bpp.lz");

const u32 gBattleAnimSpritePal_TriAttackTriangle[] = INCBIN_U32("graphics/battle_anims/sprites/tri_attack_triangle.gbapal.lz");
const u32 gBattleAnimSpriteGfx_TriAttackTriangle[] = INCBIN_U32("graphics/battle_anims/sprites/tri_attack_triangle.4bpp.lz");

const u32 gBattleAnimSpritePal_LetterZ[] = INCBIN_U32("graphics/battle_anims/sprites/letter_z.gbapal.lz");
const u32 gBattleAnimSpriteGfx_LetterZ[] = INCBIN_U32("graphics/battle_anims/sprites/letter_z.4bpp.lz");

const u32 gBattleAnimBgPalette_Impact[] = INCBIN_U32("graphics/battle_anims/backgrounds/impact.gbapal.lz");
const u32 gBattleAnimBgImage_Impact[] = INCBIN_U32("graphics/battle_anims/backgrounds/impact.4bpp.lz");
const u32 gBattleAnimBgTilemap_ImpactOpponent[] = INCBIN_U32("graphics/battle_anims/backgrounds/impact_opponent.bin.lz");

const u32 gBattleAnimBgTilemap_ImpactPlayer[] = INCBIN_U32("graphics/battle_anims/backgrounds/impact_player.bin.lz");
const u32 gBattleAnimBgTilemap_ImpactContests[] = INCBIN_U32("graphics/battle_anims/backgrounds/impact_contests.bin.lz");

const u32 gBattleAnimSpriteGfx_JaggedMusicNote[] = INCBIN_U32("graphics/battle_anims/sprites/jagged_music_note.4bpp.lz");
const u32 gBattleAnimSpritePal_JaggedMusicNote[] = INCBIN_U32("graphics/battle_anims/sprites/jagged_music_note.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Spotlight[] = INCBIN_U32("graphics/battle_anims/sprites/spotlight.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Pokeball[] = INCBIN_U32("graphics/battle_anims/sprites/pokeball.4bpp.lz");
const u32 gBattleAnimSpritePal_Pokeball[] = INCBIN_U32("graphics/battle_anims/sprites/pokeball.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RapidSpin[] = INCBIN_U32("graphics/battle_anims/sprites/rapid_spin.4bpp.lz");
const u32 gBattleAnimSpritePal_RapidSpin[] = INCBIN_U32("graphics/battle_anims/sprites/rapid_spin.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MilkBottle[] = INCBIN_U32("graphics/battle_anims/sprites/milk_bottle.4bpp.lz");
const u32 gBattleAnimSpritePal_MilkBottle[] = INCBIN_U32("graphics/battle_anims/sprites/milk_bottle.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WispFire[] = INCBIN_U32("graphics/battle_anims/sprites/wisp_fire.4bpp.lz");

const u32 gBattleAnimSpritePal_WispOrb[] = INCBIN_U32("graphics/battle_anims/sprites/wisp_orb.gbapal.lz");
const u32 gBattleAnimSpriteGfx_WispOrb[] = INCBIN_U32("graphics/battle_anims/sprites/wisp_orb.4bpp.lz");

const u32 gBattleAnimSpriteGfx_GoldStars[] = INCBIN_U32("graphics/battle_anims/sprites/gold_stars.4bpp.lz");
const u32 gBattleAnimSpritePal_GoldStars[] = INCBIN_U32("graphics/battle_anims/sprites/gold_stars.gbapal.lz");

const u32 gBattleAnimSpriteGfx_EclipsingOrb[] = INCBIN_U32("graphics/battle_anims/sprites/eclipsing_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_EclipsingOrb[] = INCBIN_U32("graphics/battle_anims/sprites/eclipsing_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PinkPetal[] = INCBIN_U32("graphics/battle_anims/sprites/pink_petal.4bpp.lz");
const u32 gBattleAnimSpritePal_PinkPetal[] = INCBIN_U32("graphics/battle_anims/sprites/pink_petal.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GrayOrb[] = INCBIN_U32("graphics/battle_anims/sprites/gray_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_GrayOrb[] = INCBIN_U32("graphics/battle_anims/sprites/gray_orb.gbapal.lz");

const u32 gBattleAnimSpritePal_BlueOrb[] = INCBIN_U32("graphics/battle_anims/sprites/blue_orb.gbapal.lz");
const u32 gBattleAnimSpritePal_RedOrb2[] = INCBIN_U32("graphics/battle_anims/sprites/red_orb_2.gbapal.lz");

const u32 gBattleAnimBgImage_Drill[] = INCBIN_U32("graphics/battle_anims/backgrounds/drill.4bpp.lz");
const u32 gBattleAnimBgPalette_Drill[] = INCBIN_U32("graphics/battle_anims/backgrounds/drill.gbapal.lz");

const u32 gBattleAnimBgPalette_Sky[] = INCBIN_U32("graphics/battle_anims/backgrounds/sky.gbapal.lz");

const u32 gBattleAnimBgTilemap_Drill[] = INCBIN_U32("graphics/battle_anims/backgrounds/drill.bin.lz");
const u32 gBattleAnimBgTilemap_DrillContests[] = INCBIN_U32("graphics/battle_anims/backgrounds/drill_contests.bin.lz");

const u32 gBattleAnimBgImage_Aurora[] = INCBIN_U32("graphics/battle_anims/backgrounds/aurora.4bpp.lz");
const u32 gBattleAnimBgPalette_Aurora[] = INCBIN_U32("graphics/battle_anims/backgrounds/aurora.gbapal.lz");
const u32 gBattleAnimBgTilemap_Aurora[] = INCBIN_U32("graphics/battle_anims/backgrounds/aurora.bin.lz");

const u32 gBattleAnimBgTilemap_HighspeedOpponent[] = INCBIN_U32("graphics/battle_anims/backgrounds/highspeed_opponent.bin.lz");
const u32 gBattleAnimBgPalette_Highspeed[] = INCBIN_U32("graphics/battle_anims/backgrounds/highspeed.gbapal.lz");

const u32 gBattleAnimBgPalette_Bug[] = INCBIN_U32("graphics/battle_anims/backgrounds/bug.gbapal.lz");

const u32 gBattleAnimBgImage_Highspeed[] = INCBIN_U32("graphics/battle_anims/backgrounds/highspeed.4bpp.lz");
const u32 gBattleAnimBgTilemap_HighspeedPlayer[] = INCBIN_U32("graphics/battle_anims/backgrounds/highspeed_player.bin.lz");

const u32 gBattleAnimMaskImage_LightBeam[] = INCBIN_U32("graphics/battle_anims/masks/light_beam.4bpp.lz");
const u32 gBattleAnimMaskPalette_LightBeam[] = INCBIN_U32("graphics/battle_anims/masks/light_beam.gbapal.lz");
const u32 gBattleAnimMaskTilemap_LightBeam[] = INCBIN_U32("graphics/battle_anims/masks/light_beam.bin.lz");

const u32 gBattleAnimBgTilemap_GuillotineOpponent[] = INCBIN_U32("graphics/battle_anims/backgrounds/guillotine_opponent.bin.lz");
const u32 gBattleAnimBgTilemap_GuillotinePlayer[] = INCBIN_U32("graphics/battle_anims/backgrounds/guillotine_player.bin.lz");
const u32 gBattleAnimBgTilemap_GuillotineContests[] = INCBIN_U32("graphics/battle_anims/backgrounds/guillotine_contests.bin.lz");

const u32 gBattleAnimBgImage_Guillotine[] = INCBIN_U32("graphics/battle_anims/backgrounds/guillotine.4bpp.lz");
const u32 gBattleAnimBgPalette_Guillotine[] = INCBIN_U32("graphics/battle_anims/backgrounds/guillotine.gbapal.lz");

const u32 gBattleAnimBgImage_Thunder[] = INCBIN_U32("graphics/battle_anims/backgrounds/thunder.4bpp.lz");
const u32 gBattleAnimBgPalette_Thunder[] = INCBIN_U32("graphics/battle_anims/backgrounds/thunder.gbapal.lz");
const u32 gBattleAnimBgTilemap_Thunder[] = INCBIN_U32("graphics/battle_anims/backgrounds/thunder.bin.lz");

const u32 gBattleAnimSpriteGfx_PainSplit[] = INCBIN_U32("graphics/battle_anims/sprites/pain_split.4bpp.lz");
const u32 gBattleAnimSpritePal_PainSplit[] = INCBIN_U32("graphics/battle_anims/sprites/pain_split.gbapal.lz");

const u32 gBattleAnimSpriteGfx_HandsAndFeet[] = INCBIN_U32("graphics/battle_anims/sprites/hands_and_feet.4bpp.lz");
const u32 gBattleAnimSpritePal_HandsAndFeet[] = INCBIN_U32("graphics/battle_anims/sprites/hands_and_feet.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Confetti[] = INCBIN_U32("graphics/battle_anims/sprites/confetti.4bpp.lz");
const u32 gBattleAnimSpritePal_Confetti[] = INCBIN_U32("graphics/battle_anims/sprites/confetti.gbapal.lz");

const u32 gSubstituteDollPal[] = INCBIN_U32("graphics/battle_anims/sprites/substitute.gbapal.lz");
const u32 gSubstituteDollGfx[] = INCBIN_U32("graphics/battle_anims/sprites/substitute.4bpp.lz");
const u32 gSubstituteDollTilemap[] = INCBIN_U32("graphics/battle_anims/sprites/substitute.bin.lz");

const u32 gBattleAnimSpriteGfx_GreenStar[] = INCBIN_U32("graphics/battle_anims/sprites/green_star.4bpp.lz");
const u32 gBattleAnimSpritePal_GreenStar[] = INCBIN_U32("graphics/battle_anims/sprites/green_star.gbapal.lz");

const u32 gContestConfetti_Gfx[] = INCBIN_U32("graphics/misc/confetti.4bpp.lz");
const u32 gContestConfetti_Pal[] = INCBIN_U32("graphics/misc/confetti.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PinkCloud[] = INCBIN_U32("graphics/battle_anims/sprites/pink_cloud.4bpp.lz");
const u32 gBattleAnimSpritePal_PinkCloud[] = INCBIN_U32("graphics/battle_anims/sprites/pink_cloud.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SweatDrop[] = INCBIN_U32("graphics/battle_anims/sprites/sweat_drop.4bpp.lz");
const u32 gBattleAnimSpritePal_SweatDrop[] = INCBIN_U32("graphics/battle_anims/sprites/sweat_drop.gbapal.lz");

const u32 gBattleStatMask_Gfx[] = INCBIN_U32("graphics/battle_anims/masks/stat.4bpp.lz");
const u32 gBattleStatMask1_Tilemap[] = INCBIN_U32("graphics/battle_anims/masks/stat_tilemap_1.bin.lz");
const u32 gBattleStatMask2_Tilemap[] = INCBIN_U32("graphics/battle_anims/masks/stat_tilemap_2.bin.lz");

const u32 gBattleStatMask1_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat1.gbapal.lz");
const u32 gBattleStatMask2_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat2.gbapal.lz");
const u32 gBattleStatMask3_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat3.gbapal.lz");
const u32 gBattleStatMask4_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat4.gbapal.lz");
const u32 gBattleStatMask5_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat5.gbapal.lz");
const u32 gBattleStatMask6_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat6.gbapal.lz");
const u32 gBattleStatMask7_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat7.gbapal.lz");
const u32 gBattleStatMask8_Pal[] = INCBIN_U32("graphics/battle_anims/masks/stat8.gbapal.lz");

const u32 gCureBubblesGfx[] = INCBIN_U32("graphics/battle_anims/masks/cure_bubbles.4bpp.lz");
const u32 gCureBubblesPal[] = INCBIN_U32("graphics/battle_anims/masks/cure_bubbles.gbapal.lz");
const u32 gCureBubblesTilemap[] = INCBIN_U32("graphics/battle_anims/masks/cure_bubbles.bin.lz");

const u32 gBattleAnimSpritePal_PurpleScratch[] = INCBIN_U32("graphics/battle_anims/sprites/purple_scratch.gbapal.lz");
const u32 gBattleAnimSpriteGfx_PurpleScratch[] = INCBIN_U32("graphics/battle_anims/sprites/purple_scratch.4bpp.lz");

const u32 gBattleAnimSpriteGfx_PurpleSwipe[] = INCBIN_U32("graphics/battle_anims/sprites/purple_swipe.4bpp.lz");

const u32 gBattleAnimSpriteGfx_GuardRing[] = INCBIN_U32("graphics/battle_anims/sprites/guard_ring.4bpp.lz");
const u32 gBattleAnimSpritePal_GuardRing[] = INCBIN_U32("graphics/battle_anims/sprites/guard_ring.gbapal.lz");

const u32 gBattleAnimSpriteGfx_TagHand[] = INCBIN_U32("graphics/battle_anims/sprites/tag_hand.4bpp.lz");

const u32 gBattleAnimSpriteGfx_NoiseLine[] = INCBIN_U32("graphics/battle_anims/sprites/noise_line.4bpp.lz");

const u32 gUnknown_08C2EA50[] = INCBIN_U32("graphics/battle_anims/masks/unknown_C2EA50.4bpp.lz");
const u32 gUnknown_08C2EA9C[] = INCBIN_U32("graphics/battle_anims/masks/unknown_C2EA50.bin.lz");

const u32 gBattleAnimSpriteGfx_SmallRedEye[] = INCBIN_U32("graphics/battle_anims/sprites/small_red_eye.4bpp.lz");
const u32 gBattleAnimSpritePal_SmallRedEye[] = INCBIN_U32("graphics/battle_anims/sprites/small_red_eye.gbapal.lz");

const u32 gBattleAnimSpriteGfx_HollowOrb[] = INCBIN_U32("graphics/battle_anims/sprites/hollow_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_HollowOrb[] = INCBIN_U32("graphics/battle_anims/sprites/hollow_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_XSign[] = INCBIN_U32("graphics/battle_anims/sprites/x_sign.4bpp.lz");

const u32 gBattleAnimSpriteGfx_BluegreenOrb[] = INCBIN_U32("graphics/battle_anims/sprites/bluegreen_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_BluegreenOrb[] = INCBIN_U32("graphics/battle_anims/sprites/bluegreen_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PawPrint[] = INCBIN_U32("graphics/battle_anims/sprites/paw_print.4bpp.lz");
const u32 gBattleAnimSpritePal_PawPrint[] = INCBIN_U32("graphics/battle_anims/sprites/paw_print.gbapal.lz");

const u32 gBattleAnimSpriteGfx_PurpleFlame[] = INCBIN_U32("graphics/battle_anims/sprites/purple_flame.4bpp.lz");
const u32 gBattleAnimSpritePal_PurpleFlame[] = INCBIN_U32("graphics/battle_anims/sprites/purple_flame.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RedBall[] = INCBIN_U32("graphics/battle_anims/sprites/red_ball.4bpp.lz");
const u32 gBattleAnimSpritePal_RedBall[] = INCBIN_U32("graphics/battle_anims/sprites/red_ball.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SmellingsaltEffect[] = INCBIN_U32("graphics/battle_anims/sprites/smellingsalt_effect.4bpp.lz");
const u32 gBattleAnimSpritePal_SmellingsaltEffect[] = INCBIN_U32("graphics/battle_anims/sprites/smellingsalt_effect.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MagnifyingGlass[] = INCBIN_U32("graphics/battle_anims/sprites/magnifying_glass.4bpp.lz");
const u32 gBattleAnimSpritePal_MagnifyingGlass[] = INCBIN_U32("graphics/battle_anims/sprites/magnifying_glass.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Meteor[] = INCBIN_U32("graphics/battle_anims/sprites/meteor.4bpp.lz");
const u32 gBattleAnimSpritePal_Meteor[] = INCBIN_U32("graphics/battle_anims/sprites/meteor.gbapal.lz");

const u32 gBattleAnimSpriteGfx_FlatRock[] = INCBIN_U32("graphics/battle_anims/sprites/flat_rock.4bpp.lz");
const u32 gBattleAnimSpritePal_FlatRock[] = INCBIN_U32("graphics/battle_anims/sprites/flat_rock.gbapal.lz");

const u32 gUnknownPal_C2F9E0[] = INCBIN_U32("graphics/unknown/unknown_C2F9E0.gbapal.lz");

# 1 "src/data/graphics/pokemon.h" 1
const u32 gMonStillFrontPic_Bulbasaur[] = INCBIN_U32("graphics/pokemon/bulbasaur/front.4bpp.lz");
const u32 gMonPalette_Bulbasaur[] = INCBIN_U32("graphics/pokemon/bulbasaur/normal.gbapal.lz");
const u32 gMonBackPic_Bulbasaur[] = INCBIN_U32("graphics/pokemon/bulbasaur/back.4bpp.lz");
const u32 gMonShinyPalette_Bulbasaur[] = INCBIN_U32("graphics/pokemon/bulbasaur/shiny.gbapal.lz");
const u8 gMonIcon_Bulbasaur[] = INCBIN_U8("graphics/pokemon/bulbasaur/icon.4bpp");
const u8 gMonFootprint_Bulbasaur[] = INCBIN_U8("graphics/pokemon/bulbasaur/footprint.1bpp");

const u32 gMonStillFrontPic_Ivysaur[] = INCBIN_U32("graphics/pokemon/ivysaur/front.4bpp.lz");
const u32 gMonPalette_Ivysaur[] = INCBIN_U32("graphics/pokemon/ivysaur/normal.gbapal.lz");
const u32 gMonBackPic_Ivysaur[] = INCBIN_U32("graphics/pokemon/ivysaur/back.4bpp.lz");
const u32 gMonShinyPalette_Ivysaur[] = INCBIN_U32("graphics/pokemon/ivysaur/shiny.gbapal.lz");
const u8 gMonIcon_Ivysaur[] = INCBIN_U8("graphics/pokemon/ivysaur/icon.4bpp");
const u8 gMonFootprint_Ivysaur[] = INCBIN_U8("graphics/pokemon/ivysaur/footprint.1bpp");

const u32 gMonStillFrontPic_Venusaur[] = INCBIN_U32("graphics/pokemon/venusaur/front.4bpp.lz");
const u32 gMonPalette_Venusaur[] = INCBIN_U32("graphics/pokemon/venusaur/normal.gbapal.lz");
const u32 gMonBackPic_Venusaur[] = INCBIN_U32("graphics/pokemon/venusaur/back.4bpp.lz");
const u32 gMonShinyPalette_Venusaur[] = INCBIN_U32("graphics/pokemon/venusaur/shiny.gbapal.lz");
const u8 gMonIcon_Venusaur[] = INCBIN_U8("graphics/pokemon/venusaur/icon.4bpp");
const u8 gMonFootprint_Venusaur[] = INCBIN_U8("graphics/pokemon/venusaur/footprint.1bpp");

const u32 gMonStillFrontPic_Charmander[] = INCBIN_U32("graphics/pokemon/charmander/front.4bpp.lz");
const u32 gMonPalette_Charmander[] = INCBIN_U32("graphics/pokemon/charmander/normal.gbapal.lz");
const u32 gMonBackPic_Charmander[] = INCBIN_U32("graphics/pokemon/charmander/back.4bpp.lz");
const u32 gMonShinyPalette_Charmander[] = INCBIN_U32("graphics/pokemon/charmander/shiny.gbapal.lz");
const u8 gMonIcon_Charmander[] = INCBIN_U8("graphics/pokemon/charmander/icon.4bpp");
const u8 gMonFootprint_Charmander[] = INCBIN_U8("graphics/pokemon/charmander/footprint.1bpp");

const u32 gMonStillFrontPic_Charmeleon[] = INCBIN_U32("graphics/pokemon/charmeleon/front.4bpp.lz");
const u32 gMonPalette_Charmeleon[] = INCBIN_U32("graphics/pokemon/charmeleon/normal.gbapal.lz");
const u32 gMonBackPic_Charmeleon[] = INCBIN_U32("graphics/pokemon/charmeleon/back.4bpp.lz");
const u32 gMonShinyPalette_Charmeleon[] = INCBIN_U32("graphics/pokemon/charmeleon/shiny.gbapal.lz");
const u8 gMonIcon_Charmeleon[] = INCBIN_U8("graphics/pokemon/charmeleon/icon.4bpp");
const u8 gMonFootprint_Charmeleon[] = INCBIN_U8("graphics/pokemon/charmeleon/footprint.1bpp");

const u32 gMonStillFrontPic_Charizard[] = INCBIN_U32("graphics/pokemon/charizard/front.4bpp.lz");
const u32 gMonPalette_Charizard[] = INCBIN_U32("graphics/pokemon/charizard/normal.gbapal.lz");
const u32 gMonBackPic_Charizard[] = INCBIN_U32("graphics/pokemon/charizard/back.4bpp.lz");
const u32 gMonShinyPalette_Charizard[] = INCBIN_U32("graphics/pokemon/charizard/shiny.gbapal.lz");
const u8 gMonIcon_Charizard[] = INCBIN_U8("graphics/pokemon/charizard/icon.4bpp");
const u8 gMonFootprint_Charizard[] = INCBIN_U8("graphics/pokemon/charizard/footprint.1bpp");

const u32 gMonStillFrontPic_Squirtle[] = INCBIN_U32("graphics/pokemon/squirtle/front.4bpp.lz");
const u32 gMonPalette_Squirtle[] = INCBIN_U32("graphics/pokemon/squirtle/normal.gbapal.lz");
const u32 gMonBackPic_Squirtle[] = INCBIN_U32("graphics/pokemon/squirtle/back.4bpp.lz");
const u32 gMonShinyPalette_Squirtle[] = INCBIN_U32("graphics/pokemon/squirtle/shiny.gbapal.lz");
const u8 gMonIcon_Squirtle[] = INCBIN_U8("graphics/pokemon/squirtle/icon.4bpp");
const u8 gMonFootprint_Squirtle[] = INCBIN_U8("graphics/pokemon/squirtle/footprint.1bpp");

const u32 gMonStillFrontPic_Wartortle[] = INCBIN_U32("graphics/pokemon/wartortle/front.4bpp.lz");
const u32 gMonPalette_Wartortle[] = INCBIN_U32("graphics/pokemon/wartortle/normal.gbapal.lz");
const u32 gMonBackPic_Wartortle[] = INCBIN_U32("graphics/pokemon/wartortle/back.4bpp.lz");
const u32 gMonShinyPalette_Wartortle[] = INCBIN_U32("graphics/pokemon/wartortle/shiny.gbapal.lz");
const u8 gMonIcon_Wartortle[] = INCBIN_U8("graphics/pokemon/wartortle/icon.4bpp");
const u8 gMonFootprint_Wartortle[] = INCBIN_U8("graphics/pokemon/wartortle/footprint.1bpp");

const u32 gMonStillFrontPic_Blastoise[] = INCBIN_U32("graphics/pokemon/blastoise/front.4bpp.lz");
const u32 gMonPalette_Blastoise[] = INCBIN_U32("graphics/pokemon/blastoise/normal.gbapal.lz");
const u32 gMonBackPic_Blastoise[] = INCBIN_U32("graphics/pokemon/blastoise/back.4bpp.lz");
const u32 gMonShinyPalette_Blastoise[] = INCBIN_U32("graphics/pokemon/blastoise/shiny.gbapal.lz");
const u8 gMonIcon_Blastoise[] = INCBIN_U8("graphics/pokemon/blastoise/icon.4bpp");
const u8 gMonFootprint_Blastoise[] = INCBIN_U8("graphics/pokemon/blastoise/footprint.1bpp");

const u32 gMonStillFrontPic_Caterpie[] = INCBIN_U32("graphics/pokemon/caterpie/front.4bpp.lz");
const u32 gMonPalette_Caterpie[] = INCBIN_U32("graphics/pokemon/caterpie/normal.gbapal.lz");
const u32 gMonBackPic_Caterpie[] = INCBIN_U32("graphics/pokemon/caterpie/back.4bpp.lz");
const u32 gMonShinyPalette_Caterpie[] = INCBIN_U32("graphics/pokemon/caterpie/shiny.gbapal.lz");
const u8 gMonIcon_Caterpie[] = INCBIN_U8("graphics/pokemon/caterpie/icon.4bpp");
const u8 gMonFootprint_Caterpie[] = INCBIN_U8("graphics/pokemon/caterpie/footprint.1bpp");

const u32 gMonStillFrontPic_Metapod[] = INCBIN_U32("graphics/pokemon/metapod/front.4bpp.lz");
const u32 gMonPalette_Metapod[] = INCBIN_U32("graphics/pokemon/metapod/normal.gbapal.lz");
const u32 gMonBackPic_Metapod[] = INCBIN_U32("graphics/pokemon/metapod/back.4bpp.lz");
const u32 gMonShinyPalette_Metapod[] = INCBIN_U32("graphics/pokemon/metapod/shiny.gbapal.lz");
const u8 gMonIcon_Metapod[] = INCBIN_U8( "graphics/pokemon/metapod/icon.4bpp");
const u8 gMonFootprint_Metapod[] = INCBIN_U8("graphics/pokemon/metapod/footprint.1bpp");

const u32 gMonStillFrontPic_Butterfree[] = INCBIN_U32("graphics/pokemon/butterfree/front.4bpp.lz");
const u32 gMonPalette_Butterfree[] = INCBIN_U32("graphics/pokemon/butterfree/normal.gbapal.lz");
const u32 gMonBackPic_Butterfree[] = INCBIN_U32("graphics/pokemon/butterfree/back.4bpp.lz");
const u32 gMonShinyPalette_Butterfree[] = INCBIN_U32("graphics/pokemon/butterfree/shiny.gbapal.lz");
const u8 gMonIcon_Butterfree[] = INCBIN_U8("graphics/pokemon/butterfree/icon.4bpp");
const u8 gMonFootprint_Butterfree[] = INCBIN_U8("graphics/pokemon/butterfree/footprint.1bpp");

const u32 gMonStillFrontPic_Weedle[] = INCBIN_U32("graphics/pokemon/weedle/front.4bpp.lz");
const u32 gMonPalette_Weedle[] = INCBIN_U32("graphics/pokemon/weedle/normal.gbapal.lz");
const u32 gMonBackPic_Weedle[] = INCBIN_U32("graphics/pokemon/weedle/back.4bpp.lz");
const u32 gMonShinyPalette_Weedle[] = INCBIN_U32("graphics/pokemon/weedle/shiny.gbapal.lz");
const u8 gMonIcon_Weedle[] = INCBIN_U8("graphics/pokemon/weedle/icon.4bpp");
const u8 gMonFootprint_Weedle[] = INCBIN_U8("graphics/pokemon/weedle/footprint.1bpp");

const u32 gMonStillFrontPic_Kakuna[] = INCBIN_U32("graphics/pokemon/kakuna/front.4bpp.lz");
const u32 gMonPalette_Kakuna[] = INCBIN_U32("graphics/pokemon/kakuna/normal.gbapal.lz");
const u32 gMonBackPic_Kakuna[] = INCBIN_U32("graphics/pokemon/kakuna/back.4bpp.lz");
const u32 gMonShinyPalette_Kakuna[] = INCBIN_U32("graphics/pokemon/kakuna/shiny.gbapal.lz");
const u8 gMonIcon_Kakuna[] = INCBIN_U8("graphics/pokemon/kakuna/icon.4bpp");
const u8 gMonFootprint_Kakuna[] = INCBIN_U8("graphics/pokemon/kakuna/footprint.1bpp");

const u32 gMonStillFrontPic_Beedrill[] = INCBIN_U32("graphics/pokemon/beedrill/front.4bpp.lz");
const u32 gMonPalette_Beedrill[] = INCBIN_U32("graphics/pokemon/beedrill/normal.gbapal.lz");
const u32 gMonBackPic_Beedrill[] = INCBIN_U32("graphics/pokemon/beedrill/back.4bpp.lz");
const u32 gMonShinyPalette_Beedrill[] = INCBIN_U32("graphics/pokemon/beedrill/shiny.gbapal.lz");
const u8 gMonIcon_Beedrill[] = INCBIN_U8("graphics/pokemon/beedrill/icon.4bpp");
const u8 gMonFootprint_Beedrill[] = INCBIN_U8("graphics/pokemon/beedrill/footprint.1bpp");

const u32 gMonStillFrontPic_Pidgey[] = INCBIN_U32("graphics/pokemon/pidgey/front.4bpp.lz");
const u32 gMonPalette_Pidgey[] = INCBIN_U32("graphics/pokemon/pidgey/normal.gbapal.lz");
const u32 gMonBackPic_Pidgey[] = INCBIN_U32("graphics/pokemon/pidgey/back.4bpp.lz");
const u32 gMonShinyPalette_Pidgey[] = INCBIN_U32("graphics/pokemon/pidgey/shiny.gbapal.lz");
const u8 gMonIcon_Pidgey[] = INCBIN_U8("graphics/pokemon/pidgey/icon.4bpp");
const u8 gMonFootprint_Pidgey[] = INCBIN_U8("graphics/pokemon/pidgey/footprint.1bpp");

const u32 gMonStillFrontPic_Pidgeotto[] = INCBIN_U32("graphics/pokemon/pidgeotto/front.4bpp.lz");
const u32 gMonPalette_Pidgeotto[] = INCBIN_U32("graphics/pokemon/pidgeotto/normal.gbapal.lz");
const u32 gMonBackPic_Pidgeotto[] = INCBIN_U32("graphics/pokemon/pidgeotto/back.4bpp.lz");
const u32 gMonShinyPalette_Pidgeotto[] = INCBIN_U32("graphics/pokemon/pidgeotto/shiny.gbapal.lz");
const u8 gMonIcon_Pidgeotto[] = INCBIN_U8("graphics/pokemon/pidgeotto/icon.4bpp");
const u8 gMonFootprint_Pidgeotto[] = INCBIN_U8("graphics/pokemon/pidgeotto/footprint.1bpp");

const u32 gMonStillFrontPic_Pidgeot[] = INCBIN_U32("graphics/pokemon/pidgeot/front.4bpp.lz");
const u32 gMonPalette_Pidgeot[] = INCBIN_U32("graphics/pokemon/pidgeot/normal.gbapal.lz");
const u32 gMonBackPic_Pidgeot[] = INCBIN_U32("graphics/pokemon/pidgeot/back.4bpp.lz");
const u32 gMonShinyPalette_Pidgeot[] = INCBIN_U32("graphics/pokemon/pidgeot/shiny.gbapal.lz");
const u8 gMonIcon_Pidgeot[] = INCBIN_U8("graphics/pokemon/pidgeot/icon.4bpp");
const u8 gMonFootprint_Pidgeot[] = INCBIN_U8("graphics/pokemon/pidgeot/footprint.1bpp");

const u32 gMonStillFrontPic_Rattata[] = INCBIN_U32("graphics/pokemon/rattata/front.4bpp.lz");
const u32 gMonPalette_Rattata[] = INCBIN_U32("graphics/pokemon/rattata/normal.gbapal.lz");
const u32 gMonBackPic_Rattata[] = INCBIN_U32("graphics/pokemon/rattata/back.4bpp.lz");
const u32 gMonShinyPalette_Rattata[] = INCBIN_U32("graphics/pokemon/rattata/shiny.gbapal.lz");
const u8 gMonIcon_Rattata[] = INCBIN_U8("graphics/pokemon/rattata/icon.4bpp");
const u8 gMonFootprint_Rattata[] = INCBIN_U8("graphics/pokemon/rattata/footprint.1bpp");

const u32 gMonStillFrontPic_Raticate[] = INCBIN_U32("graphics/pokemon/raticate/front.4bpp.lz");
const u32 gMonPalette_Raticate[] = INCBIN_U32("graphics/pokemon/raticate/normal.gbapal.lz");
const u32 gMonBackPic_Raticate[] = INCBIN_U32("graphics/pokemon/raticate/back.4bpp.lz");
const u32 gMonShinyPalette_Raticate[] = INCBIN_U32("graphics/pokemon/raticate/shiny.gbapal.lz");
const u8 gMonIcon_Raticate[] = INCBIN_U8("graphics/pokemon/raticate/icon.4bpp");
const u8 gMonFootprint_Raticate[] = INCBIN_U8("graphics/pokemon/raticate/footprint.1bpp");

const u32 gMonStillFrontPic_Spearow[] = INCBIN_U32("graphics/pokemon/spearow/front.4bpp.lz");
const u32 gMonPalette_Spearow[] = INCBIN_U32("graphics/pokemon/spearow/normal.gbapal.lz");
const u32 gMonBackPic_Spearow[] = INCBIN_U32("graphics/pokemon/spearow/back.4bpp.lz");
const u32 gMonShinyPalette_Spearow[] = INCBIN_U32("graphics/pokemon/spearow/shiny.gbapal.lz");
const u8 gMonIcon_Spearow[] = INCBIN_U8("graphics/pokemon/spearow/icon.4bpp");
const u8 gMonFootprint_Spearow[] = INCBIN_U8("graphics/pokemon/spearow/footprint.1bpp");

const u32 gMonStillFrontPic_Fearow[] = INCBIN_U32("graphics/pokemon/fearow/front.4bpp.lz");
const u32 gMonPalette_Fearow[] = INCBIN_U32("graphics/pokemon/fearow/normal.gbapal.lz");
const u32 gMonBackPic_Fearow[] = INCBIN_U32("graphics/pokemon/fearow/back.4bpp.lz");
const u32 gMonShinyPalette_Fearow[] = INCBIN_U32("graphics/pokemon/fearow/shiny.gbapal.lz");
const u8 gMonIcon_Fearow[] = INCBIN_U8("graphics/pokemon/fearow/icon.4bpp");
const u8 gMonFootprint_Fearow[] = INCBIN_U8("graphics/pokemon/fearow/footprint.1bpp");

const u32 gMonStillFrontPic_Ekans[] = INCBIN_U32("graphics/pokemon/ekans/front.4bpp.lz");
const u32 gMonPalette_Ekans[] = INCBIN_U32("graphics/pokemon/ekans/normal.gbapal.lz");
const u32 gMonBackPic_Ekans[] = INCBIN_U32("graphics/pokemon/ekans/back.4bpp.lz");
const u32 gMonShinyPalette_Ekans[] = INCBIN_U32("graphics/pokemon/ekans/shiny.gbapal.lz");
const u8 gMonIcon_Ekans[] = INCBIN_U8("graphics/pokemon/ekans/icon.4bpp");
const u8 gMonFootprint_Ekans[] = INCBIN_U8("graphics/pokemon/ekans/footprint.1bpp");

const u32 gMonStillFrontPic_Arbok[] = INCBIN_U32("graphics/pokemon/arbok/front.4bpp.lz");
const u32 gMonPalette_Arbok[] = INCBIN_U32("graphics/pokemon/arbok/normal.gbapal.lz");
const u32 gMonBackPic_Arbok[] = INCBIN_U32("graphics/pokemon/arbok/back.4bpp.lz");
const u32 gMonShinyPalette_Arbok[] = INCBIN_U32("graphics/pokemon/arbok/shiny.gbapal.lz");
const u8 gMonIcon_Arbok[] = INCBIN_U8("graphics/pokemon/arbok/icon.4bpp");
const u8 gMonFootprint_Arbok[] = INCBIN_U8("graphics/pokemon/arbok/footprint.1bpp");

const u32 gMonStillFrontPic_Pikachu[] = INCBIN_U32("graphics/pokemon/pikachu/front.4bpp.lz");
const u32 gMonPalette_Pikachu[] = INCBIN_U32("graphics/pokemon/pikachu/normal.gbapal.lz");
const u32 gMonBackPic_Pikachu[] = INCBIN_U32("graphics/pokemon/pikachu/back.4bpp.lz");
const u32 gMonShinyPalette_Pikachu[] = INCBIN_U32("graphics/pokemon/pikachu/shiny.gbapal.lz");
const u8 gMonIcon_Pikachu[] = INCBIN_U8("graphics/pokemon/pikachu/icon.4bpp");
const u8 gMonFootprint_Pikachu[] = INCBIN_U8("graphics/pokemon/pikachu/footprint.1bpp");

const u32 gMonStillFrontPic_Raichu[] = INCBIN_U32("graphics/pokemon/raichu/front.4bpp.lz");
const u32 gMonPalette_Raichu[] = INCBIN_U32("graphics/pokemon/raichu/normal.gbapal.lz");
const u32 gMonBackPic_Raichu[] = INCBIN_U32("graphics/pokemon/raichu/back.4bpp.lz");
const u32 gMonShinyPalette_Raichu[] = INCBIN_U32("graphics/pokemon/raichu/shiny.gbapal.lz");
const u8 gMonIcon_Raichu[] = INCBIN_U8("graphics/pokemon/raichu/icon.4bpp");
const u8 gMonFootprint_Raichu[] = INCBIN_U8("graphics/pokemon/raichu/footprint.1bpp");

const u32 gMonStillFrontPic_Sandshrew[] = INCBIN_U32("graphics/pokemon/sandshrew/front.4bpp.lz");
const u32 gMonPalette_Sandshrew[] = INCBIN_U32("graphics/pokemon/sandshrew/normal.gbapal.lz");
const u32 gMonBackPic_Sandshrew[] = INCBIN_U32("graphics/pokemon/sandshrew/back.4bpp.lz");
const u32 gMonShinyPalette_Sandshrew[] = INCBIN_U32("graphics/pokemon/sandshrew/shiny.gbapal.lz");
const u8 gMonIcon_Sandshrew[] = INCBIN_U8("graphics/pokemon/sandshrew/icon.4bpp");
const u8 gMonFootprint_Sandshrew[] = INCBIN_U8("graphics/pokemon/sandshrew/footprint.1bpp");

const u32 gMonStillFrontPic_Sandslash[] = INCBIN_U32("graphics/pokemon/sandslash/front.4bpp.lz");
const u32 gMonPalette_Sandslash[] = INCBIN_U32("graphics/pokemon/sandslash/normal.gbapal.lz");
const u32 gMonBackPic_Sandslash[] = INCBIN_U32("graphics/pokemon/sandslash/back.4bpp.lz");
const u32 gMonShinyPalette_Sandslash[] = INCBIN_U32("graphics/pokemon/sandslash/shiny.gbapal.lz");
const u8 gMonIcon_Sandslash[] = INCBIN_U8("graphics/pokemon/sandslash/icon.4bpp");
const u8 gMonFootprint_Sandslash[] = INCBIN_U8("graphics/pokemon/sandslash/footprint.1bpp");

const u32 gMonStillFrontPic_NidoranF[] = INCBIN_U32("graphics/pokemon/nidoran_f/front.4bpp.lz");
const u32 gMonPalette_NidoranF[] = INCBIN_U32("graphics/pokemon/nidoran_f/normal.gbapal.lz");
const u32 gMonBackPic_NidoranF[] = INCBIN_U32("graphics/pokemon/nidoran_f/back.4bpp.lz");
const u32 gMonShinyPalette_NidoranF[] = INCBIN_U32("graphics/pokemon/nidoran_f/shiny.gbapal.lz");
const u8 gMonIcon_NidoranF[] = INCBIN_U8("graphics/pokemon/nidoran_f/icon.4bpp");
const u8 gMonFootprint_NidoranF[] = INCBIN_U8("graphics/pokemon/nidoran_f/footprint.1bpp");

const u32 gMonStillFrontPic_Nidorina[] = INCBIN_U32("graphics/pokemon/nidorina/front.4bpp.lz");
const u32 gMonPalette_Nidorina[] = INCBIN_U32("graphics/pokemon/nidorina/normal.gbapal.lz");
const u32 gMonBackPic_Nidorina[] = INCBIN_U32("graphics/pokemon/nidorina/back.4bpp.lz");
const u32 gMonShinyPalette_Nidorina[] = INCBIN_U32("graphics/pokemon/nidorina/shiny.gbapal.lz");
const u8 gMonIcon_Nidorina[] = INCBIN_U8("graphics/pokemon/nidorina/icon.4bpp");
const u8 gMonFootprint_Nidorina[] = INCBIN_U8("graphics/pokemon/nidorina/footprint.1bpp");

const u32 gMonStillFrontPic_Nidoqueen[] = INCBIN_U32("graphics/pokemon/nidoqueen/front.4bpp.lz");
const u32 gMonPalette_Nidoqueen[] = INCBIN_U32("graphics/pokemon/nidoqueen/normal.gbapal.lz");
const u32 gMonBackPic_Nidoqueen[] = INCBIN_U32("graphics/pokemon/nidoqueen/back.4bpp.lz");
const u32 gMonShinyPalette_Nidoqueen[] = INCBIN_U32("graphics/pokemon/nidoqueen/shiny.gbapal.lz");
const u8 gMonIcon_Nidoqueen[] = INCBIN_U8("graphics/pokemon/nidoqueen/icon.4bpp");
const u8 gMonFootprint_Nidoqueen[] = INCBIN_U8("graphics/pokemon/nidoqueen/footprint.1bpp");

const u32 gMonStillFrontPic_NidoranM[] = INCBIN_U32("graphics/pokemon/nidoran_m/front.4bpp.lz");
const u32 gMonPalette_NidoranM[] = INCBIN_U32("graphics/pokemon/nidoran_m/normal.gbapal.lz");
const u32 gMonBackPic_NidoranM[] = INCBIN_U32("graphics/pokemon/nidoran_m/back.4bpp.lz");
const u32 gMonShinyPalette_NidoranM[] = INCBIN_U32("graphics/pokemon/nidoran_m/shiny.gbapal.lz");
const u8 gMonIcon_NidoranM[] = INCBIN_U8("graphics/pokemon/nidoran_m/icon.4bpp");
const u8 gMonFootprint_NidoranM[] = INCBIN_U8("graphics/pokemon/nidoran_m/footprint.1bpp");

const u32 gMonStillFrontPic_Nidorino[] = INCBIN_U32("graphics/pokemon/nidorino/front.4bpp.lz");
const u32 gMonPalette_Nidorino[] = INCBIN_U32("graphics/pokemon/nidorino/normal.gbapal.lz");
const u32 gMonBackPic_Nidorino[] = INCBIN_U32("graphics/pokemon/nidorino/back.4bpp.lz");
const u32 gMonShinyPalette_Nidorino[] = INCBIN_U32("graphics/pokemon/nidorino/shiny.gbapal.lz");
const u8 gMonIcon_Nidorino[] = INCBIN_U8("graphics/pokemon/nidorino/icon.4bpp");
const u8 gMonFootprint_Nidorino[] = INCBIN_U8("graphics/pokemon/nidorino/footprint.1bpp");

const u32 gMonStillFrontPic_Nidoking[] = INCBIN_U32("graphics/pokemon/nidoking/front.4bpp.lz");
const u32 gMonPalette_Nidoking[] = INCBIN_U32("graphics/pokemon/nidoking/normal.gbapal.lz");
const u32 gMonBackPic_Nidoking[] = INCBIN_U32("graphics/pokemon/nidoking/back.4bpp.lz");
const u32 gMonShinyPalette_Nidoking[] = INCBIN_U32("graphics/pokemon/nidoking/shiny.gbapal.lz");
const u8 gMonIcon_Nidoking[] = INCBIN_U8("graphics/pokemon/nidoking/icon.4bpp");
const u8 gMonFootprint_Nidoking[] = INCBIN_U8("graphics/pokemon/nidoking/footprint.1bpp");

const u32 gMonStillFrontPic_Clefairy[] = INCBIN_U32("graphics/pokemon/clefairy/front.4bpp.lz");
const u32 gMonPalette_Clefairy[] = INCBIN_U32("graphics/pokemon/clefairy/normal.gbapal.lz");
const u32 gMonBackPic_Clefairy[] = INCBIN_U32("graphics/pokemon/clefairy/back.4bpp.lz");
const u32 gMonShinyPalette_Clefairy[] = INCBIN_U32("graphics/pokemon/clefairy/shiny.gbapal.lz");
const u8 gMonIcon_Clefairy[] = INCBIN_U8("graphics/pokemon/clefairy/icon.4bpp");
const u8 gMonFootprint_Clefairy[] = INCBIN_U8("graphics/pokemon/clefairy/footprint.1bpp");

const u32 gMonStillFrontPic_Clefable[] = INCBIN_U32("graphics/pokemon/clefable/front.4bpp.lz");
const u32 gMonPalette_Clefable[] = INCBIN_U32("graphics/pokemon/clefable/normal.gbapal.lz");
const u32 gMonBackPic_Clefable[] = INCBIN_U32("graphics/pokemon/clefable/back.4bpp.lz");
const u32 gMonShinyPalette_Clefable[] = INCBIN_U32("graphics/pokemon/clefable/shiny.gbapal.lz");
const u8 gMonIcon_Clefable[] = INCBIN_U8("graphics/pokemon/clefable/icon.4bpp");
const u8 gMonFootprint_Clefable[] = INCBIN_U8("graphics/pokemon/clefable/footprint.1bpp");

const u32 gMonStillFrontPic_Vulpix[] = INCBIN_U32("graphics/pokemon/vulpix/front.4bpp.lz");
const u32 gMonPalette_Vulpix[] = INCBIN_U32("graphics/pokemon/vulpix/normal.gbapal.lz");
const u32 gMonBackPic_Vulpix[] = INCBIN_U32("graphics/pokemon/vulpix/back.4bpp.lz");
const u32 gMonShinyPalette_Vulpix[] = INCBIN_U32("graphics/pokemon/vulpix/shiny.gbapal.lz");
const u8 gMonIcon_Vulpix[] = INCBIN_U8("graphics/pokemon/vulpix/icon.4bpp");
const u8 gMonFootprint_Vulpix[] = INCBIN_U8("graphics/pokemon/vulpix/footprint.1bpp");

const u32 gMonStillFrontPic_Ninetales[] = INCBIN_U32("graphics/pokemon/ninetales/front.4bpp.lz");
const u32 gMonPalette_Ninetales[] = INCBIN_U32("graphics/pokemon/ninetales/normal.gbapal.lz");
const u32 gMonBackPic_Ninetales[] = INCBIN_U32("graphics/pokemon/ninetales/back.4bpp.lz");
const u32 gMonShinyPalette_Ninetales[] = INCBIN_U32("graphics/pokemon/ninetales/shiny.gbapal.lz");
const u8 gMonIcon_Ninetales[] = INCBIN_U8("graphics/pokemon/ninetales/icon.4bpp");
const u8 gMonFootprint_Ninetales[] = INCBIN_U8("graphics/pokemon/ninetales/footprint.1bpp");

const u32 gMonStillFrontPic_Jigglypuff[] = INCBIN_U32("graphics/pokemon/jigglypuff/front.4bpp.lz");
const u32 gMonPalette_Jigglypuff[] = INCBIN_U32("graphics/pokemon/jigglypuff/normal.gbapal.lz");
const u32 gMonBackPic_Jigglypuff[] = INCBIN_U32("graphics/pokemon/jigglypuff/back.4bpp.lz");
const u32 gMonShinyPalette_Jigglypuff[] = INCBIN_U32("graphics/pokemon/jigglypuff/shiny.gbapal.lz");
const u8 gMonIcon_Jigglypuff[] = INCBIN_U8("graphics/pokemon/jigglypuff/icon.4bpp");
const u8 gMonFootprint_Jigglypuff[] = INCBIN_U8("graphics/pokemon/jigglypuff/footprint.1bpp");

const u32 gMonStillFrontPic_Wigglytuff[] = INCBIN_U32("graphics/pokemon/wigglytuff/front.4bpp.lz");
const u32 gMonPalette_Wigglytuff[] = INCBIN_U32("graphics/pokemon/wigglytuff/normal.gbapal.lz");
const u32 gMonBackPic_Wigglytuff[] = INCBIN_U32("graphics/pokemon/wigglytuff/back.4bpp.lz");
const u32 gMonShinyPalette_Wigglytuff[] = INCBIN_U32("graphics/pokemon/wigglytuff/shiny.gbapal.lz");
const u8 gMonIcon_Wigglytuff[] = INCBIN_U8("graphics/pokemon/wigglytuff/icon.4bpp");
const u8 gMonFootprint_Wigglytuff[] = INCBIN_U8("graphics/pokemon/wigglytuff/footprint.1bpp");

const u32 gMonStillFrontPic_Zubat[] = INCBIN_U32("graphics/pokemon/zubat/front.4bpp.lz");
const u32 gMonPalette_Zubat[] = INCBIN_U32("graphics/pokemon/zubat/normal.gbapal.lz");
const u32 gMonBackPic_Zubat[] = INCBIN_U32("graphics/pokemon/zubat/back.4bpp.lz");
const u32 gMonShinyPalette_Zubat[] = INCBIN_U32("graphics/pokemon/zubat/shiny.gbapal.lz");
const u8 gMonIcon_Zubat[] = INCBIN_U8("graphics/pokemon/zubat/icon.4bpp");
const u8 gMonFootprint_Zubat[] = INCBIN_U8("graphics/pokemon/zubat/footprint.1bpp");

const u32 gMonStillFrontPic_Golbat[] = INCBIN_U32("graphics/pokemon/golbat/front.4bpp.lz");
const u32 gMonPalette_Golbat[] = INCBIN_U32("graphics/pokemon/golbat/normal.gbapal.lz");
const u32 gMonBackPic_Golbat[] = INCBIN_U32("graphics/pokemon/golbat/back.4bpp.lz");
const u32 gMonShinyPalette_Golbat[] = INCBIN_U32("graphics/pokemon/golbat/shiny.gbapal.lz");
const u8 gMonIcon_Golbat[] = INCBIN_U8("graphics/pokemon/golbat/icon.4bpp");
const u8 gMonFootprint_Golbat[] = INCBIN_U8("graphics/pokemon/golbat/footprint.1bpp");

const u32 gMonStillFrontPic_Oddish[] = INCBIN_U32("graphics/pokemon/oddish/front.4bpp.lz");
const u32 gMonPalette_Oddish[] = INCBIN_U32("graphics/pokemon/oddish/normal.gbapal.lz");
const u32 gMonBackPic_Oddish[] = INCBIN_U32("graphics/pokemon/oddish/back.4bpp.lz");
const u32 gMonShinyPalette_Oddish[] = INCBIN_U32("graphics/pokemon/oddish/shiny.gbapal.lz");
const u8 gMonIcon_Oddish[] = INCBIN_U8("graphics/pokemon/oddish/icon.4bpp");
const u8 gMonFootprint_Oddish[] = INCBIN_U8("graphics/pokemon/oddish/footprint.1bpp");

const u32 gMonStillFrontPic_Gloom[] = INCBIN_U32("graphics/pokemon/gloom/front.4bpp.lz");
const u32 gMonPalette_Gloom[] = INCBIN_U32("graphics/pokemon/gloom/normal.gbapal.lz");
const u32 gMonBackPic_Gloom[] = INCBIN_U32("graphics/pokemon/gloom/back.4bpp.lz");
const u32 gMonShinyPalette_Gloom[] = INCBIN_U32("graphics/pokemon/gloom/shiny.gbapal.lz");
const u8 gMonIcon_Gloom[] = INCBIN_U8("graphics/pokemon/gloom/icon.4bpp");
const u8 gMonFootprint_Gloom[] = INCBIN_U8("graphics/pokemon/gloom/footprint.1bpp");

const u32 gMonStillFrontPic_Vileplume[] = INCBIN_U32("graphics/pokemon/vileplume/front.4bpp.lz");
const u32 gMonPalette_Vileplume[] = INCBIN_U32("graphics/pokemon/vileplume/normal.gbapal.lz");
const u32 gMonBackPic_Vileplume[] = INCBIN_U32("graphics/pokemon/vileplume/back.4bpp.lz");
const u32 gMonShinyPalette_Vileplume[] = INCBIN_U32("graphics/pokemon/vileplume/shiny.gbapal.lz");
const u8 gMonIcon_Vileplume[] = INCBIN_U8("graphics/pokemon/vileplume/icon.4bpp");
const u8 gMonFootprint_Vileplume[] = INCBIN_U8("graphics/pokemon/vileplume/footprint.1bpp");

const u32 gMonStillFrontPic_Paras[] = INCBIN_U32("graphics/pokemon/paras/front.4bpp.lz");
const u32 gMonPalette_Paras[] = INCBIN_U32("graphics/pokemon/paras/normal.gbapal.lz");
const u32 gMonBackPic_Paras[] = INCBIN_U32("graphics/pokemon/paras/back.4bpp.lz");
const u32 gMonShinyPalette_Paras[] = INCBIN_U32("graphics/pokemon/paras/shiny.gbapal.lz");
const u8 gMonIcon_Paras[] = INCBIN_U8("graphics/pokemon/paras/icon.4bpp");
const u8 gMonFootprint_Paras[] = INCBIN_U8("graphics/pokemon/paras/footprint.1bpp");

const u32 gMonStillFrontPic_Parasect[] = INCBIN_U32("graphics/pokemon/parasect/front.4bpp.lz");
const u32 gMonPalette_Parasect[] = INCBIN_U32("graphics/pokemon/parasect/normal.gbapal.lz");
const u32 gMonBackPic_Parasect[] = INCBIN_U32("graphics/pokemon/parasect/back.4bpp.lz");
const u32 gMonShinyPalette_Parasect[] = INCBIN_U32("graphics/pokemon/parasect/shiny.gbapal.lz");
const u8 gMonIcon_Parasect[] = INCBIN_U8("graphics/pokemon/parasect/icon.4bpp");
const u8 gMonFootprint_Parasect[] = INCBIN_U8("graphics/pokemon/parasect/footprint.1bpp");

const u32 gMonStillFrontPic_Venonat[] = INCBIN_U32("graphics/pokemon/venonat/front.4bpp.lz");
const u32 gMonPalette_Venonat[] = INCBIN_U32("graphics/pokemon/venonat/normal.gbapal.lz");
const u32 gMonBackPic_Venonat[] = INCBIN_U32("graphics/pokemon/venonat/back.4bpp.lz");
const u32 gMonShinyPalette_Venonat[] = INCBIN_U32("graphics/pokemon/venonat/shiny.gbapal.lz");
const u8 gMonIcon_Venonat[] = INCBIN_U8("graphics/pokemon/venonat/icon.4bpp");
const u8 gMonFootprint_Venonat[] = INCBIN_U8("graphics/pokemon/venonat/footprint.1bpp");

const u32 gMonStillFrontPic_Venomoth[] = INCBIN_U32("graphics/pokemon/venomoth/front.4bpp.lz");
const u32 gMonPalette_Venomoth[] = INCBIN_U32("graphics/pokemon/venomoth/normal.gbapal.lz");
const u32 gMonBackPic_Venomoth[] = INCBIN_U32("graphics/pokemon/venomoth/back.4bpp.lz");
const u32 gMonShinyPalette_Venomoth[] = INCBIN_U32("graphics/pokemon/venomoth/shiny.gbapal.lz");
const u8 gMonIcon_Venomoth[] = INCBIN_U8("graphics/pokemon/venomoth/icon.4bpp");
const u8 gMonFootprint_Venomoth[] = INCBIN_U8("graphics/pokemon/venomoth/footprint.1bpp");

const u32 gMonStillFrontPic_Diglett[] = INCBIN_U32("graphics/pokemon/diglett/front.4bpp.lz");
const u32 gMonPalette_Diglett[] = INCBIN_U32("graphics/pokemon/diglett/normal.gbapal.lz");
const u32 gMonBackPic_Diglett[] = INCBIN_U32("graphics/pokemon/diglett/back.4bpp.lz");
const u32 gMonShinyPalette_Diglett[] = INCBIN_U32("graphics/pokemon/diglett/shiny.gbapal.lz");
const u8 gMonIcon_Diglett[] = INCBIN_U8("graphics/pokemon/diglett/icon.4bpp");
const u8 gMonFootprint_Diglett[] = INCBIN_U8("graphics/pokemon/diglett/footprint.1bpp");

const u32 gMonStillFrontPic_Dugtrio[] = INCBIN_U32("graphics/pokemon/dugtrio/front.4bpp.lz");
const u32 gMonPalette_Dugtrio[] = INCBIN_U32("graphics/pokemon/dugtrio/normal.gbapal.lz");
const u32 gMonBackPic_Dugtrio[] = INCBIN_U32("graphics/pokemon/dugtrio/back.4bpp.lz");
const u32 gMonShinyPalette_Dugtrio[] = INCBIN_U32("graphics/pokemon/dugtrio/shiny.gbapal.lz");
const u8 gMonIcon_Dugtrio[] = INCBIN_U8("graphics/pokemon/dugtrio/icon.4bpp");
const u8 gMonFootprint_Dugtrio[] = INCBIN_U8("graphics/pokemon/dugtrio/footprint.1bpp");

const u32 gMonStillFrontPic_Meowth[] = INCBIN_U32("graphics/pokemon/meowth/front.4bpp.lz");
const u32 gMonPalette_Meowth[] = INCBIN_U32("graphics/pokemon/meowth/normal.gbapal.lz");
const u32 gMonBackPic_Meowth[] = INCBIN_U32("graphics/pokemon/meowth/back.4bpp.lz");
const u32 gMonShinyPalette_Meowth[] = INCBIN_U32("graphics/pokemon/meowth/shiny.gbapal.lz");
const u8 gMonIcon_Meowth[] = INCBIN_U8("graphics/pokemon/meowth/icon.4bpp");
const u8 gMonFootprint_Meowth[] = INCBIN_U8("graphics/pokemon/meowth/footprint.1bpp");

const u32 gMonStillFrontPic_Persian[] = INCBIN_U32("graphics/pokemon/persian/front.4bpp.lz");
const u32 gMonPalette_Persian[] = INCBIN_U32("graphics/pokemon/persian/normal.gbapal.lz");
const u32 gMonBackPic_Persian[] = INCBIN_U32("graphics/pokemon/persian/back.4bpp.lz");
const u32 gMonShinyPalette_Persian[] = INCBIN_U32("graphics/pokemon/persian/shiny.gbapal.lz");
const u8 gMonIcon_Persian[] = INCBIN_U8("graphics/pokemon/persian/icon.4bpp");
const u8 gMonFootprint_Persian[] = INCBIN_U8("graphics/pokemon/persian/footprint.1bpp");

const u32 gMonStillFrontPic_Psyduck[] = INCBIN_U32("graphics/pokemon/psyduck/front.4bpp.lz");
const u32 gMonPalette_Psyduck[] = INCBIN_U32("graphics/pokemon/psyduck/normal.gbapal.lz");
const u32 gMonBackPic_Psyduck[] = INCBIN_U32("graphics/pokemon/psyduck/back.4bpp.lz");
const u32 gMonShinyPalette_Psyduck[] = INCBIN_U32("graphics/pokemon/psyduck/shiny.gbapal.lz");
const u8 gMonIcon_Psyduck[] = INCBIN_U8("graphics/pokemon/psyduck/icon.4bpp");
const u8 gMonFootprint_Psyduck[] = INCBIN_U8("graphics/pokemon/psyduck/footprint.1bpp");

const u32 gMonStillFrontPic_Golduck[] = INCBIN_U32("graphics/pokemon/golduck/front.4bpp.lz");
const u32 gMonPalette_Golduck[] = INCBIN_U32("graphics/pokemon/golduck/normal.gbapal.lz");
const u32 gMonBackPic_Golduck[] = INCBIN_U32("graphics/pokemon/golduck/back.4bpp.lz");
const u32 gMonShinyPalette_Golduck[] = INCBIN_U32("graphics/pokemon/golduck/shiny.gbapal.lz");
const u8 gMonIcon_Golduck[] = INCBIN_U8("graphics/pokemon/golduck/icon.4bpp");
const u8 gMonFootprint_Golduck[] = INCBIN_U8("graphics/pokemon/golduck/footprint.1bpp");

const u32 gMonStillFrontPic_Mankey[] = INCBIN_U32("graphics/pokemon/mankey/front.4bpp.lz");
const u32 gMonPalette_Mankey[] = INCBIN_U32("graphics/pokemon/mankey/normal.gbapal.lz");
const u32 gMonBackPic_Mankey[] = INCBIN_U32("graphics/pokemon/mankey/back.4bpp.lz");
const u32 gMonShinyPalette_Mankey[] = INCBIN_U32("graphics/pokemon/mankey/shiny.gbapal.lz");
const u8 gMonIcon_Mankey[] = INCBIN_U8("graphics/pokemon/mankey/icon.4bpp");
const u8 gMonFootprint_Mankey[] = INCBIN_U8("graphics/pokemon/mankey/footprint.1bpp");

const u32 gMonStillFrontPic_Primeape[] = INCBIN_U32("graphics/pokemon/primeape/front.4bpp.lz");
const u32 gMonPalette_Primeape[] = INCBIN_U32("graphics/pokemon/primeape/normal.gbapal.lz");
const u32 gMonBackPic_Primeape[] = INCBIN_U32("graphics/pokemon/primeape/back.4bpp.lz");
const u32 gMonShinyPalette_Primeape[] = INCBIN_U32("graphics/pokemon/primeape/shiny.gbapal.lz");
const u8 gMonIcon_Primeape[] = INCBIN_U8("graphics/pokemon/primeape/icon.4bpp");
const u8 gMonFootprint_Primeape[] = INCBIN_U8("graphics/pokemon/primeape/footprint.1bpp");

const u32 gMonStillFrontPic_Growlithe[] = INCBIN_U32("graphics/pokemon/growlithe/front.4bpp.lz");
const u32 gMonPalette_Growlithe[] = INCBIN_U32("graphics/pokemon/growlithe/normal.gbapal.lz");
const u32 gMonBackPic_Growlithe[] = INCBIN_U32("graphics/pokemon/growlithe/back.4bpp.lz");
const u32 gMonShinyPalette_Growlithe[] = INCBIN_U32("graphics/pokemon/growlithe/shiny.gbapal.lz");
const u8 gMonIcon_Growlithe[] = INCBIN_U8("graphics/pokemon/growlithe/icon.4bpp");
const u8 gMonFootprint_Growlithe[] = INCBIN_U8("graphics/pokemon/growlithe/footprint.1bpp");

const u32 gMonStillFrontPic_Arcanine[] = INCBIN_U32("graphics/pokemon/arcanine/front.4bpp.lz");
const u32 gMonPalette_Arcanine[] = INCBIN_U32("graphics/pokemon/arcanine/normal.gbapal.lz");
const u32 gMonBackPic_Arcanine[] = INCBIN_U32("graphics/pokemon/arcanine/back.4bpp.lz");
const u32 gMonShinyPalette_Arcanine[] = INCBIN_U32("graphics/pokemon/arcanine/shiny.gbapal.lz");
const u8 gMonIcon_Arcanine[] = INCBIN_U8("graphics/pokemon/arcanine/icon.4bpp");
const u8 gMonFootprint_Arcanine[] = INCBIN_U8("graphics/pokemon/arcanine/footprint.1bpp");

const u32 gMonStillFrontPic_Poliwag[] = INCBIN_U32("graphics/pokemon/poliwag/front.4bpp.lz");
const u32 gMonPalette_Poliwag[] = INCBIN_U32("graphics/pokemon/poliwag/normal.gbapal.lz");
const u32 gMonBackPic_Poliwag[] = INCBIN_U32("graphics/pokemon/poliwag/back.4bpp.lz");
const u32 gMonShinyPalette_Poliwag[] = INCBIN_U32("graphics/pokemon/poliwag/shiny.gbapal.lz");
const u8 gMonIcon_Poliwag[] = INCBIN_U8("graphics/pokemon/poliwag/icon.4bpp");
const u8 gMonFootprint_Poliwag[] = INCBIN_U8("graphics/pokemon/poliwag/footprint.1bpp");

const u32 gMonStillFrontPic_Poliwhirl[] = INCBIN_U32("graphics/pokemon/poliwhirl/front.4bpp.lz");
const u32 gMonPalette_Poliwhirl[] = INCBIN_U32("graphics/pokemon/poliwhirl/normal.gbapal.lz");
const u32 gMonBackPic_Poliwhirl[] = INCBIN_U32("graphics/pokemon/poliwhirl/back.4bpp.lz");
const u32 gMonShinyPalette_Poliwhirl[] = INCBIN_U32("graphics/pokemon/poliwhirl/shiny.gbapal.lz");
const u8 gMonIcon_Poliwhirl[] = INCBIN_U8("graphics/pokemon/poliwhirl/icon.4bpp");
const u8 gMonFootprint_Poliwhirl[] = INCBIN_U8("graphics/pokemon/poliwhirl/footprint.1bpp");

const u32 gMonStillFrontPic_Poliwrath[] = INCBIN_U32("graphics/pokemon/poliwrath/front.4bpp.lz");
const u32 gMonPalette_Poliwrath[] = INCBIN_U32("graphics/pokemon/poliwrath/normal.gbapal.lz");
const u32 gMonBackPic_Poliwrath[] = INCBIN_U32("graphics/pokemon/poliwrath/back.4bpp.lz");
const u32 gMonShinyPalette_Poliwrath[] = INCBIN_U32("graphics/pokemon/poliwrath/shiny.gbapal.lz");
const u8 gMonIcon_Poliwrath[] = INCBIN_U8("graphics/pokemon/poliwrath/icon.4bpp");
const u8 gMonFootprint_Poliwrath[] = INCBIN_U8("graphics/pokemon/poliwrath/footprint.1bpp");

const u32 gMonStillFrontPic_Abra[] = INCBIN_U32("graphics/pokemon/abra/front.4bpp.lz");
const u32 gMonPalette_Abra[] = INCBIN_U32("graphics/pokemon/abra/normal.gbapal.lz");
const u32 gMonBackPic_Abra[] = INCBIN_U32("graphics/pokemon/abra/back.4bpp.lz");
const u32 gMonShinyPalette_Abra[] = INCBIN_U32("graphics/pokemon/abra/shiny.gbapal.lz");
const u8 gMonIcon_Abra[] = INCBIN_U8("graphics/pokemon/abra/icon.4bpp");
const u8 gMonFootprint_Abra[] = INCBIN_U8("graphics/pokemon/abra/footprint.1bpp");

const u32 gMonStillFrontPic_Kadabra[] = INCBIN_U32("graphics/pokemon/kadabra/front.4bpp.lz");
const u32 gMonPalette_Kadabra[] = INCBIN_U32("graphics/pokemon/kadabra/normal.gbapal.lz");
const u32 gMonBackPic_Kadabra[] = INCBIN_U32("graphics/pokemon/kadabra/back.4bpp.lz");
const u32 gMonShinyPalette_Kadabra[] = INCBIN_U32("graphics/pokemon/kadabra/shiny.gbapal.lz");
const u8 gMonIcon_Kadabra[] = INCBIN_U8("graphics/pokemon/kadabra/icon.4bpp");
const u8 gMonFootprint_Kadabra[] = INCBIN_U8("graphics/pokemon/kadabra/footprint.1bpp");

const u32 gMonStillFrontPic_Alakazam[] = INCBIN_U32("graphics/pokemon/alakazam/front.4bpp.lz");
const u32 gMonPalette_Alakazam[] = INCBIN_U32("graphics/pokemon/alakazam/normal.gbapal.lz");
const u32 gMonBackPic_Alakazam[] = INCBIN_U32("graphics/pokemon/alakazam/back.4bpp.lz");
const u32 gMonShinyPalette_Alakazam[] = INCBIN_U32("graphics/pokemon/alakazam/shiny.gbapal.lz");
const u8 gMonIcon_Alakazam[] = INCBIN_U8("graphics/pokemon/alakazam/icon.4bpp");
const u8 gMonFootprint_Alakazam[] = INCBIN_U8("graphics/pokemon/alakazam/footprint.1bpp");

const u32 gMonStillFrontPic_Machop[] = INCBIN_U32("graphics/pokemon/machop/front.4bpp.lz");
const u32 gMonPalette_Machop[] = INCBIN_U32("graphics/pokemon/machop/normal.gbapal.lz");
const u32 gMonBackPic_Machop[] = INCBIN_U32("graphics/pokemon/machop/back.4bpp.lz");
const u32 gMonShinyPalette_Machop[] = INCBIN_U32("graphics/pokemon/machop/shiny.gbapal.lz");
const u8 gMonIcon_Machop[] = INCBIN_U8("graphics/pokemon/machop/icon.4bpp");
const u8 gMonFootprint_Machop[] = INCBIN_U8("graphics/pokemon/machop/footprint.1bpp");

const u32 gMonStillFrontPic_Machoke[] = INCBIN_U32("graphics/pokemon/machoke/front.4bpp.lz");
const u32 gMonPalette_Machoke[] = INCBIN_U32("graphics/pokemon/machoke/normal.gbapal.lz");
const u32 gMonBackPic_Machoke[] = INCBIN_U32("graphics/pokemon/machoke/back.4bpp.lz");
const u32 gMonShinyPalette_Machoke[] = INCBIN_U32("graphics/pokemon/machoke/shiny.gbapal.lz");
const u8 gMonIcon_Machoke[] = INCBIN_U8("graphics/pokemon/machoke/icon.4bpp");
const u8 gMonFootprint_Machoke[] = INCBIN_U8("graphics/pokemon/machoke/footprint.1bpp");

const u32 gMonStillFrontPic_Machamp[] = INCBIN_U32("graphics/pokemon/machamp/front.4bpp.lz");
const u32 gMonPalette_Machamp[] = INCBIN_U32("graphics/pokemon/machamp/normal.gbapal.lz");
const u32 gMonBackPic_Machamp[] = INCBIN_U32("graphics/pokemon/machamp/back.4bpp.lz");
const u32 gMonShinyPalette_Machamp[] = INCBIN_U32("graphics/pokemon/machamp/shiny.gbapal.lz");
const u8 gMonIcon_Machamp[] = INCBIN_U8("graphics/pokemon/machamp/icon.4bpp");
const u8 gMonFootprint_Machamp[] = INCBIN_U8("graphics/pokemon/machamp/footprint.1bpp");

const u32 gMonStillFrontPic_Bellsprout[] = INCBIN_U32("graphics/pokemon/bellsprout/front.4bpp.lz");
const u32 gMonPalette_Bellsprout[] = INCBIN_U32("graphics/pokemon/bellsprout/normal.gbapal.lz");
const u32 gMonBackPic_Bellsprout[] = INCBIN_U32("graphics/pokemon/bellsprout/back.4bpp.lz");
const u32 gMonShinyPalette_Bellsprout[] = INCBIN_U32("graphics/pokemon/bellsprout/shiny.gbapal.lz");
const u8 gMonIcon_Bellsprout[] = INCBIN_U8("graphics/pokemon/bellsprout/icon.4bpp");
const u8 gMonFootprint_Bellsprout[] = INCBIN_U8("graphics/pokemon/bellsprout/footprint.1bpp");

const u32 gMonStillFrontPic_Weepinbell[] = INCBIN_U32("graphics/pokemon/weepinbell/front.4bpp.lz");
const u32 gMonPalette_Weepinbell[] = INCBIN_U32("graphics/pokemon/weepinbell/normal.gbapal.lz");
const u32 gMonBackPic_Weepinbell[] = INCBIN_U32("graphics/pokemon/weepinbell/back.4bpp.lz");
const u32 gMonShinyPalette_Weepinbell[] = INCBIN_U32("graphics/pokemon/weepinbell/shiny.gbapal.lz");
const u8 gMonIcon_Weepinbell[] = INCBIN_U8("graphics/pokemon/weepinbell/icon.4bpp");
const u8 gMonFootprint_Weepinbell[] = INCBIN_U8("graphics/pokemon/weepinbell/footprint.1bpp");

const u32 gMonStillFrontPic_Victreebel[] = INCBIN_U32("graphics/pokemon/victreebel/front.4bpp.lz");
const u32 gMonPalette_Victreebel[] = INCBIN_U32("graphics/pokemon/victreebel/normal.gbapal.lz");
const u32 gMonBackPic_Victreebel[] = INCBIN_U32("graphics/pokemon/victreebel/back.4bpp.lz");
const u32 gMonShinyPalette_Victreebel[] = INCBIN_U32("graphics/pokemon/victreebel/shiny.gbapal.lz");
const u8 gMonIcon_Victreebel[] = INCBIN_U8("graphics/pokemon/victreebel/icon.4bpp");
const u8 gMonFootprint_Victreebel[] = INCBIN_U8("graphics/pokemon/victreebel/footprint.1bpp");

const u32 gMonStillFrontPic_Tentacool[] = INCBIN_U32("graphics/pokemon/tentacool/front.4bpp.lz");
const u32 gMonPalette_Tentacool[] = INCBIN_U32("graphics/pokemon/tentacool/normal.gbapal.lz");
const u32 gMonBackPic_Tentacool[] = INCBIN_U32("graphics/pokemon/tentacool/back.4bpp.lz");
const u32 gMonShinyPalette_Tentacool[] = INCBIN_U32("graphics/pokemon/tentacool/shiny.gbapal.lz");
const u8 gMonIcon_Tentacool[] = INCBIN_U8("graphics/pokemon/tentacool/icon.4bpp");
const u8 gMonFootprint_Tentacool[] = INCBIN_U8("graphics/pokemon/tentacool/footprint.1bpp");

const u32 gMonStillFrontPic_Tentacruel[] = INCBIN_U32("graphics/pokemon/tentacruel/front.4bpp.lz");
const u32 gMonPalette_Tentacruel[] = INCBIN_U32("graphics/pokemon/tentacruel/normal.gbapal.lz");
const u32 gMonBackPic_Tentacruel[] = INCBIN_U32("graphics/pokemon/tentacruel/back.4bpp.lz");
const u32 gMonShinyPalette_Tentacruel[] = INCBIN_U32("graphics/pokemon/tentacruel/shiny.gbapal.lz");
const u8 gMonIcon_Tentacruel[] = INCBIN_U8("graphics/pokemon/tentacruel/icon.4bpp");
const u8 gMonFootprint_Tentacruel[] = INCBIN_U8("graphics/pokemon/tentacruel/footprint.1bpp");

const u32 gMonStillFrontPic_Geodude[] = INCBIN_U32("graphics/pokemon/geodude/front.4bpp.lz");
const u32 gMonPalette_Geodude[] = INCBIN_U32("graphics/pokemon/geodude/normal.gbapal.lz");
const u32 gMonBackPic_Geodude[] = INCBIN_U32("graphics/pokemon/geodude/back.4bpp.lz");
const u32 gMonShinyPalette_Geodude[] = INCBIN_U32("graphics/pokemon/geodude/shiny.gbapal.lz");
const u8 gMonIcon_Geodude[] = INCBIN_U8("graphics/pokemon/geodude/icon.4bpp");
const u8 gMonFootprint_Geodude[] = INCBIN_U8("graphics/pokemon/geodude/footprint.1bpp");

const u32 gMonStillFrontPic_Graveler[] = INCBIN_U32("graphics/pokemon/graveler/front.4bpp.lz");
const u32 gMonPalette_Graveler[] = INCBIN_U32("graphics/pokemon/graveler/normal.gbapal.lz");
const u32 gMonBackPic_Graveler[] = INCBIN_U32("graphics/pokemon/graveler/back.4bpp.lz");
const u32 gMonShinyPalette_Graveler[] = INCBIN_U32("graphics/pokemon/graveler/shiny.gbapal.lz");
const u8 gMonIcon_Graveler[] = INCBIN_U8("graphics/pokemon/graveler/icon.4bpp");
const u8 gMonFootprint_Graveler[] = INCBIN_U8("graphics/pokemon/graveler/footprint.1bpp");

const u32 gMonStillFrontPic_Golem[] = INCBIN_U32("graphics/pokemon/golem/front.4bpp.lz");
const u32 gMonPalette_Golem[] = INCBIN_U32("graphics/pokemon/golem/normal.gbapal.lz");
const u32 gMonBackPic_Golem[] = INCBIN_U32("graphics/pokemon/golem/back.4bpp.lz");
const u32 gMonShinyPalette_Golem[] = INCBIN_U32("graphics/pokemon/golem/shiny.gbapal.lz");
const u8 gMonIcon_Golem[] = INCBIN_U8("graphics/pokemon/golem/icon.4bpp");
const u8 gMonFootprint_Golem[] = INCBIN_U8("graphics/pokemon/golem/footprint.1bpp");

const u32 gMonStillFrontPic_Ponyta[] = INCBIN_U32("graphics/pokemon/ponyta/front.4bpp.lz");
const u32 gMonPalette_Ponyta[] = INCBIN_U32("graphics/pokemon/ponyta/normal.gbapal.lz");
const u32 gMonBackPic_Ponyta[] = INCBIN_U32("graphics/pokemon/ponyta/back.4bpp.lz");
const u32 gMonShinyPalette_Ponyta[] = INCBIN_U32("graphics/pokemon/ponyta/shiny.gbapal.lz");
const u8 gMonIcon_Ponyta[] = INCBIN_U8("graphics/pokemon/ponyta/icon.4bpp");
const u8 gMonFootprint_Ponyta[] = INCBIN_U8("graphics/pokemon/ponyta/footprint.1bpp");

const u32 gMonStillFrontPic_Rapidash[] = INCBIN_U32("graphics/pokemon/rapidash/front.4bpp.lz");
const u32 gMonPalette_Rapidash[] = INCBIN_U32("graphics/pokemon/rapidash/normal.gbapal.lz");
const u32 gMonBackPic_Rapidash[] = INCBIN_U32("graphics/pokemon/rapidash/back.4bpp.lz");
const u32 gMonShinyPalette_Rapidash[] = INCBIN_U32("graphics/pokemon/rapidash/shiny.gbapal.lz");
const u8 gMonIcon_Rapidash[] = INCBIN_U8("graphics/pokemon/rapidash/icon.4bpp");
const u8 gMonFootprint_Rapidash[] = INCBIN_U8("graphics/pokemon/rapidash/footprint.1bpp");

const u32 gMonStillFrontPic_Slowpoke[] = INCBIN_U32("graphics/pokemon/slowpoke/front.4bpp.lz");
const u32 gMonPalette_Slowpoke[] = INCBIN_U32("graphics/pokemon/slowpoke/normal.gbapal.lz");
const u32 gMonBackPic_Slowpoke[] = INCBIN_U32("graphics/pokemon/slowpoke/back.4bpp.lz");
const u32 gMonShinyPalette_Slowpoke[] = INCBIN_U32("graphics/pokemon/slowpoke/shiny.gbapal.lz");
const u8 gMonIcon_Slowpoke[] = INCBIN_U8("graphics/pokemon/slowpoke/icon.4bpp");
const u8 gMonFootprint_Slowpoke[] = INCBIN_U8("graphics/pokemon/slowpoke/footprint.1bpp");

const u32 gMonStillFrontPic_Slowbro[] = INCBIN_U32("graphics/pokemon/slowbro/front.4bpp.lz");
const u32 gMonPalette_Slowbro[] = INCBIN_U32("graphics/pokemon/slowbro/normal.gbapal.lz");
const u32 gMonBackPic_Slowbro[] = INCBIN_U32("graphics/pokemon/slowbro/back.4bpp.lz");
const u32 gMonShinyPalette_Slowbro[] = INCBIN_U32("graphics/pokemon/slowbro/shiny.gbapal.lz");
const u8 gMonIcon_Slowbro[] = INCBIN_U8("graphics/pokemon/slowbro/icon.4bpp");
const u8 gMonFootprint_Slowbro[] = INCBIN_U8("graphics/pokemon/slowbro/footprint.1bpp");

const u32 gMonStillFrontPic_Magnemite[] = INCBIN_U32("graphics/pokemon/magnemite/front.4bpp.lz");
const u32 gMonPalette_Magnemite[] = INCBIN_U32("graphics/pokemon/magnemite/normal.gbapal.lz");
const u32 gMonBackPic_Magnemite[] = INCBIN_U32("graphics/pokemon/magnemite/back.4bpp.lz");
const u32 gMonShinyPalette_Magnemite[] = INCBIN_U32("graphics/pokemon/magnemite/shiny.gbapal.lz");
const u8 gMonIcon_Magnemite[] = INCBIN_U8("graphics/pokemon/magnemite/icon.4bpp");
const u8 gMonFootprint_Magnemite[] = INCBIN_U8("graphics/pokemon/magnemite/footprint.1bpp");

const u32 gMonStillFrontPic_Magneton[] = INCBIN_U32("graphics/pokemon/magneton/front.4bpp.lz");
const u32 gMonPalette_Magneton[] = INCBIN_U32("graphics/pokemon/magneton/normal.gbapal.lz");
const u32 gMonBackPic_Magneton[] = INCBIN_U32("graphics/pokemon/magneton/back.4bpp.lz");
const u32 gMonShinyPalette_Magneton[] = INCBIN_U32("graphics/pokemon/magneton/shiny.gbapal.lz");
const u8 gMonIcon_Magneton[] = INCBIN_U8("graphics/pokemon/magneton/icon.4bpp");
const u8 gMonFootprint_Magneton[] = INCBIN_U8("graphics/pokemon/magneton/footprint.1bpp");

const u32 gMonStillFrontPic_Farfetchd[] = INCBIN_U32("graphics/pokemon/farfetchd/front.4bpp.lz");
const u32 gMonPalette_Farfetchd[] = INCBIN_U32("graphics/pokemon/farfetchd/normal.gbapal.lz");
const u32 gMonBackPic_Farfetchd[] = INCBIN_U32("graphics/pokemon/farfetchd/back.4bpp.lz");
const u32 gMonShinyPalette_Farfetchd[] = INCBIN_U32("graphics/pokemon/farfetchd/shiny.gbapal.lz");
const u8 gMonIcon_Farfetchd[] = INCBIN_U8("graphics/pokemon/farfetchd/icon.4bpp");
const u8 gMonFootprint_Farfetchd[] = INCBIN_U8("graphics/pokemon/farfetchd/footprint.1bpp");

const u32 gMonStillFrontPic_Doduo[] = INCBIN_U32("graphics/pokemon/doduo/front.4bpp.lz");
const u32 gMonPalette_Doduo[] = INCBIN_U32("graphics/pokemon/doduo/normal.gbapal.lz");
const u32 gMonBackPic_Doduo[] = INCBIN_U32("graphics/pokemon/doduo/back.4bpp.lz");
const u32 gMonShinyPalette_Doduo[] = INCBIN_U32("graphics/pokemon/doduo/shiny.gbapal.lz");
const u8 gMonIcon_Doduo[] = INCBIN_U8("graphics/pokemon/doduo/icon.4bpp");
const u8 gMonFootprint_Doduo[] = INCBIN_U8("graphics/pokemon/doduo/footprint.1bpp");

const u32 gMonStillFrontPic_Dodrio[] = INCBIN_U32("graphics/pokemon/dodrio/front.4bpp.lz");
const u32 gMonPalette_Dodrio[] = INCBIN_U32("graphics/pokemon/dodrio/normal.gbapal.lz");
const u32 gMonBackPic_Dodrio[] = INCBIN_U32("graphics/pokemon/dodrio/back.4bpp.lz");
const u32 gMonShinyPalette_Dodrio[] = INCBIN_U32("graphics/pokemon/dodrio/shiny.gbapal.lz");
const u8 gMonIcon_Dodrio[] = INCBIN_U8("graphics/pokemon/dodrio/icon.4bpp");
const u8 gMonFootprint_Dodrio[] = INCBIN_U8("graphics/pokemon/dodrio/footprint.1bpp");

const u32 gMonStillFrontPic_Seel[] = INCBIN_U32("graphics/pokemon/seel/front.4bpp.lz");
const u32 gMonPalette_Seel[] = INCBIN_U32("graphics/pokemon/seel/normal.gbapal.lz");
const u32 gMonBackPic_Seel[] = INCBIN_U32("graphics/pokemon/seel/back.4bpp.lz");
const u32 gMonShinyPalette_Seel[] = INCBIN_U32("graphics/pokemon/seel/shiny.gbapal.lz");
const u8 gMonIcon_Seel[] = INCBIN_U8("graphics/pokemon/seel/icon.4bpp");
const u8 gMonFootprint_Seel[] = INCBIN_U8("graphics/pokemon/seel/footprint.1bpp");

const u32 gMonStillFrontPic_Dewgong[] = INCBIN_U32("graphics/pokemon/dewgong/front.4bpp.lz");
const u32 gMonPalette_Dewgong[] = INCBIN_U32("graphics/pokemon/dewgong/normal.gbapal.lz");
const u32 gMonBackPic_Dewgong[] = INCBIN_U32("graphics/pokemon/dewgong/back.4bpp.lz");
const u32 gMonShinyPalette_Dewgong[] = INCBIN_U32("graphics/pokemon/dewgong/shiny.gbapal.lz");
const u8 gMonIcon_Dewgong[] = INCBIN_U8("graphics/pokemon/dewgong/icon.4bpp");
const u8 gMonFootprint_Dewgong[] = INCBIN_U8("graphics/pokemon/dewgong/footprint.1bpp");

const u32 gMonStillFrontPic_Grimer[] = INCBIN_U32("graphics/pokemon/grimer/front.4bpp.lz");
const u32 gMonPalette_Grimer[] = INCBIN_U32("graphics/pokemon/grimer/normal.gbapal.lz");
const u32 gMonBackPic_Grimer[] = INCBIN_U32("graphics/pokemon/grimer/back.4bpp.lz");
const u32 gMonShinyPalette_Grimer[] = INCBIN_U32("graphics/pokemon/grimer/shiny.gbapal.lz");
const u8 gMonIcon_Grimer[] = INCBIN_U8("graphics/pokemon/grimer/icon.4bpp");
const u8 gMonFootprint_Grimer[] = INCBIN_U8("graphics/pokemon/grimer/footprint.1bpp");

const u32 gMonStillFrontPic_Muk[] = INCBIN_U32("graphics/pokemon/muk/front.4bpp.lz");
const u32 gMonPalette_Muk[] = INCBIN_U32("graphics/pokemon/muk/normal.gbapal.lz");
const u32 gMonBackPic_Muk[] = INCBIN_U32("graphics/pokemon/muk/back.4bpp.lz");
const u32 gMonShinyPalette_Muk[] = INCBIN_U32("graphics/pokemon/muk/shiny.gbapal.lz");
const u8 gMonIcon_Muk[] = INCBIN_U8("graphics/pokemon/muk/icon.4bpp");
const u8 gMonFootprint_Muk[] = INCBIN_U8("graphics/pokemon/muk/footprint.1bpp");

const u32 gMonStillFrontPic_Shellder[] = INCBIN_U32("graphics/pokemon/shellder/front.4bpp.lz");
const u32 gMonPalette_Shellder[] = INCBIN_U32("graphics/pokemon/shellder/normal.gbapal.lz");
const u32 gMonBackPic_Shellder[] = INCBIN_U32("graphics/pokemon/shellder/back.4bpp.lz");
const u32 gMonShinyPalette_Shellder[] = INCBIN_U32("graphics/pokemon/shellder/shiny.gbapal.lz");
const u8 gMonIcon_Shellder[] = INCBIN_U8("graphics/pokemon/shellder/icon.4bpp");
const u8 gMonFootprint_Shellder[] = INCBIN_U8("graphics/pokemon/shellder/footprint.1bpp");

const u32 gMonStillFrontPic_Cloyster[] = INCBIN_U32("graphics/pokemon/cloyster/front.4bpp.lz");
const u32 gMonPalette_Cloyster[] = INCBIN_U32("graphics/pokemon/cloyster/normal.gbapal.lz");
const u32 gMonBackPic_Cloyster[] = INCBIN_U32("graphics/pokemon/cloyster/back.4bpp.lz");
const u32 gMonShinyPalette_Cloyster[] = INCBIN_U32("graphics/pokemon/cloyster/shiny.gbapal.lz");
const u8 gMonIcon_Cloyster[] = INCBIN_U8("graphics/pokemon/cloyster/icon.4bpp");
const u8 gMonFootprint_Cloyster[] = INCBIN_U8("graphics/pokemon/cloyster/footprint.1bpp");

const u32 gMonStillFrontPic_Gastly[] = INCBIN_U32("graphics/pokemon/gastly/front.4bpp.lz");
const u32 gMonPalette_Gastly[] = INCBIN_U32("graphics/pokemon/gastly/normal.gbapal.lz");
const u32 gMonBackPic_Gastly[] = INCBIN_U32("graphics/pokemon/gastly/back.4bpp.lz");
const u32 gMonShinyPalette_Gastly[] = INCBIN_U32("graphics/pokemon/gastly/shiny.gbapal.lz");
const u8 gMonIcon_Gastly[] = INCBIN_U8("graphics/pokemon/gastly/icon.4bpp");
const u8 gMonFootprint_Gastly[] = INCBIN_U8("graphics/pokemon/gastly/footprint.1bpp");

const u32 gMonStillFrontPic_Haunter[] = INCBIN_U32("graphics/pokemon/haunter/front.4bpp.lz");
const u32 gMonPalette_Haunter[] = INCBIN_U32("graphics/pokemon/haunter/normal.gbapal.lz");
const u32 gMonBackPic_Haunter[] = INCBIN_U32("graphics/pokemon/haunter/back.4bpp.lz");
const u32 gMonShinyPalette_Haunter[] = INCBIN_U32("graphics/pokemon/haunter/shiny.gbapal.lz");
const u8 gMonIcon_Haunter[] = INCBIN_U8("graphics/pokemon/haunter/icon.4bpp");
const u8 gMonFootprint_Haunter[] = INCBIN_U8("graphics/pokemon/haunter/footprint.1bpp");

const u32 gMonStillFrontPic_Gengar[] = INCBIN_U32("graphics/pokemon/gengar/front.4bpp.lz");
const u32 gMonPalette_Gengar[] = INCBIN_U32("graphics/pokemon/gengar/normal.gbapal.lz");
const u32 gMonBackPic_Gengar[] = INCBIN_U32("graphics/pokemon/gengar/back.4bpp.lz");
const u32 gMonShinyPalette_Gengar[] = INCBIN_U32("graphics/pokemon/gengar/shiny.gbapal.lz");
const u8 gMonIcon_Gengar[] = INCBIN_U8("graphics/pokemon/gengar/icon.4bpp");
const u8 gMonFootprint_Gengar[] = INCBIN_U8("graphics/pokemon/gengar/footprint.1bpp");

const u32 gMonStillFrontPic_Onix[] = INCBIN_U32("graphics/pokemon/onix/front.4bpp.lz");
const u32 gMonPalette_Onix[] = INCBIN_U32("graphics/pokemon/onix/normal.gbapal.lz");
const u32 gMonBackPic_Onix[] = INCBIN_U32("graphics/pokemon/onix/back.4bpp.lz");
const u32 gMonShinyPalette_Onix[] = INCBIN_U32("graphics/pokemon/onix/shiny.gbapal.lz");
const u8 gMonIcon_Onix[] = INCBIN_U8("graphics/pokemon/onix/icon.4bpp");
const u8 gMonFootprint_Onix[] = INCBIN_U8("graphics/pokemon/onix/footprint.1bpp");

const u32 gMonStillFrontPic_Drowzee[] = INCBIN_U32("graphics/pokemon/drowzee/front.4bpp.lz");
const u32 gMonPalette_Drowzee[] = INCBIN_U32("graphics/pokemon/drowzee/normal.gbapal.lz");
const u32 gMonBackPic_Drowzee[] = INCBIN_U32("graphics/pokemon/drowzee/back.4bpp.lz");
const u32 gMonShinyPalette_Drowzee[] = INCBIN_U32("graphics/pokemon/drowzee/shiny.gbapal.lz");
const u8 gMonIcon_Drowzee[] = INCBIN_U8("graphics/pokemon/drowzee/icon.4bpp");
const u8 gMonFootprint_Drowzee[] = INCBIN_U8("graphics/pokemon/drowzee/footprint.1bpp");

const u32 gMonStillFrontPic_Hypno[] = INCBIN_U32("graphics/pokemon/hypno/front.4bpp.lz");
const u32 gMonPalette_Hypno[] = INCBIN_U32("graphics/pokemon/hypno/normal.gbapal.lz");
const u32 gMonBackPic_Hypno[] = INCBIN_U32("graphics/pokemon/hypno/back.4bpp.lz");
const u32 gMonShinyPalette_Hypno[] = INCBIN_U32("graphics/pokemon/hypno/shiny.gbapal.lz");
const u8 gMonIcon_Hypno[] = INCBIN_U8("graphics/pokemon/hypno/icon.4bpp");
const u8 gMonFootprint_Hypno[] = INCBIN_U8("graphics/pokemon/hypno/footprint.1bpp");

const u32 gMonStillFrontPic_Krabby[] = INCBIN_U32("graphics/pokemon/krabby/front.4bpp.lz");
const u32 gMonPalette_Krabby[] = INCBIN_U32("graphics/pokemon/krabby/normal.gbapal.lz");
const u32 gMonBackPic_Krabby[] = INCBIN_U32("graphics/pokemon/krabby/back.4bpp.lz");
const u32 gMonShinyPalette_Krabby[] = INCBIN_U32("graphics/pokemon/krabby/shiny.gbapal.lz");
const u8 gMonIcon_Krabby[] = INCBIN_U8("graphics/pokemon/krabby/icon.4bpp");
const u8 gMonFootprint_Krabby[] = INCBIN_U8("graphics/pokemon/krabby/footprint.1bpp");

const u32 gMonStillFrontPic_Kingler[] = INCBIN_U32("graphics/pokemon/kingler/front.4bpp.lz");
const u32 gMonPalette_Kingler[] = INCBIN_U32("graphics/pokemon/kingler/normal.gbapal.lz");
const u32 gMonBackPic_Kingler[] = INCBIN_U32("graphics/pokemon/kingler/back.4bpp.lz");
const u32 gMonShinyPalette_Kingler[] = INCBIN_U32("graphics/pokemon/kingler/shiny.gbapal.lz");
const u8 gMonIcon_Kingler[] = INCBIN_U8("graphics/pokemon/kingler/icon.4bpp");
const u8 gMonFootprint_Kingler[] = INCBIN_U8("graphics/pokemon/kingler/footprint.1bpp");

const u32 gMonStillFrontPic_Voltorb[] = INCBIN_U32("graphics/pokemon/voltorb/front.4bpp.lz");
const u32 gMonPalette_Voltorb[] = INCBIN_U32("graphics/pokemon/voltorb/normal.gbapal.lz");
const u32 gMonBackPic_Voltorb[] = INCBIN_U32("graphics/pokemon/voltorb/back.4bpp.lz");
const u32 gMonShinyPalette_Voltorb[] = INCBIN_U32("graphics/pokemon/voltorb/shiny.gbapal.lz");
const u8 gMonIcon_Voltorb[] = INCBIN_U8("graphics/pokemon/voltorb/icon.4bpp");
const u8 gMonFootprint_Voltorb[] = INCBIN_U8("graphics/pokemon/voltorb/footprint.1bpp");

const u32 gMonStillFrontPic_Electrode[] = INCBIN_U32("graphics/pokemon/electrode/front.4bpp.lz");
const u32 gMonPalette_Electrode[] = INCBIN_U32("graphics/pokemon/electrode/normal.gbapal.lz");
const u32 gMonBackPic_Electrode[] = INCBIN_U32("graphics/pokemon/electrode/back.4bpp.lz");
const u32 gMonShinyPalette_Electrode[] = INCBIN_U32("graphics/pokemon/electrode/shiny.gbapal.lz");
const u8 gMonIcon_Electrode[] = INCBIN_U8("graphics/pokemon/electrode/icon.4bpp");
const u8 gMonFootprint_Electrode[] = INCBIN_U8("graphics/pokemon/electrode/footprint.1bpp");

const u32 gMonStillFrontPic_Exeggcute[] = INCBIN_U32("graphics/pokemon/exeggcute/front.4bpp.lz");
const u32 gMonPalette_Exeggcute[] = INCBIN_U32("graphics/pokemon/exeggcute/normal.gbapal.lz");
const u32 gMonBackPic_Exeggcute[] = INCBIN_U32("graphics/pokemon/exeggcute/back.4bpp.lz");
const u32 gMonShinyPalette_Exeggcute[] = INCBIN_U32("graphics/pokemon/exeggcute/shiny.gbapal.lz");
const u8 gMonIcon_Exeggcute[] = INCBIN_U8("graphics/pokemon/exeggcute/icon.4bpp");
const u8 gMonFootprint_Exeggcute[] = INCBIN_U8("graphics/pokemon/exeggcute/footprint.1bpp");

const u32 gMonStillFrontPic_Exeggutor[] = INCBIN_U32("graphics/pokemon/exeggutor/front.4bpp.lz");
const u32 gMonPalette_Exeggutor[] = INCBIN_U32("graphics/pokemon/exeggutor/normal.gbapal.lz");
const u32 gMonBackPic_Exeggutor[] = INCBIN_U32("graphics/pokemon/exeggutor/back.4bpp.lz");
const u32 gMonShinyPalette_Exeggutor[] = INCBIN_U32("graphics/pokemon/exeggutor/shiny.gbapal.lz");
const u8 gMonIcon_Exeggutor[] = INCBIN_U8("graphics/pokemon/exeggutor/icon.4bpp");
const u8 gMonFootprint_Exeggutor[] = INCBIN_U8("graphics/pokemon/exeggutor/footprint.1bpp");

const u32 gMonStillFrontPic_Cubone[] = INCBIN_U32("graphics/pokemon/cubone/front.4bpp.lz");
const u32 gMonPalette_Cubone[] = INCBIN_U32("graphics/pokemon/cubone/normal.gbapal.lz");
const u32 gMonBackPic_Cubone[] = INCBIN_U32("graphics/pokemon/cubone/back.4bpp.lz");
const u32 gMonShinyPalette_Cubone[] = INCBIN_U32("graphics/pokemon/cubone/shiny.gbapal.lz");
const u8 gMonIcon_Cubone[] = INCBIN_U8("graphics/pokemon/cubone/icon.4bpp");
const u8 gMonFootprint_Cubone[] = INCBIN_U8("graphics/pokemon/cubone/footprint.1bpp");

const u32 gMonStillFrontPic_Marowak[] = INCBIN_U32("graphics/pokemon/marowak/front.4bpp.lz");
const u32 gMonPalette_Marowak[] = INCBIN_U32("graphics/pokemon/marowak/normal.gbapal.lz");
const u32 gMonBackPic_Marowak[] = INCBIN_U32("graphics/pokemon/marowak/back.4bpp.lz");
const u32 gMonShinyPalette_Marowak[] = INCBIN_U32("graphics/pokemon/marowak/shiny.gbapal.lz");
const u8 gMonIcon_Marowak[] = INCBIN_U8("graphics/pokemon/marowak/icon.4bpp");
const u8 gMonFootprint_Marowak[] = INCBIN_U8("graphics/pokemon/marowak/footprint.1bpp");

const u32 gMonStillFrontPic_Hitmonlee[] = INCBIN_U32("graphics/pokemon/hitmonlee/front.4bpp.lz");
const u32 gMonPalette_Hitmonlee[] = INCBIN_U32("graphics/pokemon/hitmonlee/normal.gbapal.lz");
const u32 gMonBackPic_Hitmonlee[] = INCBIN_U32("graphics/pokemon/hitmonlee/back.4bpp.lz");
const u32 gMonShinyPalette_Hitmonlee[] = INCBIN_U32("graphics/pokemon/hitmonlee/shiny.gbapal.lz");
const u8 gMonIcon_Hitmonlee[] = INCBIN_U8("graphics/pokemon/hitmonlee/icon.4bpp");
const u8 gMonFootprint_Hitmonlee[] = INCBIN_U8("graphics/pokemon/hitmonlee/footprint.1bpp");

const u32 gMonStillFrontPic_Hitmonchan[] = INCBIN_U32("graphics/pokemon/hitmonchan/front.4bpp.lz");
const u32 gMonPalette_Hitmonchan[] = INCBIN_U32("graphics/pokemon/hitmonchan/normal.gbapal.lz");
const u32 gMonBackPic_Hitmonchan[] = INCBIN_U32("graphics/pokemon/hitmonchan/back.4bpp.lz");
const u32 gMonShinyPalette_Hitmonchan[] = INCBIN_U32("graphics/pokemon/hitmonchan/shiny.gbapal.lz");
const u8 gMonIcon_Hitmonchan[] = INCBIN_U8("graphics/pokemon/hitmonchan/icon.4bpp");
const u8 gMonFootprint_Hitmonchan[] = INCBIN_U8("graphics/pokemon/hitmonchan/footprint.1bpp");

const u32 gMonStillFrontPic_Lickitung[] = INCBIN_U32("graphics/pokemon/lickitung/front.4bpp.lz");
const u32 gMonPalette_Lickitung[] = INCBIN_U32("graphics/pokemon/lickitung/normal.gbapal.lz");
const u32 gMonBackPic_Lickitung[] = INCBIN_U32("graphics/pokemon/lickitung/back.4bpp.lz");
const u32 gMonShinyPalette_Lickitung[] = INCBIN_U32("graphics/pokemon/lickitung/shiny.gbapal.lz");
const u8 gMonIcon_Lickitung[] = INCBIN_U8("graphics/pokemon/lickitung/icon.4bpp");
const u8 gMonFootprint_Lickitung[] = INCBIN_U8("graphics/pokemon/lickitung/footprint.1bpp");

const u32 gMonStillFrontPic_Koffing[] = INCBIN_U32("graphics/pokemon/koffing/front.4bpp.lz");
const u32 gMonPalette_Koffing[] = INCBIN_U32("graphics/pokemon/koffing/normal.gbapal.lz");
const u32 gMonBackPic_Koffing[] = INCBIN_U32("graphics/pokemon/koffing/back.4bpp.lz");
const u32 gMonShinyPalette_Koffing[] = INCBIN_U32("graphics/pokemon/koffing/shiny.gbapal.lz");
const u8 gMonIcon_Koffing[] = INCBIN_U8("graphics/pokemon/koffing/icon.4bpp");
const u8 gMonFootprint_Koffing[] = INCBIN_U8("graphics/pokemon/koffing/footprint.1bpp");

const u32 gMonStillFrontPic_Weezing[] = INCBIN_U32("graphics/pokemon/weezing/front.4bpp.lz");
const u32 gMonPalette_Weezing[] = INCBIN_U32("graphics/pokemon/weezing/normal.gbapal.lz");
const u32 gMonBackPic_Weezing[] = INCBIN_U32("graphics/pokemon/weezing/back.4bpp.lz");
const u32 gMonShinyPalette_Weezing[] = INCBIN_U32("graphics/pokemon/weezing/shiny.gbapal.lz");
const u8 gMonIcon_Weezing[] = INCBIN_U8("graphics/pokemon/weezing/icon.4bpp");
const u8 gMonFootprint_Weezing[] = INCBIN_U8("graphics/pokemon/weezing/footprint.1bpp");

const u32 gMonStillFrontPic_Rhyhorn[] = INCBIN_U32("graphics/pokemon/rhyhorn/front.4bpp.lz");
const u32 gMonPalette_Rhyhorn[] = INCBIN_U32("graphics/pokemon/rhyhorn/normal.gbapal.lz");
const u32 gMonBackPic_Rhyhorn[] = INCBIN_U32("graphics/pokemon/rhyhorn/back.4bpp.lz");
const u32 gMonShinyPalette_Rhyhorn[] = INCBIN_U32("graphics/pokemon/rhyhorn/shiny.gbapal.lz");
const u8 gMonIcon_Rhyhorn[] = INCBIN_U8("graphics/pokemon/rhyhorn/icon.4bpp");
const u8 gMonFootprint_Rhyhorn[] = INCBIN_U8("graphics/pokemon/rhyhorn/footprint.1bpp");

const u32 gMonStillFrontPic_Rhydon[] = INCBIN_U32("graphics/pokemon/rhydon/front.4bpp.lz");
const u32 gMonPalette_Rhydon[] = INCBIN_U32("graphics/pokemon/rhydon/normal.gbapal.lz");
const u32 gMonBackPic_Rhydon[] = INCBIN_U32("graphics/pokemon/rhydon/back.4bpp.lz");
const u32 gMonShinyPalette_Rhydon[] = INCBIN_U32("graphics/pokemon/rhydon/shiny.gbapal.lz");
const u8 gMonIcon_Rhydon[] = INCBIN_U8("graphics/pokemon/rhydon/icon.4bpp");
const u8 gMonFootprint_Rhydon[] = INCBIN_U8("graphics/pokemon/rhydon/footprint.1bpp");

const u32 gMonStillFrontPic_Chansey[] = INCBIN_U32("graphics/pokemon/chansey/front.4bpp.lz");
const u32 gMonPalette_Chansey[] = INCBIN_U32("graphics/pokemon/chansey/normal.gbapal.lz");
const u32 gMonBackPic_Chansey[] = INCBIN_U32("graphics/pokemon/chansey/back.4bpp.lz");
const u32 gMonShinyPalette_Chansey[] = INCBIN_U32("graphics/pokemon/chansey/shiny.gbapal.lz");
const u8 gMonIcon_Chansey[] = INCBIN_U8("graphics/pokemon/chansey/icon.4bpp");
const u8 gMonFootprint_Chansey[] = INCBIN_U8("graphics/pokemon/chansey/footprint.1bpp");

const u32 gMonStillFrontPic_Tangela[] = INCBIN_U32("graphics/pokemon/tangela/front.4bpp.lz");
const u32 gMonPalette_Tangela[] = INCBIN_U32("graphics/pokemon/tangela/normal.gbapal.lz");
const u32 gMonBackPic_Tangela[] = INCBIN_U32("graphics/pokemon/tangela/back.4bpp.lz");
const u32 gMonShinyPalette_Tangela[] = INCBIN_U32("graphics/pokemon/tangela/shiny.gbapal.lz");
const u8 gMonIcon_Tangela[] = INCBIN_U8("graphics/pokemon/tangela/icon.4bpp");
const u8 gMonFootprint_Tangela[] = INCBIN_U8("graphics/pokemon/tangela/footprint.1bpp");

const u32 gMonStillFrontPic_Kangaskhan[] = INCBIN_U32("graphics/pokemon/kangaskhan/front.4bpp.lz");
const u32 gMonPalette_Kangaskhan[] = INCBIN_U32("graphics/pokemon/kangaskhan/normal.gbapal.lz");
const u32 gMonBackPic_Kangaskhan[] = INCBIN_U32("graphics/pokemon/kangaskhan/back.4bpp.lz");
const u32 gMonShinyPalette_Kangaskhan[] = INCBIN_U32("graphics/pokemon/kangaskhan/shiny.gbapal.lz");
const u8 gMonIcon_Kangaskhan[] = INCBIN_U8("graphics/pokemon/kangaskhan/icon.4bpp");
const u8 gMonFootprint_Kangaskhan[] = INCBIN_U8("graphics/pokemon/kangaskhan/footprint.1bpp");

const u32 gMonStillFrontPic_Horsea[] = INCBIN_U32("graphics/pokemon/horsea/front.4bpp.lz");
const u32 gMonPalette_Horsea[] = INCBIN_U32("graphics/pokemon/horsea/normal.gbapal.lz");
const u32 gMonBackPic_Horsea[] = INCBIN_U32("graphics/pokemon/horsea/back.4bpp.lz");
const u32 gMonShinyPalette_Horsea[] = INCBIN_U32("graphics/pokemon/horsea/shiny.gbapal.lz");
const u8 gMonIcon_Horsea[] = INCBIN_U8("graphics/pokemon/horsea/icon.4bpp");
const u8 gMonFootprint_Horsea[] = INCBIN_U8("graphics/pokemon/horsea/footprint.1bpp");

const u32 gMonStillFrontPic_Seadra[] = INCBIN_U32("graphics/pokemon/seadra/front.4bpp.lz");
const u32 gMonPalette_Seadra[] = INCBIN_U32("graphics/pokemon/seadra/normal.gbapal.lz");
const u32 gMonBackPic_Seadra[] = INCBIN_U32("graphics/pokemon/seadra/back.4bpp.lz");
const u32 gMonShinyPalette_Seadra[] = INCBIN_U32("graphics/pokemon/seadra/shiny.gbapal.lz");
const u8 gMonIcon_Seadra[] = INCBIN_U8("graphics/pokemon/seadra/icon.4bpp");
const u8 gMonFootprint_Seadra[] = INCBIN_U8("graphics/pokemon/seadra/footprint.1bpp");

const u32 gMonStillFrontPic_Goldeen[] = INCBIN_U32("graphics/pokemon/goldeen/front.4bpp.lz");
const u32 gMonPalette_Goldeen[] = INCBIN_U32("graphics/pokemon/goldeen/normal.gbapal.lz");
const u32 gMonBackPic_Goldeen[] = INCBIN_U32("graphics/pokemon/goldeen/back.4bpp.lz");
const u32 gMonShinyPalette_Goldeen[] = INCBIN_U32("graphics/pokemon/goldeen/shiny.gbapal.lz");
const u8 gMonIcon_Goldeen[] = INCBIN_U8("graphics/pokemon/goldeen/icon.4bpp");
const u8 gMonFootprint_Goldeen[] = INCBIN_U8("graphics/pokemon/goldeen/footprint.1bpp");

const u32 gMonStillFrontPic_Seaking[] = INCBIN_U32("graphics/pokemon/seaking/front.4bpp.lz");
const u32 gMonPalette_Seaking[] = INCBIN_U32("graphics/pokemon/seaking/normal.gbapal.lz");
const u32 gMonBackPic_Seaking[] = INCBIN_U32("graphics/pokemon/seaking/back.4bpp.lz");
const u32 gMonShinyPalette_Seaking[] = INCBIN_U32("graphics/pokemon/seaking/shiny.gbapal.lz");
const u8 gMonIcon_Seaking[] = INCBIN_U8("graphics/pokemon/seaking/icon.4bpp");
const u8 gMonFootprint_Seaking[] = INCBIN_U8("graphics/pokemon/seaking/footprint.1bpp");

const u32 gMonStillFrontPic_Staryu[] = INCBIN_U32("graphics/pokemon/staryu/front.4bpp.lz");
const u32 gMonPalette_Staryu[] = INCBIN_U32("graphics/pokemon/staryu/normal.gbapal.lz");
const u32 gMonBackPic_Staryu[] = INCBIN_U32("graphics/pokemon/staryu/back.4bpp.lz");
const u32 gMonShinyPalette_Staryu[] = INCBIN_U32("graphics/pokemon/staryu/shiny.gbapal.lz");
const u8 gMonIcon_Staryu[] = INCBIN_U8("graphics/pokemon/staryu/icon.4bpp");
const u8 gMonFootprint_Staryu[] = INCBIN_U8("graphics/pokemon/staryu/footprint.1bpp");

const u32 gMonStillFrontPic_Starmie[] = INCBIN_U32("graphics/pokemon/starmie/front.4bpp.lz");
const u32 gMonPalette_Starmie[] = INCBIN_U32("graphics/pokemon/starmie/normal.gbapal.lz");
const u32 gMonBackPic_Starmie[] = INCBIN_U32("graphics/pokemon/starmie/back.4bpp.lz");
const u32 gMonShinyPalette_Starmie[] = INCBIN_U32("graphics/pokemon/starmie/shiny.gbapal.lz");
const u8 gMonIcon_Starmie[] = INCBIN_U8("graphics/pokemon/starmie/icon.4bpp");
const u8 gMonFootprint_Starmie[] = INCBIN_U8("graphics/pokemon/starmie/footprint.1bpp");

const u32 gMonStillFrontPic_Mrmime[] = INCBIN_U32("graphics/pokemon/mr_mime/front.4bpp.lz");
const u32 gMonPalette_Mrmime[] = INCBIN_U32("graphics/pokemon/mr_mime/normal.gbapal.lz");
const u32 gMonBackPic_Mrmime[] = INCBIN_U32("graphics/pokemon/mr_mime/back.4bpp.lz");
const u32 gMonShinyPalette_Mrmime[] = INCBIN_U32("graphics/pokemon/mr_mime/shiny.gbapal.lz");
const u8 gMonIcon_Mrmime[] = INCBIN_U8("graphics/pokemon/mr_mime/icon.4bpp");
const u8 gMonFootprint_Mrmime[] = INCBIN_U8("graphics/pokemon/mr_mime/footprint.1bpp");

const u32 gMonStillFrontPic_Scyther[] = INCBIN_U32("graphics/pokemon/scyther/front.4bpp.lz");
const u32 gMonPalette_Scyther[] = INCBIN_U32("graphics/pokemon/scyther/normal.gbapal.lz");
const u32 gMonBackPic_Scyther[] = INCBIN_U32("graphics/pokemon/scyther/back.4bpp.lz");
const u32 gMonShinyPalette_Scyther[] = INCBIN_U32("graphics/pokemon/scyther/shiny.gbapal.lz");
const u8 gMonIcon_Scyther[] = INCBIN_U8("graphics/pokemon/scyther/icon.4bpp");
const u8 gMonFootprint_Scyther[] = INCBIN_U8("graphics/pokemon/scyther/footprint.1bpp");

const u32 gMonStillFrontPic_Jynx[] = INCBIN_U32("graphics/pokemon/jynx/front.4bpp.lz");
const u32 gMonPalette_Jynx[] = INCBIN_U32("graphics/pokemon/jynx/normal.gbapal.lz");
const u32 gMonBackPic_Jynx[] = INCBIN_U32("graphics/pokemon/jynx/back.4bpp.lz");
const u32 gMonShinyPalette_Jynx[] = INCBIN_U32("graphics/pokemon/jynx/shiny.gbapal.lz");
const u8 gMonIcon_Jynx[] = INCBIN_U8("graphics/pokemon/jynx/icon.4bpp");
const u8 gMonFootprint_Jynx[] = INCBIN_U8("graphics/pokemon/jynx/footprint.1bpp");

const u32 gMonStillFrontPic_Electabuzz[] = INCBIN_U32("graphics/pokemon/electabuzz/front.4bpp.lz");
const u32 gMonPalette_Electabuzz[] = INCBIN_U32("graphics/pokemon/electabuzz/normal.gbapal.lz");
const u32 gMonBackPic_Electabuzz[] = INCBIN_U32("graphics/pokemon/electabuzz/back.4bpp.lz");
const u32 gMonShinyPalette_Electabuzz[] = INCBIN_U32("graphics/pokemon/electabuzz/shiny.gbapal.lz");
const u8 gMonIcon_Electabuzz[] = INCBIN_U8("graphics/pokemon/electabuzz/icon.4bpp");
const u8 gMonFootprint_Electabuzz[] = INCBIN_U8("graphics/pokemon/electabuzz/footprint.1bpp");

const u32 gMonStillFrontPic_Magmar[] = INCBIN_U32("graphics/pokemon/magmar/front.4bpp.lz");
const u32 gMonPalette_Magmar[] = INCBIN_U32("graphics/pokemon/magmar/normal.gbapal.lz");
const u32 gMonBackPic_Magmar[] = INCBIN_U32("graphics/pokemon/magmar/back.4bpp.lz");
const u32 gMonShinyPalette_Magmar[] = INCBIN_U32("graphics/pokemon/magmar/shiny.gbapal.lz");
const u8 gMonIcon_Magmar[] = INCBIN_U8("graphics/pokemon/magmar/icon.4bpp");
const u8 gMonFootprint_Magmar[] = INCBIN_U8("graphics/pokemon/magmar/footprint.1bpp");

const u32 gMonStillFrontPic_Pinsir[] = INCBIN_U32("graphics/pokemon/pinsir/front.4bpp.lz");
const u32 gMonPalette_Pinsir[] = INCBIN_U32("graphics/pokemon/pinsir/normal.gbapal.lz");
const u32 gMonBackPic_Pinsir[] = INCBIN_U32("graphics/pokemon/pinsir/back.4bpp.lz");
const u32 gMonShinyPalette_Pinsir[] = INCBIN_U32("graphics/pokemon/pinsir/shiny.gbapal.lz");
const u8 gMonIcon_Pinsir[] = INCBIN_U8("graphics/pokemon/pinsir/icon.4bpp");
const u8 gMonFootprint_Pinsir[] = INCBIN_U8("graphics/pokemon/pinsir/footprint.1bpp");

const u32 gMonStillFrontPic_Tauros[] = INCBIN_U32("graphics/pokemon/tauros/front.4bpp.lz");
const u32 gMonPalette_Tauros[] = INCBIN_U32("graphics/pokemon/tauros/normal.gbapal.lz");
const u32 gMonBackPic_Tauros[] = INCBIN_U32("graphics/pokemon/tauros/back.4bpp.lz");
const u32 gMonShinyPalette_Tauros[] = INCBIN_U32("graphics/pokemon/tauros/shiny.gbapal.lz");
const u8 gMonIcon_Tauros[] = INCBIN_U8("graphics/pokemon/tauros/icon.4bpp");
const u8 gMonFootprint_Tauros[] = INCBIN_U8("graphics/pokemon/tauros/footprint.1bpp");

const u32 gMonStillFrontPic_Magikarp[] = INCBIN_U32("graphics/pokemon/magikarp/front.4bpp.lz");
const u32 gMonPalette_Magikarp[] = INCBIN_U32("graphics/pokemon/magikarp/normal.gbapal.lz");
const u32 gMonBackPic_Magikarp[] = INCBIN_U32("graphics/pokemon/magikarp/back.4bpp.lz");
const u32 gMonShinyPalette_Magikarp[] = INCBIN_U32("graphics/pokemon/magikarp/shiny.gbapal.lz");
const u8 gMonIcon_Magikarp[] = INCBIN_U8("graphics/pokemon/magikarp/icon.4bpp");
const u8 gMonFootprint_Magikarp[] = INCBIN_U8("graphics/pokemon/magikarp/footprint.1bpp");

const u32 gMonStillFrontPic_Gyarados[] = INCBIN_U32("graphics/pokemon/gyarados/front.4bpp.lz");
const u32 gMonPalette_Gyarados[] = INCBIN_U32("graphics/pokemon/gyarados/normal.gbapal.lz");
const u32 gMonBackPic_Gyarados[] = INCBIN_U32("graphics/pokemon/gyarados/back.4bpp.lz");
const u32 gMonShinyPalette_Gyarados[] = INCBIN_U32("graphics/pokemon/gyarados/shiny.gbapal.lz");
const u8 gMonIcon_Gyarados[] = INCBIN_U8("graphics/pokemon/gyarados/icon.4bpp");
const u8 gMonFootprint_Gyarados[] = INCBIN_U8("graphics/pokemon/gyarados/footprint.1bpp");

const u32 gMonStillFrontPic_Lapras[] = INCBIN_U32("graphics/pokemon/lapras/front.4bpp.lz");
const u32 gMonPalette_Lapras[] = INCBIN_U32("graphics/pokemon/lapras/normal.gbapal.lz");
const u32 gMonBackPic_Lapras[] = INCBIN_U32("graphics/pokemon/lapras/back.4bpp.lz");
const u32 gMonShinyPalette_Lapras[] = INCBIN_U32("graphics/pokemon/lapras/shiny.gbapal.lz");
const u8 gMonIcon_Lapras[] = INCBIN_U8("graphics/pokemon/lapras/icon.4bpp");
const u8 gMonFootprint_Lapras[] = INCBIN_U8("graphics/pokemon/lapras/footprint.1bpp");

const u32 gMonStillFrontPic_Ditto[] = INCBIN_U32("graphics/pokemon/ditto/front.4bpp.lz");
const u32 gMonPalette_Ditto[] = INCBIN_U32("graphics/pokemon/ditto/normal.gbapal.lz");
const u32 gMonBackPic_Ditto[] = INCBIN_U32("graphics/pokemon/ditto/back.4bpp.lz");
const u32 gMonShinyPalette_Ditto[] = INCBIN_U32("graphics/pokemon/ditto/shiny.gbapal.lz");
const u8 gMonIcon_Ditto[] = INCBIN_U8("graphics/pokemon/ditto/icon.4bpp");
const u8 gMonFootprint_Ditto[] = INCBIN_U8("graphics/pokemon/ditto/footprint.1bpp");

const u32 gMonStillFrontPic_Eevee[] = INCBIN_U32("graphics/pokemon/eevee/front.4bpp.lz");
const u32 gMonPalette_Eevee[] = INCBIN_U32("graphics/pokemon/eevee/normal.gbapal.lz");
const u32 gMonBackPic_Eevee[] = INCBIN_U32("graphics/pokemon/eevee/back.4bpp.lz");
const u32 gMonShinyPalette_Eevee[] = INCBIN_U32("graphics/pokemon/eevee/shiny.gbapal.lz");
const u8 gMonIcon_Eevee[] = INCBIN_U8("graphics/pokemon/eevee/icon.4bpp");
const u8 gMonFootprint_Eevee[] = INCBIN_U8("graphics/pokemon/eevee/footprint.1bpp");

const u32 gMonStillFrontPic_Vaporeon[] = INCBIN_U32("graphics/pokemon/vaporeon/front.4bpp.lz");
const u32 gMonPalette_Vaporeon[] = INCBIN_U32("graphics/pokemon/vaporeon/normal.gbapal.lz");
const u32 gMonBackPic_Vaporeon[] = INCBIN_U32("graphics/pokemon/vaporeon/back.4bpp.lz");
const u32 gMonShinyPalette_Vaporeon[] = INCBIN_U32("graphics/pokemon/vaporeon/shiny.gbapal.lz");
const u8 gMonIcon_Vaporeon[] = INCBIN_U8("graphics/pokemon/vaporeon/icon.4bpp");
const u8 gMonFootprint_Vaporeon[] = INCBIN_U8("graphics/pokemon/vaporeon/footprint.1bpp");

const u32 gMonStillFrontPic_Jolteon[] = INCBIN_U32("graphics/pokemon/jolteon/front.4bpp.lz");
const u32 gMonPalette_Jolteon[] = INCBIN_U32("graphics/pokemon/jolteon/normal.gbapal.lz");
const u32 gMonBackPic_Jolteon[] = INCBIN_U32("graphics/pokemon/jolteon/back.4bpp.lz");
const u32 gMonShinyPalette_Jolteon[] = INCBIN_U32("graphics/pokemon/jolteon/shiny.gbapal.lz");
const u8 gMonIcon_Jolteon[] = INCBIN_U8("graphics/pokemon/jolteon/icon.4bpp");
const u8 gMonFootprint_Jolteon[] = INCBIN_U8("graphics/pokemon/jolteon/footprint.1bpp");

const u32 gMonStillFrontPic_Flareon[] = INCBIN_U32("graphics/pokemon/flareon/front.4bpp.lz");
const u32 gMonPalette_Flareon[] = INCBIN_U32("graphics/pokemon/flareon/normal.gbapal.lz");
const u32 gMonBackPic_Flareon[] = INCBIN_U32("graphics/pokemon/flareon/back.4bpp.lz");
const u32 gMonShinyPalette_Flareon[] = INCBIN_U32("graphics/pokemon/flareon/shiny.gbapal.lz");
const u8 gMonIcon_Flareon[] = INCBIN_U8("graphics/pokemon/flareon/icon.4bpp");
const u8 gMonFootprint_Flareon[] = INCBIN_U8("graphics/pokemon/flareon/footprint.1bpp");

const u32 gMonStillFrontPic_Porygon[] = INCBIN_U32("graphics/pokemon/porygon/front.4bpp.lz");
const u32 gMonPalette_Porygon[] = INCBIN_U32("graphics/pokemon/porygon/normal.gbapal.lz");
const u32 gMonBackPic_Porygon[] = INCBIN_U32("graphics/pokemon/porygon/back.4bpp.lz");
const u32 gMonShinyPalette_Porygon[] = INCBIN_U32("graphics/pokemon/porygon/shiny.gbapal.lz");
const u8 gMonIcon_Porygon[] = INCBIN_U8("graphics/pokemon/porygon/icon.4bpp");
const u8 gMonFootprint_Porygon[] = INCBIN_U8("graphics/pokemon/porygon/footprint.1bpp");

const u32 gMonStillFrontPic_Omanyte[] = INCBIN_U32("graphics/pokemon/omanyte/front.4bpp.lz");
const u32 gMonPalette_Omanyte[] = INCBIN_U32("graphics/pokemon/omanyte/normal.gbapal.lz");
const u32 gMonBackPic_Omanyte[] = INCBIN_U32("graphics/pokemon/omanyte/back.4bpp.lz");
const u32 gMonShinyPalette_Omanyte[] = INCBIN_U32("graphics/pokemon/omanyte/shiny.gbapal.lz");
const u8 gMonIcon_Omanyte[] = INCBIN_U8("graphics/pokemon/omanyte/icon.4bpp");
const u8 gMonFootprint_Omanyte[] = INCBIN_U8("graphics/pokemon/omanyte/footprint.1bpp");

const u32 gMonStillFrontPic_Omastar[] = INCBIN_U32("graphics/pokemon/omastar/front.4bpp.lz");
const u32 gMonPalette_Omastar[] = INCBIN_U32("graphics/pokemon/omastar/normal.gbapal.lz");
const u32 gMonBackPic_Omastar[] = INCBIN_U32("graphics/pokemon/omastar/back.4bpp.lz");
const u32 gMonShinyPalette_Omastar[] = INCBIN_U32("graphics/pokemon/omastar/shiny.gbapal.lz");
const u8 gMonIcon_Omastar[] = INCBIN_U8("graphics/pokemon/omastar/icon.4bpp");
const u8 gMonFootprint_Omastar[] = INCBIN_U8("graphics/pokemon/omastar/footprint.1bpp");

const u32 gMonStillFrontPic_Kabuto[] = INCBIN_U32("graphics/pokemon/kabuto/front.4bpp.lz");
const u32 gMonPalette_Kabuto[] = INCBIN_U32("graphics/pokemon/kabuto/normal.gbapal.lz");
const u32 gMonBackPic_Kabuto[] = INCBIN_U32("graphics/pokemon/kabuto/back.4bpp.lz");
const u32 gMonShinyPalette_Kabuto[] = INCBIN_U32("graphics/pokemon/kabuto/shiny.gbapal.lz");
const u8 gMonIcon_Kabuto[] = INCBIN_U8("graphics/pokemon/kabuto/icon.4bpp");
const u8 gMonFootprint_Kabuto[] = INCBIN_U8("graphics/pokemon/kabuto/footprint.1bpp");

const u32 gMonStillFrontPic_Kabutops[] = INCBIN_U32("graphics/pokemon/kabutops/front.4bpp.lz");
const u32 gMonPalette_Kabutops[] = INCBIN_U32("graphics/pokemon/kabutops/normal.gbapal.lz");
const u32 gMonBackPic_Kabutops[] = INCBIN_U32("graphics/pokemon/kabutops/back.4bpp.lz");
const u32 gMonShinyPalette_Kabutops[] = INCBIN_U32("graphics/pokemon/kabutops/shiny.gbapal.lz");
const u8 gMonIcon_Kabutops[] = INCBIN_U8("graphics/pokemon/kabutops/icon.4bpp");
const u8 gMonFootprint_Kabutops[] = INCBIN_U8("graphics/pokemon/kabutops/footprint.1bpp");

const u32 gMonStillFrontPic_Aerodactyl[] = INCBIN_U32("graphics/pokemon/aerodactyl/front.4bpp.lz");
const u32 gMonPalette_Aerodactyl[] = INCBIN_U32("graphics/pokemon/aerodactyl/normal.gbapal.lz");
const u32 gMonBackPic_Aerodactyl[] = INCBIN_U32("graphics/pokemon/aerodactyl/back.4bpp.lz");
const u32 gMonShinyPalette_Aerodactyl[] = INCBIN_U32("graphics/pokemon/aerodactyl/shiny.gbapal.lz");
const u8 gMonIcon_Aerodactyl[] = INCBIN_U8("graphics/pokemon/aerodactyl/icon.4bpp");
const u8 gMonFootprint_Aerodactyl[] = INCBIN_U8("graphics/pokemon/aerodactyl/footprint.1bpp");

const u32 gMonStillFrontPic_Snorlax[] = INCBIN_U32("graphics/pokemon/snorlax/front.4bpp.lz");
const u32 gMonPalette_Snorlax[] = INCBIN_U32("graphics/pokemon/snorlax/normal.gbapal.lz");
const u32 gMonBackPic_Snorlax[] = INCBIN_U32("graphics/pokemon/snorlax/back.4bpp.lz");
const u32 gMonShinyPalette_Snorlax[] = INCBIN_U32("graphics/pokemon/snorlax/shiny.gbapal.lz");
const u8 gMonIcon_Snorlax[] = INCBIN_U8("graphics/pokemon/snorlax/icon.4bpp");
const u8 gMonFootprint_Snorlax[] = INCBIN_U8("graphics/pokemon/snorlax/footprint.1bpp");

const u32 gMonStillFrontPic_Articuno[] = INCBIN_U32("graphics/pokemon/articuno/front.4bpp.lz");
const u32 gMonPalette_Articuno[] = INCBIN_U32("graphics/pokemon/articuno/normal.gbapal.lz");
const u32 gMonBackPic_Articuno[] = INCBIN_U32("graphics/pokemon/articuno/back.4bpp.lz");
const u32 gMonShinyPalette_Articuno[] = INCBIN_U32("graphics/pokemon/articuno/shiny.gbapal.lz");
const u8 gMonIcon_Articuno[] = INCBIN_U8("graphics/pokemon/articuno/icon.4bpp");
const u8 gMonFootprint_Articuno[] = INCBIN_U8("graphics/pokemon/articuno/footprint.1bpp");

const u32 gMonStillFrontPic_Zapdos[] = INCBIN_U32("graphics/pokemon/zapdos/front.4bpp.lz");
const u32 gMonPalette_Zapdos[] = INCBIN_U32("graphics/pokemon/zapdos/normal.gbapal.lz");
const u32 gMonBackPic_Zapdos[] = INCBIN_U32("graphics/pokemon/zapdos/back.4bpp.lz");
const u32 gMonShinyPalette_Zapdos[] = INCBIN_U32("graphics/pokemon/zapdos/shiny.gbapal.lz");
const u8 gMonIcon_Zapdos[] = INCBIN_U8("graphics/pokemon/zapdos/icon.4bpp");
const u8 gMonFootprint_Zapdos[] = INCBIN_U8("graphics/pokemon/zapdos/footprint.1bpp");

const u32 gMonStillFrontPic_Moltres[] = INCBIN_U32("graphics/pokemon/moltres/front.4bpp.lz");
const u32 gMonPalette_Moltres[] = INCBIN_U32("graphics/pokemon/moltres/normal.gbapal.lz");
const u32 gMonBackPic_Moltres[] = INCBIN_U32("graphics/pokemon/moltres/back.4bpp.lz");
const u32 gMonShinyPalette_Moltres[] = INCBIN_U32("graphics/pokemon/moltres/shiny.gbapal.lz");
const u8 gMonIcon_Moltres[] = INCBIN_U8("graphics/pokemon/moltres/icon.4bpp");
const u8 gMonFootprint_Moltres[] = INCBIN_U8("graphics/pokemon/moltres/footprint.1bpp");

const u32 gMonStillFrontPic_Dratini[] = INCBIN_U32("graphics/pokemon/dratini/front.4bpp.lz");
const u32 gMonPalette_Dratini[] = INCBIN_U32("graphics/pokemon/dratini/normal.gbapal.lz");
const u32 gMonBackPic_Dratini[] = INCBIN_U32("graphics/pokemon/dratini/back.4bpp.lz");
const u32 gMonShinyPalette_Dratini[] = INCBIN_U32("graphics/pokemon/dratini/shiny.gbapal.lz");
const u8 gMonIcon_Dratini[] = INCBIN_U8("graphics/pokemon/dratini/icon.4bpp");
const u8 gMonFootprint_Dratini[] = INCBIN_U8("graphics/pokemon/dratini/footprint.1bpp");

const u32 gMonStillFrontPic_Dragonair[] = INCBIN_U32("graphics/pokemon/dragonair/front.4bpp.lz");
const u32 gMonPalette_Dragonair[] = INCBIN_U32("graphics/pokemon/dragonair/normal.gbapal.lz");
const u32 gMonBackPic_Dragonair[] = INCBIN_U32("graphics/pokemon/dragonair/back.4bpp.lz");
const u32 gMonShinyPalette_Dragonair[] = INCBIN_U32("graphics/pokemon/dragonair/shiny.gbapal.lz");
const u8 gMonIcon_Dragonair[] = INCBIN_U8("graphics/pokemon/dragonair/icon.4bpp");
const u8 gMonFootprint_Dragonair[] = INCBIN_U8("graphics/pokemon/dragonair/footprint.1bpp");

const u32 gMonStillFrontPic_Dragonite[] = INCBIN_U32("graphics/pokemon/dragonite/front.4bpp.lz");
const u32 gMonPalette_Dragonite[] = INCBIN_U32("graphics/pokemon/dragonite/normal.gbapal.lz");
const u32 gMonBackPic_Dragonite[] = INCBIN_U32("graphics/pokemon/dragonite/back.4bpp.lz");
const u32 gMonShinyPalette_Dragonite[] = INCBIN_U32("graphics/pokemon/dragonite/shiny.gbapal.lz");
const u8 gMonIcon_Dragonite[] = INCBIN_U8("graphics/pokemon/dragonite/icon.4bpp");
const u8 gMonFootprint_Dragonite[] = INCBIN_U8("graphics/pokemon/dragonite/footprint.1bpp");

const u32 gMonStillFrontPic_Mewtwo[] = INCBIN_U32("graphics/pokemon/mewtwo/front.4bpp.lz");
const u32 gMonPalette_Mewtwo[] = INCBIN_U32("graphics/pokemon/mewtwo/normal.gbapal.lz");
const u32 gMonBackPic_Mewtwo[] = INCBIN_U32("graphics/pokemon/mewtwo/back.4bpp.lz");
const u32 gMonShinyPalette_Mewtwo[] = INCBIN_U32("graphics/pokemon/mewtwo/shiny.gbapal.lz");
const u8 gMonIcon_Mewtwo[] = INCBIN_U8("graphics/pokemon/mewtwo/icon.4bpp");
const u8 gMonFootprint_Mewtwo[] = INCBIN_U8("graphics/pokemon/mewtwo/footprint.1bpp");

const u32 gMonStillFrontPic_Mew[] = INCBIN_U32("graphics/pokemon/mew/front.4bpp.lz");
const u32 gMonPalette_Mew[] = INCBIN_U32("graphics/pokemon/mew/normal.gbapal.lz");
const u32 gMonBackPic_Mew[] = INCBIN_U32("graphics/pokemon/mew/back.4bpp.lz");
const u32 gMonShinyPalette_Mew[] = INCBIN_U32("graphics/pokemon/mew/shiny.gbapal.lz");
const u8 gMonIcon_Mew[] = INCBIN_U8("graphics/pokemon/mew/icon.4bpp");
const u8 gMonFootprint_Mew[] = INCBIN_U8("graphics/pokemon/mew/footprint.1bpp");

const u32 gMonStillFrontPic_Chikorita[] = INCBIN_U32("graphics/pokemon/chikorita/front.4bpp.lz");
const u32 gMonPalette_Chikorita[] = INCBIN_U32("graphics/pokemon/chikorita/normal.gbapal.lz");
const u32 gMonBackPic_Chikorita[] = INCBIN_U32("graphics/pokemon/chikorita/back.4bpp.lz");
const u32 gMonShinyPalette_Chikorita[] = INCBIN_U32("graphics/pokemon/chikorita/shiny.gbapal.lz");
const u8 gMonIcon_Chikorita[] = INCBIN_U8("graphics/pokemon/chikorita/icon.4bpp");
const u8 gMonFootprint_Chikorita[] = INCBIN_U8("graphics/pokemon/chikorita/footprint.1bpp");

const u32 gMonStillFrontPic_Bayleef[] = INCBIN_U32("graphics/pokemon/bayleef/front.4bpp.lz");
const u32 gMonPalette_Bayleef[] = INCBIN_U32("graphics/pokemon/bayleef/normal.gbapal.lz");
const u32 gMonBackPic_Bayleef[] = INCBIN_U32("graphics/pokemon/bayleef/back.4bpp.lz");
const u32 gMonShinyPalette_Bayleef[] = INCBIN_U32("graphics/pokemon/bayleef/shiny.gbapal.lz");
const u8 gMonIcon_Bayleef[] = INCBIN_U8("graphics/pokemon/bayleef/icon.4bpp");
const u8 gMonFootprint_Bayleef[] = INCBIN_U8("graphics/pokemon/bayleef/footprint.1bpp");

const u32 gMonStillFrontPic_Meganium[] = INCBIN_U32("graphics/pokemon/meganium/front.4bpp.lz");
const u32 gMonPalette_Meganium[] = INCBIN_U32("graphics/pokemon/meganium/normal.gbapal.lz");
const u32 gMonBackPic_Meganium[] = INCBIN_U32("graphics/pokemon/meganium/back.4bpp.lz");
const u32 gMonShinyPalette_Meganium[] = INCBIN_U32("graphics/pokemon/meganium/shiny.gbapal.lz");
const u8 gMonIcon_Meganium[] = INCBIN_U8("graphics/pokemon/meganium/icon.4bpp");
const u8 gMonFootprint_Meganium[] = INCBIN_U8("graphics/pokemon/meganium/footprint.1bpp");

const u32 gMonStillFrontPic_Cyndaquil[] = INCBIN_U32("graphics/pokemon/cyndaquil/front.4bpp.lz");
const u32 gMonPalette_Cyndaquil[] = INCBIN_U32("graphics/pokemon/cyndaquil/normal.gbapal.lz");
const u32 gMonBackPic_Cyndaquil[] = INCBIN_U32("graphics/pokemon/cyndaquil/back.4bpp.lz");
const u32 gMonShinyPalette_Cyndaquil[] = INCBIN_U32("graphics/pokemon/cyndaquil/shiny.gbapal.lz");
const u8 gMonIcon_Cyndaquil[] = INCBIN_U8("graphics/pokemon/cyndaquil/icon.4bpp");
const u8 gMonFootprint_Cyndaquil[] = INCBIN_U8("graphics/pokemon/cyndaquil/footprint.1bpp");

const u32 gMonStillFrontPic_Quilava[] = INCBIN_U32("graphics/pokemon/quilava/front.4bpp.lz");
const u32 gMonPalette_Quilava[] = INCBIN_U32("graphics/pokemon/quilava/normal.gbapal.lz");
const u32 gMonBackPic_Quilava[] = INCBIN_U32("graphics/pokemon/quilava/back.4bpp.lz");
const u32 gMonShinyPalette_Quilava[] = INCBIN_U32("graphics/pokemon/quilava/shiny.gbapal.lz");
const u8 gMonIcon_Quilava[] = INCBIN_U8("graphics/pokemon/quilava/icon.4bpp");
const u8 gMonFootprint_Quilava[] = INCBIN_U8("graphics/pokemon/quilava/footprint.1bpp");

const u32 gMonStillFrontPic_Typhlosion[] = INCBIN_U32("graphics/pokemon/typhlosion/front.4bpp.lz");
const u32 gMonPalette_Typhlosion[] = INCBIN_U32("graphics/pokemon/typhlosion/normal.gbapal.lz");
const u32 gMonBackPic_Typhlosion[] = INCBIN_U32("graphics/pokemon/typhlosion/back.4bpp.lz");
const u32 gMonShinyPalette_Typhlosion[] = INCBIN_U32("graphics/pokemon/typhlosion/shiny.gbapal.lz");
const u8 gMonIcon_Typhlosion[] = INCBIN_U8("graphics/pokemon/typhlosion/icon.4bpp");
const u8 gMonFootprint_Typhlosion[] = INCBIN_U8("graphics/pokemon/typhlosion/footprint.1bpp");

const u32 gMonStillFrontPic_Totodile[] = INCBIN_U32("graphics/pokemon/totodile/front.4bpp.lz");
const u32 gMonPalette_Totodile[] = INCBIN_U32("graphics/pokemon/totodile/normal.gbapal.lz");
const u32 gMonBackPic_Totodile[] = INCBIN_U32("graphics/pokemon/totodile/back.4bpp.lz");
const u32 gMonShinyPalette_Totodile[] = INCBIN_U32("graphics/pokemon/totodile/shiny.gbapal.lz");
const u8 gMonIcon_Totodile[] = INCBIN_U8("graphics/pokemon/totodile/icon.4bpp");
const u8 gMonFootprint_Totodile[] = INCBIN_U8("graphics/pokemon/totodile/footprint.1bpp");

const u32 gMonStillFrontPic_Croconaw[] = INCBIN_U32("graphics/pokemon/croconaw/front.4bpp.lz");
const u32 gMonPalette_Croconaw[] = INCBIN_U32("graphics/pokemon/croconaw/normal.gbapal.lz");
const u32 gMonBackPic_Croconaw[] = INCBIN_U32("graphics/pokemon/croconaw/back.4bpp.lz");
const u32 gMonShinyPalette_Croconaw[] = INCBIN_U32("graphics/pokemon/croconaw/shiny.gbapal.lz");
const u8 gMonIcon_Croconaw[] = INCBIN_U8("graphics/pokemon/croconaw/icon.4bpp");
const u8 gMonFootprint_Croconaw[] = INCBIN_U8("graphics/pokemon/croconaw/footprint.1bpp");

const u32 gMonStillFrontPic_Feraligatr[] = INCBIN_U32("graphics/pokemon/feraligatr/front.4bpp.lz");
const u32 gMonPalette_Feraligatr[] = INCBIN_U32("graphics/pokemon/feraligatr/normal.gbapal.lz");
const u32 gMonBackPic_Feraligatr[] = INCBIN_U32("graphics/pokemon/feraligatr/back.4bpp.lz");
const u32 gMonShinyPalette_Feraligatr[] = INCBIN_U32("graphics/pokemon/feraligatr/shiny.gbapal.lz");
const u8 gMonIcon_Feraligatr[] = INCBIN_U8("graphics/pokemon/feraligatr/icon.4bpp");
const u8 gMonFootprint_Feraligatr[] = INCBIN_U8("graphics/pokemon/feraligatr/footprint.1bpp");

const u32 gMonStillFrontPic_Sentret[] = INCBIN_U32("graphics/pokemon/sentret/front.4bpp.lz");
const u32 gMonPalette_Sentret[] = INCBIN_U32("graphics/pokemon/sentret/normal.gbapal.lz");
const u32 gMonBackPic_Sentret[] = INCBIN_U32("graphics/pokemon/sentret/back.4bpp.lz");
const u32 gMonShinyPalette_Sentret[] = INCBIN_U32("graphics/pokemon/sentret/shiny.gbapal.lz");
const u8 gMonIcon_Sentret[] = INCBIN_U8("graphics/pokemon/sentret/icon.4bpp");
const u8 gMonFootprint_Sentret[] = INCBIN_U8("graphics/pokemon/sentret/footprint.1bpp");

const u32 gMonStillFrontPic_Furret[] = INCBIN_U32("graphics/pokemon/furret/front.4bpp.lz");
const u32 gMonPalette_Furret[] = INCBIN_U32("graphics/pokemon/furret/normal.gbapal.lz");
const u32 gMonBackPic_Furret[] = INCBIN_U32("graphics/pokemon/furret/back.4bpp.lz");
const u32 gMonShinyPalette_Furret[] = INCBIN_U32("graphics/pokemon/furret/shiny.gbapal.lz");
const u8 gMonIcon_Furret[] = INCBIN_U8("graphics/pokemon/furret/icon.4bpp");
const u8 gMonFootprint_Furret[] = INCBIN_U8("graphics/pokemon/furret/footprint.1bpp");

const u32 gMonStillFrontPic_Hoothoot[] = INCBIN_U32("graphics/pokemon/hoothoot/front.4bpp.lz");
const u32 gMonPalette_Hoothoot[] = INCBIN_U32("graphics/pokemon/hoothoot/normal.gbapal.lz");
const u32 gMonBackPic_Hoothoot[] = INCBIN_U32("graphics/pokemon/hoothoot/back.4bpp.lz");
const u32 gMonShinyPalette_Hoothoot[] = INCBIN_U32("graphics/pokemon/hoothoot/shiny.gbapal.lz");
const u8 gMonIcon_Hoothoot[] = INCBIN_U8("graphics/pokemon/hoothoot/icon.4bpp");
const u8 gMonFootprint_Hoothoot[] = INCBIN_U8("graphics/pokemon/hoothoot/footprint.1bpp");

const u32 gMonStillFrontPic_Noctowl[] = INCBIN_U32("graphics/pokemon/noctowl/front.4bpp.lz");
const u32 gMonPalette_Noctowl[] = INCBIN_U32("graphics/pokemon/noctowl/normal.gbapal.lz");
const u32 gMonBackPic_Noctowl[] = INCBIN_U32("graphics/pokemon/noctowl/back.4bpp.lz");
const u32 gMonShinyPalette_Noctowl[] = INCBIN_U32("graphics/pokemon/noctowl/shiny.gbapal.lz");
const u8 gMonIcon_Noctowl[] = INCBIN_U8("graphics/pokemon/noctowl/icon.4bpp");
const u8 gMonFootprint_Noctowl[] = INCBIN_U8("graphics/pokemon/noctowl/footprint.1bpp");

const u32 gMonStillFrontPic_Ledyba[] = INCBIN_U32("graphics/pokemon/ledyba/front.4bpp.lz");
const u32 gMonPalette_Ledyba[] = INCBIN_U32("graphics/pokemon/ledyba/normal.gbapal.lz");
const u32 gMonBackPic_Ledyba[] = INCBIN_U32("graphics/pokemon/ledyba/back.4bpp.lz");
const u32 gMonShinyPalette_Ledyba[] = INCBIN_U32("graphics/pokemon/ledyba/shiny.gbapal.lz");
const u8 gMonIcon_Ledyba[] = INCBIN_U8("graphics/pokemon/ledyba/icon.4bpp");
const u8 gMonFootprint_Ledyba[] = INCBIN_U8("graphics/pokemon/ledyba/footprint.1bpp");

const u32 gMonStillFrontPic_Ledian[] = INCBIN_U32("graphics/pokemon/ledian/front.4bpp.lz");
const u32 gMonPalette_Ledian[] = INCBIN_U32("graphics/pokemon/ledian/normal.gbapal.lz");
const u32 gMonBackPic_Ledian[] = INCBIN_U32("graphics/pokemon/ledian/back.4bpp.lz");
const u32 gMonShinyPalette_Ledian[] = INCBIN_U32("graphics/pokemon/ledian/shiny.gbapal.lz");
const u8 gMonIcon_Ledian[] = INCBIN_U8("graphics/pokemon/ledian/icon.4bpp");
const u8 gMonFootprint_Ledian[] = INCBIN_U8("graphics/pokemon/ledian/footprint.1bpp");

const u32 gMonStillFrontPic_Spinarak[] = INCBIN_U32("graphics/pokemon/spinarak/front.4bpp.lz");
const u32 gMonPalette_Spinarak[] = INCBIN_U32("graphics/pokemon/spinarak/normal.gbapal.lz");
const u32 gMonBackPic_Spinarak[] = INCBIN_U32("graphics/pokemon/spinarak/back.4bpp.lz");
const u32 gMonShinyPalette_Spinarak[] = INCBIN_U32("graphics/pokemon/spinarak/shiny.gbapal.lz");
const u8 gMonIcon_Spinarak[] = INCBIN_U8("graphics/pokemon/spinarak/icon.4bpp");
const u8 gMonFootprint_Spinarak[] = INCBIN_U8("graphics/pokemon/spinarak/footprint.1bpp");

const u32 gMonStillFrontPic_Ariados[] = INCBIN_U32("graphics/pokemon/ariados/front.4bpp.lz");
const u32 gMonPalette_Ariados[] = INCBIN_U32("graphics/pokemon/ariados/normal.gbapal.lz");
const u32 gMonBackPic_Ariados[] = INCBIN_U32("graphics/pokemon/ariados/back.4bpp.lz");
const u32 gMonShinyPalette_Ariados[] = INCBIN_U32("graphics/pokemon/ariados/shiny.gbapal.lz");
const u8 gMonIcon_Ariados[] = INCBIN_U8("graphics/pokemon/ariados/icon.4bpp");
const u8 gMonFootprint_Ariados[] = INCBIN_U8("graphics/pokemon/ariados/footprint.1bpp");

const u32 gMonStillFrontPic_Crobat[] = INCBIN_U32("graphics/pokemon/crobat/front.4bpp.lz");
const u32 gMonPalette_Crobat[] = INCBIN_U32("graphics/pokemon/crobat/normal.gbapal.lz");
const u32 gMonBackPic_Crobat[] = INCBIN_U32("graphics/pokemon/crobat/back.4bpp.lz");
const u32 gMonShinyPalette_Crobat[] = INCBIN_U32("graphics/pokemon/crobat/shiny.gbapal.lz");
const u8 gMonIcon_Crobat[] = INCBIN_U8("graphics/pokemon/crobat/icon.4bpp");
const u8 gMonFootprint_Crobat[] = INCBIN_U8("graphics/pokemon/crobat/footprint.1bpp");

const u32 gMonStillFrontPic_Chinchou[] = INCBIN_U32("graphics/pokemon/chinchou/front.4bpp.lz");
const u32 gMonPalette_Chinchou[] = INCBIN_U32("graphics/pokemon/chinchou/normal.gbapal.lz");
const u32 gMonBackPic_Chinchou[] = INCBIN_U32("graphics/pokemon/chinchou/back.4bpp.lz");
const u32 gMonShinyPalette_Chinchou[] = INCBIN_U32("graphics/pokemon/chinchou/shiny.gbapal.lz");
const u8 gMonIcon_Chinchou[] = INCBIN_U8("graphics/pokemon/chinchou/icon.4bpp");
const u8 gMonFootprint_Chinchou[] = INCBIN_U8("graphics/pokemon/chinchou/footprint.1bpp");

const u32 gMonStillFrontPic_Lanturn[] = INCBIN_U32("graphics/pokemon/lanturn/front.4bpp.lz");
const u32 gMonPalette_Lanturn[] = INCBIN_U32("graphics/pokemon/lanturn/normal.gbapal.lz");
const u32 gMonBackPic_Lanturn[] = INCBIN_U32("graphics/pokemon/lanturn/back.4bpp.lz");
const u32 gMonShinyPalette_Lanturn[] = INCBIN_U32("graphics/pokemon/lanturn/shiny.gbapal.lz");
const u8 gMonIcon_Lanturn[] = INCBIN_U8("graphics/pokemon/lanturn/icon.4bpp");
const u8 gMonFootprint_Lanturn[] = INCBIN_U8("graphics/pokemon/lanturn/footprint.1bpp");

const u32 gMonStillFrontPic_Pichu[] = INCBIN_U32("graphics/pokemon/pichu/front.4bpp.lz");
const u32 gMonPalette_Pichu[] = INCBIN_U32("graphics/pokemon/pichu/normal.gbapal.lz");
const u32 gMonBackPic_Pichu[] = INCBIN_U32("graphics/pokemon/pichu/back.4bpp.lz");
const u32 gMonShinyPalette_Pichu[] = INCBIN_U32("graphics/pokemon/pichu/shiny.gbapal.lz");
const u8 gMonIcon_Pichu[] = INCBIN_U8("graphics/pokemon/pichu/icon.4bpp");
const u8 gMonFootprint_Pichu[] = INCBIN_U8("graphics/pokemon/pichu/footprint.1bpp");

const u32 gMonStillFrontPic_Cleffa[] = INCBIN_U32("graphics/pokemon/cleffa/front.4bpp.lz");
const u32 gMonPalette_Cleffa[] = INCBIN_U32("graphics/pokemon/cleffa/normal.gbapal.lz");
const u32 gMonBackPic_Cleffa[] = INCBIN_U32("graphics/pokemon/cleffa/back.4bpp.lz");
const u32 gMonShinyPalette_Cleffa[] = INCBIN_U32("graphics/pokemon/cleffa/shiny.gbapal.lz");
const u8 gMonIcon_Cleffa[] = INCBIN_U8("graphics/pokemon/cleffa/icon.4bpp");
const u8 gMonFootprint_Cleffa[] = INCBIN_U8("graphics/pokemon/cleffa/footprint.1bpp");

const u32 gMonStillFrontPic_Igglybuff[] = INCBIN_U32("graphics/pokemon/igglybuff/front.4bpp.lz");
const u32 gMonPalette_Igglybuff[] = INCBIN_U32("graphics/pokemon/igglybuff/normal.gbapal.lz");
const u32 gMonBackPic_Igglybuff[] = INCBIN_U32("graphics/pokemon/igglybuff/back.4bpp.lz");
const u32 gMonShinyPalette_Igglybuff[] = INCBIN_U32("graphics/pokemon/igglybuff/shiny.gbapal.lz");
const u8 gMonIcon_Igglybuff[] = INCBIN_U8("graphics/pokemon/igglybuff/icon.4bpp");
const u8 gMonFootprint_Igglybuff[] = INCBIN_U8("graphics/pokemon/igglybuff/footprint.1bpp");

const u32 gMonStillFrontPic_Togepi[] = INCBIN_U32("graphics/pokemon/togepi/front.4bpp.lz");
const u32 gMonPalette_Togepi[] = INCBIN_U32("graphics/pokemon/togepi/normal.gbapal.lz");
const u32 gMonBackPic_Togepi[] = INCBIN_U32("graphics/pokemon/togepi/back.4bpp.lz");
const u32 gMonShinyPalette_Togepi[] = INCBIN_U32("graphics/pokemon/togepi/shiny.gbapal.lz");
const u8 gMonIcon_Togepi[] = INCBIN_U8("graphics/pokemon/togepi/icon.4bpp");
const u8 gMonFootprint_Togepi[] = INCBIN_U8("graphics/pokemon/togepi/footprint.1bpp");

const u32 gMonStillFrontPic_Togetic[] = INCBIN_U32("graphics/pokemon/togetic/front.4bpp.lz");
const u32 gMonPalette_Togetic[] = INCBIN_U32("graphics/pokemon/togetic/normal.gbapal.lz");
const u32 gMonBackPic_Togetic[] = INCBIN_U32("graphics/pokemon/togetic/back.4bpp.lz");
const u32 gMonShinyPalette_Togetic[] = INCBIN_U32("graphics/pokemon/togetic/shiny.gbapal.lz");
const u8 gMonIcon_Togetic[] = INCBIN_U8("graphics/pokemon/togetic/icon.4bpp");
const u8 gMonFootprint_Togetic[] = INCBIN_U8("graphics/pokemon/togetic/footprint.1bpp");

const u32 gMonStillFrontPic_Natu[] = INCBIN_U32("graphics/pokemon/natu/front.4bpp.lz");
const u32 gMonPalette_Natu[] = INCBIN_U32("graphics/pokemon/natu/normal.gbapal.lz");
const u32 gMonBackPic_Natu[] = INCBIN_U32("graphics/pokemon/natu/back.4bpp.lz");
const u32 gMonShinyPalette_Natu[] = INCBIN_U32("graphics/pokemon/natu/shiny.gbapal.lz");
const u8 gMonIcon_Natu[] = INCBIN_U8("graphics/pokemon/natu/icon.4bpp");
const u8 gMonFootprint_Natu[] = INCBIN_U8("graphics/pokemon/natu/footprint.1bpp");

const u32 gMonStillFrontPic_Xatu[] = INCBIN_U32("graphics/pokemon/xatu/front.4bpp.lz");
const u32 gMonPalette_Xatu[] = INCBIN_U32("graphics/pokemon/xatu/normal.gbapal.lz");
const u32 gMonBackPic_Xatu[] = INCBIN_U32("graphics/pokemon/xatu/back.4bpp.lz");
const u32 gMonShinyPalette_Xatu[] = INCBIN_U32("graphics/pokemon/xatu/shiny.gbapal.lz");
const u8 gMonIcon_Xatu[] = INCBIN_U8("graphics/pokemon/xatu/icon.4bpp");
const u8 gMonFootprint_Xatu[] = INCBIN_U8("graphics/pokemon/xatu/footprint.1bpp");

const u32 gMonStillFrontPic_Mareep[] = INCBIN_U32("graphics/pokemon/mareep/front.4bpp.lz");
const u32 gMonPalette_Mareep[] = INCBIN_U32("graphics/pokemon/mareep/normal.gbapal.lz");
const u32 gMonBackPic_Mareep[] = INCBIN_U32("graphics/pokemon/mareep/back.4bpp.lz");
const u32 gMonShinyPalette_Mareep[] = INCBIN_U32("graphics/pokemon/mareep/shiny.gbapal.lz");
const u8 gMonIcon_Mareep[] = INCBIN_U8("graphics/pokemon/mareep/icon.4bpp");
const u8 gMonFootprint_Mareep[] = INCBIN_U8("graphics/pokemon/mareep/footprint.1bpp");

const u32 gMonStillFrontPic_Flaaffy[] = INCBIN_U32("graphics/pokemon/flaaffy/front.4bpp.lz");
const u32 gMonPalette_Flaaffy[] = INCBIN_U32("graphics/pokemon/flaaffy/normal.gbapal.lz");
const u32 gMonBackPic_Flaaffy[] = INCBIN_U32("graphics/pokemon/flaaffy/back.4bpp.lz");
const u32 gMonShinyPalette_Flaaffy[] = INCBIN_U32("graphics/pokemon/flaaffy/shiny.gbapal.lz");
const u8 gMonIcon_Flaaffy[] = INCBIN_U8("graphics/pokemon/flaaffy/icon.4bpp");
const u8 gMonFootprint_Flaaffy[] = INCBIN_U8("graphics/pokemon/flaaffy/footprint.1bpp");

const u32 gMonStillFrontPic_Ampharos[] = INCBIN_U32("graphics/pokemon/ampharos/front.4bpp.lz");
const u32 gMonPalette_Ampharos[] = INCBIN_U32("graphics/pokemon/ampharos/normal.gbapal.lz");
const u32 gMonBackPic_Ampharos[] = INCBIN_U32("graphics/pokemon/ampharos/back.4bpp.lz");
const u32 gMonShinyPalette_Ampharos[] = INCBIN_U32("graphics/pokemon/ampharos/shiny.gbapal.lz");
const u8 gMonIcon_Ampharos[] = INCBIN_U8("graphics/pokemon/ampharos/icon.4bpp");
const u8 gMonFootprint_Ampharos[] = INCBIN_U8("graphics/pokemon/ampharos/footprint.1bpp");

const u32 gMonStillFrontPic_Bellossom[] = INCBIN_U32("graphics/pokemon/bellossom/front.4bpp.lz");
const u32 gMonPalette_Bellossom[] = INCBIN_U32("graphics/pokemon/bellossom/normal.gbapal.lz");
const u32 gMonBackPic_Bellossom[] = INCBIN_U32("graphics/pokemon/bellossom/back.4bpp.lz");
const u32 gMonShinyPalette_Bellossom[] = INCBIN_U32("graphics/pokemon/bellossom/shiny.gbapal.lz");
const u8 gMonIcon_Bellossom[] = INCBIN_U8("graphics/pokemon/bellossom/icon.4bpp");
const u8 gMonFootprint_Bellossom[] = INCBIN_U8("graphics/pokemon/bellossom/footprint.1bpp");

const u32 gMonStillFrontPic_Marill[] = INCBIN_U32("graphics/pokemon/marill/front.4bpp.lz");
const u32 gMonPalette_Marill[] = INCBIN_U32("graphics/pokemon/marill/normal.gbapal.lz");
const u32 gMonBackPic_Marill[] = INCBIN_U32("graphics/pokemon/marill/back.4bpp.lz");
const u32 gMonShinyPalette_Marill[] = INCBIN_U32("graphics/pokemon/marill/shiny.gbapal.lz");
const u8 gMonIcon_Marill[] = INCBIN_U8("graphics/pokemon/marill/icon.4bpp");
const u8 gMonFootprint_Marill[] = INCBIN_U8("graphics/pokemon/marill/footprint.1bpp");

const u32 gMonStillFrontPic_Azumarill[] = INCBIN_U32("graphics/pokemon/azumarill/front.4bpp.lz");
const u32 gMonPalette_Azumarill[] = INCBIN_U32("graphics/pokemon/azumarill/normal.gbapal.lz");
const u32 gMonBackPic_Azumarill[] = INCBIN_U32("graphics/pokemon/azumarill/back.4bpp.lz");
const u32 gMonShinyPalette_Azumarill[] = INCBIN_U32("graphics/pokemon/azumarill/shiny.gbapal.lz");
const u8 gMonIcon_Azumarill[] = INCBIN_U8("graphics/pokemon/azumarill/icon.4bpp");
const u8 gMonFootprint_Azumarill[] = INCBIN_U8("graphics/pokemon/azumarill/footprint.1bpp");

const u32 gMonStillFrontPic_Sudowoodo[] = INCBIN_U32("graphics/pokemon/sudowoodo/front.4bpp.lz");
const u32 gMonPalette_Sudowoodo[] = INCBIN_U32("graphics/pokemon/sudowoodo/normal.gbapal.lz");
const u32 gMonBackPic_Sudowoodo[] = INCBIN_U32("graphics/pokemon/sudowoodo/back.4bpp.lz");
const u32 gMonShinyPalette_Sudowoodo[] = INCBIN_U32("graphics/pokemon/sudowoodo/shiny.gbapal.lz");
const u8 gMonIcon_Sudowoodo[] = INCBIN_U8("graphics/pokemon/sudowoodo/icon.4bpp");
const u8 gMonFootprint_Sudowoodo[] = INCBIN_U8("graphics/pokemon/sudowoodo/footprint.1bpp");

const u32 gMonStillFrontPic_Politoed[] = INCBIN_U32("graphics/pokemon/politoed/front.4bpp.lz");
const u32 gMonPalette_Politoed[] = INCBIN_U32("graphics/pokemon/politoed/normal.gbapal.lz");
const u32 gMonBackPic_Politoed[] = INCBIN_U32("graphics/pokemon/politoed/back.4bpp.lz");
const u32 gMonShinyPalette_Politoed[] = INCBIN_U32("graphics/pokemon/politoed/shiny.gbapal.lz");
const u8 gMonIcon_Politoed[] = INCBIN_U8("graphics/pokemon/politoed/icon.4bpp");
const u8 gMonFootprint_Politoed[] = INCBIN_U8("graphics/pokemon/politoed/footprint.1bpp");

const u32 gMonStillFrontPic_Hoppip[] = INCBIN_U32("graphics/pokemon/hoppip/front.4bpp.lz");
const u32 gMonPalette_Hoppip[] = INCBIN_U32("graphics/pokemon/hoppip/normal.gbapal.lz");
const u32 gMonBackPic_Hoppip[] = INCBIN_U32("graphics/pokemon/hoppip/back.4bpp.lz");
const u32 gMonShinyPalette_Hoppip[] = INCBIN_U32("graphics/pokemon/hoppip/shiny.gbapal.lz");
const u8 gMonIcon_Hoppip[] = INCBIN_U8("graphics/pokemon/hoppip/icon.4bpp");
const u8 gMonFootprint_Hoppip[] = INCBIN_U8("graphics/pokemon/hoppip/footprint.1bpp");

const u32 gMonStillFrontPic_Skiploom[] = INCBIN_U32("graphics/pokemon/skiploom/front.4bpp.lz");
const u32 gMonPalette_Skiploom[] = INCBIN_U32("graphics/pokemon/skiploom/normal.gbapal.lz");
const u32 gMonBackPic_Skiploom[] = INCBIN_U32("graphics/pokemon/skiploom/back.4bpp.lz");
const u32 gMonShinyPalette_Skiploom[] = INCBIN_U32("graphics/pokemon/skiploom/shiny.gbapal.lz");
const u8 gMonIcon_Skiploom[] = INCBIN_U8("graphics/pokemon/skiploom/icon.4bpp");
const u8 gMonFootprint_Skiploom[] = INCBIN_U8("graphics/pokemon/skiploom/footprint.1bpp");

const u32 gMonStillFrontPic_Jumpluff[] = INCBIN_U32("graphics/pokemon/jumpluff/front.4bpp.lz");
const u32 gMonPalette_Jumpluff[] = INCBIN_U32("graphics/pokemon/jumpluff/normal.gbapal.lz");
const u32 gMonBackPic_Jumpluff[] = INCBIN_U32("graphics/pokemon/jumpluff/back.4bpp.lz");
const u32 gMonShinyPalette_Jumpluff[] = INCBIN_U32("graphics/pokemon/jumpluff/shiny.gbapal.lz");
const u8 gMonIcon_Jumpluff[] = INCBIN_U8("graphics/pokemon/jumpluff/icon.4bpp");
const u8 gMonFootprint_Jumpluff[] = INCBIN_U8("graphics/pokemon/jumpluff/footprint.1bpp");

const u32 gMonStillFrontPic_Aipom[] = INCBIN_U32("graphics/pokemon/aipom/front.4bpp.lz");
const u32 gMonPalette_Aipom[] = INCBIN_U32("graphics/pokemon/aipom/normal.gbapal.lz");
const u32 gMonBackPic_Aipom[] = INCBIN_U32("graphics/pokemon/aipom/back.4bpp.lz");
const u32 gMonShinyPalette_Aipom[] = INCBIN_U32("graphics/pokemon/aipom/shiny.gbapal.lz");
const u8 gMonIcon_Aipom[] = INCBIN_U8("graphics/pokemon/aipom/icon.4bpp");
const u8 gMonFootprint_Aipom[] = INCBIN_U8("graphics/pokemon/aipom/footprint.1bpp");

const u32 gMonStillFrontPic_Sunkern[] = INCBIN_U32("graphics/pokemon/sunkern/front.4bpp.lz");
const u32 gMonPalette_Sunkern[] = INCBIN_U32("graphics/pokemon/sunkern/normal.gbapal.lz");
const u32 gMonBackPic_Sunkern[] = INCBIN_U32("graphics/pokemon/sunkern/back.4bpp.lz");
const u32 gMonShinyPalette_Sunkern[] = INCBIN_U32("graphics/pokemon/sunkern/shiny.gbapal.lz");
const u8 gMonIcon_Sunkern[] = INCBIN_U8("graphics/pokemon/sunkern/icon.4bpp");
const u8 gMonFootprint_Sunkern[] = INCBIN_U8("graphics/pokemon/sunkern/footprint.1bpp");

const u32 gMonStillFrontPic_Sunflora[] = INCBIN_U32("graphics/pokemon/sunflora/front.4bpp.lz");
const u32 gMonPalette_Sunflora[] = INCBIN_U32("graphics/pokemon/sunflora/normal.gbapal.lz");
const u32 gMonBackPic_Sunflora[] = INCBIN_U32("graphics/pokemon/sunflora/back.4bpp.lz");
const u32 gMonShinyPalette_Sunflora[] = INCBIN_U32("graphics/pokemon/sunflora/shiny.gbapal.lz");
const u8 gMonIcon_Sunflora[] = INCBIN_U8("graphics/pokemon/sunflora/icon.4bpp");
const u8 gMonFootprint_Sunflora[] = INCBIN_U8("graphics/pokemon/sunflora/footprint.1bpp");

const u32 gMonStillFrontPic_Yanma[] = INCBIN_U32("graphics/pokemon/yanma/front.4bpp.lz");
const u32 gMonPalette_Yanma[] = INCBIN_U32("graphics/pokemon/yanma/normal.gbapal.lz");
const u32 gMonBackPic_Yanma[] = INCBIN_U32("graphics/pokemon/yanma/back.4bpp.lz");
const u32 gMonShinyPalette_Yanma[] = INCBIN_U32("graphics/pokemon/yanma/shiny.gbapal.lz");
const u8 gMonIcon_Yanma[] = INCBIN_U8("graphics/pokemon/yanma/icon.4bpp");
const u8 gMonFootprint_Yanma[] = INCBIN_U8("graphics/pokemon/yanma/footprint.1bpp");

const u32 gMonStillFrontPic_Wooper[] = INCBIN_U32("graphics/pokemon/wooper/front.4bpp.lz");
const u32 gMonPalette_Wooper[] = INCBIN_U32("graphics/pokemon/wooper/normal.gbapal.lz");
const u32 gMonBackPic_Wooper[] = INCBIN_U32("graphics/pokemon/wooper/back.4bpp.lz");
const u32 gMonShinyPalette_Wooper[] = INCBIN_U32("graphics/pokemon/wooper/shiny.gbapal.lz");
const u8 gMonIcon_Wooper[] = INCBIN_U8("graphics/pokemon/wooper/icon.4bpp");
const u8 gMonFootprint_Wooper[] = INCBIN_U8("graphics/pokemon/wooper/footprint.1bpp");

const u32 gMonStillFrontPic_Quagsire[] = INCBIN_U32("graphics/pokemon/quagsire/front.4bpp.lz");
const u32 gMonPalette_Quagsire[] = INCBIN_U32("graphics/pokemon/quagsire/normal.gbapal.lz");
const u32 gMonBackPic_Quagsire[] = INCBIN_U32("graphics/pokemon/quagsire/back.4bpp.lz");
const u32 gMonShinyPalette_Quagsire[] = INCBIN_U32("graphics/pokemon/quagsire/shiny.gbapal.lz");
const u8 gMonIcon_Quagsire[] = INCBIN_U8("graphics/pokemon/quagsire/icon.4bpp");
const u8 gMonFootprint_Quagsire[] = INCBIN_U8("graphics/pokemon/quagsire/footprint.1bpp");

const u32 gMonStillFrontPic_Espeon[] = INCBIN_U32("graphics/pokemon/espeon/front.4bpp.lz");
const u32 gMonPalette_Espeon[] = INCBIN_U32("graphics/pokemon/espeon/normal.gbapal.lz");
const u32 gMonBackPic_Espeon[] = INCBIN_U32("graphics/pokemon/espeon/back.4bpp.lz");
const u32 gMonShinyPalette_Espeon[] = INCBIN_U32("graphics/pokemon/espeon/shiny.gbapal.lz");
const u8 gMonIcon_Espeon[] = INCBIN_U8("graphics/pokemon/espeon/icon.4bpp");
const u8 gMonFootprint_Espeon[] = INCBIN_U8("graphics/pokemon/espeon/footprint.1bpp");

const u32 gMonStillFrontPic_Umbreon[] = INCBIN_U32("graphics/pokemon/umbreon/front.4bpp.lz");
const u32 gMonPalette_Umbreon[] = INCBIN_U32("graphics/pokemon/umbreon/normal.gbapal.lz");
const u32 gMonBackPic_Umbreon[] = INCBIN_U32("graphics/pokemon/umbreon/back.4bpp.lz");
const u32 gMonShinyPalette_Umbreon[] = INCBIN_U32("graphics/pokemon/umbreon/shiny.gbapal.lz");
const u8 gMonIcon_Umbreon[] = INCBIN_U8("graphics/pokemon/umbreon/icon.4bpp");
const u8 gMonFootprint_Umbreon[] = INCBIN_U8("graphics/pokemon/umbreon/footprint.1bpp");

const u32 gMonStillFrontPic_Murkrow[] = INCBIN_U32("graphics/pokemon/murkrow/front.4bpp.lz");
const u32 gMonPalette_Murkrow[] = INCBIN_U32("graphics/pokemon/murkrow/normal.gbapal.lz");
const u32 gMonBackPic_Murkrow[] = INCBIN_U32("graphics/pokemon/murkrow/back.4bpp.lz");
const u32 gMonShinyPalette_Murkrow[] = INCBIN_U32("graphics/pokemon/murkrow/shiny.gbapal.lz");
const u8 gMonIcon_Murkrow[] = INCBIN_U8("graphics/pokemon/murkrow/icon.4bpp");
const u8 gMonFootprint_Murkrow[] = INCBIN_U8("graphics/pokemon/murkrow/footprint.1bpp");

const u32 gMonStillFrontPic_Slowking[] = INCBIN_U32("graphics/pokemon/slowking/front.4bpp.lz");
const u32 gMonPalette_Slowking[] = INCBIN_U32("graphics/pokemon/slowking/normal.gbapal.lz");
const u32 gMonBackPic_Slowking[] = INCBIN_U32("graphics/pokemon/slowking/back.4bpp.lz");
const u32 gMonShinyPalette_Slowking[] = INCBIN_U32("graphics/pokemon/slowking/shiny.gbapal.lz");
const u8 gMonIcon_Slowking[] = INCBIN_U8("graphics/pokemon/slowking/icon.4bpp");
const u8 gMonFootprint_Slowking[] = INCBIN_U8("graphics/pokemon/slowking/footprint.1bpp");

const u32 gMonStillFrontPic_Misdreavus[] = INCBIN_U32("graphics/pokemon/misdreavus/front.4bpp.lz");
const u32 gMonPalette_Misdreavus[] = INCBIN_U32("graphics/pokemon/misdreavus/normal.gbapal.lz");
const u32 gMonBackPic_Misdreavus[] = INCBIN_U32("graphics/pokemon/misdreavus/back.4bpp.lz");
const u32 gMonShinyPalette_Misdreavus[] = INCBIN_U32("graphics/pokemon/misdreavus/shiny.gbapal.lz");
const u8 gMonIcon_Misdreavus[] = INCBIN_U8("graphics/pokemon/misdreavus/icon.4bpp");
const u8 gMonFootprint_Misdreavus[] = INCBIN_U8("graphics/pokemon/misdreavus/footprint.1bpp");

const u32 gMonStillFrontPic_UnownA[] = INCBIN_U32("graphics/pokemon/unown/a/front.4bpp.lz");
const u32 gMonPalette_Unown[] = INCBIN_U32("graphics/pokemon/unown/normal.gbapal.lz");
const u32 gMonBackPic_UnownA[] = INCBIN_U32("graphics/pokemon/unown/a/back.4bpp.lz");
const u32 gMonShinyPalette_Unown[] = INCBIN_U32("graphics/pokemon/unown/shiny.gbapal.lz");
const u8 gMonIcon_UnownA[] = INCBIN_U8("graphics/pokemon/unown/a/icon.4bpp");
const u8 gMonFootprint_Unown[] = INCBIN_U8("graphics/pokemon/unown/footprint.1bpp");

const u32 gMonStillFrontPic_Wobbuffet[] = INCBIN_U32("graphics/pokemon/wobbuffet/front.4bpp.lz");
const u32 gMonPalette_Wobbuffet[] = INCBIN_U32("graphics/pokemon/wobbuffet/normal.gbapal.lz");
const u32 gMonBackPic_Wobbuffet[] = INCBIN_U32("graphics/pokemon/wobbuffet/back.4bpp.lz");
const u32 gMonShinyPalette_Wobbuffet[] = INCBIN_U32("graphics/pokemon/wobbuffet/shiny.gbapal.lz");
const u8 gMonIcon_Wobbuffet[] = INCBIN_U8("graphics/pokemon/wobbuffet/icon.4bpp");
const u8 gMonFootprint_Wobbuffet[] = INCBIN_U8("graphics/pokemon/wobbuffet/footprint.1bpp");

const u32 gMonStillFrontPic_Girafarig[] = INCBIN_U32("graphics/pokemon/girafarig/front.4bpp.lz");
const u32 gMonPalette_Girafarig[] = INCBIN_U32("graphics/pokemon/girafarig/normal.gbapal.lz");
const u32 gMonBackPic_Girafarig[] = INCBIN_U32("graphics/pokemon/girafarig/back.4bpp.lz");
const u32 gMonShinyPalette_Girafarig[] = INCBIN_U32("graphics/pokemon/girafarig/shiny.gbapal.lz");
const u8 gMonIcon_Girafarig[] = INCBIN_U8("graphics/pokemon/girafarig/icon.4bpp");
const u8 gMonFootprint_Girafarig[] = INCBIN_U8("graphics/pokemon/girafarig/footprint.1bpp");

const u32 gMonStillFrontPic_Pineco[] = INCBIN_U32("graphics/pokemon/pineco/front.4bpp.lz");
const u32 gMonPalette_Pineco[] = INCBIN_U32("graphics/pokemon/pineco/normal.gbapal.lz");
const u32 gMonBackPic_Pineco[] = INCBIN_U32("graphics/pokemon/pineco/back.4bpp.lz");
const u32 gMonShinyPalette_Pineco[] = INCBIN_U32("graphics/pokemon/pineco/shiny.gbapal.lz");
const u8 gMonIcon_Pineco[] = INCBIN_U8("graphics/pokemon/pineco/icon.4bpp");
const u8 gMonFootprint_Pineco[] = INCBIN_U8("graphics/pokemon/pineco/footprint.1bpp");

const u32 gMonStillFrontPic_Forretress[] = INCBIN_U32("graphics/pokemon/forretress/front.4bpp.lz");
const u32 gMonPalette_Forretress[] = INCBIN_U32("graphics/pokemon/forretress/normal.gbapal.lz");
const u32 gMonBackPic_Forretress[] = INCBIN_U32("graphics/pokemon/forretress/back.4bpp.lz");
const u32 gMonShinyPalette_Forretress[] = INCBIN_U32("graphics/pokemon/forretress/shiny.gbapal.lz");
const u8 gMonIcon_Forretress[] = INCBIN_U8("graphics/pokemon/forretress/icon.4bpp");
const u8 gMonFootprint_Forretress[] = INCBIN_U8("graphics/pokemon/forretress/footprint.1bpp");

const u32 gMonStillFrontPic_Dunsparce[] = INCBIN_U32("graphics/pokemon/dunsparce/front.4bpp.lz");
const u32 gMonPalette_Dunsparce[] = INCBIN_U32("graphics/pokemon/dunsparce/normal.gbapal.lz");
const u32 gMonBackPic_Dunsparce[] = INCBIN_U32("graphics/pokemon/dunsparce/back.4bpp.lz");
const u32 gMonShinyPalette_Dunsparce[] = INCBIN_U32("graphics/pokemon/dunsparce/shiny.gbapal.lz");
const u8 gMonIcon_Dunsparce[] = INCBIN_U8("graphics/pokemon/dunsparce/icon.4bpp");
const u8 gMonFootprint_Dunsparce[] = INCBIN_U8("graphics/pokemon/dunsparce/footprint.1bpp");

const u32 gMonStillFrontPic_Gligar[] = INCBIN_U32("graphics/pokemon/gligar/front.4bpp.lz");
const u32 gMonPalette_Gligar[] = INCBIN_U32("graphics/pokemon/gligar/normal.gbapal.lz");
const u32 gMonBackPic_Gligar[] = INCBIN_U32("graphics/pokemon/gligar/back.4bpp.lz");
const u32 gMonShinyPalette_Gligar[] = INCBIN_U32("graphics/pokemon/gligar/shiny.gbapal.lz");
const u8 gMonIcon_Gligar[] = INCBIN_U8("graphics/pokemon/gligar/icon.4bpp");
const u8 gMonFootprint_Gligar[] = INCBIN_U8("graphics/pokemon/gligar/footprint.1bpp");

const u32 gMonStillFrontPic_Steelix[] = INCBIN_U32("graphics/pokemon/steelix/front.4bpp.lz");
const u32 gMonPalette_Steelix[] = INCBIN_U32("graphics/pokemon/steelix/normal.gbapal.lz");
const u32 gMonBackPic_Steelix[] = INCBIN_U32("graphics/pokemon/steelix/back.4bpp.lz");
const u32 gMonShinyPalette_Steelix[] = INCBIN_U32("graphics/pokemon/steelix/shiny.gbapal.lz");
const u8 gMonIcon_Steelix[] = INCBIN_U8("graphics/pokemon/steelix/icon.4bpp");
const u8 gMonFootprint_Steelix[] = INCBIN_U8("graphics/pokemon/steelix/footprint.1bpp");

const u32 gMonStillFrontPic_Snubbull[] = INCBIN_U32("graphics/pokemon/snubbull/front.4bpp.lz");
const u32 gMonPalette_Snubbull[] = INCBIN_U32("graphics/pokemon/snubbull/normal.gbapal.lz");
const u32 gMonBackPic_Snubbull[] = INCBIN_U32("graphics/pokemon/snubbull/back.4bpp.lz");
const u32 gMonShinyPalette_Snubbull[] = INCBIN_U32("graphics/pokemon/snubbull/shiny.gbapal.lz");
const u8 gMonIcon_Snubbull[] = INCBIN_U8("graphics/pokemon/snubbull/icon.4bpp");
const u8 gMonFootprint_Snubbull[] = INCBIN_U8("graphics/pokemon/snubbull/footprint.1bpp");

const u32 gMonStillFrontPic_Granbull[] = INCBIN_U32("graphics/pokemon/granbull/front.4bpp.lz");
const u32 gMonPalette_Granbull[] = INCBIN_U32("graphics/pokemon/granbull/normal.gbapal.lz");
const u32 gMonBackPic_Granbull[] = INCBIN_U32("graphics/pokemon/granbull/back.4bpp.lz");
const u32 gMonShinyPalette_Granbull[] = INCBIN_U32("graphics/pokemon/granbull/shiny.gbapal.lz");
const u8 gMonIcon_Granbull[] = INCBIN_U8("graphics/pokemon/granbull/icon.4bpp");
const u8 gMonFootprint_Granbull[] = INCBIN_U8("graphics/pokemon/granbull/footprint.1bpp");

const u32 gMonStillFrontPic_Qwilfish[] = INCBIN_U32("graphics/pokemon/qwilfish/front.4bpp.lz");
const u32 gMonPalette_Qwilfish[] = INCBIN_U32("graphics/pokemon/qwilfish/normal.gbapal.lz");
const u32 gMonBackPic_Qwilfish[] = INCBIN_U32("graphics/pokemon/qwilfish/back.4bpp.lz");
const u32 gMonShinyPalette_Qwilfish[] = INCBIN_U32("graphics/pokemon/qwilfish/shiny.gbapal.lz");
const u8 gMonIcon_Qwilfish[] = INCBIN_U8("graphics/pokemon/qwilfish/icon.4bpp");
const u8 gMonFootprint_Qwilfish[] = INCBIN_U8("graphics/pokemon/qwilfish/footprint.1bpp");

const u32 gMonStillFrontPic_Scizor[] = INCBIN_U32("graphics/pokemon/scizor/front.4bpp.lz");
const u32 gMonPalette_Scizor[] = INCBIN_U32("graphics/pokemon/scizor/normal.gbapal.lz");
const u32 gMonBackPic_Scizor[] = INCBIN_U32("graphics/pokemon/scizor/back.4bpp.lz");
const u32 gMonShinyPalette_Scizor[] = INCBIN_U32("graphics/pokemon/scizor/shiny.gbapal.lz");
const u8 gMonIcon_Scizor[] = INCBIN_U8("graphics/pokemon/scizor/icon.4bpp");
const u8 gMonFootprint_Scizor[] = INCBIN_U8("graphics/pokemon/scizor/footprint.1bpp");

const u32 gMonStillFrontPic_Shuckle[] = INCBIN_U32("graphics/pokemon/shuckle/front.4bpp.lz");
const u32 gMonPalette_Shuckle[] = INCBIN_U32("graphics/pokemon/shuckle/normal.gbapal.lz");
const u32 gMonBackPic_Shuckle[] = INCBIN_U32("graphics/pokemon/shuckle/back.4bpp.lz");
const u32 gMonShinyPalette_Shuckle[] = INCBIN_U32("graphics/pokemon/shuckle/shiny.gbapal.lz");
const u8 gMonIcon_Shuckle[] = INCBIN_U8("graphics/pokemon/shuckle/icon.4bpp");
const u8 gMonFootprint_Shuckle[] = INCBIN_U8("graphics/pokemon/shuckle/footprint.1bpp");

const u32 gMonStillFrontPic_Heracross[] = INCBIN_U32("graphics/pokemon/heracross/front.4bpp.lz");
const u32 gMonPalette_Heracross[] = INCBIN_U32("graphics/pokemon/heracross/normal.gbapal.lz");
const u32 gMonBackPic_Heracross[] = INCBIN_U32("graphics/pokemon/heracross/back.4bpp.lz");
const u32 gMonShinyPalette_Heracross[] = INCBIN_U32("graphics/pokemon/heracross/shiny.gbapal.lz");
const u8 gMonIcon_Heracross[] = INCBIN_U8("graphics/pokemon/heracross/icon.4bpp");
const u8 gMonFootprint_Heracross[] = INCBIN_U8("graphics/pokemon/heracross/footprint.1bpp");

const u32 gMonStillFrontPic_Sneasel[] = INCBIN_U32("graphics/pokemon/sneasel/front.4bpp.lz");
const u32 gMonPalette_Sneasel[] = INCBIN_U32("graphics/pokemon/sneasel/normal.gbapal.lz");
const u32 gMonBackPic_Sneasel[] = INCBIN_U32("graphics/pokemon/sneasel/back.4bpp.lz");
const u32 gMonShinyPalette_Sneasel[] = INCBIN_U32("graphics/pokemon/sneasel/shiny.gbapal.lz");
const u8 gMonIcon_Sneasel[] = INCBIN_U8("graphics/pokemon/sneasel/icon.4bpp");
const u8 gMonFootprint_Sneasel[] = INCBIN_U8("graphics/pokemon/sneasel/footprint.1bpp");

const u32 gMonStillFrontPic_Teddiursa[] = INCBIN_U32("graphics/pokemon/teddiursa/front.4bpp.lz");
const u32 gMonPalette_Teddiursa[] = INCBIN_U32("graphics/pokemon/teddiursa/normal.gbapal.lz");
const u32 gMonBackPic_Teddiursa[] = INCBIN_U32("graphics/pokemon/teddiursa/back.4bpp.lz");
const u32 gMonShinyPalette_Teddiursa[] = INCBIN_U32("graphics/pokemon/teddiursa/shiny.gbapal.lz");
const u8 gMonIcon_Teddiursa[] = INCBIN_U8("graphics/pokemon/teddiursa/icon.4bpp");
const u8 gMonFootprint_Teddiursa[] = INCBIN_U8("graphics/pokemon/teddiursa/footprint.1bpp");
const u32 gMonStillFrontPic_Ursaring[] = INCBIN_U32("graphics/pokemon/ursaring/front.4bpp.lz");
const u32 gMonPalette_Ursaring[] = INCBIN_U32("graphics/pokemon/ursaring/normal.gbapal.lz");
const u32 gMonBackPic_Ursaring[] = INCBIN_U32("graphics/pokemon/ursaring/back.4bpp.lz");
const u32 gMonShinyPalette_Ursaring[] = INCBIN_U32("graphics/pokemon/ursaring/shiny.gbapal.lz");
const u8 gMonIcon_Ursaring[] = INCBIN_U8("graphics/pokemon/ursaring/icon.4bpp");
const u8 gMonFootprint_Ursaring[] = INCBIN_U8("graphics/pokemon/ursaring/footprint.1bpp");

const u32 gMonStillFrontPic_Slugma[] = INCBIN_U32("graphics/pokemon/slugma/front.4bpp.lz");
const u32 gMonPalette_Slugma[] = INCBIN_U32("graphics/pokemon/slugma/normal.gbapal.lz");
const u32 gMonBackPic_Slugma[] = INCBIN_U32("graphics/pokemon/slugma/back.4bpp.lz");
const u32 gMonShinyPalette_Slugma[] = INCBIN_U32("graphics/pokemon/slugma/shiny.gbapal.lz");
const u8 gMonIcon_Slugma[] = INCBIN_U8("graphics/pokemon/slugma/icon.4bpp");
const u8 gMonFootprint_Slugma[] = INCBIN_U8("graphics/pokemon/slugma/footprint.1bpp");

const u32 gMonStillFrontPic_Magcargo[] = INCBIN_U32("graphics/pokemon/magcargo/front.4bpp.lz");
const u32 gMonPalette_Magcargo[] = INCBIN_U32("graphics/pokemon/magcargo/normal.gbapal.lz");
const u32 gMonBackPic_Magcargo[] = INCBIN_U32("graphics/pokemon/magcargo/back.4bpp.lz");
const u32 gMonShinyPalette_Magcargo[] = INCBIN_U32("graphics/pokemon/magcargo/shiny.gbapal.lz");
const u8 gMonIcon_Magcargo[] = INCBIN_U8("graphics/pokemon/magcargo/icon.4bpp");
const u8 gMonFootprint_Magcargo[] = INCBIN_U8("graphics/pokemon/magcargo/footprint.1bpp");

const u32 gMonStillFrontPic_Swinub[] = INCBIN_U32("graphics/pokemon/swinub/front.4bpp.lz");
const u32 gMonPalette_Swinub[] = INCBIN_U32("graphics/pokemon/swinub/normal.gbapal.lz");
const u32 gMonBackPic_Swinub[] = INCBIN_U32("graphics/pokemon/swinub/back.4bpp.lz");
const u32 gMonShinyPalette_Swinub[] = INCBIN_U32("graphics/pokemon/swinub/shiny.gbapal.lz");
const u8 gMonIcon_Swinub[] = INCBIN_U8("graphics/pokemon/swinub/icon.4bpp");
const u8 gMonFootprint_Swinub[] = INCBIN_U8("graphics/pokemon/swinub/footprint.1bpp");

const u32 gMonStillFrontPic_Piloswine[] = INCBIN_U32("graphics/pokemon/piloswine/front.4bpp.lz");
const u32 gMonPalette_Piloswine[] = INCBIN_U32("graphics/pokemon/piloswine/normal.gbapal.lz");
const u32 gMonBackPic_Piloswine[] = INCBIN_U32("graphics/pokemon/piloswine/back.4bpp.lz");
const u32 gMonShinyPalette_Piloswine[] = INCBIN_U32("graphics/pokemon/piloswine/shiny.gbapal.lz");
const u8 gMonIcon_Piloswine[] = INCBIN_U8("graphics/pokemon/piloswine/icon.4bpp");
const u8 gMonFootprint_Piloswine[] = INCBIN_U8("graphics/pokemon/piloswine/footprint.1bpp");

const u32 gMonStillFrontPic_Corsola[] = INCBIN_U32("graphics/pokemon/corsola/front.4bpp.lz");
const u32 gMonPalette_Corsola[] = INCBIN_U32("graphics/pokemon/corsola/normal.gbapal.lz");
const u32 gMonBackPic_Corsola[] = INCBIN_U32("graphics/pokemon/corsola/back.4bpp.lz");
const u32 gMonShinyPalette_Corsola[] = INCBIN_U32("graphics/pokemon/corsola/shiny.gbapal.lz");
const u8 gMonIcon_Corsola[] = INCBIN_U8("graphics/pokemon/corsola/icon.4bpp");
const u8 gMonFootprint_Corsola[] = INCBIN_U8("graphics/pokemon/corsola/footprint.1bpp");

const u32 gMonStillFrontPic_Remoraid[] = INCBIN_U32("graphics/pokemon/remoraid/front.4bpp.lz");
const u32 gMonPalette_Remoraid[] = INCBIN_U32("graphics/pokemon/remoraid/normal.gbapal.lz");
const u32 gMonBackPic_Remoraid[] = INCBIN_U32("graphics/pokemon/remoraid/back.4bpp.lz");
const u32 gMonShinyPalette_Remoraid[] = INCBIN_U32("graphics/pokemon/remoraid/shiny.gbapal.lz");
const u8 gMonIcon_Remoraid[] = INCBIN_U8("graphics/pokemon/remoraid/icon.4bpp");
const u8 gMonFootprint_Remoraid[] = INCBIN_U8("graphics/pokemon/remoraid/footprint.1bpp");

const u32 gMonStillFrontPic_Octillery[] = INCBIN_U32("graphics/pokemon/octillery/front.4bpp.lz");
const u32 gMonPalette_Octillery[] = INCBIN_U32("graphics/pokemon/octillery/normal.gbapal.lz");
const u32 gMonBackPic_Octillery[] = INCBIN_U32("graphics/pokemon/octillery/back.4bpp.lz");
const u32 gMonShinyPalette_Octillery[] = INCBIN_U32("graphics/pokemon/octillery/shiny.gbapal.lz");
const u8 gMonIcon_Octillery[] = INCBIN_U8("graphics/pokemon/octillery/icon.4bpp");
const u8 gMonFootprint_Octillery[] = INCBIN_U8("graphics/pokemon/octillery/footprint.1bpp");

const u32 gMonStillFrontPic_Delibird[] = INCBIN_U32("graphics/pokemon/delibird/front.4bpp.lz");
const u32 gMonPalette_Delibird[] = INCBIN_U32("graphics/pokemon/delibird/normal.gbapal.lz");
const u32 gMonBackPic_Delibird[] = INCBIN_U32("graphics/pokemon/delibird/back.4bpp.lz");
const u32 gMonShinyPalette_Delibird[] = INCBIN_U32("graphics/pokemon/delibird/shiny.gbapal.lz");
const u8 gMonIcon_Delibird[] = INCBIN_U8("graphics/pokemon/delibird/icon.4bpp");
const u8 gMonFootprint_Delibird[] = INCBIN_U8("graphics/pokemon/delibird/footprint.1bpp");

const u32 gMonStillFrontPic_Mantine[] = INCBIN_U32("graphics/pokemon/mantine/front.4bpp.lz");
const u32 gMonPalette_Mantine[] = INCBIN_U32("graphics/pokemon/mantine/normal.gbapal.lz");
const u32 gMonBackPic_Mantine[] = INCBIN_U32("graphics/pokemon/mantine/back.4bpp.lz");
const u32 gMonShinyPalette_Mantine[] = INCBIN_U32("graphics/pokemon/mantine/shiny.gbapal.lz");
const u8 gMonIcon_Mantine[] = INCBIN_U8("graphics/pokemon/mantine/icon.4bpp");
const u8 gMonFootprint_Mantine[] = INCBIN_U8("graphics/pokemon/mantine/footprint.1bpp");

const u32 gMonStillFrontPic_Skarmory[] = INCBIN_U32("graphics/pokemon/skarmory/front.4bpp.lz");
const u32 gMonPalette_Skarmory[] = INCBIN_U32("graphics/pokemon/skarmory/normal.gbapal.lz");
const u32 gMonBackPic_Skarmory[] = INCBIN_U32("graphics/pokemon/skarmory/back.4bpp.lz");
const u32 gMonShinyPalette_Skarmory[] = INCBIN_U32("graphics/pokemon/skarmory/shiny.gbapal.lz");
const u8 gMonIcon_Skarmory[] = INCBIN_U8("graphics/pokemon/skarmory/icon.4bpp");
const u8 gMonFootprint_Skarmory[] = INCBIN_U8("graphics/pokemon/skarmory/footprint.1bpp");

const u32 gMonStillFrontPic_Houndour[] = INCBIN_U32("graphics/pokemon/houndour/front.4bpp.lz");
const u32 gMonPalette_Houndour[] = INCBIN_U32("graphics/pokemon/houndour/normal.gbapal.lz");
const u32 gMonBackPic_Houndour[] = INCBIN_U32("graphics/pokemon/houndour/back.4bpp.lz");
const u32 gMonShinyPalette_Houndour[] = INCBIN_U32("graphics/pokemon/houndour/shiny.gbapal.lz");
const u8 gMonIcon_Houndour[] = INCBIN_U8("graphics/pokemon/houndour/icon.4bpp");
const u8 gMonFootprint_Houndour[] = INCBIN_U8("graphics/pokemon/houndour/footprint.1bpp");

const u32 gMonStillFrontPic_Houndoom[] = INCBIN_U32("graphics/pokemon/houndoom/front.4bpp.lz");
const u32 gMonPalette_Houndoom[] = INCBIN_U32("graphics/pokemon/houndoom/normal.gbapal.lz");
const u32 gMonBackPic_Houndoom[] = INCBIN_U32("graphics/pokemon/houndoom/back.4bpp.lz");
const u32 gMonShinyPalette_Houndoom[] = INCBIN_U32("graphics/pokemon/houndoom/shiny.gbapal.lz");
const u8 gMonIcon_Houndoom[] = INCBIN_U8("graphics/pokemon/houndoom/icon.4bpp");
const u8 gMonFootprint_Houndoom[] = INCBIN_U8("graphics/pokemon/houndoom/footprint.1bpp");

const u32 gMonStillFrontPic_Kingdra[] = INCBIN_U32("graphics/pokemon/kingdra/front.4bpp.lz");
const u32 gMonPalette_Kingdra[] = INCBIN_U32("graphics/pokemon/kingdra/normal.gbapal.lz");
const u32 gMonBackPic_Kingdra[] = INCBIN_U32("graphics/pokemon/kingdra/back.4bpp.lz");
const u32 gMonShinyPalette_Kingdra[] = INCBIN_U32("graphics/pokemon/kingdra/shiny.gbapal.lz");
const u8 gMonIcon_Kingdra[] = INCBIN_U8("graphics/pokemon/kingdra/icon.4bpp");
const u8 gMonFootprint_Kingdra[] = INCBIN_U8("graphics/pokemon/kingdra/footprint.1bpp");

const u32 gMonStillFrontPic_Phanpy[] = INCBIN_U32("graphics/pokemon/phanpy/front.4bpp.lz");
const u32 gMonPalette_Phanpy[] = INCBIN_U32("graphics/pokemon/phanpy/normal.gbapal.lz");
const u32 gMonBackPic_Phanpy[] = INCBIN_U32("graphics/pokemon/phanpy/back.4bpp.lz");
const u32 gMonShinyPalette_Phanpy[] = INCBIN_U32("graphics/pokemon/phanpy/shiny.gbapal.lz");
const u8 gMonIcon_Phanpy[] = INCBIN_U8("graphics/pokemon/phanpy/icon.4bpp");
const u8 gMonFootprint_Phanpy[] = INCBIN_U8("graphics/pokemon/phanpy/footprint.1bpp");

const u32 gMonStillFrontPic_Donphan[] = INCBIN_U32("graphics/pokemon/donphan/front.4bpp.lz");
const u32 gMonPalette_Donphan[] = INCBIN_U32("graphics/pokemon/donphan/normal.gbapal.lz");
const u32 gMonBackPic_Donphan[] = INCBIN_U32("graphics/pokemon/donphan/back.4bpp.lz");
const u32 gMonShinyPalette_Donphan[] = INCBIN_U32("graphics/pokemon/donphan/shiny.gbapal.lz");
const u8 gMonIcon_Donphan[] = INCBIN_U8("graphics/pokemon/donphan/icon.4bpp");
const u8 gMonFootprint_Donphan[] = INCBIN_U8("graphics/pokemon/donphan/footprint.1bpp");

const u32 gMonStillFrontPic_Porygon2[] = INCBIN_U32("graphics/pokemon/porygon2/front.4bpp.lz");
const u32 gMonPalette_Porygon2[] = INCBIN_U32("graphics/pokemon/porygon2/normal.gbapal.lz");
const u32 gMonBackPic_Porygon2[] = INCBIN_U32("graphics/pokemon/porygon2/back.4bpp.lz");
const u32 gMonShinyPalette_Porygon2[] = INCBIN_U32("graphics/pokemon/porygon2/shiny.gbapal.lz");
const u8 gMonIcon_Porygon2[] = INCBIN_U8("graphics/pokemon/porygon2/icon.4bpp");
const u8 gMonFootprint_Porygon2[] = INCBIN_U8("graphics/pokemon/porygon2/footprint.1bpp");

const u32 gMonStillFrontPic_Stantler[] = INCBIN_U32("graphics/pokemon/stantler/front.4bpp.lz");
const u32 gMonPalette_Stantler[] = INCBIN_U32("graphics/pokemon/stantler/normal.gbapal.lz");
const u32 gMonBackPic_Stantler[] = INCBIN_U32("graphics/pokemon/stantler/back.4bpp.lz");
const u32 gMonShinyPalette_Stantler[] = INCBIN_U32("graphics/pokemon/stantler/shiny.gbapal.lz");
const u8 gMonIcon_Stantler[] = INCBIN_U8("graphics/pokemon/stantler/icon.4bpp");
const u8 gMonFootprint_Stantler[] = INCBIN_U8("graphics/pokemon/stantler/footprint.1bpp");

const u32 gMonStillFrontPic_Smeargle[] = INCBIN_U32("graphics/pokemon/smeargle/front.4bpp.lz");
const u32 gMonPalette_Smeargle[] = INCBIN_U32("graphics/pokemon/smeargle/normal.gbapal.lz");
const u32 gMonBackPic_Smeargle[] = INCBIN_U32("graphics/pokemon/smeargle/back.4bpp.lz");
const u32 gMonShinyPalette_Smeargle[] = INCBIN_U32("graphics/pokemon/smeargle/shiny.gbapal.lz");
const u8 gMonIcon_Smeargle[] = INCBIN_U8("graphics/pokemon/smeargle/icon.4bpp");
const u8 gMonFootprint_Smeargle[] = INCBIN_U8("graphics/pokemon/smeargle/footprint.1bpp");

const u32 gMonStillFrontPic_Tyrogue[] = INCBIN_U32("graphics/pokemon/tyrogue/front.4bpp.lz");
const u32 gMonPalette_Tyrogue[] = INCBIN_U32("graphics/pokemon/tyrogue/normal.gbapal.lz");
const u32 gMonBackPic_Tyrogue[] = INCBIN_U32("graphics/pokemon/tyrogue/back.4bpp.lz");
const u32 gMonShinyPalette_Tyrogue[] = INCBIN_U32("graphics/pokemon/tyrogue/shiny.gbapal.lz");
const u8 gMonIcon_Tyrogue[] = INCBIN_U8("graphics/pokemon/tyrogue/icon.4bpp");
const u8 gMonFootprint_Tyrogue[] = INCBIN_U8("graphics/pokemon/tyrogue/footprint.1bpp");

const u32 gMonStillFrontPic_Hitmontop[] = INCBIN_U32("graphics/pokemon/hitmontop/front.4bpp.lz");
const u32 gMonPalette_Hitmontop[] = INCBIN_U32("graphics/pokemon/hitmontop/normal.gbapal.lz");
const u32 gMonBackPic_Hitmontop[] = INCBIN_U32("graphics/pokemon/hitmontop/back.4bpp.lz");
const u32 gMonShinyPalette_Hitmontop[] = INCBIN_U32("graphics/pokemon/hitmontop/shiny.gbapal.lz");
const u8 gMonIcon_Hitmontop[] = INCBIN_U8("graphics/pokemon/hitmontop/icon.4bpp");
const u8 gMonFootprint_Hitmontop[] = INCBIN_U8("graphics/pokemon/hitmontop/footprint.1bpp");

const u32 gMonStillFrontPic_Smoochum[] = INCBIN_U32("graphics/pokemon/smoochum/front.4bpp.lz");
const u32 gMonPalette_Smoochum[] = INCBIN_U32("graphics/pokemon/smoochum/normal.gbapal.lz");
const u32 gMonBackPic_Smoochum[] = INCBIN_U32("graphics/pokemon/smoochum/back.4bpp.lz");
const u32 gMonShinyPalette_Smoochum[] = INCBIN_U32("graphics/pokemon/smoochum/shiny.gbapal.lz");
const u8 gMonIcon_Smoochum[] = INCBIN_U8("graphics/pokemon/smoochum/icon.4bpp");
const u8 gMonFootprint_Smoochum[] = INCBIN_U8("graphics/pokemon/smoochum/footprint.1bpp");

const u32 gMonStillFrontPic_Elekid[] = INCBIN_U32("graphics/pokemon/elekid/front.4bpp.lz");
const u32 gMonPalette_Elekid[] = INCBIN_U32("graphics/pokemon/elekid/normal.gbapal.lz");
const u32 gMonBackPic_Elekid[] = INCBIN_U32("graphics/pokemon/elekid/back.4bpp.lz");
const u32 gMonShinyPalette_Elekid[] = INCBIN_U32("graphics/pokemon/elekid/shiny.gbapal.lz");
const u8 gMonIcon_Elekid[] = INCBIN_U8("graphics/pokemon/elekid/icon.4bpp");
const u8 gMonFootprint_Elekid[] = INCBIN_U8("graphics/pokemon/elekid/footprint.1bpp");

const u32 gMonStillFrontPic_Magby[] = INCBIN_U32("graphics/pokemon/magby/front.4bpp.lz");
const u32 gMonPalette_Magby[] = INCBIN_U32("graphics/pokemon/magby/normal.gbapal.lz");
const u32 gMonBackPic_Magby[] = INCBIN_U32("graphics/pokemon/magby/back.4bpp.lz");
const u32 gMonShinyPalette_Magby[] = INCBIN_U32("graphics/pokemon/magby/shiny.gbapal.lz");
const u8 gMonIcon_Magby[] = INCBIN_U8("graphics/pokemon/magby/icon.4bpp");
const u8 gMonFootprint_Magby[] = INCBIN_U8("graphics/pokemon/magby/footprint.1bpp");

const u32 gMonStillFrontPic_Miltank[] = INCBIN_U32("graphics/pokemon/miltank/front.4bpp.lz");
const u32 gMonPalette_Miltank[] = INCBIN_U32("graphics/pokemon/miltank/normal.gbapal.lz");
const u32 gMonBackPic_Miltank[] = INCBIN_U32("graphics/pokemon/miltank/back.4bpp.lz");
const u32 gMonShinyPalette_Miltank[] = INCBIN_U32("graphics/pokemon/miltank/shiny.gbapal.lz");
const u8 gMonIcon_Miltank[] = INCBIN_U8("graphics/pokemon/miltank/icon.4bpp");
const u8 gMonFootprint_Miltank[] = INCBIN_U8("graphics/pokemon/miltank/footprint.1bpp");

const u32 gMonStillFrontPic_Blissey[] = INCBIN_U32("graphics/pokemon/blissey/front.4bpp.lz");
const u32 gMonPalette_Blissey[] = INCBIN_U32("graphics/pokemon/blissey/normal.gbapal.lz");
const u32 gMonBackPic_Blissey[] = INCBIN_U32("graphics/pokemon/blissey/back.4bpp.lz");
const u32 gMonShinyPalette_Blissey[] = INCBIN_U32("graphics/pokemon/blissey/shiny.gbapal.lz");
const u8 gMonIcon_Blissey[] = INCBIN_U8("graphics/pokemon/blissey/icon.4bpp");
const u8 gMonFootprint_Blissey[] = INCBIN_U8("graphics/pokemon/blissey/footprint.1bpp");

const u32 gMonStillFrontPic_Raikou[] = INCBIN_U32("graphics/pokemon/raikou/front.4bpp.lz");
const u32 gMonPalette_Raikou[] = INCBIN_U32("graphics/pokemon/raikou/normal.gbapal.lz");
const u32 gMonBackPic_Raikou[] = INCBIN_U32("graphics/pokemon/raikou/back.4bpp.lz");
const u32 gMonShinyPalette_Raikou[] = INCBIN_U32("graphics/pokemon/raikou/shiny.gbapal.lz");
const u8 gMonIcon_Raikou[] = INCBIN_U8("graphics/pokemon/raikou/icon.4bpp");
const u8 gMonFootprint_Raikou[] = INCBIN_U8("graphics/pokemon/raikou/footprint.1bpp");

const u32 gMonStillFrontPic_Entei[] = INCBIN_U32("graphics/pokemon/entei/front.4bpp.lz");
const u32 gMonPalette_Entei[] = INCBIN_U32("graphics/pokemon/entei/normal.gbapal.lz");
const u32 gMonBackPic_Entei[] = INCBIN_U32("graphics/pokemon/entei/back.4bpp.lz");
const u32 gMonShinyPalette_Entei[] = INCBIN_U32("graphics/pokemon/entei/shiny.gbapal.lz");
const u8 gMonIcon_Entei[] = INCBIN_U8("graphics/pokemon/entei/icon.4bpp");
const u8 gMonFootprint_Entei[] = INCBIN_U8("graphics/pokemon/entei/footprint.1bpp");

const u32 gMonStillFrontPic_Suicune[] = INCBIN_U32("graphics/pokemon/suicune/front.4bpp.lz");
const u32 gMonPalette_Suicune[] = INCBIN_U32("graphics/pokemon/suicune/normal.gbapal.lz");
const u32 gMonBackPic_Suicune[] = INCBIN_U32("graphics/pokemon/suicune/back.4bpp.lz");
const u32 gMonShinyPalette_Suicune[] = INCBIN_U32("graphics/pokemon/suicune/shiny.gbapal.lz");
const u8 gMonIcon_Suicune[] = INCBIN_U8("graphics/pokemon/suicune/icon.4bpp");
const u8 gMonFootprint_Suicune[] = INCBIN_U8("graphics/pokemon/suicune/footprint.1bpp");

const u32 gMonStillFrontPic_Larvitar[] = INCBIN_U32("graphics/pokemon/larvitar/front.4bpp.lz");
const u32 gMonPalette_Larvitar[] = INCBIN_U32("graphics/pokemon/larvitar/normal.gbapal.lz");
const u32 gMonBackPic_Larvitar[] = INCBIN_U32("graphics/pokemon/larvitar/back.4bpp.lz");
const u32 gMonShinyPalette_Larvitar[] = INCBIN_U32("graphics/pokemon/larvitar/shiny.gbapal.lz");
const u8 gMonIcon_Larvitar[] = INCBIN_U8("graphics/pokemon/larvitar/icon.4bpp");
const u8 gMonFootprint_Larvitar[] = INCBIN_U8("graphics/pokemon/larvitar/footprint.1bpp");

const u32 gMonStillFrontPic_Pupitar[] = INCBIN_U32("graphics/pokemon/pupitar/front.4bpp.lz");
const u32 gMonPalette_Pupitar[] = INCBIN_U32("graphics/pokemon/pupitar/normal.gbapal.lz");
const u32 gMonBackPic_Pupitar[] = INCBIN_U32("graphics/pokemon/pupitar/back.4bpp.lz");
const u32 gMonShinyPalette_Pupitar[] = INCBIN_U32("graphics/pokemon/pupitar/shiny.gbapal.lz");
const u8 gMonIcon_Pupitar[] = INCBIN_U8("graphics/pokemon/pupitar/icon.4bpp");
const u8 gMonFootprint_Pupitar[] = INCBIN_U8("graphics/pokemon/pupitar/footprint.1bpp");

const u32 gMonStillFrontPic_Tyranitar[] = INCBIN_U32("graphics/pokemon/tyranitar/front.4bpp.lz");
const u32 gMonPalette_Tyranitar[] = INCBIN_U32("graphics/pokemon/tyranitar/normal.gbapal.lz");
const u32 gMonBackPic_Tyranitar[] = INCBIN_U32("graphics/pokemon/tyranitar/back.4bpp.lz");
const u32 gMonShinyPalette_Tyranitar[] = INCBIN_U32("graphics/pokemon/tyranitar/shiny.gbapal.lz");
const u8 gMonIcon_Tyranitar[] = INCBIN_U8("graphics/pokemon/tyranitar/icon.4bpp");
const u8 gMonFootprint_Tyranitar[] = INCBIN_U8("graphics/pokemon/tyranitar/footprint.1bpp");

const u32 gMonStillFrontPic_Lugia[] = INCBIN_U32("graphics/pokemon/lugia/front.4bpp.lz");
const u32 gMonPalette_Lugia[] = INCBIN_U32("graphics/pokemon/lugia/normal.gbapal.lz");
const u32 gMonBackPic_Lugia[] = INCBIN_U32("graphics/pokemon/lugia/back.4bpp.lz");
const u32 gMonShinyPalette_Lugia[] = INCBIN_U32("graphics/pokemon/lugia/shiny.gbapal.lz");
const u8 gMonIcon_Lugia[] = INCBIN_U8("graphics/pokemon/lugia/icon.4bpp");
const u8 gMonFootprint_Lugia[] = INCBIN_U8("graphics/pokemon/lugia/footprint.1bpp");

const u32 gMonStillFrontPic_HoOh[] = INCBIN_U32("graphics/pokemon/ho_oh/front.4bpp.lz");
const u32 gMonPalette_HoOh[] = INCBIN_U32("graphics/pokemon/ho_oh/normal.gbapal.lz");
const u32 gMonBackPic_HoOh[] = INCBIN_U32("graphics/pokemon/ho_oh/back.4bpp.lz");
const u32 gMonShinyPalette_HoOh[] = INCBIN_U32("graphics/pokemon/ho_oh/shiny.gbapal.lz");
const u8 gMonIcon_HoOh[] = INCBIN_U8("graphics/pokemon/ho_oh/icon.4bpp");
const u8 gMonFootprint_HoOh[] = INCBIN_U8("graphics/pokemon/ho_oh/footprint.1bpp");

const u32 gMonStillFrontPic_Celebi[] = INCBIN_U32("graphics/pokemon/celebi/front.4bpp.lz");
const u32 gMonPalette_Celebi[] = INCBIN_U32("graphics/pokemon/celebi/normal.gbapal.lz");
const u32 gMonBackPic_Celebi[] = INCBIN_U32("graphics/pokemon/celebi/back.4bpp.lz");
const u32 gMonShinyPalette_Celebi[] = INCBIN_U32("graphics/pokemon/celebi/shiny.gbapal.lz");
const u8 gMonIcon_Celebi[] = INCBIN_U8("graphics/pokemon/celebi/icon.4bpp");
const u8 gMonFootprint_Celebi[] = INCBIN_U8("graphics/pokemon/celebi/footprint.1bpp");

const u32 gMonStillFrontPic_DoubleQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/double/front.4bpp.lz");
const u32 gMonPalette_DoubleQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/double/normal.gbapal.lz");
const u32 gMonBackPic_DoubleQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/double/back.4bpp.lz");
const u32 gMonShinyPalette_DoubleQuestionMark[] = INCBIN_U32("graphics/pokemon/question_mark/double/shiny.gbapal.lz");

const u32 gMonStillFrontPic_Treecko[] = INCBIN_U32("graphics/pokemon/treecko/front.4bpp.lz");
const u32 gMonPalette_Treecko[] = INCBIN_U32("graphics/pokemon/treecko/normal.gbapal.lz");
const u32 gMonBackPic_Treecko[] = INCBIN_U32("graphics/pokemon/treecko/back.4bpp.lz");
const u32 gMonShinyPalette_Treecko[] = INCBIN_U32("graphics/pokemon/treecko/shiny.gbapal.lz");
const u8 gMonIcon_Treecko[] = INCBIN_U8("graphics/pokemon/treecko/icon.4bpp");
const u8 gMonFootprint_Treecko[] = INCBIN_U8("graphics/pokemon/treecko/footprint.1bpp");

const u32 gMonStillFrontPic_Grovyle[] = INCBIN_U32("graphics/pokemon/grovyle/front.4bpp.lz");
const u32 gMonPalette_Grovyle[] = INCBIN_U32("graphics/pokemon/grovyle/normal.gbapal.lz");
const u32 gMonBackPic_Grovyle[] = INCBIN_U32("graphics/pokemon/grovyle/back.4bpp.lz");
const u32 gMonShinyPalette_Grovyle[] = INCBIN_U32("graphics/pokemon/grovyle/shiny.gbapal.lz");
const u8 gMonIcon_Grovyle[] = INCBIN_U8("graphics/pokemon/grovyle/icon.4bpp");
const u8 gMonFootprint_Grovyle[] = INCBIN_U8("graphics/pokemon/grovyle/footprint.1bpp");

const u32 gMonStillFrontPic_Sceptile[] = INCBIN_U32("graphics/pokemon/sceptile/front.4bpp.lz");
const u32 gMonPalette_Sceptile[] = INCBIN_U32("graphics/pokemon/sceptile/normal.gbapal.lz");
const u32 gMonBackPic_Sceptile[] = INCBIN_U32("graphics/pokemon/sceptile/back.4bpp.lz");
const u32 gMonShinyPalette_Sceptile[] = INCBIN_U32("graphics/pokemon/sceptile/shiny.gbapal.lz");
const u8 gMonIcon_Sceptile[] = INCBIN_U8("graphics/pokemon/sceptile/icon.4bpp");
const u8 gMonFootprint_Sceptile[] = INCBIN_U8("graphics/pokemon/sceptile/footprint.1bpp");

const u32 gMonStillFrontPic_Torchic[] = INCBIN_U32("graphics/pokemon/torchic/front.4bpp.lz");
const u32 gMonPalette_Torchic[] = INCBIN_U32("graphics/pokemon/torchic/normal.gbapal.lz");
const u32 gMonBackPic_Torchic[] = INCBIN_U32("graphics/pokemon/torchic/back.4bpp.lz");
const u32 gMonShinyPalette_Torchic[] = INCBIN_U32("graphics/pokemon/torchic/shiny.gbapal.lz");
const u8 gMonIcon_Torchic[] = INCBIN_U8("graphics/pokemon/torchic/icon.4bpp");
const u8 gMonFootprint_Torchic[] = INCBIN_U8("graphics/pokemon/torchic/footprint.1bpp");

const u32 gMonStillFrontPic_Combusken[] = INCBIN_U32("graphics/pokemon/combusken/front.4bpp.lz");
const u32 gMonPalette_Combusken[] = INCBIN_U32("graphics/pokemon/combusken/normal.gbapal.lz");
const u32 gMonBackPic_Combusken[] = INCBIN_U32("graphics/pokemon/combusken/back.4bpp.lz");
const u32 gMonShinyPalette_Combusken[] = INCBIN_U32("graphics/pokemon/combusken/shiny.gbapal.lz");
const u8 gMonIcon_Combusken[] = INCBIN_U8("graphics/pokemon/combusken/icon.4bpp");
const u8 gMonFootprint_Combusken[] = INCBIN_U8("graphics/pokemon/combusken/footprint.1bpp");

const u32 gMonStillFrontPic_Blaziken[] = INCBIN_U32("graphics/pokemon/blaziken/front.4bpp.lz");
const u32 gMonPalette_Blaziken[] = INCBIN_U32("graphics/pokemon/blaziken/normal.gbapal.lz");
const u32 gMonBackPic_Blaziken[] = INCBIN_U32("graphics/pokemon/blaziken/back.4bpp.lz");
const u32 gMonShinyPalette_Blaziken[] = INCBIN_U32("graphics/pokemon/blaziken/shiny.gbapal.lz");
const u8 gMonIcon_Blaziken[] = INCBIN_U8("graphics/pokemon/blaziken/icon.4bpp");
const u8 gMonFootprint_Blaziken[] = INCBIN_U8("graphics/pokemon/blaziken/footprint.1bpp");

const u32 gMonStillFrontPic_Mudkip[] = INCBIN_U32("graphics/pokemon/mudkip/front.4bpp.lz");
const u32 gMonPalette_Mudkip[] = INCBIN_U32("graphics/pokemon/mudkip/normal.gbapal.lz");
const u32 gMonBackPic_Mudkip[] = INCBIN_U32("graphics/pokemon/mudkip/back.4bpp.lz");
const u32 gMonShinyPalette_Mudkip[] = INCBIN_U32("graphics/pokemon/mudkip/shiny.gbapal.lz");
const u8 gMonIcon_Mudkip[] = INCBIN_U8("graphics/pokemon/mudkip/icon.4bpp");
const u8 gMonFootprint_Mudkip[] = INCBIN_U8("graphics/pokemon/mudkip/footprint.1bpp");

const u32 gMonStillFrontPic_Marshtomp[] = INCBIN_U32("graphics/pokemon/marshtomp/front.4bpp.lz");
const u32 gMonPalette_Marshtomp[] = INCBIN_U32("graphics/pokemon/marshtomp/normal.gbapal.lz");
const u32 gMonBackPic_Marshtomp[] = INCBIN_U32("graphics/pokemon/marshtomp/back.4bpp.lz");
const u32 gMonShinyPalette_Marshtomp[] = INCBIN_U32("graphics/pokemon/marshtomp/shiny.gbapal.lz");
const u8 gMonIcon_Marshtomp[] = INCBIN_U8("graphics/pokemon/marshtomp/icon.4bpp");
const u8 gMonFootprint_Marshtomp[] = INCBIN_U8("graphics/pokemon/marshtomp/footprint.1bpp");

const u32 gMonStillFrontPic_Swampert[] = INCBIN_U32("graphics/pokemon/swampert/front.4bpp.lz");
const u32 gMonPalette_Swampert[] = INCBIN_U32("graphics/pokemon/swampert/normal.gbapal.lz");
const u32 gMonBackPic_Swampert[] = INCBIN_U32("graphics/pokemon/swampert/back.4bpp.lz");
const u32 gMonShinyPalette_Swampert[] = INCBIN_U32("graphics/pokemon/swampert/shiny.gbapal.lz");
const u8 gMonIcon_Swampert[] = INCBIN_U8("graphics/pokemon/swampert/icon.4bpp");
const u8 gMonFootprint_Swampert[] = INCBIN_U8("graphics/pokemon/swampert/footprint.1bpp");

const u32 gMonStillFrontPic_Poochyena[] = INCBIN_U32("graphics/pokemon/poochyena/front.4bpp.lz");
const u32 gMonPalette_Poochyena[] = INCBIN_U32("graphics/pokemon/poochyena/normal.gbapal.lz");
const u32 gMonBackPic_Poochyena[] = INCBIN_U32("graphics/pokemon/poochyena/back.4bpp.lz");
const u32 gMonShinyPalette_Poochyena[] = INCBIN_U32("graphics/pokemon/poochyena/shiny.gbapal.lz");
const u8 gMonIcon_Poochyena[] = INCBIN_U8("graphics/pokemon/poochyena/icon.4bpp");
const u8 gMonFootprint_Poochyena[] = INCBIN_U8("graphics/pokemon/poochyena/footprint.1bpp");

const u32 gMonStillFrontPic_Mightyena[] = INCBIN_U32("graphics/pokemon/mightyena/front.4bpp.lz");
const u32 gMonPalette_Mightyena[] = INCBIN_U32("graphics/pokemon/mightyena/normal.gbapal.lz");
const u32 gMonBackPic_Mightyena[] = INCBIN_U32("graphics/pokemon/mightyena/back.4bpp.lz");
const u32 gMonShinyPalette_Mightyena[] = INCBIN_U32("graphics/pokemon/mightyena/shiny.gbapal.lz");
const u8 gMonIcon_Mightyena[] = INCBIN_U8("graphics/pokemon/mightyena/icon.4bpp");
const u8 gMonFootprint_Mightyena[] = INCBIN_U8("graphics/pokemon/mightyena/footprint.1bpp");

const u32 gMonStillFrontPic_Zigzagoon[] = INCBIN_U32("graphics/pokemon/zigzagoon/front.4bpp.lz");
const u32 gMonPalette_Zigzagoon[] = INCBIN_U32("graphics/pokemon/zigzagoon/normal.gbapal.lz");
const u32 gMonBackPic_Zigzagoon[] = INCBIN_U32("graphics/pokemon/zigzagoon/back.4bpp.lz");
const u32 gMonShinyPalette_Zigzagoon[] = INCBIN_U32("graphics/pokemon/zigzagoon/shiny.gbapal.lz");
const u8 gMonIcon_Zigzagoon[] = INCBIN_U8("graphics/pokemon/zigzagoon/icon.4bpp");
const u8 gMonFootprint_Zigzagoon[] = INCBIN_U8("graphics/pokemon/zigzagoon/footprint.1bpp");

const u32 gMonStillFrontPic_Linoone[] = INCBIN_U32("graphics/pokemon/linoone/front.4bpp.lz");
const u32 gMonPalette_Linoone[] = INCBIN_U32("graphics/pokemon/linoone/normal.gbapal.lz");
const u32 gMonBackPic_Linoone[] = INCBIN_U32("graphics/pokemon/linoone/back.4bpp.lz");
const u32 gMonShinyPalette_Linoone[] = INCBIN_U32("graphics/pokemon/linoone/shiny.gbapal.lz");
const u8 gMonIcon_Linoone[] = INCBIN_U8("graphics/pokemon/linoone/icon.4bpp");
const u8 gMonFootprint_Linoone[] = INCBIN_U8("graphics/pokemon/linoone/footprint.1bpp");

const u32 gMonStillFrontPic_Wurmple[] = INCBIN_U32("graphics/pokemon/wurmple/front.4bpp.lz");
const u32 gMonPalette_Wurmple[] = INCBIN_U32("graphics/pokemon/wurmple/normal.gbapal.lz");
const u32 gMonBackPic_Wurmple[] = INCBIN_U32("graphics/pokemon/wurmple/back.4bpp.lz");
const u32 gMonShinyPalette_Wurmple[] = INCBIN_U32("graphics/pokemon/wurmple/shiny.gbapal.lz");
const u8 gMonIcon_Wurmple[] = INCBIN_U8("graphics/pokemon/wurmple/icon.4bpp");
const u8 gMonFootprint_Wurmple[] = INCBIN_U8("graphics/pokemon/wurmple/footprint.1bpp");

const u32 gMonStillFrontPic_Silcoon[] = INCBIN_U32("graphics/pokemon/silcoon/front.4bpp.lz");
const u32 gMonPalette_Silcoon[] = INCBIN_U32("graphics/pokemon/silcoon/normal.gbapal.lz");
const u32 gMonBackPic_Silcoon[] = INCBIN_U32("graphics/pokemon/silcoon/back.4bpp.lz");
const u32 gMonShinyPalette_Silcoon[] = INCBIN_U32("graphics/pokemon/silcoon/shiny.gbapal.lz");
const u8 gMonIcon_Silcoon[] = INCBIN_U8("graphics/pokemon/silcoon/icon.4bpp");
const u8 gMonFootprint_Silcoon[] = INCBIN_U8("graphics/pokemon/silcoon/footprint.1bpp");

const u32 gMonStillFrontPic_Beautifly[] = INCBIN_U32("graphics/pokemon/beautifly/front.4bpp.lz");
const u32 gMonPalette_Beautifly[] = INCBIN_U32("graphics/pokemon/beautifly/normal.gbapal.lz");
const u32 gMonBackPic_Beautifly[] = INCBIN_U32("graphics/pokemon/beautifly/back.4bpp.lz");
const u32 gMonShinyPalette_Beautifly[] = INCBIN_U32("graphics/pokemon/beautifly/shiny.gbapal.lz");
const u8 gMonIcon_Beautifly[] = INCBIN_U8("graphics/pokemon/beautifly/icon.4bpp");
const u8 gMonFootprint_Beautifly[] = INCBIN_U8("graphics/pokemon/beautifly/footprint.1bpp");

const u32 gMonStillFrontPic_Cascoon[] = INCBIN_U32("graphics/pokemon/cascoon/front.4bpp.lz");
const u32 gMonPalette_Cascoon[] = INCBIN_U32("graphics/pokemon/cascoon/normal.gbapal.lz");
const u32 gMonBackPic_Cascoon[] = INCBIN_U32("graphics/pokemon/cascoon/back.4bpp.lz");
const u32 gMonShinyPalette_Cascoon[] = INCBIN_U32("graphics/pokemon/cascoon/shiny.gbapal.lz");
const u8 gMonIcon_Cascoon[] = INCBIN_U8("graphics/pokemon/cascoon/icon.4bpp");
const u8 gMonFootprint_Cascoon[] = INCBIN_U8("graphics/pokemon/cascoon/footprint.1bpp");

const u32 gMonStillFrontPic_Dustox[] = INCBIN_U32("graphics/pokemon/dustox/front.4bpp.lz");
const u32 gMonPalette_Dustox[] = INCBIN_U32("graphics/pokemon/dustox/normal.gbapal.lz");
const u32 gMonBackPic_Dustox[] = INCBIN_U32("graphics/pokemon/dustox/back.4bpp.lz");
const u32 gMonShinyPalette_Dustox[] = INCBIN_U32("graphics/pokemon/dustox/shiny.gbapal.lz");
const u8 gMonIcon_Dustox[] = INCBIN_U8("graphics/pokemon/dustox/icon.4bpp");
const u8 gMonFootprint_Dustox[] = INCBIN_U8("graphics/pokemon/dustox/footprint.1bpp");

const u32 gMonStillFrontPic_Lotad[] = INCBIN_U32("graphics/pokemon/lotad/front.4bpp.lz");
const u32 gMonPalette_Lotad[] = INCBIN_U32("graphics/pokemon/lotad/normal.gbapal.lz");
const u32 gMonBackPic_Lotad[] = INCBIN_U32("graphics/pokemon/lotad/back.4bpp.lz");
const u32 gMonShinyPalette_Lotad[] = INCBIN_U32("graphics/pokemon/lotad/shiny.gbapal.lz");
const u8 gMonIcon_Lotad[] = INCBIN_U8("graphics/pokemon/lotad/icon.4bpp");
const u8 gMonFootprint_Lotad[] = INCBIN_U8("graphics/pokemon/lotad/footprint.1bpp");

const u32 gMonStillFrontPic_Lombre[] = INCBIN_U32("graphics/pokemon/lombre/front.4bpp.lz");
const u32 gMonPalette_Lombre[] = INCBIN_U32("graphics/pokemon/lombre/normal.gbapal.lz");
const u32 gMonBackPic_Lombre[] = INCBIN_U32("graphics/pokemon/lombre/back.4bpp.lz");
const u32 gMonShinyPalette_Lombre[] = INCBIN_U32("graphics/pokemon/lombre/shiny.gbapal.lz");
const u8 gMonIcon_Lombre[] = INCBIN_U8("graphics/pokemon/lombre/icon.4bpp");
const u8 gMonFootprint_Lombre[] = INCBIN_U8("graphics/pokemon/lombre/footprint.1bpp");

const u32 gMonStillFrontPic_Ludicolo[] = INCBIN_U32("graphics/pokemon/ludicolo/front.4bpp.lz");
const u32 gMonPalette_Ludicolo[] = INCBIN_U32("graphics/pokemon/ludicolo/normal.gbapal.lz");
const u32 gMonBackPic_Ludicolo[] = INCBIN_U32("graphics/pokemon/ludicolo/back.4bpp.lz");
const u32 gMonShinyPalette_Ludicolo[] = INCBIN_U32("graphics/pokemon/ludicolo/shiny.gbapal.lz");
const u8 gMonIcon_Ludicolo[] = INCBIN_U8("graphics/pokemon/ludicolo/icon.4bpp");
const u8 gMonFootprint_Ludicolo[] = INCBIN_U8("graphics/pokemon/ludicolo/footprint.1bpp");

const u32 gMonStillFrontPic_Seedot[] = INCBIN_U32("graphics/pokemon/seedot/front.4bpp.lz");
const u32 gMonPalette_Seedot[] = INCBIN_U32("graphics/pokemon/seedot/normal.gbapal.lz");
const u32 gMonBackPic_Seedot[] = INCBIN_U32("graphics/pokemon/seedot/back.4bpp.lz");
const u32 gMonShinyPalette_Seedot[] = INCBIN_U32("graphics/pokemon/seedot/shiny.gbapal.lz");
const u8 gMonIcon_Seedot[] = INCBIN_U8("graphics/pokemon/seedot/icon.4bpp");
const u8 gMonFootprint_Seedot[] = INCBIN_U8("graphics/pokemon/seedot/footprint.1bpp");

const u32 gMonStillFrontPic_Nuzleaf[] = INCBIN_U32("graphics/pokemon/nuzleaf/front.4bpp.lz");
const u32 gMonPalette_Nuzleaf[] = INCBIN_U32("graphics/pokemon/nuzleaf/normal.gbapal.lz");
const u32 gMonBackPic_Nuzleaf[] = INCBIN_U32("graphics/pokemon/nuzleaf/back.4bpp.lz");
const u32 gMonShinyPalette_Nuzleaf[] = INCBIN_U32("graphics/pokemon/nuzleaf/shiny.gbapal.lz");
const u8 gMonIcon_Nuzleaf[] = INCBIN_U8("graphics/pokemon/nuzleaf/icon.4bpp");
const u8 gMonFootprint_Nuzleaf[] = INCBIN_U8("graphics/pokemon/nuzleaf/footprint.1bpp");

const u32 gMonStillFrontPic_Shiftry[] = INCBIN_U32("graphics/pokemon/shiftry/front.4bpp.lz");
const u32 gMonPalette_Shiftry[] = INCBIN_U32("graphics/pokemon/shiftry/normal.gbapal.lz");
const u32 gMonBackPic_Shiftry[] = INCBIN_U32("graphics/pokemon/shiftry/back.4bpp.lz");
const u32 gMonShinyPalette_Shiftry[] = INCBIN_U32("graphics/pokemon/shiftry/shiny.gbapal.lz");
const u8 gMonIcon_Shiftry[] = INCBIN_U8("graphics/pokemon/shiftry/icon.4bpp");
const u8 gMonFootprint_Shiftry[] = INCBIN_U8("graphics/pokemon/shiftry/footprint.1bpp");

const u32 gMonStillFrontPic_Nincada[] = INCBIN_U32("graphics/pokemon/nincada/front.4bpp.lz");
const u32 gMonPalette_Nincada[] = INCBIN_U32("graphics/pokemon/nincada/normal.gbapal.lz");
const u32 gMonBackPic_Nincada[] = INCBIN_U32("graphics/pokemon/nincada/back.4bpp.lz");
const u32 gMonShinyPalette_Nincada[] = INCBIN_U32("graphics/pokemon/nincada/shiny.gbapal.lz");
const u8 gMonIcon_Nincada[] = INCBIN_U8("graphics/pokemon/nincada/icon.4bpp");
const u8 gMonFootprint_Nincada[] = INCBIN_U8("graphics/pokemon/nincada/footprint.1bpp");

const u32 gMonStillFrontPic_Ninjask[] = INCBIN_U32("graphics/pokemon/ninjask/front.4bpp.lz");
const u32 gMonPalette_Ninjask[] = INCBIN_U32("graphics/pokemon/ninjask/normal.gbapal.lz");
const u32 gMonBackPic_Ninjask[] = INCBIN_U32("graphics/pokemon/ninjask/back.4bpp.lz");
const u32 gMonShinyPalette_Ninjask[] = INCBIN_U32("graphics/pokemon/ninjask/shiny.gbapal.lz");
const u8 gMonIcon_Ninjask[] = INCBIN_U8("graphics/pokemon/ninjask/icon.4bpp");
const u8 gMonFootprint_Ninjask[] = INCBIN_U8("graphics/pokemon/ninjask/footprint.1bpp");

const u32 gMonStillFrontPic_Shedinja[] = INCBIN_U32("graphics/pokemon/shedinja/front.4bpp.lz");
const u32 gMonPalette_Shedinja[] = INCBIN_U32("graphics/pokemon/shedinja/normal.gbapal.lz");
const u32 gMonBackPic_Shedinja[] = INCBIN_U32("graphics/pokemon/shedinja/back.4bpp.lz");
const u32 gMonShinyPalette_Shedinja[] = INCBIN_U32("graphics/pokemon/shedinja/shiny.gbapal.lz");
const u8 gMonIcon_Shedinja[] = INCBIN_U8("graphics/pokemon/shedinja/icon.4bpp");
const u8 gMonFootprint_Shedinja[] = INCBIN_U8("graphics/pokemon/shedinja/footprint.1bpp");

const u32 gMonStillFrontPic_Taillow[] = INCBIN_U32("graphics/pokemon/taillow/front.4bpp.lz");
const u32 gMonPalette_Taillow[] = INCBIN_U32("graphics/pokemon/taillow/normal.gbapal.lz");
const u32 gMonBackPic_Taillow[] = INCBIN_U32("graphics/pokemon/taillow/back.4bpp.lz");
const u32 gMonShinyPalette_Taillow[] = INCBIN_U32("graphics/pokemon/taillow/shiny.gbapal.lz");
const u8 gMonIcon_Taillow[] = INCBIN_U8("graphics/pokemon/taillow/icon.4bpp");
const u8 gMonFootprint_Taillow[] = INCBIN_U8("graphics/pokemon/taillow/footprint.1bpp");

const u32 gMonStillFrontPic_Swellow[] = INCBIN_U32("graphics/pokemon/swellow/front.4bpp.lz");
const u32 gMonPalette_Swellow[] = INCBIN_U32("graphics/pokemon/swellow/normal.gbapal.lz");
const u32 gMonBackPic_Swellow[] = INCBIN_U32("graphics/pokemon/swellow/back.4bpp.lz");
const u32 gMonShinyPalette_Swellow[] = INCBIN_U32("graphics/pokemon/swellow/shiny.gbapal.lz");
const u8 gMonIcon_Swellow[] = INCBIN_U8("graphics/pokemon/swellow/icon.4bpp");
const u8 gMonFootprint_Swellow[] = INCBIN_U8("graphics/pokemon/swellow/footprint.1bpp");

const u32 gMonStillFrontPic_Shroomish[] = INCBIN_U32("graphics/pokemon/shroomish/front.4bpp.lz");
const u32 gMonPalette_Shroomish[] = INCBIN_U32("graphics/pokemon/shroomish/normal.gbapal.lz");
const u32 gMonBackPic_Shroomish[] = INCBIN_U32("graphics/pokemon/shroomish/back.4bpp.lz");
const u32 gMonShinyPalette_Shroomish[] = INCBIN_U32("graphics/pokemon/shroomish/shiny.gbapal.lz");
const u8 gMonIcon_Shroomish[] = INCBIN_U8("graphics/pokemon/shroomish/icon.4bpp");
const u8 gMonFootprint_Shroomish[] = INCBIN_U8("graphics/pokemon/shroomish/footprint.1bpp");

const u32 gMonStillFrontPic_Breloom[] = INCBIN_U32("graphics/pokemon/breloom/front.4bpp.lz");
const u32 gMonPalette_Breloom[] = INCBIN_U32("graphics/pokemon/breloom/normal.gbapal.lz");
const u32 gMonBackPic_Breloom[] = INCBIN_U32("graphics/pokemon/breloom/back.4bpp.lz");
const u32 gMonShinyPalette_Breloom[] = INCBIN_U32("graphics/pokemon/breloom/shiny.gbapal.lz");
const u8 gMonIcon_Breloom[] = INCBIN_U8("graphics/pokemon/breloom/icon.4bpp");
const u8 gMonFootprint_Breloom[] = INCBIN_U8("graphics/pokemon/breloom/footprint.1bpp");

const u32 gMonStillFrontPic_Spinda[] = INCBIN_U32("graphics/pokemon/spinda/front.4bpp.lz");
const u32 gMonPalette_Spinda[] = INCBIN_U32("graphics/pokemon/spinda/normal.gbapal.lz");
const u32 gMonBackPic_Spinda[] = INCBIN_U32("graphics/pokemon/spinda/back.4bpp.lz");
const u32 gMonShinyPalette_Spinda[] = INCBIN_U32("graphics/pokemon/spinda/shiny.gbapal.lz");
const u8 gMonIcon_Spinda[] = INCBIN_U8("graphics/pokemon/spinda/icon.4bpp");
const u8 gMonFootprint_Spinda[] = INCBIN_U8("graphics/pokemon/spinda/footprint.1bpp");

const u32 gMonStillFrontPic_Wingull[] = INCBIN_U32("graphics/pokemon/wingull/front.4bpp.lz");
const u32 gMonPalette_Wingull[] = INCBIN_U32("graphics/pokemon/wingull/normal.gbapal.lz");
const u32 gMonBackPic_Wingull[] = INCBIN_U32("graphics/pokemon/wingull/back.4bpp.lz");
const u32 gMonShinyPalette_Wingull[] = INCBIN_U32("graphics/pokemon/wingull/shiny.gbapal.lz");
const u8 gMonIcon_Wingull[] = INCBIN_U8("graphics/pokemon/wingull/icon.4bpp");
const u8 gMonFootprint_Wingull[] = INCBIN_U8("graphics/pokemon/wingull/footprint.1bpp");

const u32 gMonStillFrontPic_Pelipper[] = INCBIN_U32("graphics/pokemon/pelipper/front.4bpp.lz");
const u32 gMonPalette_Pelipper[] = INCBIN_U32("graphics/pokemon/pelipper/normal.gbapal.lz");
const u32 gMonBackPic_Pelipper[] = INCBIN_U32("graphics/pokemon/pelipper/back.4bpp.lz");
const u32 gMonShinyPalette_Pelipper[] = INCBIN_U32("graphics/pokemon/pelipper/shiny.gbapal.lz");
const u8 gMonIcon_Pelipper[] = INCBIN_U8("graphics/pokemon/pelipper/icon.4bpp");
const u8 gMonFootprint_Pelipper[] = INCBIN_U8("graphics/pokemon/pelipper/footprint.1bpp");

const u32 gMonStillFrontPic_Surskit[] = INCBIN_U32("graphics/pokemon/surskit/front.4bpp.lz");
const u32 gMonPalette_Surskit[] = INCBIN_U32("graphics/pokemon/surskit/normal.gbapal.lz");
const u32 gMonBackPic_Surskit[] = INCBIN_U32("graphics/pokemon/surskit/back.4bpp.lz");
const u32 gMonShinyPalette_Surskit[] = INCBIN_U32("graphics/pokemon/surskit/shiny.gbapal.lz");
const u8 gMonIcon_Surskit[] = INCBIN_U8("graphics/pokemon/surskit/icon.4bpp");
const u8 gMonFootprint_Surskit[] = INCBIN_U8("graphics/pokemon/surskit/footprint.1bpp");

const u32 gMonStillFrontPic_Masquerain[] = INCBIN_U32("graphics/pokemon/masquerain/front.4bpp.lz");
const u32 gMonPalette_Masquerain[] = INCBIN_U32("graphics/pokemon/masquerain/normal.gbapal.lz");
const u32 gMonBackPic_Masquerain[] = INCBIN_U32("graphics/pokemon/masquerain/back.4bpp.lz");
const u32 gMonShinyPalette_Masquerain[] = INCBIN_U32("graphics/pokemon/masquerain/shiny.gbapal.lz");
const u8 gMonIcon_Masquerain[] = INCBIN_U8("graphics/pokemon/masquerain/icon.4bpp");
const u8 gMonFootprint_Masquerain[] = INCBIN_U8("graphics/pokemon/masquerain/footprint.1bpp");

const u32 gMonStillFrontPic_Wailmer[] = INCBIN_U32("graphics/pokemon/wailmer/front.4bpp.lz");
const u32 gMonPalette_Wailmer[] = INCBIN_U32("graphics/pokemon/wailmer/normal.gbapal.lz");
const u32 gMonBackPic_Wailmer[] = INCBIN_U32("graphics/pokemon/wailmer/back.4bpp.lz");
const u32 gMonShinyPalette_Wailmer[] = INCBIN_U32("graphics/pokemon/wailmer/shiny.gbapal.lz");
const u8 gMonIcon_Wailmer[] = INCBIN_U8("graphics/pokemon/wailmer/icon.4bpp");
const u8 gMonFootprint_Wailmer[] = INCBIN_U8("graphics/pokemon/wailmer/footprint.1bpp");

const u32 gMonStillFrontPic_Wailord[] = INCBIN_U32("graphics/pokemon/wailord/front.4bpp.lz");
const u32 gMonPalette_Wailord[] = INCBIN_U32("graphics/pokemon/wailord/normal.gbapal.lz");
const u32 gMonBackPic_Wailord[] = INCBIN_U32("graphics/pokemon/wailord/back.4bpp.lz");
const u32 gMonShinyPalette_Wailord[] = INCBIN_U32("graphics/pokemon/wailord/shiny.gbapal.lz");
const u8 gMonIcon_Wailord[] = INCBIN_U8("graphics/pokemon/wailord/icon.4bpp");
const u8 gMonFootprint_Wailord[] = INCBIN_U8("graphics/pokemon/wailord/footprint.1bpp");

const u32 gMonStillFrontPic_Skitty[] = INCBIN_U32("graphics/pokemon/skitty/front.4bpp.lz");
const u32 gMonPalette_Skitty[] = INCBIN_U32("graphics/pokemon/skitty/normal.gbapal.lz");
const u32 gMonBackPic_Skitty[] = INCBIN_U32("graphics/pokemon/skitty/back.4bpp.lz");
const u32 gMonShinyPalette_Skitty[] = INCBIN_U32("graphics/pokemon/skitty/shiny.gbapal.lz");
const u8 gMonIcon_Skitty[] = INCBIN_U8("graphics/pokemon/skitty/icon.4bpp");
const u8 gMonFootprint_Skitty[] = INCBIN_U8("graphics/pokemon/skitty/footprint.1bpp");

const u32 gMonStillFrontPic_Delcatty[] = INCBIN_U32("graphics/pokemon/delcatty/front.4bpp.lz");
const u32 gMonPalette_Delcatty[] = INCBIN_U32("graphics/pokemon/delcatty/normal.gbapal.lz");
const u32 gMonBackPic_Delcatty[] = INCBIN_U32("graphics/pokemon/delcatty/back.4bpp.lz");
const u32 gMonShinyPalette_Delcatty[] = INCBIN_U32("graphics/pokemon/delcatty/shiny.gbapal.lz");
const u8 gMonIcon_Delcatty[] = INCBIN_U8("graphics/pokemon/delcatty/icon.4bpp");
const u8 gMonFootprint_Delcatty[] = INCBIN_U8("graphics/pokemon/delcatty/footprint.1bpp");

const u32 gMonStillFrontPic_Kecleon[] = INCBIN_U32("graphics/pokemon/kecleon/front.4bpp.lz");
const u32 gMonPalette_Kecleon[] = INCBIN_U32("graphics/pokemon/kecleon/normal.gbapal.lz");
const u32 gMonBackPic_Kecleon[] = INCBIN_U32("graphics/pokemon/kecleon/back.4bpp.lz");
const u32 gMonShinyPalette_Kecleon[] = INCBIN_U32("graphics/pokemon/kecleon/shiny.gbapal.lz");
const u8 gMonIcon_Kecleon[] = INCBIN_U8("graphics/pokemon/kecleon/icon.4bpp");
const u8 gMonFootprint_Kecleon[] = INCBIN_U8("graphics/pokemon/kecleon/footprint.1bpp");

const u32 gMonStillFrontPic_Baltoy[] = INCBIN_U32("graphics/pokemon/baltoy/front.4bpp.lz");
const u32 gMonPalette_Baltoy[] = INCBIN_U32("graphics/pokemon/baltoy/normal.gbapal.lz");
const u32 gMonBackPic_Baltoy[] = INCBIN_U32("graphics/pokemon/baltoy/back.4bpp.lz");
const u32 gMonShinyPalette_Baltoy[] = INCBIN_U32("graphics/pokemon/baltoy/shiny.gbapal.lz");
const u8 gMonIcon_Baltoy[] = INCBIN_U8("graphics/pokemon/baltoy/icon.4bpp");
const u8 gMonFootprint_Baltoy[] = INCBIN_U8("graphics/pokemon/baltoy/footprint.1bpp");

const u32 gMonStillFrontPic_Claydol[] = INCBIN_U32("graphics/pokemon/claydol/front.4bpp.lz");
const u32 gMonPalette_Claydol[] = INCBIN_U32("graphics/pokemon/claydol/normal.gbapal.lz");
const u32 gMonBackPic_Claydol[] = INCBIN_U32("graphics/pokemon/claydol/back.4bpp.lz");
const u32 gMonShinyPalette_Claydol[] = INCBIN_U32("graphics/pokemon/claydol/shiny.gbapal.lz");
const u8 gMonIcon_Claydol[] = INCBIN_U8("graphics/pokemon/claydol/icon.4bpp");
const u8 gMonFootprint_Claydol[] = INCBIN_U8("graphics/pokemon/claydol/footprint.1bpp");

const u32 gMonStillFrontPic_Nosepass[] = INCBIN_U32("graphics/pokemon/nosepass/front.4bpp.lz");
const u32 gMonPalette_Nosepass[] = INCBIN_U32("graphics/pokemon/nosepass/normal.gbapal.lz");
const u32 gMonBackPic_Nosepass[] = INCBIN_U32("graphics/pokemon/nosepass/back.4bpp.lz");
const u32 gMonShinyPalette_Nosepass[] = INCBIN_U32("graphics/pokemon/nosepass/shiny.gbapal.lz");
const u8 gMonIcon_Nosepass[] = INCBIN_U8("graphics/pokemon/nosepass/icon.4bpp");
const u8 gMonFootprint_Nosepass[] = INCBIN_U8("graphics/pokemon/nosepass/footprint.1bpp");

const u32 gMonStillFrontPic_Torkoal[] = INCBIN_U32("graphics/pokemon/torkoal/front.4bpp.lz");
const u32 gMonPalette_Torkoal[] = INCBIN_U32("graphics/pokemon/torkoal/normal.gbapal.lz");
const u32 gMonBackPic_Torkoal[] = INCBIN_U32("graphics/pokemon/torkoal/back.4bpp.lz");
const u32 gMonShinyPalette_Torkoal[] = INCBIN_U32("graphics/pokemon/torkoal/shiny.gbapal.lz");
const u8 gMonIcon_Torkoal[] = INCBIN_U8("graphics/pokemon/torkoal/icon.4bpp");
const u8 gMonFootprint_Torkoal[] = INCBIN_U8("graphics/pokemon/torkoal/footprint.1bpp");

const u32 gMonStillFrontPic_Sableye[] = INCBIN_U32("graphics/pokemon/sableye/front.4bpp.lz");
const u32 gMonPalette_Sableye[] = INCBIN_U32("graphics/pokemon/sableye/normal.gbapal.lz");
const u32 gMonBackPic_Sableye[] = INCBIN_U32("graphics/pokemon/sableye/back.4bpp.lz");
const u32 gMonShinyPalette_Sableye[] = INCBIN_U32("graphics/pokemon/sableye/shiny.gbapal.lz");
const u8 gMonIcon_Sableye[] = INCBIN_U8("graphics/pokemon/sableye/icon.4bpp");
const u8 gMonFootprint_Sableye[] = INCBIN_U8("graphics/pokemon/sableye/footprint.1bpp");

const u32 gMonStillFrontPic_Barboach[] = INCBIN_U32("graphics/pokemon/barboach/front.4bpp.lz");
const u32 gMonPalette_Barboach[] = INCBIN_U32("graphics/pokemon/barboach/normal.gbapal.lz");
const u32 gMonBackPic_Barboach[] = INCBIN_U32("graphics/pokemon/barboach/back.4bpp.lz");
const u32 gMonShinyPalette_Barboach[] = INCBIN_U32("graphics/pokemon/barboach/shiny.gbapal.lz");
const u8 gMonIcon_Barboach[] = INCBIN_U8("graphics/pokemon/barboach/icon.4bpp");
const u8 gMonFootprint_Barboach[] = INCBIN_U8("graphics/pokemon/barboach/footprint.1bpp");

const u32 gMonStillFrontPic_Whiscash[] = INCBIN_U32("graphics/pokemon/whiscash/front.4bpp.lz");
const u32 gMonPalette_Whiscash[] = INCBIN_U32("graphics/pokemon/whiscash/normal.gbapal.lz");
const u32 gMonBackPic_Whiscash[] = INCBIN_U32("graphics/pokemon/whiscash/back.4bpp.lz");
const u32 gMonShinyPalette_Whiscash[] = INCBIN_U32("graphics/pokemon/whiscash/shiny.gbapal.lz");
const u8 gMonIcon_Whiscash[] = INCBIN_U8("graphics/pokemon/whiscash/icon.4bpp");
const u8 gMonFootprint_Whiscash[] = INCBIN_U8("graphics/pokemon/whiscash/footprint.1bpp");

const u32 gMonStillFrontPic_Luvdisc[] = INCBIN_U32("graphics/pokemon/luvdisc/front.4bpp.lz");
const u32 gMonPalette_Luvdisc[] = INCBIN_U32("graphics/pokemon/luvdisc/normal.gbapal.lz");
const u32 gMonBackPic_Luvdisc[] = INCBIN_U32("graphics/pokemon/luvdisc/back.4bpp.lz");
const u32 gMonShinyPalette_Luvdisc[] = INCBIN_U32("graphics/pokemon/luvdisc/shiny.gbapal.lz");
const u8 gMonIcon_Luvdisc[] = INCBIN_U8("graphics/pokemon/luvdisc/icon.4bpp");
const u8 gMonFootprint_Luvdisc[] = INCBIN_U8("graphics/pokemon/luvdisc/footprint.1bpp");

const u32 gMonStillFrontPic_Corphish[] = INCBIN_U32("graphics/pokemon/corphish/front.4bpp.lz");
const u32 gMonPalette_Corphish[] = INCBIN_U32("graphics/pokemon/corphish/normal.gbapal.lz");
const u32 gMonBackPic_Corphish[] = INCBIN_U32("graphics/pokemon/corphish/back.4bpp.lz");
const u32 gMonShinyPalette_Corphish[] = INCBIN_U32("graphics/pokemon/corphish/shiny.gbapal.lz");
const u8 gMonIcon_Corphish[] = INCBIN_U8("graphics/pokemon/corphish/icon.4bpp");
const u8 gMonFootprint_Corphish[] = INCBIN_U8("graphics/pokemon/corphish/footprint.1bpp");

const u32 gMonStillFrontPic_Crawdaunt[] = INCBIN_U32("graphics/pokemon/crawdaunt/front.4bpp.lz");
const u32 gMonPalette_Crawdaunt[] = INCBIN_U32("graphics/pokemon/crawdaunt/normal.gbapal.lz");
const u32 gMonBackPic_Crawdaunt[] = INCBIN_U32("graphics/pokemon/crawdaunt/back.4bpp.lz");
const u32 gMonShinyPalette_Crawdaunt[] = INCBIN_U32("graphics/pokemon/crawdaunt/shiny.gbapal.lz");
const u8 gMonIcon_Crawdaunt[] = INCBIN_U8("graphics/pokemon/crawdaunt/icon.4bpp");
const u8 gMonFootprint_Crawdaunt[] = INCBIN_U8("graphics/pokemon/crawdaunt/footprint.1bpp");

const u32 gMonStillFrontPic_Feebas[] = INCBIN_U32("graphics/pokemon/feebas/front.4bpp.lz");
const u32 gMonPalette_Feebas[] = INCBIN_U32("graphics/pokemon/feebas/normal.gbapal.lz");
const u32 gMonBackPic_Feebas[] = INCBIN_U32("graphics/pokemon/feebas/back.4bpp.lz");
const u32 gMonShinyPalette_Feebas[] = INCBIN_U32("graphics/pokemon/feebas/shiny.gbapal.lz");
const u8 gMonIcon_Feebas[] = INCBIN_U8("graphics/pokemon/feebas/icon.4bpp");
const u8 gMonFootprint_Feebas[] = INCBIN_U8("graphics/pokemon/feebas/footprint.1bpp");

const u32 gMonStillFrontPic_Milotic[] = INCBIN_U32("graphics/pokemon/milotic/front.4bpp.lz");
const u32 gMonPalette_Milotic[] = INCBIN_U32("graphics/pokemon/milotic/normal.gbapal.lz");
const u32 gMonBackPic_Milotic[] = INCBIN_U32("graphics/pokemon/milotic/back.4bpp.lz");
const u32 gMonShinyPalette_Milotic[] = INCBIN_U32("graphics/pokemon/milotic/shiny.gbapal.lz");
const u8 gMonIcon_Milotic[] = INCBIN_U8("graphics/pokemon/milotic/icon.4bpp");
const u8 gMonFootprint_Milotic[] = INCBIN_U8("graphics/pokemon/milotic/footprint.1bpp");

const u32 gMonStillFrontPic_Carvanha[] = INCBIN_U32("graphics/pokemon/carvanha/front.4bpp.lz");
const u32 gMonPalette_Carvanha[] = INCBIN_U32("graphics/pokemon/carvanha/normal.gbapal.lz");
const u32 gMonBackPic_Carvanha[] = INCBIN_U32("graphics/pokemon/carvanha/back.4bpp.lz");
const u32 gMonShinyPalette_Carvanha[] = INCBIN_U32("graphics/pokemon/carvanha/shiny.gbapal.lz");
const u8 gMonIcon_Carvanha[] = INCBIN_U8("graphics/pokemon/carvanha/icon.4bpp");
const u8 gMonFootprint_Carvanha[] = INCBIN_U8("graphics/pokemon/carvanha/footprint.1bpp");

const u32 gMonStillFrontPic_Sharpedo[] = INCBIN_U32("graphics/pokemon/sharpedo/front.4bpp.lz");
const u32 gMonPalette_Sharpedo[] = INCBIN_U32("graphics/pokemon/sharpedo/normal.gbapal.lz");
const u32 gMonBackPic_Sharpedo[] = INCBIN_U32("graphics/pokemon/sharpedo/back.4bpp.lz");
const u32 gMonShinyPalette_Sharpedo[] = INCBIN_U32("graphics/pokemon/sharpedo/shiny.gbapal.lz");
const u8 gMonIcon_Sharpedo[] = INCBIN_U8("graphics/pokemon/sharpedo/icon.4bpp");
const u8 gMonFootprint_Sharpedo[] = INCBIN_U8("graphics/pokemon/sharpedo/footprint.1bpp");

const u32 gMonStillFrontPic_Trapinch[] = INCBIN_U32("graphics/pokemon/trapinch/front.4bpp.lz");
const u32 gMonPalette_Trapinch[] = INCBIN_U32("graphics/pokemon/trapinch/normal.gbapal.lz");
const u32 gMonBackPic_Trapinch[] = INCBIN_U32("graphics/pokemon/trapinch/back.4bpp.lz");
const u32 gMonShinyPalette_Trapinch[] = INCBIN_U32("graphics/pokemon/trapinch/shiny.gbapal.lz");
const u8 gMonIcon_Trapinch[] = INCBIN_U8("graphics/pokemon/trapinch/icon.4bpp");
const u8 gMonFootprint_Trapinch[] = INCBIN_U8("graphics/pokemon/trapinch/footprint.1bpp");

const u32 gMonStillFrontPic_Vibrava[] = INCBIN_U32("graphics/pokemon/vibrava/front.4bpp.lz");
const u32 gMonPalette_Vibrava[] = INCBIN_U32("graphics/pokemon/vibrava/normal.gbapal.lz");
const u32 gMonBackPic_Vibrava[] = INCBIN_U32("graphics/pokemon/vibrava/back.4bpp.lz");
const u32 gMonShinyPalette_Vibrava[] = INCBIN_U32("graphics/pokemon/vibrava/shiny.gbapal.lz");
const u8 gMonIcon_Vibrava[] = INCBIN_U8("graphics/pokemon/vibrava/icon.4bpp");
const u8 gMonFootprint_Vibrava[] = INCBIN_U8("graphics/pokemon/vibrava/footprint.1bpp");

const u32 gMonStillFrontPic_Flygon[] = INCBIN_U32("graphics/pokemon/flygon/front.4bpp.lz");
const u32 gMonPalette_Flygon[] = INCBIN_U32("graphics/pokemon/flygon/normal.gbapal.lz");
const u32 gMonBackPic_Flygon[] = INCBIN_U32("graphics/pokemon/flygon/back.4bpp.lz");
const u32 gMonShinyPalette_Flygon[] = INCBIN_U32("graphics/pokemon/flygon/shiny.gbapal.lz");
const u8 gMonIcon_Flygon[] = INCBIN_U8("graphics/pokemon/flygon/icon.4bpp");
const u8 gMonFootprint_Flygon[] = INCBIN_U8("graphics/pokemon/flygon/footprint.1bpp");

const u32 gMonStillFrontPic_Makuhita[] = INCBIN_U32("graphics/pokemon/makuhita/front.4bpp.lz");
const u32 gMonPalette_Makuhita[] = INCBIN_U32("graphics/pokemon/makuhita/normal.gbapal.lz");
const u32 gMonBackPic_Makuhita[] = INCBIN_U32("graphics/pokemon/makuhita/back.4bpp.lz");
const u32 gMonShinyPalette_Makuhita[] = INCBIN_U32("graphics/pokemon/makuhita/shiny.gbapal.lz");
const u8 gMonIcon_Makuhita[] = INCBIN_U8("graphics/pokemon/makuhita/icon.4bpp");
const u8 gMonFootprint_Makuhita[] = INCBIN_U8("graphics/pokemon/makuhita/footprint.1bpp");

const u32 gMonStillFrontPic_Hariyama[] = INCBIN_U32("graphics/pokemon/hariyama/front.4bpp.lz");
const u32 gMonPalette_Hariyama[] = INCBIN_U32("graphics/pokemon/hariyama/normal.gbapal.lz");
const u32 gMonBackPic_Hariyama[] = INCBIN_U32("graphics/pokemon/hariyama/back.4bpp.lz");
const u32 gMonShinyPalette_Hariyama[] = INCBIN_U32("graphics/pokemon/hariyama/shiny.gbapal.lz");
const u8 gMonIcon_Hariyama[] = INCBIN_U8("graphics/pokemon/hariyama/icon.4bpp");
const u8 gMonFootprint_Hariyama[] = INCBIN_U8("graphics/pokemon/hariyama/footprint.1bpp");

const u32 gMonStillFrontPic_Electrike[] = INCBIN_U32("graphics/pokemon/electrike/front.4bpp.lz");
const u32 gMonPalette_Electrike[] = INCBIN_U32("graphics/pokemon/electrike/normal.gbapal.lz");
const u32 gMonBackPic_Electrike[] = INCBIN_U32("graphics/pokemon/electrike/back.4bpp.lz");
const u32 gMonShinyPalette_Electrike[] = INCBIN_U32("graphics/pokemon/electrike/shiny.gbapal.lz");
const u8 gMonIcon_Electrike[] = INCBIN_U8("graphics/pokemon/electrike/icon.4bpp");
const u8 gMonFootprint_Electrike[] = INCBIN_U8("graphics/pokemon/electrike/footprint.1bpp");

const u32 gMonStillFrontPic_Manectric[] = INCBIN_U32("graphics/pokemon/manectric/front.4bpp.lz");
const u32 gMonPalette_Manectric[] = INCBIN_U32("graphics/pokemon/manectric/normal.gbapal.lz");
const u32 gMonBackPic_Manectric[] = INCBIN_U32("graphics/pokemon/manectric/back.4bpp.lz");
const u32 gMonShinyPalette_Manectric[] = INCBIN_U32("graphics/pokemon/manectric/shiny.gbapal.lz");
const u8 gMonIcon_Manectric[] = INCBIN_U8("graphics/pokemon/manectric/icon.4bpp");
const u8 gMonFootprint_Manectric[] = INCBIN_U8("graphics/pokemon/manectric/footprint.1bpp");

const u32 gMonStillFrontPic_Numel[] = INCBIN_U32("graphics/pokemon/numel/front.4bpp.lz");
const u32 gMonPalette_Numel[] = INCBIN_U32("graphics/pokemon/numel/normal.gbapal.lz");
const u32 gMonBackPic_Numel[] = INCBIN_U32("graphics/pokemon/numel/back.4bpp.lz");
const u32 gMonShinyPalette_Numel[] = INCBIN_U32("graphics/pokemon/numel/shiny.gbapal.lz");
const u8 gMonIcon_Numel[] = INCBIN_U8("graphics/pokemon/numel/icon.4bpp");
const u8 gMonFootprint_Numel[] = INCBIN_U8("graphics/pokemon/numel/footprint.1bpp");

const u32 gMonStillFrontPic_Camerupt[] = INCBIN_U32("graphics/pokemon/camerupt/front.4bpp.lz");
const u32 gMonPalette_Camerupt[] = INCBIN_U32("graphics/pokemon/camerupt/normal.gbapal.lz");
const u32 gMonBackPic_Camerupt[] = INCBIN_U32("graphics/pokemon/camerupt/back.4bpp.lz");
const u32 gMonShinyPalette_Camerupt[] = INCBIN_U32("graphics/pokemon/camerupt/shiny.gbapal.lz");
const u8 gMonIcon_Camerupt[] = INCBIN_U8("graphics/pokemon/camerupt/icon.4bpp");
const u8 gMonFootprint_Camerupt[] = INCBIN_U8("graphics/pokemon/camerupt/footprint.1bpp");

const u32 gMonStillFrontPic_Spheal[] = INCBIN_U32("graphics/pokemon/spheal/front.4bpp.lz");
const u32 gMonPalette_Spheal[] = INCBIN_U32("graphics/pokemon/spheal/normal.gbapal.lz");
const u32 gMonBackPic_Spheal[] = INCBIN_U32("graphics/pokemon/spheal/back.4bpp.lz");
const u32 gMonShinyPalette_Spheal[] = INCBIN_U32("graphics/pokemon/spheal/shiny.gbapal.lz");
const u8 gMonIcon_Spheal[] = INCBIN_U8("graphics/pokemon/spheal/icon.4bpp");
const u8 gMonFootprint_Spheal[] = INCBIN_U8("graphics/pokemon/spheal/footprint.1bpp");

const u32 gMonStillFrontPic_Sealeo[] = INCBIN_U32("graphics/pokemon/sealeo/front.4bpp.lz");
const u32 gMonPalette_Sealeo[] = INCBIN_U32("graphics/pokemon/sealeo/normal.gbapal.lz");
const u32 gMonBackPic_Sealeo[] = INCBIN_U32("graphics/pokemon/sealeo/back.4bpp.lz");
const u32 gMonShinyPalette_Sealeo[] = INCBIN_U32("graphics/pokemon/sealeo/shiny.gbapal.lz");
const u8 gMonIcon_Sealeo[] = INCBIN_U8("graphics/pokemon/sealeo/icon.4bpp");
const u8 gMonFootprint_Sealeo[] = INCBIN_U8("graphics/pokemon/sealeo/footprint.1bpp");

const u32 gMonStillFrontPic_Walrein[] = INCBIN_U32("graphics/pokemon/walrein/front.4bpp.lz");
const u32 gMonPalette_Walrein[] = INCBIN_U32("graphics/pokemon/walrein/normal.gbapal.lz");
const u32 gMonBackPic_Walrein[] = INCBIN_U32("graphics/pokemon/walrein/back.4bpp.lz");
const u32 gMonShinyPalette_Walrein[] = INCBIN_U32("graphics/pokemon/walrein/shiny.gbapal.lz");
const u8 gMonIcon_Walrein[] = INCBIN_U8("graphics/pokemon/walrein/icon.4bpp");
const u8 gMonFootprint_Walrein[] = INCBIN_U8("graphics/pokemon/walrein/footprint.1bpp");

const u32 gMonStillFrontPic_Cacnea[] = INCBIN_U32("graphics/pokemon/cacnea/front.4bpp.lz");
const u32 gMonPalette_Cacnea[] = INCBIN_U32("graphics/pokemon/cacnea/normal.gbapal.lz");
const u32 gMonBackPic_Cacnea[] = INCBIN_U32("graphics/pokemon/cacnea/back.4bpp.lz");
const u32 gMonShinyPalette_Cacnea[] = INCBIN_U32("graphics/pokemon/cacnea/shiny.gbapal.lz");
const u8 gMonIcon_Cacnea[] = INCBIN_U8("graphics/pokemon/cacnea/icon.4bpp");
const u8 gMonFootprint_Cacnea[] = INCBIN_U8("graphics/pokemon/cacnea/footprint.1bpp");

const u32 gMonStillFrontPic_Cacturne[] = INCBIN_U32("graphics/pokemon/cacturne/front.4bpp.lz");
const u32 gMonPalette_Cacturne[] = INCBIN_U32("graphics/pokemon/cacturne/normal.gbapal.lz");
const u32 gMonBackPic_Cacturne[] = INCBIN_U32("graphics/pokemon/cacturne/back.4bpp.lz");
const u32 gMonShinyPalette_Cacturne[] = INCBIN_U32("graphics/pokemon/cacturne/shiny.gbapal.lz");
const u8 gMonIcon_Cacturne[] = INCBIN_U8("graphics/pokemon/cacturne/icon.4bpp");
const u8 gMonFootprint_Cacturne[] = INCBIN_U8("graphics/pokemon/cacturne/footprint.1bpp");

const u32 gMonStillFrontPic_Snorunt[] = INCBIN_U32("graphics/pokemon/snorunt/front.4bpp.lz");
const u32 gMonPalette_Snorunt[] = INCBIN_U32("graphics/pokemon/snorunt/normal.gbapal.lz");
const u32 gMonBackPic_Snorunt[] = INCBIN_U32("graphics/pokemon/snorunt/back.4bpp.lz");
const u32 gMonShinyPalette_Snorunt[] = INCBIN_U32("graphics/pokemon/snorunt/shiny.gbapal.lz");
const u8 gMonIcon_Snorunt[] = INCBIN_U8("graphics/pokemon/snorunt/icon.4bpp");
const u8 gMonFootprint_Snorunt[] = INCBIN_U8("graphics/pokemon/snorunt/footprint.1bpp");

const u32 gMonStillFrontPic_Glalie[] = INCBIN_U32("graphics/pokemon/glalie/front.4bpp.lz");
const u32 gMonPalette_Glalie[] = INCBIN_U32("graphics/pokemon/glalie/normal.gbapal.lz");
const u32 gMonBackPic_Glalie[] = INCBIN_U32("graphics/pokemon/glalie/back.4bpp.lz");
const u32 gMonShinyPalette_Glalie[] = INCBIN_U32("graphics/pokemon/glalie/shiny.gbapal.lz");
const u8 gMonIcon_Glalie[] = INCBIN_U8("graphics/pokemon/glalie/icon.4bpp");
const u8 gMonFootprint_Glalie[] = INCBIN_U8("graphics/pokemon/glalie/footprint.1bpp");

const u32 gMonStillFrontPic_Lunatone[] = INCBIN_U32("graphics/pokemon/lunatone/front.4bpp.lz");
const u32 gMonPalette_Lunatone[] = INCBIN_U32("graphics/pokemon/lunatone/normal.gbapal.lz");
const u32 gMonBackPic_Lunatone[] = INCBIN_U32("graphics/pokemon/lunatone/back.4bpp.lz");
const u32 gMonShinyPalette_Lunatone[] = INCBIN_U32("graphics/pokemon/lunatone/shiny.gbapal.lz");
const u8 gMonIcon_Lunatone[] = INCBIN_U8("graphics/pokemon/lunatone/icon.4bpp");
const u8 gMonFootprint_Lunatone[] = INCBIN_U8("graphics/pokemon/lunatone/footprint.1bpp");

const u32 gMonStillFrontPic_Solrock[] = INCBIN_U32("graphics/pokemon/solrock/front.4bpp.lz");
const u32 gMonPalette_Solrock[] = INCBIN_U32("graphics/pokemon/solrock/normal.gbapal.lz");
const u32 gMonBackPic_Solrock[] = INCBIN_U32("graphics/pokemon/solrock/back.4bpp.lz");
const u32 gMonShinyPalette_Solrock[] = INCBIN_U32("graphics/pokemon/solrock/shiny.gbapal.lz");
const u8 gMonIcon_Solrock[] = INCBIN_U8("graphics/pokemon/solrock/icon.4bpp");
const u8 gMonFootprint_Solrock[] = INCBIN_U8("graphics/pokemon/solrock/footprint.1bpp");

const u32 gMonStillFrontPic_Azurill[] = INCBIN_U32("graphics/pokemon/azurill/front.4bpp.lz");
const u32 gMonPalette_Azurill[] = INCBIN_U32("graphics/pokemon/azurill/normal.gbapal.lz");
const u32 gMonBackPic_Azurill[] = INCBIN_U32("graphics/pokemon/azurill/back.4bpp.lz");
const u32 gMonShinyPalette_Azurill[] = INCBIN_U32("graphics/pokemon/azurill/shiny.gbapal.lz");
const u8 gMonIcon_Azurill[] = INCBIN_U8("graphics/pokemon/azurill/icon.4bpp");
const u8 gMonFootprint_Azurill[] = INCBIN_U8("graphics/pokemon/azurill/footprint.1bpp");

const u32 gMonStillFrontPic_Spoink[] = INCBIN_U32("graphics/pokemon/spoink/front.4bpp.lz");
const u32 gMonPalette_Spoink[] = INCBIN_U32("graphics/pokemon/spoink/normal.gbapal.lz");
const u32 gMonBackPic_Spoink[] = INCBIN_U32("graphics/pokemon/spoink/back.4bpp.lz");
const u32 gMonShinyPalette_Spoink[] = INCBIN_U32("graphics/pokemon/spoink/shiny.gbapal.lz");
const u8 gMonIcon_Spoink[] = INCBIN_U8("graphics/pokemon/spoink/icon.4bpp");
const u8 gMonFootprint_Spoink[] = INCBIN_U8("graphics/pokemon/spoink/footprint.1bpp");

const u32 gMonStillFrontPic_Grumpig[] = INCBIN_U32("graphics/pokemon/grumpig/front.4bpp.lz");
const u32 gMonPalette_Grumpig[] = INCBIN_U32("graphics/pokemon/grumpig/normal.gbapal.lz");
const u32 gMonBackPic_Grumpig[] = INCBIN_U32("graphics/pokemon/grumpig/back.4bpp.lz");
const u32 gMonShinyPalette_Grumpig[] = INCBIN_U32("graphics/pokemon/grumpig/shiny.gbapal.lz");
const u8 gMonIcon_Grumpig[] = INCBIN_U8("graphics/pokemon/grumpig/icon.4bpp");
const u8 gMonFootprint_Grumpig[] = INCBIN_U8("graphics/pokemon/grumpig/footprint.1bpp");

const u32 gMonStillFrontPic_Plusle[] = INCBIN_U32("graphics/pokemon/plusle/front.4bpp.lz");
const u32 gMonPalette_Plusle[] = INCBIN_U32("graphics/pokemon/plusle/normal.gbapal.lz");
const u32 gMonBackPic_Plusle[] = INCBIN_U32("graphics/pokemon/plusle/back.4bpp.lz");
const u32 gMonShinyPalette_Plusle[] = INCBIN_U32("graphics/pokemon/plusle/shiny.gbapal.lz");
const u8 gMonIcon_Plusle[] = INCBIN_U8("graphics/pokemon/plusle/icon.4bpp");
const u8 gMonFootprint_Plusle[] = INCBIN_U8("graphics/pokemon/plusle/footprint.1bpp");

const u32 gMonStillFrontPic_Minun[] = INCBIN_U32("graphics/pokemon/minun/front.4bpp.lz");
const u32 gMonPalette_Minun[] = INCBIN_U32("graphics/pokemon/minun/normal.gbapal.lz");
const u32 gMonBackPic_Minun[] = INCBIN_U32("graphics/pokemon/minun/back.4bpp.lz");
const u32 gMonShinyPalette_Minun[] = INCBIN_U32("graphics/pokemon/minun/shiny.gbapal.lz");
const u8 gMonIcon_Minun[] = INCBIN_U8("graphics/pokemon/minun/icon.4bpp");
const u8 gMonFootprint_Minun[] = INCBIN_U8("graphics/pokemon/minun/footprint.1bpp");

const u32 gMonStillFrontPic_Mawile[] = INCBIN_U32("graphics/pokemon/mawile/front.4bpp.lz");
const u32 gMonPalette_Mawile[] = INCBIN_U32("graphics/pokemon/mawile/normal.gbapal.lz");
const u32 gMonBackPic_Mawile[] = INCBIN_U32("graphics/pokemon/mawile/back.4bpp.lz");
const u32 gMonShinyPalette_Mawile[] = INCBIN_U32("graphics/pokemon/mawile/shiny.gbapal.lz");
const u8 gMonIcon_Mawile[] = INCBIN_U8("graphics/pokemon/mawile/icon.4bpp");
const u8 gMonFootprint_Mawile[] = INCBIN_U8("graphics/pokemon/mawile/footprint.1bpp");

const u32 gMonStillFrontPic_Meditite[] = INCBIN_U32("graphics/pokemon/meditite/front.4bpp.lz");
const u32 gMonPalette_Meditite[] = INCBIN_U32("graphics/pokemon/meditite/normal.gbapal.lz");
const u32 gMonBackPic_Meditite[] = INCBIN_U32("graphics/pokemon/meditite/back.4bpp.lz");
const u32 gMonShinyPalette_Meditite[] = INCBIN_U32("graphics/pokemon/meditite/shiny.gbapal.lz");
const u8 gMonIcon_Meditite[] = INCBIN_U8("graphics/pokemon/meditite/icon.4bpp");
const u8 gMonFootprint_Meditite[] = INCBIN_U8("graphics/pokemon/meditite/footprint.1bpp");

const u32 gMonStillFrontPic_Medicham[] = INCBIN_U32("graphics/pokemon/medicham/front.4bpp.lz");
const u32 gMonPalette_Medicham[] = INCBIN_U32("graphics/pokemon/medicham/normal.gbapal.lz");
const u32 gMonBackPic_Medicham[] = INCBIN_U32("graphics/pokemon/medicham/back.4bpp.lz");
const u32 gMonShinyPalette_Medicham[] = INCBIN_U32("graphics/pokemon/medicham/shiny.gbapal.lz");
const u8 gMonIcon_Medicham[] = INCBIN_U8("graphics/pokemon/medicham/icon.4bpp");
const u8 gMonFootprint_Medicham[] = INCBIN_U8("graphics/pokemon/medicham/footprint.1bpp");

const u32 gMonStillFrontPic_Swablu[] = INCBIN_U32("graphics/pokemon/swablu/front.4bpp.lz");
const u32 gMonPalette_Swablu[] = INCBIN_U32("graphics/pokemon/swablu/normal.gbapal.lz");
const u32 gMonBackPic_Swablu[] = INCBIN_U32("graphics/pokemon/swablu/back.4bpp.lz");
const u32 gMonShinyPalette_Swablu[] = INCBIN_U32("graphics/pokemon/swablu/shiny.gbapal.lz");
const u8 gMonIcon_Swablu[] = INCBIN_U8("graphics/pokemon/swablu/icon.4bpp");
const u8 gMonFootprint_Swablu[] = INCBIN_U8("graphics/pokemon/swablu/footprint.1bpp");

const u32 gMonStillFrontPic_Altaria[] = INCBIN_U32("graphics/pokemon/altaria/front.4bpp.lz");
const u32 gMonPalette_Altaria[] = INCBIN_U32("graphics/pokemon/altaria/normal.gbapal.lz");
const u32 gMonBackPic_Altaria[] = INCBIN_U32("graphics/pokemon/altaria/back.4bpp.lz");
const u32 gMonShinyPalette_Altaria[] = INCBIN_U32("graphics/pokemon/altaria/shiny.gbapal.lz");
const u8 gMonIcon_Altaria[] = INCBIN_U8("graphics/pokemon/altaria/icon.4bpp");
const u8 gMonFootprint_Altaria[] = INCBIN_U8("graphics/pokemon/altaria/footprint.1bpp");

const u32 gMonStillFrontPic_Wynaut[] = INCBIN_U32("graphics/pokemon/wynaut/front.4bpp.lz");
const u32 gMonPalette_Wynaut[] = INCBIN_U32("graphics/pokemon/wynaut/normal.gbapal.lz");
const u32 gMonBackPic_Wynaut[] = INCBIN_U32("graphics/pokemon/wynaut/back.4bpp.lz");
const u32 gMonShinyPalette_Wynaut[] = INCBIN_U32("graphics/pokemon/wynaut/shiny.gbapal.lz");
const u8 gMonIcon_Wynaut[] = INCBIN_U8("graphics/pokemon/wynaut/icon.4bpp");
const u8 gMonFootprint_Wynaut[] = INCBIN_U8("graphics/pokemon/wynaut/footprint.1bpp");

const u32 gMonStillFrontPic_Duskull[] = INCBIN_U32("graphics/pokemon/duskull/front.4bpp.lz");
const u32 gMonPalette_Duskull[] = INCBIN_U32("graphics/pokemon/duskull/normal.gbapal.lz");
const u32 gMonBackPic_Duskull[] = INCBIN_U32("graphics/pokemon/duskull/back.4bpp.lz");
const u32 gMonShinyPalette_Duskull[] = INCBIN_U32("graphics/pokemon/duskull/shiny.gbapal.lz");
const u8 gMonIcon_Duskull[] = INCBIN_U8("graphics/pokemon/duskull/icon.4bpp");
const u8 gMonFootprint_Duskull[] = INCBIN_U8("graphics/pokemon/duskull/footprint.1bpp");

const u32 gMonStillFrontPic_Dusclops[] = INCBIN_U32("graphics/pokemon/dusclops/front.4bpp.lz");
const u32 gMonPalette_Dusclops[] = INCBIN_U32("graphics/pokemon/dusclops/normal.gbapal.lz");
const u32 gMonBackPic_Dusclops[] = INCBIN_U32("graphics/pokemon/dusclops/back.4bpp.lz");
const u32 gMonShinyPalette_Dusclops[] = INCBIN_U32("graphics/pokemon/dusclops/shiny.gbapal.lz");
const u8 gMonIcon_Dusclops[] = INCBIN_U8("graphics/pokemon/dusclops/icon.4bpp");
const u8 gMonFootprint_Dusclops[] = INCBIN_U8("graphics/pokemon/dusclops/footprint.1bpp");

const u32 gMonStillFrontPic_Roselia[] = INCBIN_U32("graphics/pokemon/roselia/front.4bpp.lz");
const u32 gMonPalette_Roselia[] = INCBIN_U32("graphics/pokemon/roselia/normal.gbapal.lz");
const u32 gMonBackPic_Roselia[] = INCBIN_U32("graphics/pokemon/roselia/back.4bpp.lz");
const u32 gMonShinyPalette_Roselia[] = INCBIN_U32("graphics/pokemon/roselia/shiny.gbapal.lz");
const u8 gMonIcon_Roselia[] = INCBIN_U8("graphics/pokemon/roselia/icon.4bpp");
const u8 gMonFootprint_Roselia[] = INCBIN_U8("graphics/pokemon/roselia/footprint.1bpp");

const u32 gMonStillFrontPic_Slakoth[] = INCBIN_U32("graphics/pokemon/slakoth/front.4bpp.lz");
const u32 gMonPalette_Slakoth[] = INCBIN_U32("graphics/pokemon/slakoth/normal.gbapal.lz");
const u32 gMonBackPic_Slakoth[] = INCBIN_U32("graphics/pokemon/slakoth/back.4bpp.lz");
const u32 gMonShinyPalette_Slakoth[] = INCBIN_U32("graphics/pokemon/slakoth/shiny.gbapal.lz");
const u8 gMonIcon_Slakoth[] = INCBIN_U8("graphics/pokemon/slakoth/icon.4bpp");
const u8 gMonFootprint_Slakoth[] = INCBIN_U8("graphics/pokemon/slakoth/footprint.1bpp");

const u32 gMonStillFrontPic_Vigoroth[] = INCBIN_U32("graphics/pokemon/vigoroth/front.4bpp.lz");
const u32 gMonPalette_Vigoroth[] = INCBIN_U32("graphics/pokemon/vigoroth/normal.gbapal.lz");
const u32 gMonBackPic_Vigoroth[] = INCBIN_U32("graphics/pokemon/vigoroth/back.4bpp.lz");
const u32 gMonShinyPalette_Vigoroth[] = INCBIN_U32("graphics/pokemon/vigoroth/shiny.gbapal.lz");
const u8 gMonIcon_Vigoroth[] = INCBIN_U8("graphics/pokemon/vigoroth/icon.4bpp");
const u8 gMonFootprint_Vigoroth[] = INCBIN_U8("graphics/pokemon/vigoroth/footprint.1bpp");

const u32 gMonStillFrontPic_Slaking[] = INCBIN_U32("graphics/pokemon/slaking/front.4bpp.lz");
const u32 gMonPalette_Slaking[] = INCBIN_U32("graphics/pokemon/slaking/normal.gbapal.lz");
const u32 gMonBackPic_Slaking[] = INCBIN_U32("graphics/pokemon/slaking/back.4bpp.lz");
const u32 gMonShinyPalette_Slaking[] = INCBIN_U32("graphics/pokemon/slaking/shiny.gbapal.lz");
const u8 gMonIcon_Slaking[] = INCBIN_U8("graphics/pokemon/slaking/icon.4bpp");
const u8 gMonFootprint_Slaking[] = INCBIN_U8("graphics/pokemon/slaking/footprint.1bpp");

const u32 gMonStillFrontPic_Gulpin[] = INCBIN_U32("graphics/pokemon/gulpin/front.4bpp.lz");
const u32 gMonPalette_Gulpin[] = INCBIN_U32("graphics/pokemon/gulpin/normal.gbapal.lz");
const u32 gMonBackPic_Gulpin[] = INCBIN_U32("graphics/pokemon/gulpin/back.4bpp.lz");
const u32 gMonShinyPalette_Gulpin[] = INCBIN_U32("graphics/pokemon/gulpin/shiny.gbapal.lz");
const u8 gMonIcon_Gulpin[] = INCBIN_U8("graphics/pokemon/gulpin/icon.4bpp");
const u8 gMonFootprint_Gulpin[] = INCBIN_U8("graphics/pokemon/gulpin/footprint.1bpp");

const u32 gMonStillFrontPic_Swalot[] = INCBIN_U32("graphics/pokemon/swalot/front.4bpp.lz");
const u32 gMonPalette_Swalot[] = INCBIN_U32("graphics/pokemon/swalot/normal.gbapal.lz");
const u32 gMonBackPic_Swalot[] = INCBIN_U32("graphics/pokemon/swalot/back.4bpp.lz");
const u32 gMonShinyPalette_Swalot[] = INCBIN_U32("graphics/pokemon/swalot/shiny.gbapal.lz");
const u8 gMonIcon_Swalot[] = INCBIN_U8("graphics/pokemon/swalot/icon.4bpp");
const u8 gMonFootprint_Swalot[] = INCBIN_U8("graphics/pokemon/swalot/footprint.1bpp");

const u32 gMonStillFrontPic_Tropius[] = INCBIN_U32("graphics/pokemon/tropius/front.4bpp.lz");
const u32 gMonPalette_Tropius[] = INCBIN_U32("graphics/pokemon/tropius/normal.gbapal.lz");
const u32 gMonBackPic_Tropius[] = INCBIN_U32("graphics/pokemon/tropius/back.4bpp.lz");
const u32 gMonShinyPalette_Tropius[] = INCBIN_U32("graphics/pokemon/tropius/shiny.gbapal.lz");
const u8 gMonIcon_Tropius[] = INCBIN_U8("graphics/pokemon/tropius/icon.4bpp");
const u8 gMonFootprint_Tropius[] = INCBIN_U8("graphics/pokemon/tropius/footprint.1bpp");

const u32 gMonStillFrontPic_Whismur[] = INCBIN_U32("graphics/pokemon/whismur/front.4bpp.lz");
const u32 gMonPalette_Whismur[] = INCBIN_U32("graphics/pokemon/whismur/normal.gbapal.lz");
const u32 gMonBackPic_Whismur[] = INCBIN_U32("graphics/pokemon/whismur/back.4bpp.lz");
const u32 gMonShinyPalette_Whismur[] = INCBIN_U32("graphics/pokemon/whismur/shiny.gbapal.lz");
const u8 gMonIcon_Whismur[] = INCBIN_U8("graphics/pokemon/whismur/icon.4bpp");
const u8 gMonFootprint_Whismur[] = INCBIN_U8("graphics/pokemon/whismur/footprint.1bpp");

const u32 gMonStillFrontPic_Loudred[] = INCBIN_U32("graphics/pokemon/loudred/front.4bpp.lz");
const u32 gMonPalette_Loudred[] = INCBIN_U32("graphics/pokemon/loudred/normal.gbapal.lz");
const u32 gMonBackPic_Loudred[] = INCBIN_U32("graphics/pokemon/loudred/back.4bpp.lz");
const u32 gMonShinyPalette_Loudred[] = INCBIN_U32("graphics/pokemon/loudred/shiny.gbapal.lz");
const u8 gMonIcon_Loudred[] = INCBIN_U8("graphics/pokemon/loudred/icon.4bpp");
const u8 gMonFootprint_Loudred[] = INCBIN_U8("graphics/pokemon/loudred/footprint.1bpp");

const u32 gMonStillFrontPic_Exploud[] = INCBIN_U32("graphics/pokemon/exploud/front.4bpp.lz");
const u32 gMonPalette_Exploud[] = INCBIN_U32("graphics/pokemon/exploud/normal.gbapal.lz");
const u32 gMonBackPic_Exploud[] = INCBIN_U32("graphics/pokemon/exploud/back.4bpp.lz");
const u32 gMonShinyPalette_Exploud[] = INCBIN_U32("graphics/pokemon/exploud/shiny.gbapal.lz");
const u8 gMonIcon_Exploud[] = INCBIN_U8("graphics/pokemon/exploud/icon.4bpp");
const u8 gMonFootprint_Exploud[] = INCBIN_U8("graphics/pokemon/exploud/footprint.1bpp");

const u32 gMonStillFrontPic_Clamperl[] = INCBIN_U32("graphics/pokemon/clamperl/front.4bpp.lz");
const u32 gMonPalette_Clamperl[] = INCBIN_U32("graphics/pokemon/clamperl/normal.gbapal.lz");
const u32 gMonBackPic_Clamperl[] = INCBIN_U32("graphics/pokemon/clamperl/back.4bpp.lz");
const u32 gMonShinyPalette_Clamperl[] = INCBIN_U32("graphics/pokemon/clamperl/shiny.gbapal.lz");
const u8 gMonIcon_Clamperl[] = INCBIN_U8("graphics/pokemon/clamperl/icon.4bpp");
const u8 gMonFootprint_Clamperl[] = INCBIN_U8("graphics/pokemon/clamperl/footprint.1bpp");

const u32 gMonStillFrontPic_Huntail[] = INCBIN_U32("graphics/pokemon/huntail/front.4bpp.lz");
const u32 gMonPalette_Huntail[] = INCBIN_U32("graphics/pokemon/huntail/normal.gbapal.lz");
const u32 gMonBackPic_Huntail[] = INCBIN_U32("graphics/pokemon/huntail/back.4bpp.lz");
const u32 gMonShinyPalette_Huntail[] = INCBIN_U32("graphics/pokemon/huntail/shiny.gbapal.lz");
const u8 gMonIcon_Huntail[] = INCBIN_U8("graphics/pokemon/huntail/icon.4bpp");
const u8 gMonFootprint_Huntail[] = INCBIN_U8("graphics/pokemon/huntail/footprint.1bpp");

const u32 gMonStillFrontPic_Gorebyss[] = INCBIN_U32("graphics/pokemon/gorebyss/front.4bpp.lz");
const u32 gMonPalette_Gorebyss[] = INCBIN_U32("graphics/pokemon/gorebyss/normal.gbapal.lz");
const u32 gMonBackPic_Gorebyss[] = INCBIN_U32("graphics/pokemon/gorebyss/back.4bpp.lz");
const u32 gMonShinyPalette_Gorebyss[] = INCBIN_U32("graphics/pokemon/gorebyss/shiny.gbapal.lz");
const u8 gMonIcon_Gorebyss[] = INCBIN_U8("graphics/pokemon/gorebyss/icon.4bpp");
const u8 gMonFootprint_Gorebyss[] = INCBIN_U8("graphics/pokemon/gorebyss/footprint.1bpp");

const u32 gMonStillFrontPic_Absol[] = INCBIN_U32("graphics/pokemon/absol/front.4bpp.lz");
const u32 gMonPalette_Absol[] = INCBIN_U32("graphics/pokemon/absol/normal.gbapal.lz");
const u32 gMonBackPic_Absol[] = INCBIN_U32("graphics/pokemon/absol/back.4bpp.lz");
const u32 gMonShinyPalette_Absol[] = INCBIN_U32("graphics/pokemon/absol/shiny.gbapal.lz");
const u8 gMonIcon_Absol[] = INCBIN_U8("graphics/pokemon/absol/icon.4bpp");
const u8 gMonFootprint_Absol[] = INCBIN_U8("graphics/pokemon/absol/footprint.1bpp");

const u32 gMonStillFrontPic_Shuppet[] = INCBIN_U32("graphics/pokemon/shuppet/front.4bpp.lz");
const u32 gMonPalette_Shuppet[] = INCBIN_U32("graphics/pokemon/shuppet/normal.gbapal.lz");
const u32 gMonBackPic_Shuppet[] = INCBIN_U32("graphics/pokemon/shuppet/back.4bpp.lz");
const u32 gMonShinyPalette_Shuppet[] = INCBIN_U32("graphics/pokemon/shuppet/shiny.gbapal.lz");
const u8 gMonIcon_Shuppet[] = INCBIN_U8("graphics/pokemon/shuppet/icon.4bpp");
const u8 gMonFootprint_Shuppet[] = INCBIN_U8("graphics/pokemon/shuppet/footprint.1bpp");

const u32 gMonStillFrontPic_Banette[] = INCBIN_U32("graphics/pokemon/banette/front.4bpp.lz");
const u32 gMonPalette_Banette[] = INCBIN_U32("graphics/pokemon/banette/normal.gbapal.lz");
const u32 gMonBackPic_Banette[] = INCBIN_U32("graphics/pokemon/banette/back.4bpp.lz");
const u32 gMonShinyPalette_Banette[] = INCBIN_U32("graphics/pokemon/banette/shiny.gbapal.lz");
const u8 gMonIcon_Banette[] = INCBIN_U8("graphics/pokemon/banette/icon.4bpp");
const u8 gMonFootprint_Banette[] = INCBIN_U8("graphics/pokemon/banette/footprint.1bpp");

const u32 gMonStillFrontPic_Seviper[] = INCBIN_U32("graphics/pokemon/seviper/front.4bpp.lz");
const u32 gMonPalette_Seviper[] = INCBIN_U32("graphics/pokemon/seviper/normal.gbapal.lz");
const u32 gMonBackPic_Seviper[] = INCBIN_U32("graphics/pokemon/seviper/back.4bpp.lz");
const u32 gMonShinyPalette_Seviper[] = INCBIN_U32("graphics/pokemon/seviper/shiny.gbapal.lz");
const u8 gMonIcon_Seviper[] = INCBIN_U8("graphics/pokemon/seviper/icon.4bpp");
const u8 gMonFootprint_Seviper[] = INCBIN_U8("graphics/pokemon/seviper/footprint.1bpp");

const u32 gMonStillFrontPic_Zangoose[] = INCBIN_U32("graphics/pokemon/zangoose/front.4bpp.lz");
const u32 gMonPalette_Zangoose[] = INCBIN_U32("graphics/pokemon/zangoose/normal.gbapal.lz");
const u32 gMonBackPic_Zangoose[] = INCBIN_U32("graphics/pokemon/zangoose/back.4bpp.lz");
const u32 gMonShinyPalette_Zangoose[] = INCBIN_U32("graphics/pokemon/zangoose/shiny.gbapal.lz");
const u8 gMonIcon_Zangoose[] = INCBIN_U8("graphics/pokemon/zangoose/icon.4bpp");
const u8 gMonFootprint_Zangoose[] = INCBIN_U8("graphics/pokemon/zangoose/footprint.1bpp");

const u32 gMonStillFrontPic_Relicanth[] = INCBIN_U32("graphics/pokemon/relicanth/front.4bpp.lz");
const u32 gMonPalette_Relicanth[] = INCBIN_U32("graphics/pokemon/relicanth/normal.gbapal.lz");
const u32 gMonBackPic_Relicanth[] = INCBIN_U32("graphics/pokemon/relicanth/back.4bpp.lz");
const u32 gMonShinyPalette_Relicanth[] = INCBIN_U32("graphics/pokemon/relicanth/shiny.gbapal.lz");
const u8 gMonIcon_Relicanth[] = INCBIN_U8("graphics/pokemon/relicanth/icon.4bpp");
const u8 gMonFootprint_Relicanth[] = INCBIN_U8("graphics/pokemon/relicanth/footprint.1bpp");

const u32 gMonStillFrontPic_Aron[] = INCBIN_U32("graphics/pokemon/aron/front.4bpp.lz");
const u32 gMonPalette_Aron[] = INCBIN_U32("graphics/pokemon/aron/normal.gbapal.lz");
const u32 gMonBackPic_Aron[] = INCBIN_U32("graphics/pokemon/aron/back.4bpp.lz");
const u32 gMonShinyPalette_Aron[] = INCBIN_U32("graphics/pokemon/aron/shiny.gbapal.lz");
const u8 gMonIcon_Aron[] = INCBIN_U8("graphics/pokemon/aron/icon.4bpp");
const u8 gMonFootprint_Aron[] = INCBIN_U8("graphics/pokemon/aron/footprint.1bpp");

const u32 gMonStillFrontPic_Lairon[] = INCBIN_U32("graphics/pokemon/lairon/front.4bpp.lz");
const u32 gMonPalette_Lairon[] = INCBIN_U32("graphics/pokemon/lairon/normal.gbapal.lz");
const u32 gMonBackPic_Lairon[] = INCBIN_U32("graphics/pokemon/lairon/back.4bpp.lz");
const u32 gMonShinyPalette_Lairon[] = INCBIN_U32("graphics/pokemon/lairon/shiny.gbapal.lz");
const u8 gMonIcon_Lairon[] = INCBIN_U8("graphics/pokemon/lairon/icon.4bpp");
const u8 gMonFootprint_Lairon[] = INCBIN_U8("graphics/pokemon/lairon/footprint.1bpp");

const u32 gMonStillFrontPic_Aggron[] = INCBIN_U32("graphics/pokemon/aggron/front.4bpp.lz");
const u32 gMonPalette_Aggron[] = INCBIN_U32("graphics/pokemon/aggron/normal.gbapal.lz");
const u32 gMonBackPic_Aggron[] = INCBIN_U32("graphics/pokemon/aggron/back.4bpp.lz");
const u32 gMonShinyPalette_Aggron[] = INCBIN_U32("graphics/pokemon/aggron/shiny.gbapal.lz");
const u8 gMonIcon_Aggron[] = INCBIN_U8("graphics/pokemon/aggron/icon.4bpp");
const u8 gMonFootprint_Aggron[] = INCBIN_U8("graphics/pokemon/aggron/footprint.1bpp");

const u32 gMonStillFrontPic_Castform[] = INCBIN_U32("graphics/pokemon/castform/front.4bpp.lz");
const u32 gMonPalette_Castform[] = INCBIN_U32("graphics/pokemon/castform/normal.gbapal.lz");
const u32 gMonBackPic_Castform[] = INCBIN_U32("graphics/pokemon/castform/back.4bpp.lz");
const u32 gMonShinyPalette_Castform[] = INCBIN_U32("graphics/pokemon/castform/shiny.gbapal.lz");
const u8 gMonIcon_Castform[] = INCBIN_U8("graphics/pokemon/castform/icon.4bpp");
const u8 gMonFootprint_Castform[] = INCBIN_U8("graphics/pokemon/castform/footprint.1bpp");

const u32 gMonStillFrontPic_Volbeat[] = INCBIN_U32("graphics/pokemon/volbeat/front.4bpp.lz");
const u32 gMonPalette_Volbeat[] = INCBIN_U32("graphics/pokemon/volbeat/normal.gbapal.lz");
const u32 gMonBackPic_Volbeat[] = INCBIN_U32("graphics/pokemon/volbeat/back.4bpp.lz");
const u32 gMonShinyPalette_Volbeat[] = INCBIN_U32("graphics/pokemon/volbeat/shiny.gbapal.lz");
const u8 gMonIcon_Volbeat[] = INCBIN_U8("graphics/pokemon/volbeat/icon.4bpp");
const u8 gMonFootprint_Volbeat[] = INCBIN_U8("graphics/pokemon/volbeat/footprint.1bpp");

const u32 gMonStillFrontPic_Illumise[] = INCBIN_U32("graphics/pokemon/illumise/front.4bpp.lz");
const u32 gMonPalette_Illumise[] = INCBIN_U32("graphics/pokemon/illumise/normal.gbapal.lz");
const u32 gMonBackPic_Illumise[] = INCBIN_U32("graphics/pokemon/illumise/back.4bpp.lz");
const u32 gMonShinyPalette_Illumise[] = INCBIN_U32("graphics/pokemon/illumise/shiny.gbapal.lz");
const u8 gMonIcon_Illumise[] = INCBIN_U8("graphics/pokemon/illumise/icon.4bpp");
const u8 gMonFootprint_Illumise[] = INCBIN_U8("graphics/pokemon/illumise/footprint.1bpp");

const u32 gMonStillFrontPic_Lileep[] = INCBIN_U32("graphics/pokemon/lileep/front.4bpp.lz");
const u32 gMonPalette_Lileep[] = INCBIN_U32("graphics/pokemon/lileep/normal.gbapal.lz");
const u32 gMonBackPic_Lileep[] = INCBIN_U32("graphics/pokemon/lileep/back.4bpp.lz");
const u32 gMonShinyPalette_Lileep[] = INCBIN_U32("graphics/pokemon/lileep/shiny.gbapal.lz");
const u8 gMonIcon_Lileep[] = INCBIN_U8("graphics/pokemon/lileep/icon.4bpp");
const u8 gMonFootprint_Lileep[] = INCBIN_U8("graphics/pokemon/lileep/footprint.1bpp");

const u32 gMonStillFrontPic_Cradily[] = INCBIN_U32("graphics/pokemon/cradily/front.4bpp.lz");
const u32 gMonPalette_Cradily[] = INCBIN_U32("graphics/pokemon/cradily/normal.gbapal.lz");
const u32 gMonBackPic_Cradily[] = INCBIN_U32("graphics/pokemon/cradily/back.4bpp.lz");
const u32 gMonShinyPalette_Cradily[] = INCBIN_U32("graphics/pokemon/cradily/shiny.gbapal.lz");
const u8 gMonIcon_Cradily[] = INCBIN_U8("graphics/pokemon/cradily/icon.4bpp");
const u8 gMonFootprint_Cradily[] = INCBIN_U8("graphics/pokemon/cradily/footprint.1bpp");

const u32 gMonStillFrontPic_Anorith[] = INCBIN_U32("graphics/pokemon/anorith/front.4bpp.lz");
const u32 gMonPalette_Anorith[] = INCBIN_U32("graphics/pokemon/anorith/normal.gbapal.lz");
const u32 gMonBackPic_Anorith[] = INCBIN_U32("graphics/pokemon/anorith/back.4bpp.lz");
const u32 gMonShinyPalette_Anorith[] = INCBIN_U32("graphics/pokemon/anorith/shiny.gbapal.lz");
const u8 gMonIcon_Anorith[] = INCBIN_U8("graphics/pokemon/anorith/icon.4bpp");
const u8 gMonFootprint_Anorith[] = INCBIN_U8("graphics/pokemon/anorith/footprint.1bpp");

const u32 gMonStillFrontPic_Armaldo[] = INCBIN_U32("graphics/pokemon/armaldo/front.4bpp.lz");
const u32 gMonPalette_Armaldo[] = INCBIN_U32("graphics/pokemon/armaldo/normal.gbapal.lz");
const u32 gMonBackPic_Armaldo[] = INCBIN_U32("graphics/pokemon/armaldo/back.4bpp.lz");
const u32 gMonShinyPalette_Armaldo[] = INCBIN_U32("graphics/pokemon/armaldo/shiny.gbapal.lz");
const u8 gMonIcon_Armaldo[] = INCBIN_U8("graphics/pokemon/armaldo/icon.4bpp");
const u8 gMonFootprint_Armaldo[] = INCBIN_U8("graphics/pokemon/armaldo/footprint.1bpp");

const u32 gMonStillFrontPic_Ralts[] = INCBIN_U32("graphics/pokemon/ralts/front.4bpp.lz");
const u32 gMonPalette_Ralts[] = INCBIN_U32("graphics/pokemon/ralts/normal.gbapal.lz");
const u32 gMonBackPic_Ralts[] = INCBIN_U32("graphics/pokemon/ralts/back.4bpp.lz");
const u32 gMonShinyPalette_Ralts[] = INCBIN_U32("graphics/pokemon/ralts/shiny.gbapal.lz");
const u8 gMonIcon_Ralts[] = INCBIN_U8("graphics/pokemon/ralts/icon.4bpp");
const u8 gMonFootprint_Ralts[] = INCBIN_U8("graphics/pokemon/ralts/footprint.1bpp");

const u32 gMonStillFrontPic_Kirlia[] = INCBIN_U32("graphics/pokemon/kirlia/front.4bpp.lz");
const u32 gMonPalette_Kirlia[] = INCBIN_U32("graphics/pokemon/kirlia/normal.gbapal.lz");
const u32 gMonBackPic_Kirlia[] = INCBIN_U32("graphics/pokemon/kirlia/back.4bpp.lz");
const u32 gMonShinyPalette_Kirlia[] = INCBIN_U32("graphics/pokemon/kirlia/shiny.gbapal.lz");
const u8 gMonIcon_Kirlia[] = INCBIN_U8("graphics/pokemon/kirlia/icon.4bpp");
const u8 gMonFootprint_Kirlia[] = INCBIN_U8("graphics/pokemon/kirlia/footprint.1bpp");

const u32 gMonStillFrontPic_Gardevoir[] = INCBIN_U32("graphics/pokemon/gardevoir/front.4bpp.lz");
const u32 gMonPalette_Gardevoir[] = INCBIN_U32("graphics/pokemon/gardevoir/normal.gbapal.lz");
const u32 gMonBackPic_Gardevoir[] = INCBIN_U32("graphics/pokemon/gardevoir/back.4bpp.lz");
const u32 gMonShinyPalette_Gardevoir[] = INCBIN_U32("graphics/pokemon/gardevoir/shiny.gbapal.lz");
const u8 gMonIcon_Gardevoir[] = INCBIN_U8("graphics/pokemon/gardevoir/icon.4bpp");
const u8 gMonFootprint_Gardevoir[] = INCBIN_U8("graphics/pokemon/gardevoir/footprint.1bpp");

const u32 gMonStillFrontPic_Bagon[] = INCBIN_U32("graphics/pokemon/bagon/front.4bpp.lz");
const u32 gMonPalette_Bagon[] = INCBIN_U32("graphics/pokemon/bagon/normal.gbapal.lz");
const u32 gMonBackPic_Bagon[] = INCBIN_U32("graphics/pokemon/bagon/back.4bpp.lz");
const u32 gMonShinyPalette_Bagon[] = INCBIN_U32("graphics/pokemon/bagon/shiny.gbapal.lz");
const u8 gMonIcon_Bagon[] = INCBIN_U8("graphics/pokemon/bagon/icon.4bpp");
const u8 gMonFootprint_Bagon[] = INCBIN_U8("graphics/pokemon/bagon/footprint.1bpp");

const u32 gMonStillFrontPic_Shelgon[] = INCBIN_U32("graphics/pokemon/shelgon/front.4bpp.lz");
const u32 gMonPalette_Shelgon[] = INCBIN_U32("graphics/pokemon/shelgon/normal.gbapal.lz");
const u32 gMonBackPic_Shelgon[] = INCBIN_U32("graphics/pokemon/shelgon/back.4bpp.lz");
const u32 gMonShinyPalette_Shelgon[] = INCBIN_U32("graphics/pokemon/shelgon/shiny.gbapal.lz");
const u8 gMonIcon_Shelgon[] = INCBIN_U8("graphics/pokemon/shelgon/icon.4bpp");
const u8 gMonFootprint_Shelgon[] = INCBIN_U8("graphics/pokemon/shelgon/footprint.1bpp");

const u32 gMonStillFrontPic_Salamence[] = INCBIN_U32("graphics/pokemon/salamence/front.4bpp.lz");
const u32 gMonPalette_Salamence[] = INCBIN_U32("graphics/pokemon/salamence/normal.gbapal.lz");
const u32 gMonBackPic_Salamence[] = INCBIN_U32("graphics/pokemon/salamence/back.4bpp.lz");
const u32 gMonShinyPalette_Salamence[] = INCBIN_U32("graphics/pokemon/salamence/shiny.gbapal.lz");
const u8 gMonIcon_Salamence[] = INCBIN_U8("graphics/pokemon/salamence/icon.4bpp");
const u8 gMonFootprint_Salamence[] = INCBIN_U8("graphics/pokemon/salamence/footprint.1bpp");

const u32 gMonStillFrontPic_Beldum[] = INCBIN_U32("graphics/pokemon/beldum/front.4bpp.lz");
const u32 gMonPalette_Beldum[] = INCBIN_U32("graphics/pokemon/beldum/normal.gbapal.lz");
const u32 gMonBackPic_Beldum[] = INCBIN_U32("graphics/pokemon/beldum/back.4bpp.lz");
const u32 gMonShinyPalette_Beldum[] = INCBIN_U32("graphics/pokemon/beldum/shiny.gbapal.lz");
const u8 gMonIcon_Beldum[] = INCBIN_U8("graphics/pokemon/beldum/icon.4bpp");
const u8 gMonFootprint_Beldum[] = INCBIN_U8("graphics/pokemon/beldum/footprint.1bpp");

const u32 gMonStillFrontPic_Metang[] = INCBIN_U32("graphics/pokemon/metang/front.4bpp.lz");
const u32 gMonPalette_Metang[] = INCBIN_U32("graphics/pokemon/metang/normal.gbapal.lz");
const u32 gMonBackPic_Metang[] = INCBIN_U32("graphics/pokemon/metang/back.4bpp.lz");
const u32 gMonShinyPalette_Metang[] = INCBIN_U32("graphics/pokemon/metang/shiny.gbapal.lz");
const u8 gMonIcon_Metang[] = INCBIN_U8("graphics/pokemon/metang/icon.4bpp");
const u8 gMonFootprint_Metang[] = INCBIN_U8("graphics/pokemon/metang/footprint.1bpp");

const u32 gMonStillFrontPic_Metagross[] = INCBIN_U32("graphics/pokemon/metagross/front.4bpp.lz");
const u32 gMonPalette_Metagross[] = INCBIN_U32("graphics/pokemon/metagross/normal.gbapal.lz");
const u32 gMonBackPic_Metagross[] = INCBIN_U32("graphics/pokemon/metagross/back.4bpp.lz");
const u32 gMonShinyPalette_Metagross[] = INCBIN_U32("graphics/pokemon/metagross/shiny.gbapal.lz");
const u8 gMonIcon_Metagross[] = INCBIN_U8("graphics/pokemon/metagross/icon.4bpp");
const u8 gMonFootprint_Metagross[] = INCBIN_U8("graphics/pokemon/metagross/footprint.1bpp");

const u32 gMonStillFrontPic_Regirock[] = INCBIN_U32("graphics/pokemon/regirock/front.4bpp.lz");
const u32 gMonPalette_Regirock[] = INCBIN_U32("graphics/pokemon/regirock/normal.gbapal.lz");
const u32 gMonBackPic_Regirock[] = INCBIN_U32("graphics/pokemon/regirock/back.4bpp.lz");
const u32 gMonShinyPalette_Regirock[] = INCBIN_U32("graphics/pokemon/regirock/shiny.gbapal.lz");
const u8 gMonIcon_Regirock[] = INCBIN_U8("graphics/pokemon/regirock/icon.4bpp");
const u8 gMonFootprint_Regirock[] = INCBIN_U8("graphics/pokemon/regirock/footprint.1bpp");

const u32 gMonStillFrontPic_Regice[] = INCBIN_U32("graphics/pokemon/regice/front.4bpp.lz");
const u32 gMonPalette_Regice[] = INCBIN_U32("graphics/pokemon/regice/normal.gbapal.lz");
const u32 gMonBackPic_Regice[] = INCBIN_U32("graphics/pokemon/regice/back.4bpp.lz");
const u32 gMonShinyPalette_Regice[] = INCBIN_U32("graphics/pokemon/regice/shiny.gbapal.lz");
const u8 gMonIcon_Regice[] = INCBIN_U8("graphics/pokemon/regice/icon.4bpp");
const u8 gMonFootprint_Regice[] = INCBIN_U8("graphics/pokemon/regice/footprint.1bpp");

const u32 gMonStillFrontPic_Registeel[] = INCBIN_U32("graphics/pokemon/registeel/front.4bpp.lz");
const u32 gMonPalette_Registeel[] = INCBIN_U32("graphics/pokemon/registeel/normal.gbapal.lz");
const u32 gMonBackPic_Registeel[] = INCBIN_U32("graphics/pokemon/registeel/back.4bpp.lz");
const u32 gMonShinyPalette_Registeel[] = INCBIN_U32("graphics/pokemon/registeel/shiny.gbapal.lz");
const u8 gMonIcon_Registeel[] = INCBIN_U8("graphics/pokemon/registeel/icon.4bpp");
const u8 gMonFootprint_Registeel[] = INCBIN_U8("graphics/pokemon/registeel/footprint.1bpp");

const u32 gMonStillFrontPic_Kyogre[] = INCBIN_U32("graphics/pokemon/kyogre/front.4bpp.lz");
const u32 gMonPalette_Kyogre[] = INCBIN_U32("graphics/pokemon/kyogre/normal.gbapal.lz");
const u32 gMonBackPic_Kyogre[] = INCBIN_U32("graphics/pokemon/kyogre/back.4bpp.lz");
const u32 gMonShinyPalette_Kyogre[] = INCBIN_U32("graphics/pokemon/kyogre/shiny.gbapal.lz");
const u8 gMonIcon_Kyogre[] = INCBIN_U8("graphics/pokemon/kyogre/icon.4bpp");
const u8 gMonFootprint_Kyogre[] = INCBIN_U8("graphics/pokemon/kyogre/footprint.1bpp");

const u32 gMonStillFrontPic_Groudon[] = INCBIN_U32("graphics/pokemon/groudon/front.4bpp.lz");
const u32 gMonPalette_Groudon[] = INCBIN_U32("graphics/pokemon/groudon/normal.gbapal.lz");
const u32 gMonBackPic_Groudon[] = INCBIN_U32("graphics/pokemon/groudon/back.4bpp.lz");
const u32 gMonShinyPalette_Groudon[] = INCBIN_U32("graphics/pokemon/groudon/shiny.gbapal.lz");
const u8 gMonIcon_Groudon[] = INCBIN_U8("graphics/pokemon/groudon/icon.4bpp");
const u8 gMonFootprint_Groudon[] = INCBIN_U8("graphics/pokemon/groudon/footprint.1bpp");

const u32 gMonStillFrontPic_Rayquaza[] = INCBIN_U32("graphics/pokemon/rayquaza/front.4bpp.lz");
const u32 gMonPalette_Rayquaza[] = INCBIN_U32("graphics/pokemon/rayquaza/normal.gbapal.lz");
const u32 gMonBackPic_Rayquaza[] = INCBIN_U32("graphics/pokemon/rayquaza/back.4bpp.lz");
const u32 gMonShinyPalette_Rayquaza[] = INCBIN_U32("graphics/pokemon/rayquaza/shiny.gbapal.lz");
const u8 gMonIcon_Rayquaza[] = INCBIN_U8("graphics/pokemon/rayquaza/icon.4bpp");
const u8 gMonFootprint_Rayquaza[] = INCBIN_U8("graphics/pokemon/rayquaza/footprint.1bpp");

const u32 gMonStillFrontPic_Latias[] = INCBIN_U32("graphics/pokemon/latias/front.4bpp.lz");
const u32 gMonPalette_Latias[] = INCBIN_U32("graphics/pokemon/latias/normal.gbapal.lz");
const u32 gMonBackPic_Latias[] = INCBIN_U32("graphics/pokemon/latias/back.4bpp.lz");
const u32 gMonShinyPalette_Latias[] = INCBIN_U32("graphics/pokemon/latias/shiny.gbapal.lz");
const u8 gMonIcon_Latias[] = INCBIN_U8("graphics/pokemon/latias/icon.4bpp");
const u8 gMonFootprint_Latias[] = INCBIN_U8("graphics/pokemon/latias/footprint.1bpp");

const u32 gMonStillFrontPic_Latios[] = INCBIN_U32("graphics/pokemon/latios/front.4bpp.lz");
const u32 gMonPalette_Latios[] = INCBIN_U32("graphics/pokemon/latios/normal.gbapal.lz");
const u32 gMonBackPic_Latios[] = INCBIN_U32("graphics/pokemon/latios/back.4bpp.lz");
const u32 gMonShinyPalette_Latios[] = INCBIN_U32("graphics/pokemon/latios/shiny.gbapal.lz");
const u8 gMonIcon_Latios[] = INCBIN_U8("graphics/pokemon/latios/icon.4bpp");
const u8 gMonFootprint_Latios[] = INCBIN_U8("graphics/pokemon/latios/footprint.1bpp");

const u32 gMonStillFrontPic_Jirachi[] = INCBIN_U32("graphics/pokemon/jirachi/front.4bpp.lz");
const u32 gMonPalette_Jirachi[] = INCBIN_U32("graphics/pokemon/jirachi/normal.gbapal.lz");
const u32 gMonBackPic_Jirachi[] = INCBIN_U32("graphics/pokemon/jirachi/back.4bpp.lz");
const u32 gMonShinyPalette_Jirachi[] = INCBIN_U32("graphics/pokemon/jirachi/shiny.gbapal.lz");
const u8 gMonIcon_Jirachi[] = INCBIN_U8("graphics/pokemon/jirachi/icon.4bpp");
const u8 gMonFootprint_Jirachi[] = INCBIN_U8("graphics/pokemon/jirachi/footprint.1bpp");

const u32 gMonStillFrontPic_Deoxys[] = INCBIN_U32("graphics/pokemon/deoxys/front.4bpp.lz");
const u32 gMonPalette_Deoxys[] = INCBIN_U32("graphics/pokemon/deoxys/normal.gbapal.lz");
const u32 gMonBackPic_Deoxys[] = INCBIN_U32("graphics/pokemon/deoxys/back.4bpp.lz");
const u32 gMonShinyPalette_Deoxys[] = INCBIN_U32("graphics/pokemon/deoxys/shiny.gbapal.lz");
const u8 gMonIcon_Deoxys[] = INCBIN_U8("graphics/pokemon/deoxys/icon.4bpp");
const u8 gMonIcon_DeoxysSpeed[] = INCBIN_U8("graphics/pokemon/deoxys/icon_speed.4bpp");
const u8 gMonIcon_DeoxysSpeedWide[] = INCBIN_U8("graphics/unused/deoxys_speed_icon_wide.4bpp");

asm(".space 0x6800");

const u16 gUnknown_D437F8[] = INCBIN_U16("graphics/unknown/unknown_D437F8.bin");

const u8 gMonFootprint_Deoxys[] = INCBIN_U8("graphics/pokemon/deoxys/footprint.1bpp");

const u32 gMonStillFrontPic_Chimecho[] = INCBIN_U32("graphics/pokemon/chimecho/front.4bpp.lz");
const u32 gMonPalette_Chimecho[] = INCBIN_U32("graphics/pokemon/chimecho/normal.gbapal.lz");
const u32 gMonBackPic_Chimecho[] = INCBIN_U32("graphics/pokemon/chimecho/back.4bpp.lz");
const u32 gMonShinyPalette_Chimecho[] = INCBIN_U32("graphics/pokemon/chimecho/shiny.gbapal.lz");
const u8 gMonIcon_Chimecho[] = INCBIN_U8("graphics/pokemon/chimecho/icon.4bpp");
const u8 gMonFootprint_Chimecho[] = INCBIN_U8("graphics/pokemon/chimecho/footprint.1bpp");

const u32 gMonStillFrontPic_Egg[] = INCBIN_U32("graphics/pokemon/egg/front.4bpp.lz");
const u32 gMonPalette_Egg[] = INCBIN_U32("graphics/pokemon/egg/normal.gbapal.lz");

const u32 gMonStillFrontPic_UnownB[] = INCBIN_U32("graphics/pokemon/unown/b/front.4bpp.lz");
const u32 gMonBackPic_UnownB[] = INCBIN_U32("graphics/pokemon/unown/b/back.4bpp.lz");
const u8 gMonIcon_UnownB[] = INCBIN_U8("graphics/pokemon/unown/b/icon.4bpp");

const u32 gMonStillFrontPic_UnownC[] = INCBIN_U32("graphics/pokemon/unown/c/front.4bpp.lz");
const u32 gMonBackPic_UnownC[] = INCBIN_U32("graphics/pokemon/unown/c/back.4bpp.lz");
const u8 gMonIcon_UnownC[] = INCBIN_U8("graphics/pokemon/unown/c/icon.4bpp");

const u32 gMonStillFrontPic_UnownD[] = INCBIN_U32("graphics/pokemon/unown/d/front.4bpp.lz");
const u32 gMonBackPic_UnownD[] = INCBIN_U32("graphics/pokemon/unown/d/back.4bpp.lz");
const u8 gMonIcon_UnownD[] = INCBIN_U8("graphics/pokemon/unown/d/icon.4bpp");

const u32 gMonStillFrontPic_UnownE[] = INCBIN_U32("graphics/pokemon/unown/e/front.4bpp.lz");
const u32 gMonBackPic_UnownE[] = INCBIN_U32("graphics/pokemon/unown/e/back.4bpp.lz");
const u8 gMonIcon_UnownE[] = INCBIN_U8("graphics/pokemon/unown/e/icon.4bpp");

const u32 gMonStillFrontPic_UnownF[] = INCBIN_U32("graphics/pokemon/unown/f/front.4bpp.lz");
const u32 gMonBackPic_UnownF[] = INCBIN_U32("graphics/pokemon/unown/f/back.4bpp.lz");
const u8 gMonIcon_UnownF[] = INCBIN_U8("graphics/pokemon/unown/f/icon.4bpp");

const u32 gMonStillFrontPic_UnownG[] = INCBIN_U32("graphics/pokemon/unown/g/front.4bpp.lz");
const u32 gMonBackPic_UnownG[] = INCBIN_U32("graphics/pokemon/unown/g/back.4bpp.lz");
const u8 gMonIcon_UnownG[] = INCBIN_U8("graphics/pokemon/unown/g/icon.4bpp");

const u32 gMonStillFrontPic_UnownH[] = INCBIN_U32("graphics/pokemon/unown/h/front.4bpp.lz");
const u32 gMonBackPic_UnownH[] = INCBIN_U32("graphics/pokemon/unown/h/back.4bpp.lz");
const u8 gMonIcon_UnownH[] = INCBIN_U8("graphics/pokemon/unown/h/icon.4bpp");

const u32 gMonStillFrontPic_UnownI[] = INCBIN_U32("graphics/pokemon/unown/i/front.4bpp.lz");
const u32 gMonBackPic_UnownI[] = INCBIN_U32("graphics/pokemon/unown/i/back.4bpp.lz");
const u8 gMonIcon_UnownI[] = INCBIN_U8("graphics/pokemon/unown/i/icon.4bpp");

const u32 gMonStillFrontPic_UnownJ[] = INCBIN_U32("graphics/pokemon/unown/j/front.4bpp.lz");
const u32 gMonBackPic_UnownJ[] = INCBIN_U32("graphics/pokemon/unown/j/back.4bpp.lz");
const u8 gMonIcon_UnownJ[] = INCBIN_U8("graphics/pokemon/unown/j/icon.4bpp");

const u32 gMonStillFrontPic_UnownK[] = INCBIN_U32("graphics/pokemon/unown/k/front.4bpp.lz");
const u32 gMonBackPic_UnownK[] = INCBIN_U32("graphics/pokemon/unown/k/back.4bpp.lz");
const u8 gMonIcon_UnownK[] = INCBIN_U8("graphics/pokemon/unown/k/icon.4bpp");

const u32 gMonStillFrontPic_UnownL[] = INCBIN_U32("graphics/pokemon/unown/l/front.4bpp.lz");
const u32 gMonBackPic_UnownL[] = INCBIN_U32("graphics/pokemon/unown/l/back.4bpp.lz");
const u8 gMonIcon_UnownL[] = INCBIN_U8("graphics/pokemon/unown/l/icon.4bpp");

const u32 gMonStillFrontPic_UnownM[] = INCBIN_U32("graphics/pokemon/unown/m/front.4bpp.lz");
const u32 gMonBackPic_UnownM[] = INCBIN_U32("graphics/pokemon/unown/m/back.4bpp.lz");
const u8 gMonIcon_UnownM[] = INCBIN_U8("graphics/pokemon/unown/m/icon.4bpp");

const u32 gMonStillFrontPic_UnownN[] = INCBIN_U32("graphics/pokemon/unown/n/front.4bpp.lz");
const u32 gMonBackPic_UnownN[] = INCBIN_U32("graphics/pokemon/unown/n/back.4bpp.lz");
const u8 gMonIcon_UnownN[] = INCBIN_U8("graphics/pokemon/unown/n/icon.4bpp");

const u32 gMonStillFrontPic_UnownO[] = INCBIN_U32("graphics/pokemon/unown/o/front.4bpp.lz");
const u32 gMonBackPic_UnownO[] = INCBIN_U32("graphics/pokemon/unown/o/back.4bpp.lz");
const u8 gMonIcon_UnownO[] = INCBIN_U8("graphics/pokemon/unown/o/icon.4bpp");

const u32 gMonStillFrontPic_UnownP[] = INCBIN_U32("graphics/pokemon/unown/p/front.4bpp.lz");
const u32 gMonBackPic_UnownP[] = INCBIN_U32("graphics/pokemon/unown/p/back.4bpp.lz");
const u8 gMonIcon_UnownP[] = INCBIN_U8("graphics/pokemon/unown/p/icon.4bpp");

const u32 gMonStillFrontPic_UnownQ[] = INCBIN_U32("graphics/pokemon/unown/q/front.4bpp.lz");
const u32 gMonBackPic_UnownQ[] = INCBIN_U32("graphics/pokemon/unown/q/back.4bpp.lz");
const u8 gMonIcon_UnownQ[] = INCBIN_U8("graphics/pokemon/unown/q/icon.4bpp");

const u32 gMonStillFrontPic_UnownR[] = INCBIN_U32("graphics/pokemon/unown/r/front.4bpp.lz");
const u32 gMonBackPic_UnownR[] = INCBIN_U32("graphics/pokemon/unown/r/back.4bpp.lz");
const u8 gMonIcon_UnownR[] = INCBIN_U8("graphics/pokemon/unown/r/icon.4bpp");

const u32 gMonStillFrontPic_UnownS[] = INCBIN_U32("graphics/pokemon/unown/s/front.4bpp.lz");
const u32 gMonBackPic_UnownS[] = INCBIN_U32("graphics/pokemon/unown/s/back.4bpp.lz");
const u8 gMonIcon_UnownS[] = INCBIN_U8("graphics/pokemon/unown/s/icon.4bpp");

const u32 gMonStillFrontPic_UnownT[] = INCBIN_U32("graphics/pokemon/unown/t/front.4bpp.lz");
const u32 gMonBackPic_UnownT[] = INCBIN_U32("graphics/pokemon/unown/t/back.4bpp.lz");
const u8 gMonIcon_UnownT[] = INCBIN_U8("graphics/pokemon/unown/t/icon.4bpp");

const u32 gMonStillFrontPic_UnownU[] = INCBIN_U32("graphics/pokemon/unown/u/front.4bpp.lz");
const u32 gMonBackPic_UnownU[] = INCBIN_U32("graphics/pokemon/unown/u/back.4bpp.lz");
const u8 gMonIcon_UnownU[] = INCBIN_U8("graphics/pokemon/unown/u/icon.4bpp");

const u32 gMonStillFrontPic_UnownV[] = INCBIN_U32("graphics/pokemon/unown/v/front.4bpp.lz");
const u32 gMonBackPic_UnownV[] = INCBIN_U32("graphics/pokemon/unown/v/back.4bpp.lz");
const u8 gMonIcon_UnownV[] = INCBIN_U8("graphics/pokemon/unown/v/icon.4bpp");

const u32 gMonStillFrontPic_UnownW[] = INCBIN_U32("graphics/pokemon/unown/w/front.4bpp.lz");
const u32 gMonBackPic_UnownW[] = INCBIN_U32("graphics/pokemon/unown/w/back.4bpp.lz");
const u8 gMonIcon_UnownW[] = INCBIN_U8("graphics/pokemon/unown/w/icon.4bpp");

const u32 gMonStillFrontPic_UnownX[] = INCBIN_U32("graphics/pokemon/unown/x/front.4bpp.lz");
const u32 gMonBackPic_UnownX[] = INCBIN_U32("graphics/pokemon/unown/x/back.4bpp.lz");
const u8 gMonIcon_UnownX[] = INCBIN_U8("graphics/pokemon/unown/x/icon.4bpp");

const u32 gMonStillFrontPic_UnownY[] = INCBIN_U32("graphics/pokemon/unown/y/front.4bpp.lz");
const u32 gMonBackPic_UnownY[] = INCBIN_U32("graphics/pokemon/unown/y/back.4bpp.lz");
const u8 gMonIcon_UnownY[] = INCBIN_U8("graphics/pokemon/unown/y/icon.4bpp");

const u32 gMonStillFrontPic_UnownZ[] = INCBIN_U32("graphics/pokemon/unown/z/front.4bpp.lz");
const u32 gMonBackPic_UnownZ[] = INCBIN_U32("graphics/pokemon/unown/z/back.4bpp.lz");
const u8 gMonIcon_UnownZ[] = INCBIN_U8("graphics/pokemon/unown/z/icon.4bpp");

const u32 gMonStillFrontPic_UnownExclamationMark[] = INCBIN_U32("graphics/pokemon/unown/exclamation_mark/front.4bpp.lz");
const u32 gMonBackPic_UnownExclamationMark[] = INCBIN_U32("graphics/pokemon/unown/exclamation_mark/back.4bpp.lz");
const u8 gMonIcon_UnownExclamationMark[] = INCBIN_U8("graphics/pokemon/unown/exclamation_mark/icon.4bpp");

const u32 gMonStillFrontPic_UnownQuestionMark[] = INCBIN_U32("graphics/pokemon/unown/question_mark/front.4bpp.lz");
const u32 gMonBackPic_UnownQuestionMark[] = INCBIN_U32("graphics/pokemon/unown/question_mark/back.4bpp.lz");
const u8 gMonIcon_UnownQuestionMark[] = INCBIN_U8("graphics/pokemon/unown/question_mark/icon.4bpp");
# 954 "src/graphics.c" 2
# 1 "src/data/graphics/trainers.h" 1
const u32 gTrainerFrontPic_Hiker[] = INCBIN_U32("graphics/trainers/front_pics/hiker_front_pic.4bpp.lz");
const u32 gTrainerPalette_Hiker[] = INCBIN_U32("graphics/trainers/palettes/hiker.gbapal.lz");

const u32 gTrainerFrontPic_AquaGruntM[] = INCBIN_U32("graphics/trainers/front_pics/aqua_grunt_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_AquaGruntM[] = INCBIN_U32("graphics/trainers/palettes/aqua_grunt_m.gbapal.lz");

const u32 gTrainerFrontPic_PokemonBreederF[] = INCBIN_U32("graphics/trainers/front_pics/pokemon_breeder_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokemonBreederF[] = INCBIN_U32("graphics/trainers/palettes/pokemon_breeder_f.gbapal.lz");

const u32 gTrainerFrontPic_CoolTrainerM[] = INCBIN_U32("graphics/trainers/front_pics/cool_trainer_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_CoolTrainerM[] = INCBIN_U32("graphics/trainers/palettes/cool_trainer_m.gbapal.lz");

const u32 gTrainerFrontPic_BirdKeeper[] = INCBIN_U32("graphics/trainers/front_pics/bird_keeper_front_pic.4bpp.lz");
const u32 gTrainerPalette_BirdKeeper[] = INCBIN_U32("graphics/trainers/palettes/bird_keeper.gbapal.lz");

const u32 gTrainerFrontPic_Collector[] = INCBIN_U32("graphics/trainers/front_pics/collector_front_pic.4bpp.lz");
const u32 gTrainerPalette_Collector[] = INCBIN_U32("graphics/trainers/palettes/collector.gbapal.lz");

const u32 gTrainerFrontPic_AquaGruntF[] = INCBIN_U32("graphics/trainers/front_pics/aqua_grunt_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_AquaGruntF[] = INCBIN_U32("graphics/trainers/palettes/aqua_grunt_f.gbapal.lz");

const u32 gTrainerFrontPic_SwimmerM[] = INCBIN_U32("graphics/trainers/front_pics/swimmer_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_SwimmerM[] = INCBIN_U32("graphics/trainers/palettes/swimmer_m.gbapal.lz");

const u32 gTrainerFrontPic_MagmaGruntM[] = INCBIN_U32("graphics/trainers/front_pics/magma_grunt_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_MagmaGruntM[] = INCBIN_U32("graphics/trainers/palettes/magma_grunt_m.gbapal.lz");

const u32 gTrainerFrontPic_ExpertM[] = INCBIN_U32("graphics/trainers/front_pics/expert_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_ExpertM[] = INCBIN_U32("graphics/trainers/palettes/expert_m.gbapal.lz");

const u32 gTrainerFrontPic_AquaAdminM[] = INCBIN_U32("graphics/trainers/front_pics/aqua_admin_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_AquaAdminM[] = INCBIN_U32("graphics/trainers/palettes/aqua_admin_m.gbapal.lz");

const u32 gTrainerFrontPic_BlackBelt[] = INCBIN_U32("graphics/trainers/front_pics/black_belt_front_pic.4bpp.lz");
const u32 gTrainerPalette_BlackBelt[] = INCBIN_U32("graphics/trainers/palettes/black_belt.gbapal.lz");

const u32 gTrainerFrontPic_AquaAdminF[] = INCBIN_U32("graphics/trainers/front_pics/aqua_admin_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_AquaAdminF[] = INCBIN_U32("graphics/trainers/palettes/aqua_admin_f.gbapal.lz");

const u32 gTrainerFrontPic_AquaLeaderArchie[] = INCBIN_U32("graphics/trainers/front_pics/aqua_leader_archie_front_pic.4bpp.lz");
const u32 gTrainerPalette_AquaLeaderArchie[] = INCBIN_U32("graphics/trainers/palettes/aqua_leader_archie.gbapal.lz");

const u32 gTrainerFrontPic_HexManiac[] = INCBIN_U32("graphics/trainers/front_pics/hex_maniac_front_pic.4bpp.lz");
const u32 gTrainerPalette_HexManiac[] = INCBIN_U32("graphics/trainers/palettes/hex_maniac.gbapal.lz");

const u32 gTrainerFrontPic_AromaLady[] = INCBIN_U32("graphics/trainers/front_pics/aroma_lady_front_pic.4bpp.lz");
const u32 gTrainerPalette_AromaLady[] = INCBIN_U32("graphics/trainers/palettes/aroma_lady.gbapal.lz");

const u32 gTrainerFrontPic_RuinManiac[] = INCBIN_U32("graphics/trainers/front_pics/ruin_maniac_front_pic.4bpp.lz");
const u32 gTrainerPalette_RuinManiac[] = INCBIN_U32("graphics/trainers/palettes/ruin_maniac.gbapal.lz");

const u32 gTrainerFrontPic_Interviewer[] = INCBIN_U32("graphics/trainers/front_pics/interviewer_front_pic.4bpp.lz");
const u32 gTrainerPalette_Interviewer[] = INCBIN_U32("graphics/trainers/palettes/interviewer.gbapal.lz");

const u32 gTrainerFrontPic_TuberF[] = INCBIN_U32("graphics/trainers/front_pics/tuber_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_TuberF[] = INCBIN_U32("graphics/trainers/palettes/tuber_f.gbapal.lz");

const u32 gTrainerFrontPic_TuberM[] = INCBIN_U32("graphics/trainers/front_pics/tuber_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_TuberM[] = INCBIN_U32("graphics/trainers/palettes/tuber_m.gbapal.lz");

const u32 gTrainerFrontPic_CoolTrainerF[] = INCBIN_U32("graphics/trainers/front_pics/cool_trainer_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_CoolTrainerF[] = INCBIN_U32("graphics/trainers/palettes/cool_trainer_f.gbapal.lz");

const u32 gTrainerFrontPic_Lady[] = INCBIN_U32("graphics/trainers/front_pics/lady_front_pic.4bpp.lz");
const u32 gTrainerPalette_Lady[] = INCBIN_U32("graphics/trainers/palettes/lady.gbapal.lz");

const u32 gTrainerFrontPic_Beauty[] = INCBIN_U32("graphics/trainers/front_pics/beauty_front_pic.4bpp.lz");
const u32 gTrainerPalette_Beauty[] = INCBIN_U32("graphics/trainers/palettes/beauty.gbapal.lz");

const u32 gTrainerFrontPic_RichBoy[] = INCBIN_U32("graphics/trainers/front_pics/rich_boy_front_pic.4bpp.lz");
const u32 gTrainerPalette_RichBoy[] = INCBIN_U32("graphics/trainers/palettes/rich_boy.gbapal.lz");

const u32 gTrainerFrontPic_ExpertF[] = INCBIN_U32("graphics/trainers/front_pics/expert_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_ExpertF[] = INCBIN_U32("graphics/trainers/palettes/expert_f.gbapal.lz");

const u32 gTrainerFrontPic_Pokemaniac[] = INCBIN_U32("graphics/trainers/front_pics/pokemaniac_front_pic.4bpp.lz");
const u32 gTrainerPalette_Pokemaniac[] = INCBIN_U32("graphics/trainers/palettes/pokemaniac.gbapal.lz");

const u32 gTrainerFrontPic_MagmaGruntF[] = INCBIN_U32("graphics/trainers/front_pics/magma_grunt_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_MagmaGruntF[] = INCBIN_U32("graphics/trainers/palettes/magma_grunt_f.gbapal.lz");

const u32 gTrainerFrontPic_Guitarist[] = INCBIN_U32("graphics/trainers/front_pics/guitarist_front_pic.4bpp.lz");
const u32 gTrainerPalette_Guitarist[] = INCBIN_U32("graphics/trainers/palettes/guitarist.gbapal.lz");

const u32 gTrainerFrontPic_Kindler[] = INCBIN_U32("graphics/trainers/front_pics/kindler_front_pic.4bpp.lz");
const u32 gTrainerPalette_Kindler[] = INCBIN_U32("graphics/trainers/palettes/kindler.gbapal.lz");

const u32 gTrainerFrontPic_Camper[] = INCBIN_U32("graphics/trainers/front_pics/camper_front_pic.4bpp.lz");
const u32 gTrainerPalette_Camper[] = INCBIN_U32("graphics/trainers/palettes/camper.gbapal.lz");

const u32 gTrainerFrontPic_Picnicker[] = INCBIN_U32("graphics/trainers/front_pics/picnicker_front_pic.4bpp.lz");
const u32 gTrainerPalette_Picnicker[] = INCBIN_U32("graphics/trainers/palettes/picnicker.gbapal.lz");

const u32 gTrainerFrontPic_BugManiac[] = INCBIN_U32("graphics/trainers/front_pics/bug_maniac_front_pic.4bpp.lz");
const u32 gTrainerPalette_BugManiac[] = INCBIN_U32("graphics/trainers/palettes/bug_maniac.gbapal.lz");

const u32 gTrainerFrontPic_PokemonBreederM[] = INCBIN_U32("graphics/trainers/front_pics/pokemon_breeder_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokemonBreederM[] = INCBIN_U32("graphics/trainers/palettes/pokemon_breeder_m.gbapal.lz");

const u32 gTrainerFrontPic_PsychicM[] = INCBIN_U32("graphics/trainers/front_pics/psychic_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_PsychicM[] = INCBIN_U32("graphics/trainers/palettes/psychic_m.gbapal.lz");

const u32 gTrainerFrontPic_PsychicF[] = INCBIN_U32("graphics/trainers/front_pics/psychic_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_PsychicF[] = INCBIN_U32("graphics/trainers/palettes/psychic_f.gbapal.lz");

const u32 gTrainerFrontPic_Gentleman[] = INCBIN_U32("graphics/trainers/front_pics/gentleman_front_pic.4bpp.lz");
const u32 gTrainerPalette_Gentleman[] = INCBIN_U32("graphics/trainers/palettes/gentleman.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourSidney[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_sidney_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourSidney[] = INCBIN_U32("graphics/trainers/palettes/elite_four_sidney.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourPhoebe[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_phoebe_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourPhoebe[] = INCBIN_U32("graphics/trainers/palettes/elite_four_phoebe.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourGlacia[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_glacia_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourGlacia[] = INCBIN_U32("graphics/trainers/palettes/elite_four_glacia.gbapal.lz");

const u32 gTrainerFrontPic_EliteFourDrake[] = INCBIN_U32("graphics/trainers/front_pics/elite_four_drake_front_pic.4bpp.lz");
const u32 gTrainerPalette_EliteFourDrake[] = INCBIN_U32("graphics/trainers/palettes/elite_four_drake.gbapal.lz");

const u32 gTrainerFrontPic_LeaderRoxanne[] = INCBIN_U32("graphics/trainers/front_pics/leader_roxanne_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderRoxanne[] = INCBIN_U32("graphics/trainers/palettes/leader_roxanne.gbapal.lz");

const u32 gTrainerFrontPic_LeaderBrawly[] = INCBIN_U32("graphics/trainers/front_pics/leader_brawly_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderBrawly[] = INCBIN_U32("graphics/trainers/palettes/leader_brawly.gbapal.lz");

const u32 gTrainerFrontPic_LeaderWattson[] = INCBIN_U32("graphics/trainers/front_pics/leader_wattson_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderWattson[] = INCBIN_U32("graphics/trainers/palettes/leader_wattson.gbapal.lz");

const u32 gTrainerFrontPic_LeaderFlannery[] = INCBIN_U32("graphics/trainers/front_pics/leader_flannery_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderFlannery[] = INCBIN_U32("graphics/trainers/palettes/leader_flannery.gbapal.lz");

const u32 gTrainerFrontPic_LeaderNorman[] = INCBIN_U32("graphics/trainers/front_pics/leader_norman_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderNorman[] = INCBIN_U32("graphics/trainers/palettes/leader_norman.gbapal.lz");

const u32 gTrainerFrontPic_LeaderWinona[] = INCBIN_U32("graphics/trainers/front_pics/leader_winona_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderWinona[] = INCBIN_U32("graphics/trainers/palettes/leader_winona.gbapal.lz");

const u32 gTrainerFrontPic_LeaderTateAndLiza[] = INCBIN_U32("graphics/trainers/front_pics/leader_tate_and_liza_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderTateAndLiza[] = INCBIN_U32("graphics/trainers/palettes/leader_tate_and_liza.gbapal.lz");

const u32 gTrainerFrontPic_LeaderJuan[] = INCBIN_U32("graphics/trainers/front_pics/leader_juan_front_pic.4bpp.lz");
const u32 gTrainerPalette_LeaderJuan[] = INCBIN_U32("graphics/trainers/palettes/leader_juan.gbapal.lz");

const u32 gTrainerFrontPic_SchoolKidM[] = INCBIN_U32("graphics/trainers/front_pics/school_kid_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_SchoolKidM[] = INCBIN_U32("graphics/trainers/palettes/school_kid_m.gbapal.lz");

const u32 gTrainerFrontPic_SchoolKidF[] = INCBIN_U32("graphics/trainers/front_pics/school_kid_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_SchoolKidF[] = INCBIN_U32("graphics/trainers/palettes/school_kid_f.gbapal.lz");

const u32 gTrainerFrontPic_SrAndJr[] = INCBIN_U32("graphics/trainers/front_pics/sr_and_jr_front_pic.4bpp.lz");
const u32 gTrainerPalette_SrAndJr[] = INCBIN_U32("graphics/trainers/palettes/sr_and_jr.gbapal.lz");

const u32 gTrainerFrontPic_PokefanM[] = INCBIN_U32("graphics/trainers/front_pics/pokefan_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokefanM[] = INCBIN_U32("graphics/trainers/palettes/pokefan_m.gbapal.lz");

const u32 gTrainerFrontPic_PokefanF[] = INCBIN_U32("graphics/trainers/front_pics/pokefan_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokefanF[] = INCBIN_U32("graphics/trainers/palettes/pokefan_f.gbapal.lz");

const u32 gTrainerFrontPic_Youngster[] = INCBIN_U32("graphics/trainers/front_pics/youngster_front_pic.4bpp.lz");
const u32 gTrainerPalette_Youngster[] = INCBIN_U32("graphics/trainers/palettes/youngster.gbapal.lz");

const u32 gTrainerFrontPic_ChampionWallace[] = INCBIN_U32("graphics/trainers/front_pics/champion_wallace_front_pic.4bpp.lz");
const u32 gTrainerPalette_ChampionWallace[] = INCBIN_U32("graphics/trainers/palettes/champion_wallace.gbapal.lz");

const u32 gTrainerFrontPic_Fisherman[] = INCBIN_U32("graphics/trainers/front_pics/fisherman_front_pic.4bpp.lz");
const u32 gTrainerPalette_Fisherman[] = INCBIN_U32("graphics/trainers/palettes/fisherman.gbapal.lz");

const u32 gTrainerFrontPic_CyclingTriathleteM[] = INCBIN_U32("graphics/trainers/front_pics/cycling_triathlete_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_CyclingTriathleteM[] = INCBIN_U32("graphics/trainers/palettes/cycling_triathlete_m.gbapal.lz");

const u32 gTrainerFrontPic_CyclingTriathleteF[] = INCBIN_U32("graphics/trainers/front_pics/cycling_triathlete_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_CyclingTriathleteF[] = INCBIN_U32("graphics/trainers/palettes/cycling_triathlete_f.gbapal.lz");

const u32 gTrainerFrontPic_RunningTriathleteM[] = INCBIN_U32("graphics/trainers/front_pics/running_triathlete_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_RunningTriathleteM[] = INCBIN_U32("graphics/trainers/palettes/running_triathlete_m.gbapal.lz");

const u32 gTrainerFrontPic_RunningTriathleteF[] = INCBIN_U32("graphics/trainers/front_pics/running_triathlete_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_RunningTriathleteF[] = INCBIN_U32("graphics/trainers/palettes/running_triathlete_f.gbapal.lz");

const u32 gTrainerFrontPic_SwimmingTriathleteM[] = INCBIN_U32("graphics/trainers/front_pics/swimming_triathlete_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_SwimmingTriathleteM[] = INCBIN_U32("graphics/trainers/palettes/swimming_triathlete_m.gbapal.lz");

const u32 gTrainerFrontPic_SwimmingTriathleteF[] = INCBIN_U32("graphics/trainers/front_pics/swimming_triathlete_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_SwimmingTriathleteF[] = INCBIN_U32("graphics/trainers/palettes/swimming_triathlete_f.gbapal.lz");

const u32 gTrainerFrontPic_DragonTamer[] = INCBIN_U32("graphics/trainers/front_pics/dragon_tamer_front_pic.4bpp.lz");
const u32 gTrainerPalette_DragonTamer[] = INCBIN_U32("graphics/trainers/palettes/dragon_tamer.gbapal.lz");

const u32 gTrainerFrontPic_NinjaBoy[] = INCBIN_U32("graphics/trainers/front_pics/ninja_boy_front_pic.4bpp.lz");
const u32 gTrainerPalette_NinjaBoy[] = INCBIN_U32("graphics/trainers/palettes/ninja_boy.gbapal.lz");

const u32 gTrainerFrontPic_BattleGirl[] = INCBIN_U32("graphics/trainers/front_pics/battle_girl_front_pic.4bpp.lz");
const u32 gTrainerPalette_BattleGirl[] = INCBIN_U32("graphics/trainers/palettes/battle_girl.gbapal.lz");

const u32 gTrainerFrontPic_ParasolLady[] = INCBIN_U32("graphics/trainers/front_pics/parasol_lady_front_pic.4bpp.lz");
const u32 gTrainerPalette_ParasolLady[] = INCBIN_U32("graphics/trainers/palettes/parasol_lady.gbapal.lz");

const u32 gTrainerFrontPic_SwimmerF[] = INCBIN_U32("graphics/trainers/front_pics/swimmer_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_SwimmerF[] = INCBIN_U32("graphics/trainers/palettes/swimmer_f.gbapal.lz");

const u32 gTrainerFrontPic_Twins[] = INCBIN_U32("graphics/trainers/front_pics/twins_front_pic.4bpp.lz");
const u32 gTrainerPalette_Twins[] = INCBIN_U32("graphics/trainers/palettes/twins.gbapal.lz");

const u32 gTrainerFrontPic_Sailor[] = INCBIN_U32("graphics/trainers/front_pics/sailor_front_pic.4bpp.lz");
const u32 gTrainerPalette_Sailor[] = INCBIN_U32("graphics/trainers/palettes/sailor.gbapal.lz");

const u32 gTrainerFrontPic_MagmaAdmin[] = INCBIN_U32("graphics/trainers/front_pics/magma_admin_front_pic.4bpp.lz");
const u32 gTrainerPalette_MagmaAdmin[] = INCBIN_U32("graphics/trainers/palettes/magma_admin.gbapal.lz");

const u32 gTrainerFrontPic_Wally[] = INCBIN_U32("graphics/trainers/front_pics/wally_front_pic.4bpp.lz");
const u32 gTrainerPalette_Wally[] = INCBIN_U32("graphics/trainers/palettes/wally.gbapal.lz");

const u32 gTrainerFrontPic_Brendan[] = INCBIN_U32("graphics/trainers/front_pics/brendan_front_pic.4bpp.lz");
const u32 gTrainerPalette_Brendan[] = INCBIN_U32("graphics/trainers/palettes/brendan.gbapal.lz");

const u32 gTrainerFrontPic_May[] = INCBIN_U32("graphics/trainers/front_pics/may_front_pic.4bpp.lz");
const u32 gTrainerPalette_May[] = INCBIN_U32("graphics/trainers/palettes/may.gbapal.lz");

const u32 gTrainerFrontPic_BugCatcher[] = INCBIN_U32("graphics/trainers/front_pics/bug_catcher_front_pic.4bpp.lz");
const u32 gTrainerPalette_BugCatcher[] = INCBIN_U32("graphics/trainers/palettes/bug_catcher.gbapal.lz");

const u32 gTrainerFrontPic_PokemonRangerM[] = INCBIN_U32("graphics/trainers/front_pics/pokemon_ranger_m_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokemonRangerM[] = INCBIN_U32("graphics/trainers/palettes/pokemon_ranger_m.gbapal.lz");

const u32 gTrainerFrontPic_PokemonRangerF[] = INCBIN_U32("graphics/trainers/front_pics/pokemon_ranger_f_front_pic.4bpp.lz");
const u32 gTrainerPalette_PokemonRangerF[] = INCBIN_U32("graphics/trainers/palettes/pokemon_ranger_f.gbapal.lz");

const u32 gTrainerFrontPic_MagmaLeaderMaxie[] = INCBIN_U32("graphics/trainers/front_pics/magma_leader_maxie_front_pic.4bpp.lz");
const u32 gTrainerPalette_MagmaLeaderMaxie[] = INCBIN_U32("graphics/trainers/palettes/magma_leader_maxie.gbapal.lz");

const u32 gTrainerFrontPic_Lass[] = INCBIN_U32("graphics/trainers/front_pics/lass_front_pic.4bpp.lz");
const u32 gTrainerPalette_Lass[] = INCBIN_U32("graphics/trainers/palettes/lass.gbapal.lz");

const u32 gTrainerFrontPic_YoungCouple[] = INCBIN_U32("graphics/trainers/front_pics/young_couple_front_pic.4bpp.lz");
const u32 gTrainerPalette_YoungCouple[] = INCBIN_U32("graphics/trainers/palettes/young_couple.gbapal.lz");

const u32 gTrainerFrontPic_OldCouple[] = INCBIN_U32("graphics/trainers/front_pics/old_couple_front_pic.4bpp.lz");
const u32 gTrainerPalette_OldCouple[] = INCBIN_U32("graphics/trainers/palettes/old_couple.gbapal.lz");

const u32 gTrainerFrontPic_SisAndBro[] = INCBIN_U32("graphics/trainers/front_pics/sis_and_bro_front_pic.4bpp.lz");
const u32 gTrainerPalette_SisAndBro[] = INCBIN_U32("graphics/trainers/palettes/sis_and_bro.gbapal.lz");

const u32 gTrainerFrontPic_Steven[] = INCBIN_U32("graphics/trainers/front_pics/steven_front_pic.4bpp.lz");
const u32 gTrainerPalette_Steven[] = INCBIN_U32("graphics/trainers/palettes/steven.gbapal.lz");

const u32 gTrainerFrontPic_SalonMaidenAnabel[] = INCBIN_U32("graphics/trainers/front_pics/salon_maiden_anabel_front_pic.4bpp.lz");
const u32 gTrainerPalette_SalonMaidenAnabel[] = INCBIN_U32("graphics/trainers/palettes/salon_maiden_anabel.gbapal.lz");

const u32 gTrainerFrontPic_DomeAceTucker[] = INCBIN_U32("graphics/trainers/front_pics/dome_ace_tucker_front_pic.4bpp.lz");
const u32 gTrainerPalette_DomeAceTucker[] = INCBIN_U32("graphics/trainers/palettes/dome_ace_tucker.gbapal.lz");

const u32 gTrainerFrontPic_PalaceMavenSpenser[] = INCBIN_U32("graphics/trainers/front_pics/palace_maven_spenser_front_pic.4bpp.lz");
const u32 gTrainerPalette_PalaceMavenSpenser[] = INCBIN_U32("graphics/trainers/palettes/palace_maven_spenser.gbapal.lz");

const u32 gTrainerFrontPic_ArenaTycoonGreta[] = INCBIN_U32("graphics/trainers/front_pics/arena_tycoon_greta_front_pic.4bpp.lz");
const u32 gTrainerPalette_ArenaTycoonGreta[] = INCBIN_U32("graphics/trainers/palettes/arena_tycoon_greta.gbapal.lz");

const u32 gTrainerFrontPic_FactoryHeadNoland[] = INCBIN_U32("graphics/trainers/front_pics/factory_head_noland_front_pic.4bpp.lz");
const u32 gTrainerPalette_FactoryHeadNoland[] = INCBIN_U32("graphics/trainers/palettes/factory_head_noland.gbapal.lz");

const u32 gTrainerFrontPic_PikeQueenLucy[] = INCBIN_U32("graphics/trainers/front_pics/pike_queen_lucy_front_pic.4bpp.lz");
const u32 gTrainerPalette_PikeQueenLucy[] = INCBIN_U32("graphics/trainers/palettes/pike_queen_lucy.gbapal.lz");

const u32 gTrainerFrontPic_PyramidKingBrandon[] = INCBIN_U32("graphics/trainers/front_pics/pyramid_king_brandon_front_pic.4bpp.lz");
const u32 gTrainerPalette_PyramidKingBrandon[] = INCBIN_U32("graphics/trainers/palettes/pyramid_king_brandon.gbapal.lz");

const u32 gTrainerFrontPic_Red[] = INCBIN_U32("graphics/trainers/front_pics/red_front_pic.4bpp.lz");
const u32 gTrainerPalette_Red[] = INCBIN_U32("graphics/trainers/palettes/red.gbapal.lz");

const u32 gTrainerFrontPic_Leaf[] = INCBIN_U32("graphics/trainers/front_pics/leaf_front_pic.4bpp.lz");
const u32 gTrainerPalette_Leaf[] = INCBIN_U32("graphics/trainers/palettes/leaf.gbapal.lz");

const u32 gTrainerFrontPic_RubySapphireBrendan[] = INCBIN_U32("graphics/trainers/front_pics/ruby_sapphire_brendan_front_pic.4bpp.lz");
const u32 gTrainerPalette_RubySapphireBrendan[] = INCBIN_U32("graphics/trainers/palettes/ruby_sapphire_brendan.gbapal.lz");

const u32 gTrainerFrontPic_RubySapphireMay[] = INCBIN_U32("graphics/trainers/front_pics/ruby_sapphire_may_front_pic.4bpp.lz");
const u32 gTrainerPalette_RubySapphireMay[] = INCBIN_U32("graphics/trainers/palettes/ruby_sapphire_may.gbapal.lz");

const u8 gTrainerBackPic_Brendan[] = INCBIN_U8("graphics/trainers/back_pics/brendan_back_pic.4bpp");
const u8 gTrainerBackPic_May[] = INCBIN_U8("graphics/trainers/back_pics/may_back_pic.4bpp");
const u8 gTrainerBackPic_Red[] = INCBIN_U8("graphics/trainers/back_pics/red_back_pic.4bpp");
const u8 gTrainerBackPic_Leaf[] = INCBIN_U8("graphics/trainers/back_pics/leaf_back_pic.4bpp");
const u8 gTrainerBackPic_RubySapphireBrendan[] = INCBIN_U8("graphics/trainers/back_pics/ruby_sapphire_brendan_back_pic.4bpp");
const u8 gTrainerBackPic_RubySapphireMay[] = INCBIN_U8("graphics/trainers/back_pics/ruby_sapphire_may_back_pic.4bpp");
const u8 gTrainerBackPic_Wally[] = INCBIN_U8("graphics/trainers/back_pics/wally_back_pic.4bpp");
const u8 gTrainerBackPic_Steven[] = INCBIN_U8("graphics/trainers/back_pics/steven_back_pic.4bpp");

const u32 gTrainerBackPicPalette_Red[] = INCBIN_U32("graphics/trainers/palettes/red_back_pic.gbapal.lz");
const u32 gTrainerBackPicPalette_Leaf[] = INCBIN_U32("graphics/trainers/palettes/leaf_back_pic.gbapal.lz");
# 955 "src/graphics.c" 2

const u8 gMonIcon_QuestionMark[] = INCBIN_U8("graphics/pokemon/question_mark/icon.4bpp");
const u8 gMonFootprint_QuestionMark[] = INCBIN_U8("graphics/pokemon/question_mark/footprint.1bpp");

const u32 gUnknown_08D778F0[] = INCBIN_U32("graphics/battle_transitions/vs_frame.4bpp.lz");
const u32 gUnknown_08D779D8[] = INCBIN_U32("graphics/battle_transitions/vs_frame.bin.lz");
const u32 gUnknown_08D77AE4[] = INCBIN_U32("graphics/battle_transitions/vs_frame.gbapal.lz");

const u32 gVsLettersGfx[] = INCBIN_U32("graphics/battle_transitions/vs.4bpp.lz");

# 1 "src/data/graphics/battle_terrain.h" 1
const u32 gBattleTerrainTiles_TallGrass[] = INCBIN_U32("graphics/battle_terrain/tall_grass/tiles.4bpp.lz");
const u32 gBattleTerrainPalette_TallGrass[] = INCBIN_U32("graphics/battle_terrain/tall_grass/palette.gbapal.lz");
const u32 gBattleTerrainTilemap_TallGrass[] = INCBIN_U32("graphics/battle_terrain/tall_grass/map.bin.lz");

const u32 gBattleTerrainTiles_LongGrass[] = INCBIN_U32("graphics/battle_terrain/long_grass/tiles.4bpp.lz");
const u32 gBattleTerrainPalette_LongGrass[] = INCBIN_U32("graphics/battle_terrain/long_grass/palette.gbapal.lz");
const u32 gBattleTerrainTilemap_LongGrass[] = INCBIN_U32("graphics/battle_terrain/long_grass/map.bin.lz");

const u32 gBattleTerrainTiles_Sand[] = INCBIN_U32("graphics/battle_terrain/sand/tiles.4bpp.lz");
const u32 gBattleTerrainPalette_Sand[] = INCBIN_U32("graphics/battle_terrain/sand/palette.gbapal.lz");
const u32 gBattleTerrainTilemap_Sand[] = INCBIN_U32("graphics/battle_terrain/sand/map.bin.lz");

const u32 gBattleTerrainTiles_Underwater[] = INCBIN_U32("graphics/battle_terrain/underwater/tiles.4bpp.lz");
const u32 gBattleTerrainPalette_Underwater[] = INCBIN_U32("graphics/battle_terrain/underwater/palette.gbapal.lz");
const u32 gBattleTerrainTilemap_Underwater[] = INCBIN_U32("graphics/battle_terrain/underwater/map.bin.lz");

const u32 gBattleTerrainTiles_Water[] = INCBIN_U32("graphics/battle_terrain/water/tiles.4bpp.lz");
const u32 gBattleTerrainPalette_Water[] = INCBIN_U32("graphics/battle_terrain/water/palette.gbapal.lz");
const u32 gBattleTerrainTilemap_Water[] = INCBIN_U32("graphics/battle_terrain/water/map.bin.lz");

const u32 gBattleTerrainTiles_PondWater[] = INCBIN_U32("graphics/battle_terrain/pond_water/tiles.4bpp.lz");
const u32 gBattleTerrainPalette_PondWater[] = INCBIN_U32("graphics/battle_terrain/pond_water/palette.gbapal.lz");
const u32 gBattleTerrainTilemap_PondWater[] = INCBIN_U32("graphics/battle_terrain/pond_water/map.bin.lz");

const u32 gBattleTerrainTiles_Rock[] = INCBIN_U32("graphics/battle_terrain/rock/tiles.4bpp.lz");
const u32 gBattleTerrainPalette_Rock[] = INCBIN_U32("graphics/battle_terrain/rock/palette.gbapal.lz");
const u32 gBattleTerrainTilemap_Rock[] = INCBIN_U32("graphics/battle_terrain/rock/map.bin.lz");

const u32 gBattleTerrainTiles_Cave[] = INCBIN_U32("graphics/battle_terrain/cave/tiles.4bpp.lz");
const u32 gBattleTerrainPalette_Cave[] = INCBIN_U32("graphics/battle_terrain/cave/palette.gbapal.lz");
const u32 gBattleTerrainTilemap_Cave[] = INCBIN_U32("graphics/battle_terrain/cave/map.bin.lz");

const u32 gBattleTerrainPalette_Plain[] = INCBIN_U32("graphics/battle_terrain/plain/palette.gbapal.lz");

const u32 gBattleTerrainTiles_Building[] = INCBIN_U32("graphics/battle_terrain/building/tiles.4bpp.lz");
const u32 gBattleTerrainPalette_Frontier[] = INCBIN_U32("graphics/battle_terrain/stadium/battle_frontier.gbapal.lz");
const u32 gBattleTerrainTilemap_Building[] = INCBIN_U32("graphics/battle_terrain/building/map.bin.lz");

const u32 gBattleTerrainTiles_Stadium[] = INCBIN_U32("graphics/battle_terrain/stadium/tiles.4bpp.lz");
const u32 gBattleTerrainTilemap_Stadium[] = INCBIN_U32("graphics/battle_terrain/stadium/map.bin.lz");

const u32 gBattleTerrainTiles_Rayquaza[] = INCBIN_U32("graphics/battle_terrain/sky/tiles.4bpp.lz");
const u32 gBattleTerrainTilemap_Rayquaza[] = INCBIN_U32("graphics/battle_terrain/sky/map.bin.lz");

const u32 gBattleTerrainPalette_Building[] = INCBIN_U32("graphics/battle_terrain/building/palette.gbapal.lz");

const u32 gBattleTerrainPalette_Kyogre[] = INCBIN_U32("graphics/battle_terrain/water/kyogre.gbapal.lz");
const u32 gBattleTerrainPalette_Groudon[] = INCBIN_U32("graphics/battle_terrain/cave/groudon.gbapal.lz");
const u32 gBattleTerrainPalette_BuildingGym[] = INCBIN_U32("graphics/battle_terrain/building/palette2.gbapal.lz");
const u32 gBattleTerrainPalette_BuildingLeader[] = INCBIN_U32("graphics/battle_terrain/building/palette3.gbapal.lz");
const u32 gBattleTerrainPalette_StadiumAqua[] = INCBIN_U32("graphics/battle_terrain/stadium/palette1.gbapal.lz");
const u32 gBattleTerrainPalette_StadiumMagma[] = INCBIN_U32("graphics/battle_terrain/stadium/palette2.gbapal.lz");
const u32 gBattleTerrainPalette_StadiumSidney[] = INCBIN_U32("graphics/battle_terrain/stadium/palette3.gbapal.lz");
const u32 gBattleTerrainPalette_StadiumPhoebe[] = INCBIN_U32("graphics/battle_terrain/stadium/palette4.gbapal.lz");
const u32 gBattleTerrainPalette_StadiumGlacia[] = INCBIN_U32("graphics/battle_terrain/stadium/palette5.gbapal.lz");
const u32 gBattleTerrainPalette_StadiumDrake[] = INCBIN_U32("graphics/battle_terrain/stadium/palette6.gbapal.lz");
const u32 gBattleTerrainPalette_StadiumWallace[] = INCBIN_U32("graphics/battle_terrain/stadium/palette7.gbapal.lz");
const u32 gBattleTerrainPalette_Rayquaza[] = INCBIN_U32("graphics/battle_terrain/sky/palette.gbapal.lz");

const u32 gBattleTerrainAnimTiles_TallGrass[] = INCBIN_U32("graphics/battle_terrain/tall_grass/anim_tiles.4bpp.lz");
const u32 gBattleTerrainAnimTilemap_TallGrass[] = INCBIN_U32("graphics/battle_terrain/tall_grass/anim_map.bin.lz");

const u32 gBattleTerrainAnimTiles_LongGrass[] = INCBIN_U32("graphics/battle_terrain/long_grass/anim_tiles.4bpp.lz");
const u32 gBattleTerrainAnimTilemap_LongGrass[] = INCBIN_U32("graphics/battle_terrain/long_grass/anim_map.bin.lz");

const u32 gBattleTerrainAnimTiles_Sand[] = INCBIN_U32("graphics/battle_terrain/sand/anim_tiles.4bpp.lz");
const u32 gBattleTerrainAnimTilemap_Sand[] = INCBIN_U32("graphics/battle_terrain/sand/anim_map.bin.lz");

const u32 gBattleTerrainAnimTiles_Underwater[] = INCBIN_U32("graphics/battle_terrain/underwater/anim_tiles.4bpp.lz");
const u32 gBattleTerrainAnimTilemap_Underwater[] = INCBIN_U32("graphics/battle_terrain/underwater/anim_map.bin.lz");

const u32 gBattleTerrainAnimTiles_Water[] = INCBIN_U32("graphics/battle_terrain/water/anim_tiles.4bpp.lz");
const u32 gBattleTerrainAnimTilemap_Water[] = INCBIN_U32("graphics/battle_terrain/water/anim_map.bin.lz");

const u32 gBattleTerrainAnimTiles_PondWater[] = INCBIN_U32("graphics/battle_terrain/pond_water/anim_tiles.4bpp.lz");
const u32 gBattleTerrainAnimTilemap_PondWater[] = INCBIN_U32("graphics/battle_terrain/pond_water/anim_map.bin.lz");

const u32 gBattleTerrainAnimTiles_Rock[] = INCBIN_U32("graphics/battle_terrain/rock/anim_tiles.4bpp.lz");
const u32 gBattleTerrainAnimTilemap_Rock[] = INCBIN_U32("graphics/battle_terrain/rock/anim_map.bin.lz");

const u32 gBattleTerrainAnimTiles_Cave[] = INCBIN_U32("graphics/battle_terrain/cave/anim_tiles.4bpp.lz");
const u32 gBattleTerrainAnimTilemap_Cave[] = INCBIN_U32("graphics/battle_terrain/cave/anim_map.bin.lz");

const u32 gBattleTerrainAnimTiles_Building[] = INCBIN_U32("graphics/battle_terrain/building/anim_tiles.4bpp.lz");
const u32 gBattleTerrainAnimTilemap_Building[] = INCBIN_U32("graphics/battle_terrain/building/anim_map.bin.lz");

const u32 gBattleTerrainAnimTiles_Rayquaza[] = INCBIN_U32("graphics/battle_terrain/sky/anim_tiles.4bpp.lz");
const u32 gBattleTerrainAnimTilemap_Rayquaza[] = INCBIN_U32("graphics/battle_terrain/sky/anim_map.bin.lz");
# 966 "src/graphics.c" 2


const u32 gDomeTourneyBg_Gfx[] = INCBIN_U32("graphics/battle_frontier/tourney_bg.4bpp.lz");
const u32 gDomeTourneyLine_Gfx[] = INCBIN_U32("graphics/battle_frontier/tourney_line.4bpp.lz");
const u32 gDomeTourneyLineMask_Tilemap[] = INCBIN_U32("graphics/battle_frontier/tourney_line_mask_map.bin.lz");
const u32 gDomeTourneyLineDown_Tilemap[] = INCBIN_U32("graphics/battle_frontier/tourney_line_down_map.bin.lz");
const u32 gDomeTourneyLineUp_Tilemap[] = INCBIN_U32("graphics/battle_frontier/tourney_line_up_map.bin.lz");
const u32 gDomeTourneyInfoCard_Gfx[] = INCBIN_U32("graphics/battle_frontier/tourney_info_card.4bpp.lz");
const u32 gDomeTourneyInfoCard_Tilemap[] = INCBIN_U32("graphics/battle_frontier/tourney_info_card_tilemap.bin.lz");
const u32 gDomeTourneyInfoCardBg_Tilemap[] = INCBIN_U32("graphics/battle_frontier/tourney_info_card_bg.bin.lz");
const u32 gDomeTourneyTreeButtons_Gfx[] = INCBIN_U32("graphics/battle_frontier/tourney_buttons.4bpp.lz");
const u32 gDomeTourneyTree_Pal[] = INCBIN_U32("graphics/battle_frontier/tourney.gbapal.lz");
const u32 gDomeTourneyTreeButtons_Pal[] = INCBIN_U32("graphics/battle_frontier/tourney_buttons.gbapal.lz");
const u32 gDomeTourneyMatchCardBg_Pal[] = INCBIN_U32("graphics/battle_frontier/tourney_match_card_bg.gbapal.lz");

const u32 gBattleArenaJudgementSymbolsGfx[] = INCBIN_U32("graphics/battle_frontier/arena_judgement_symbols.4bpp.lz");
const u32 gBattleArenaJudgementSymbolsPalette[] = INCBIN_U32("graphics/battle_frontier/arena_judgement_symbols.gbapal.lz");

const u32 gBattleWindowTextPalette[] = INCBIN_U32("graphics/battle_interface/text.gbapal.lz");
const u16 gUnknown_08D85620[] = INCBIN_U16("graphics/battle_frontier/text_pp.gbapal");

const u16 gTilesetAnims_BattleDomePals0_0[] = INCBIN_U16("graphics/battle_frontier/dome_anim1.gbapal");
const u16 gTilesetAnims_BattleDomePals0_1[] = INCBIN_U16("graphics/battle_frontier/dome_anim2.gbapal");
const u16 gTilesetAnims_BattleDomePals0_2[] = INCBIN_U16("graphics/battle_frontier/dome_anim3.gbapal");
const u16 gTilesetAnims_BattleDomePals0_3[] = INCBIN_U16("graphics/battle_frontier/dome_anim4.gbapal");


asm(".2byte 0x013F, 0x0119, 0x0113, 0x010E");

const u16 gUnknown_08D856C8[] = INCBIN_U16("graphics/battle_frontier/pyramid_light.gbapal");

const u32 gUnknown_08D857A8[] = INCBIN_U32("graphics/battle_frontier/battle_tilemap1.bin.lz");
const u32 gUnknown_08D85A1C[] = INCBIN_U32("graphics/battle_frontier/battle_tilemap2.bin.lz");

# 1 "src/data/graphics/intro_scene.h" 1
const u16 gIntro1GameFreakTextFadePal[] = INCBIN_U16("graphics/intro/intro1_text.gbapal");
const u16 gIntro2BrendanNoTurnPal[] = INCBIN_U16("graphics/intro/intro2_brendan_noturn.gbapal");
const u16 gIntro3BgPal[] = INCBIN_U16("graphics/intro/intro3.gbapal");
const u16 gIntro2VolbeatPal[] = INCBIN_U16("graphics/intro/intro2_volbeat.gbapal");
const u16 gIntro2TorchicPal[] = INCBIN_U16("graphics/intro/intro2_torchic.gbapal");
const u16 gIntro2ManectricPal[] = INCBIN_U16("graphics/intro/intro2_manectric.gbapal");
const u16 gIntro2FlygonPal[] = INCBIN_U16("graphics/intro/intro2_flygon.gbapal");

const u32 gIntro2VolbeatGfx[] = INCBIN_U32("graphics/intro/intro2_volbeat.4bpp.lz");
const u32 gIntro2TorchicGfx[] = INCBIN_U32("graphics/intro/intro2_torchic.4bpp.lz");
const u32 gIntro2ManectricGfx[] = INCBIN_U32("graphics/intro/intro2_manectric.4bpp.lz");
const u32 gIntro2FlygonGfx[] = INCBIN_U32("graphics/intro/intro2_flygon.4bpp.lz");
const u32 gIntro2BrendanNoTurnGfx[] = INCBIN_U32("graphics/intro/intro2_brendan_noturn.4bpp.lz");
const u32 gIntro2MayNoTurnGfx[] = INCBIN_U32("graphics/intro/intro2_may_noturn.4bpp.lz");

const u32 gIntro3GroudonGfx[] = INCBIN_U32("graphics/intro/intro3_groudon.8bpp.lz");
const u32 gIntro3GroudonTilemap[] = INCBIN_U32("graphics/intro/intro3_groudon.bin.lz");

const u32 gIntro3KyogreGfx[] = INCBIN_U32("graphics/intro/intro3_kyogre.8bpp.lz");
const u32 gIntro3KyogreTilemap[] = INCBIN_U32("graphics/intro/intro3_kyogre.bin.lz");

const u32 gIntro3LegendBgGfx[] = INCBIN_U32("graphics/intro/legend_bg.4bpp.lz");

const u32 gIntro3GroudonBgTilemap[] = INCBIN_U32("graphics/intro/legend_bg1.bin.lz");
const u32 gIntro3KyogreBgTilemap[] = INCBIN_U32("graphics/intro/legend_bg2.bin.lz");

const u32 gIntro3CloudsGfx[] = INCBIN_U32("graphics/intro/intro3_clouds.4bpp.lz");
const u32 gIntro3Clouds1Tilemap[] = INCBIN_U32("graphics/intro/intro3_clouds1.bin.lz");
const u32 gIntro3Clouds2Tilemap[] = INCBIN_U32("graphics/intro/intro3_clouds2.bin.lz");
const u32 gIntro3Clouds3Tilemap[] = INCBIN_U32("graphics/intro/intro3_clouds3.bin.lz");

const u32 gIntro3LightningGfx[] = INCBIN_U32("graphics/intro/intro3_lightning.4bpp.lz");
const u16 gIntro3LightningPal[] = INCBIN_U16("graphics/intro/intro3_lightning.gbapal");

const u32 gIntro3RayquazaGfx[] = INCBIN_U32("graphics/intro/intro3_rayquaza.4bpp.lz");
const u32 gIntro3RayquazaTilemap[] = INCBIN_U32("graphics/intro/intro3_rayquaza.bin.lz");

const u32 gUnknown_D8C374[] = INCBIN_U32("graphics/unknown/unknown_D8C374.bin.lz");
const u32 gUnknown_D8C5C4[] = INCBIN_U32("graphics/unknown/unknown_D8C5C4.bin.lz");

const u32 gIntro3Clouds2Gfx[] = INCBIN_U32("graphics/intro/intro3_clouds2.4bpp.lz");
const u32 gIntro3Clouds4Tilemap[] = INCBIN_U32("graphics/intro/intro3_clouds4.bin.lz");

const u32 gIntro2BubblesGfx[] = INCBIN_U32("graphics/intro/intro2_bubbles.4bpp.lz");
const u16 gIntro2BubblesPal[] = INCBIN_U16("graphics/intro/intro2_bubbles.gbapal");

const u32 gIntro1FlygonGfx[] = INCBIN_U32("graphics/intro/intro1_flygon.4bpp.lz");
const u32 gIntro1SparkleGfx[] = INCBIN_U32("graphics/intro/intro1_sparkle.4bpp.lz");
# 1001 "src/graphics.c" 2

const u32 gBattleAnimSpriteGfx_FlyingDirt[] = INCBIN_U32("graphics/battle_anims/sprites/flying_dirt.4bpp.lz");

const u32 gBattleAnimBgTilemap_Sandstorm[] = INCBIN_U32("graphics/battle_anims/backgrounds/sandstorm_brew.bin.lz");
const u32 gBattleAnimBgImage_Sandstorm[] = INCBIN_U32("graphics/battle_anims/backgrounds/sandstorm_brew.4bpp.lz");

const u32 gBattleAnimSpritePal_FlyingDirt[] = INCBIN_U32("graphics/battle_anims/sprites/flying_dirt.gbapal.lz");

const u32 gBattleAnimSpriteGfx_MetalSoundWaves[] = INCBIN_U32("graphics/battle_anims/sprites/metal_sound_waves.4bpp.lz");
const u32 gBattleAnimSpritePal_MetalSoundWaves[] = INCBIN_U32("graphics/battle_anims/sprites/metal_sound_waves.gbapal.lz");

const u32 gBattleAnimBgImage_Ice[] = INCBIN_U32("graphics/battle_anims/backgrounds/ice.4bpp.lz");
const u32 gBattleAnimBgPalette_Ice[] = INCBIN_U32("graphics/battle_anims/backgrounds/ice.gbapal.lz");
const u32 gBattleAnimBgTilemap_Ice[] = INCBIN_U32("graphics/battle_anims/backgrounds/ice.bin.lz");

const u32 gBattleAnimSpriteGfx_IcicleSpear[] = INCBIN_U32("graphics/battle_anims/sprites/icicle_spear.4bpp.lz");
const u32 gBattleAnimSpritePal_IcicleSpear[] = INCBIN_U32("graphics/battle_anims/sprites/icicle_spear.gbapal.lz");

const u32 gContestNextTurnGfx[] = INCBIN_U32("graphics/contest/nextturn.4bpp.lz");
const u8 gContestNextTurnNumbersGfx[] = INCBIN_U8("graphics/contest/nextturn_numbers.4bpp");
const u8 gContestNextTurnRandomGfx[] = INCBIN_U8("graphics/contest/nextturn_random.4bpp");

const u32 gBattleAnimSpriteGfx_GlowyRedOrb[] = INCBIN_U32("graphics/battle_anims/sprites/glowy_red_orb.4bpp.lz");
const u32 gBattleAnimSpritePal_GlowyRedOrb[] = INCBIN_U32("graphics/battle_anims/sprites/glowy_red_orb.gbapal.lz");
const u32 gBattleAnimSpritePal_GlowyGreenOrb[] = INCBIN_U32("graphics/battle_anims/sprites/glowy_green_orb.gbapal.lz");
const u32 gBattleAnimSpritePal_SleepPowder[] = INCBIN_U32("graphics/battle_anims/sprites/sleep_powder.gbapal.lz");
const u32 gBattleAnimSpritePal_StunSpore[] = INCBIN_U32("graphics/battle_anims/sprites/stun_spore.gbapal.lz");

const u32 gContestApplauseGfx[] = INCBIN_U32("graphics/contest/applause.4bpp.lz");
const u8 gContestApplauseMeterGfx[] = INCBIN_U8("graphics/contest/applause_meter.4bpp");

const u16 gContestPal[] = INCBIN_U16("graphics/contest/nextturn.gbapal");

const u32 gBattleAnimSpriteGfx_Splash[] = INCBIN_U32("graphics/battle_anims/sprites/splash.4bpp.lz");
const u32 gBattleAnimSpritePal_Splash[] = INCBIN_U32("graphics/battle_anims/sprites/splash.gbapal.lz");

const u32 gBattleAnimSpriteGfx_SweatBead[] = INCBIN_U32("graphics/battle_anims/sprites/sweat_bead.4bpp.lz");

const u32 gBattleAnimSpriteGfx_Pokeblock[] = INCBIN_U32("graphics/battle_anims/sprites/pokeblock.4bpp.lz");
const u32 gBattleAnimSpritePal_Pokeblock[] = INCBIN_U32("graphics/battle_anims/sprites/pokeblock.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Gem1[] = INCBIN_U32("graphics/battle_anims/sprites/gem_1.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Gem2[] = INCBIN_U32("graphics/battle_anims/sprites/gem_2.4bpp.lz");
const u32 gBattleAnimSpriteGfx_Gem3[] = INCBIN_U32("graphics/battle_anims/sprites/gem_3.4bpp.lz");

const u32 gBattleAnimSpritePal_Gem1[] = INCBIN_U32("graphics/battle_anims/sprites/gem_1.gbapal.lz");

const u32 gBattleAnimBgImage_InAir[] = INCBIN_U32("graphics/battle_anims/backgrounds/in_air.4bpp.lz");
const u32 gBattleAnimBgPalette_InAir[] = INCBIN_U32("graphics/battle_anims/backgrounds/in_air.gbapal.lz");
const u32 gBattleAnimBgTilemap_InAir[] = INCBIN_U32("graphics/battle_anims/backgrounds/in_air.bin.lz");

const u32 gBattleAnimSpriteGfx_Protect[] = INCBIN_U32("graphics/battle_anims/sprites/protect.4bpp.lz");
const u32 gBattleAnimSpritePal_Protect[] = INCBIN_U32("graphics/battle_anims/sprites/protect.gbapal.lz");

const u32 gBattleAnimBackgroundImageMuddyWater_Pal[] = INCBIN_U32("graphics/battle_anims/backgrounds/water_muddy.gbapal.lz");

const u32 gEnemyMonShadow_Gfx[] = INCBIN_U32("graphics/battle_interface/enemy_mon_shadow.4bpp.lz");

const u32 gBattleInterface_BallStatusBarGfx[] = INCBIN_U32("graphics/battle_interface/ball_status_bar.4bpp.lz");

const u8 gMonIcon_Egg[] = INCBIN_U8("graphics/pokemon/egg/icon.4bpp");

const u32 gBattleAnimBgImage_Ghost[] = INCBIN_U32("graphics/battle_anims/backgrounds/ghost.4bpp.lz");
const u32 gBattleAnimBgPalette_Ghost[] = INCBIN_U32("graphics/battle_anims/backgrounds/ghost.gbapal.lz");
const u32 gBattleAnimBgTilemap_Ghost[] = INCBIN_U32("graphics/battle_anims/backgrounds/ghost.bin.lz");

const u32 gBattleAnimSpritePal_WhipHit[] = INCBIN_U32("graphics/battle_anims/sprites/whip_hit.gbapal.lz");

const u32 gBattleAnimBgPalette_Solarbeam[] = INCBIN_U32("graphics/battle_anims/backgrounds/solarbeam.gbapal.lz");

const u32 gUnknown_E6BC04[] = INCBIN_U32("graphics/unknown/unknown_E6BC04.bin.lz");

const u32 sBlenderCenterGfx[] = INCBIN_U32("graphics/berry_blender/center.8bpp.lz");

const u32 gUnknown_08D91DB8[] = INCBIN_U32("graphics/berry_blender/outer.4bpp.lz");
const u32 gUnknown_08D927EC[] = INCBIN_U32("graphics/berry_blender/outer_map.bin.lz");

const u32 gBattleAnimBgPalette_Cosmic[] = INCBIN_U32("graphics/battle_anims/backgrounds/cosmic.gbapal.lz");
const u32 gBattleAnimBgImage_Cosmic[] = INCBIN_U32("graphics/battle_anims/backgrounds/cosmic.4bpp.lz");
const u32 gBattleAnimBgTilemap_Cosmic[] = INCBIN_U32("graphics/battle_anims/backgrounds/cosmic.bin.lz");

const u32 gBattleAnimSpritePal_SlamHit2[] = INCBIN_U32("graphics/battle_anims/sprites/slam_hit_2.gbapal.lz");
const u32 gBattleAnimSpriteGfx_SlamHit2[] = INCBIN_U32("graphics/battle_anims/sprites/slam_hit_2.4bpp.lz");

const u32 gBattleAnimFogTilemap[] = INCBIN_U32("graphics/battle_anims/backgrounds/fog.bin.lz");

const u32 gBattleAnimSpritePal_WeatherBall[] = INCBIN_U32("graphics/battle_anims/sprites/weather_ball.gbapal.lz");
const u32 gBattleAnimSpriteGfx_WeatherBall[] = INCBIN_U32("graphics/battle_anims/sprites/weather_ball.4bpp.lz");

const u32 gBattleAnimBgTilemap_ScaryFacePlayer[] = INCBIN_U32("graphics/battle_anims/backgrounds/scary_face_player.bin.lz");
const u32 gBattleAnimBgTilemap_ScaryFaceOpponent[] = INCBIN_U32("graphics/battle_anims/backgrounds/scary_face_opponent.bin.lz");
const u32 gBattleAnimBgTilemap_ScaryFaceContest[] = INCBIN_U32("graphics/battle_anims/backgrounds/scary_face_contest.bin.lz");

const u32 gBattleAnimSpriteGfx_Hail[] = INCBIN_U32("graphics/battle_anims/sprites/hail.4bpp.lz");
const u32 gBattleAnimSpritePal_Hail[] = INCBIN_U32("graphics/battle_anims/sprites/hail.gbapal.lz");

const u32 gBattleAnimSpriteGfx_GreenSpike[] = INCBIN_U32("graphics/battle_anims/sprites/green_spike.4bpp.lz");
const u32 gBattleAnimSpritePal_GreenSpike[] = INCBIN_U32("graphics/battle_anims/sprites/green_spike.gbapal.lz");
const u32 gBattleAnimSpritePal_WhiteCircleOfLight[] = INCBIN_U32("graphics/battle_anims/sprites/white_circle_of_light.gbapal.lz");
const u32 gBattleAnimSpritePal_GlowyBlueOrb[] = INCBIN_U32("graphics/battle_anims/sprites/glowy_blue_orb.gbapal.lz");

const u32 gBattleAnimSpriteGfx_Recycle[] = INCBIN_U32("graphics/battle_anims/sprites/recycle.4bpp.lz");
const u32 gBattleAnimSpritePal_Recycle[] = INCBIN_U32("graphics/battle_anims/sprites/recycle.gbapal.lz");

const u32 gBattleAnimSpriteGfx_RedParticles[] = INCBIN_U32("graphics/battle_anims/sprites/red_particles.4bpp.lz");
const u32 gBattleAnimSpritePal_RedParticles[] = INCBIN_U32("graphics/battle_anims/sprites/red_particles.gbapal.lz");

const u32 gBattleAnimSpriteGfx_DirtMound[] = INCBIN_U32("graphics/battle_anims/sprites/dirt_mound.4bpp.lz");
const u32 gBattleAnimSpritePal_DirtMound[] = INCBIN_U32("graphics/battle_anims/sprites/dirt_mound.gbapal.lz");

const u32 gBattleAnimBgImage_Fissure[] = INCBIN_U32("graphics/battle_anims/backgrounds/fissure.4bpp.lz");
const u32 gBattleAnimBgPalette_Fissure[] = INCBIN_U32("graphics/battle_anims/backgrounds/fissure.gbapal.lz");
const u32 gBattleAnimBgTilemap_Fissure[] = INCBIN_U32("graphics/battle_anims/backgrounds/fissure.bin.lz");

const u32 gBattleAnimSpriteGfx_Bird[] = INCBIN_U32("graphics/battle_anims/sprites/bird.4bpp.lz");
const u32 gBattleAnimSpritePal_Bird[] = INCBIN_U32("graphics/battle_anims/sprites/bird.gbapal.lz");

const u32 gBattleAnimSpriteGfx_CrossImpact[] = INCBIN_U32("graphics/battle_anims/sprites/cross_impact.4bpp.lz");
const u32 gBattleAnimSpritePal_CrossImpact[] = INCBIN_U32("graphics/battle_anims/sprites/cross_impact.gbapal.lz");

const u32 gBattleAnimBgImage_Surf[] = INCBIN_U32("graphics/battle_anims/backgrounds/water.4bpp.lz");
const u32 gBattleAnimBgPalette_Surf[] = INCBIN_U32("graphics/battle_anims/backgrounds/water.gbapal.lz");

const u32 gBattleAnimBgTilemap_SurfOpponent[] = INCBIN_U32("graphics/battle_anims/backgrounds/water_opponent.bin.lz");
const u32 gBattleAnimBgTilemap_SurfPlayer[] = INCBIN_U32("graphics/battle_anims/backgrounds/water_player.bin.lz");
const u32 gBattleAnimBgTilemap_SurfContest[] = INCBIN_U32("graphics/battle_anims/backgrounds/water_contest.bin.lz");

const u32 gBattleAnimSpritePal_Slash2[] = INCBIN_U32("graphics/battle_anims/sprites/slash_2.gbapal.lz");

const u32 gBattleAnimSpriteGfx_WhiteShadow[] = INCBIN_U32("graphics/battle_anims/sprites/white_shadow.4bpp.lz");
const u32 gBattleAnimSpritePal_WhiteShadow[] = INCBIN_U32("graphics/battle_anims/sprites/white_shadow.gbapal.lz");

const u32 gPartyMenuBg_Gfx[] = INCBIN_U32("graphics/interface/party_menu_bg.4bpp.lz");
const u32 gPartyMenuBg_Pal[] = INCBIN_U32("graphics/interface/party_menu_bg.gbapal.lz");
const u32 gPartyMenuBg_Tilemap[] = INCBIN_U32("graphics/interface/party_menu_bg.bin.lz");

const u32 gPartyMenuPokeball_Gfx[] = INCBIN_U32("graphics/interface/party_menu_pokeball.4bpp.lz");
const u32 gPartyMenuPokeballSmall_Gfx[] = INCBIN_U32("graphics/interface/party_menu_pokeball_small.4bpp.lz");
const u32 gPartyMenuPokeball_Pal[] = INCBIN_U32("graphics/interface/party_menu_pokeball.gbapal.lz");

const u32 gStatusGfx_Icons[] = INCBIN_U32("graphics/interface/status_icons.4bpp.lz");
const u32 gStatusPal_Icons[] = INCBIN_U32("graphics/interface/status_icons.gbapal.lz");

const u32 gMoveTypes_Gfx[] = INCBIN_U32("graphics/types/move_types.4bpp.lz");
const u32 gMoveTypes_Pal[] = INCBIN_U32("graphics/types/move_types.gbapal.lz");

const u32 gSummaryMoveSelect_Gfx[] = INCBIN_U32("graphics/interface/summary_frames.4bpp.lz");
const u32 gSummaryMoveSelect_Pal[] = INCBIN_U32("graphics/interface/summary_frames.gbapal.lz");

const u32 gStatusScreenBitmap[] = INCBIN_U32("graphics/interface/status_screen.4bpp.lz");
const u32 gStatusScreenPalette[] = INCBIN_U32("graphics/interface/status_screen.gbapal.lz");
const u32 gPageInfoTilemap[] = INCBIN_U32("graphics/interface/status_screen.bin.lz");
const u32 gPageSkillsTilemap[] = INCBIN_U32("graphics/interface/status_tilemap1.bin.lz");
const u32 gPageBattleMovesTilemap[] = INCBIN_U32("graphics/interface/status_tilemap2.bin.lz");
const u32 gPageContestMovesTilemap[] = INCBIN_U32("graphics/interface/status_tilemap3.bin.lz");
const u32 gUnknown_08D98CC8[] = INCBIN_U32("graphics/interface/status_tilemap0.bin.lz");

const u32 gBagMaleTiles[] = INCBIN_U32("graphics/misc/bag_male.4bpp.lz");
const u32 gBagFemaleTiles[] = INCBIN_U32("graphics/misc/bag_female.4bpp.lz");
const u32 gBagPalette[] = INCBIN_U32("graphics/misc/bag.gbapal.lz");

const u32 gBagScreenMale_Pal[] = INCBIN_U32("graphics/interface/bag_screen_male.gbapal.lz");
const u32 gBagScreenFemale_Pal[] = INCBIN_U32("graphics/interface/bag_screen_female.gbapal.lz");

const u32 gBagScreen_Gfx[] = INCBIN_U32("graphics/interface/bag_screen.4bpp.lz");
const u32 gBagScreen_GfxTileMap[] = INCBIN_U32("graphics/interface/bag_screen_tilemap.bin.lz");

const u32 gBattleFrontierGfx_PyramidBag[] = INCBIN_U32("graphics/interface/bag_pyramid.4bpp.lz");
const u32 gBattleFrontierGfx_PyramidBag_Pal[] = INCBIN_U32("graphics/interface/bag_pyramid.gbapal.lz");
const u32 gBattleFrontierGfx_PyramidBagTileMap[] = INCBIN_U32("graphics/interface/bag_pyramid_tilemap.bin.lz");

const u32 gUnknown_08D9AF44[] = INCBIN_U32("graphics/unknown/unknown_D9AF44.gbapal.lz");

const u32 gBagSwapLineGfx[] = INCBIN_U32("graphics/interface/bag_swap.4bpp.lz");
const u32 gBagSwapLinePal[] = INCBIN_U32("graphics/interface/bag_swap.gbapal.lz");

const u32 gBuyMenuFrame_Gfx[] = INCBIN_U32("graphics/interface/mart_frame.4bpp.lz");
const u32 gMenuMoneyPal[] = INCBIN_U32("graphics/interface/mart_frame.gbapal.lz");
const u32 gBuyMenuFrame_Tilemap[] = INCBIN_U32("graphics/interface/mart_frame.bin.lz");

const u32 gMenuMoneyGfx[] = INCBIN_U32("graphics/interface/money.4bpp.lz");



const u32 gMenuPokeblock_Gfx[] = INCBIN_U32("graphics/interface/pokeblock_case_frame.4bpp.lz");
const u32 gMenuPokeblock_Pal[] = INCBIN_U32("graphics/interface/pokeblock_case_frame.gbapal.lz");

const u32 gMenuPokeblockDevice_Gfx[] = INCBIN_U32("graphics/interface/pokeblock_device.4bpp.lz");
const u32 gMenuPokeblockDevice_Pal[] = INCBIN_U32("graphics/interface/pokeblock_device.gbapal.lz");

const u32 gMenuPokeblock_Tilemap[] = INCBIN_U32("graphics/interface/pokeblock.bin.lz");
const u32 gPokeblock_Gfx[] = INCBIN_U32("graphics/pokeblock/pokeblock.4bpp.lz");
const u32 gPokeblockRed_Pal[] = INCBIN_U32("graphics/pokeblock/red.gbapal.lz");
const u32 gPokeblockBlue_Pal[] = INCBIN_U32("graphics/pokeblock/blue.gbapal.lz");
const u32 gPokeblockPink_Pal[] = INCBIN_U32("graphics/pokeblock/pink.gbapal.lz");
const u32 gPokeblockGreen_Pal[] = INCBIN_U32("graphics/pokeblock/green.gbapal.lz");
const u32 gPokeblockYellow_Pal[] = INCBIN_U32("graphics/pokeblock/yellow.gbapal.lz");
const u32 gPokeblockPurple_Pal[] = INCBIN_U32("graphics/pokeblock/purple.gbapal.lz");
const u32 gPokeblockIndigo_Pal[] = INCBIN_U32("graphics/pokeblock/indigo.gbapal.lz");
const u32 gPokeblockBrown_Pal[] = INCBIN_U32("graphics/pokeblock/brown.gbapal.lz");
const u32 gPokeblockLiteBlue_Pal[] = INCBIN_U32("graphics/pokeblock/liteblue.gbapal.lz");
const u32 gPokeblockOlive_Pal[] = INCBIN_U32("graphics/pokeblock/olive.gbapal.lz");
const u32 gPokeblockGray_Pal[] = INCBIN_U32("graphics/pokeblock/gray.gbapal.lz");
const u32 gPokeblockBlack_Pal[] = INCBIN_U32("graphics/pokeblock/black.gbapal.lz");
const u32 gPokeblockWhite_Pal[] = INCBIN_U32("graphics/pokeblock/white.gbapal.lz");
const u32 gPokeblockGold_Pal[] = INCBIN_U32("graphics/pokeblock/gold.gbapal.lz");

const u32 gUnknown_08D9BA44[] = INCBIN_U32("graphics/interface/pokeblock_feeding_bg_map.bin.lz");

# 1 "src/data/graphics/berries.h" 1
const u32 gBerryCheck_Gfx[] = INCBIN_U32("graphics/interface/check_berry.4bpp.lz");
const u32 gBerryCheck_Pal[] = INCBIN_U32("graphics/interface/check_berry.gbapal.lz");

const u32 gBerryTag_Gfx[] = INCBIN_U32("graphics/interface/berry_tag.bin.lz");
const u32 gBerryTag_Pal[] = INCBIN_U32("graphics/interface/berry_tag_title.bin.lz");

const u32 gBerryCheckCircle_Gfx[] = INCBIN_U32("graphics/interface/check_berry_circle.4bpp.lz");

const u32 gBerryPic_Cheri[] = INCBIN_U32("graphics/berries/cheri.4bpp.lz");
const u32 gBerryPic_Oran[] = INCBIN_U32("graphics/berries/oran.4bpp.lz");
const u32 gBerryPic_Pecha[] = INCBIN_U32("graphics/berries/pecha.4bpp.lz");
const u32 gBerryPic_Rawst[] = INCBIN_U32("graphics/berries/rawst.4bpp.lz");
const u32 gBerryPic_Aspear[] = INCBIN_U32("graphics/berries/aspear.4bpp.lz");
const u32 gBerryPic_Leppa[] = INCBIN_U32("graphics/berries/leppa.4bpp.lz");
const u32 gBerryPic_Chesto[] = INCBIN_U32("graphics/berries/chesto.4bpp.lz");
const u32 gBerryPic_Persim[] = INCBIN_U32("graphics/berries/persim.4bpp.lz");
const u32 gBerryPic_Lum[] = INCBIN_U32("graphics/berries/lum.4bpp.lz");
const u32 gBerryPic_Sitrus[] = INCBIN_U32("graphics/berries/sitrus.4bpp.lz");
const u32 gBerryPic_Figy[] = INCBIN_U32("graphics/berries/figy.4bpp.lz");
const u32 gBerryPic_Wiki[] = INCBIN_U32("graphics/berries/wiki.4bpp.lz");
const u32 gBerryPic_Mago[] = INCBIN_U32("graphics/berries/mago.4bpp.lz");
const u32 gBerryPic_Aguav[] = INCBIN_U32("graphics/berries/aguav.4bpp.lz");
const u32 gBerryPic_Iapapa[] = INCBIN_U32("graphics/berries/iapapa.4bpp.lz");
const u32 gBerryPic_Razz[] = INCBIN_U32("graphics/berries/razz.4bpp.lz");
const u32 gBerryPic_Bluk[] = INCBIN_U32("graphics/berries/bluk.4bpp.lz");
const u32 gBerryPic_Nanab[] = INCBIN_U32("graphics/berries/nanab.4bpp.lz");
const u32 gBerryPic_Wepear[] = INCBIN_U32("graphics/berries/wepear.4bpp.lz");
const u32 gBerryPic_Pinap[] = INCBIN_U32("graphics/berries/pinap.4bpp.lz");
const u32 gBerryPic_Pomeg[] = INCBIN_U32("graphics/berries/pomeg.4bpp.lz");
const u32 gBerryPic_Kelpsy[] = INCBIN_U32("graphics/berries/kelpsy.4bpp.lz");
const u32 gBerryPic_Qualot[] = INCBIN_U32("graphics/berries/qualot.4bpp.lz");
const u32 gBerryPic_Hondew[] = INCBIN_U32("graphics/berries/hondew.4bpp.lz");
const u32 gBerryPic_Grepa[] = INCBIN_U32("graphics/berries/grepa.4bpp.lz");
const u32 gBerryPic_Tamato[] = INCBIN_U32("graphics/berries/tamato.4bpp.lz");
const u32 gBerryPic_Cornn[] = INCBIN_U32("graphics/berries/cornn.4bpp.lz");
const u32 gBerryPic_Magost[] = INCBIN_U32("graphics/berries/magost.4bpp.lz");
const u32 gBerryPic_Rabuta[] = INCBIN_U32("graphics/berries/rabuta.4bpp.lz");
const u32 gBerryPic_Nomel[] = INCBIN_U32("graphics/berries/nomel.4bpp.lz");
const u32 gBerryPic_Spelon[] = INCBIN_U32("graphics/berries/spelon.4bpp.lz");
const u32 gBerryPic_Pamtre[] = INCBIN_U32("graphics/berries/pamtre.4bpp.lz");
const u32 gBerryPic_Watmel[] = INCBIN_U32("graphics/berries/watmel.4bpp.lz");
const u32 gBerryPic_Durin[] = INCBIN_U32("graphics/berries/durin.4bpp.lz");
const u32 gBerryPic_Belue[] = INCBIN_U32("graphics/berries/belue.4bpp.lz");
const u32 gBerryPic_Liechi[] = INCBIN_U32("graphics/berries/liechi.4bpp.lz");
const u32 gBerryPic_Ganlon[] = INCBIN_U32("graphics/berries/ganlon.4bpp.lz");
const u32 gBerryPic_Salac[] = INCBIN_U32("graphics/berries/salac.4bpp.lz");
const u32 gBerryPic_Petaya[] = INCBIN_U32("graphics/berries/petaya.4bpp.lz");
const u32 gBerryPic_Apicot[] = INCBIN_U32("graphics/berries/apicot.4bpp.lz");
const u32 gBerryPic_Lansat[] = INCBIN_U32("graphics/berries/lansat.4bpp.lz");
const u32 gBerryPic_Starf[] = INCBIN_U32("graphics/berries/starf.4bpp.lz");
const u32 gBerryPic_Enigma[] = INCBIN_U32("graphics/berries/enigma.4bpp.lz");

const u32 gBerryPalette_Cheri[] = INCBIN_U32("graphics/berries/cheri.gbapal.lz");
const u32 gBerryPalette_Oran[] = INCBIN_U32("graphics/berries/oran.gbapal.lz");
const u32 gBerryPalette_Pecha[] = INCBIN_U32("graphics/berries/pecha.gbapal.lz");
const u32 gBerryPalette_Rawst[] = INCBIN_U32("graphics/berries/rawst.gbapal.lz");
const u32 gBerryPalette_Aspear[] = INCBIN_U32("graphics/berries/aspear.gbapal.lz");
const u32 gBerryPalette_Leppa[] = INCBIN_U32("graphics/berries/leppa.gbapal.lz");
const u32 gBerryPalette_Chesto[] = INCBIN_U32("graphics/berries/chesto.gbapal.lz");
const u32 gBerryPalette_Persim[] = INCBIN_U32("graphics/berries/persim.gbapal.lz");
const u32 gBerryPalette_Lum[] = INCBIN_U32("graphics/berries/lum.gbapal.lz");
const u32 gBerryPalette_Sitrus[] = INCBIN_U32("graphics/berries/sitrus.gbapal.lz");
const u32 gBerryPalette_Figy[] = INCBIN_U32("graphics/berries/figy.gbapal.lz");
const u32 gBerryPalette_Wiki[] = INCBIN_U32("graphics/berries/wiki.gbapal.lz");
const u32 gBerryPalette_Mago[] = INCBIN_U32("graphics/berries/mago.gbapal.lz");
const u32 gBerryPalette_Aguav[] = INCBIN_U32("graphics/berries/aguav.gbapal.lz");
const u32 gBerryPalette_Iapapa[] = INCBIN_U32("graphics/berries/iapapa.gbapal.lz");
const u32 gBerryPalette_Razz[] = INCBIN_U32("graphics/berries/razz.gbapal.lz");
const u32 gBerryPalette_Bluk[] = INCBIN_U32("graphics/berries/bluk.gbapal.lz");
const u32 gBerryPalette_Nanab[] = INCBIN_U32("graphics/berries/nanab.gbapal.lz");
const u32 gBerryPalette_Wepear[] = INCBIN_U32("graphics/berries/wepear.gbapal.lz");
const u32 gBerryPalette_Pinap[] = INCBIN_U32("graphics/berries/pinap.gbapal.lz");
const u32 gBerryPalette_Pomeg[] = INCBIN_U32("graphics/berries/pomeg.gbapal.lz");
const u32 gBerryPalette_Kelpsy[] = INCBIN_U32("graphics/berries/kelpsy.gbapal.lz");
const u32 gBerryPalette_Qualot[] = INCBIN_U32("graphics/berries/qualot.gbapal.lz");
const u32 gBerryPalette_Hondew[] = INCBIN_U32("graphics/berries/hondew.gbapal.lz");
const u32 gBerryPalette_Grepa[] = INCBIN_U32("graphics/berries/grepa.gbapal.lz");
const u32 gBerryPalette_Tamato[] = INCBIN_U32("graphics/berries/tamato.gbapal.lz");
const u32 gBerryPalette_Cornn[] = INCBIN_U32("graphics/berries/cornn.gbapal.lz");
const u32 gBerryPalette_Magost[] = INCBIN_U32("graphics/berries/magost.gbapal.lz");
const u32 gBerryPalette_Rabuta[] = INCBIN_U32("graphics/berries/rabuta.gbapal.lz");
const u32 gBerryPalette_Nomel[] = INCBIN_U32("graphics/berries/nomel.gbapal.lz");
const u32 gBerryPalette_Spelon[] = INCBIN_U32("graphics/berries/spelon.gbapal.lz");
const u32 gBerryPalette_Pamtre[] = INCBIN_U32("graphics/berries/pamtre.gbapal.lz");
const u32 gBerryPalette_Watmel[] = INCBIN_U32("graphics/berries/watmel.gbapal.lz");
const u32 gBerryPalette_Durin[] = INCBIN_U32("graphics/berries/durin.gbapal.lz");
const u32 gBerryPalette_Belue[] = INCBIN_U32("graphics/berries/belue.gbapal.lz");
const u32 gBerryPalette_Liechi[] = INCBIN_U32("graphics/berries/liechi.gbapal.lz");
const u32 gBerryPalette_Ganlon[] = INCBIN_U32("graphics/berries/ganlon.gbapal.lz");
const u32 gBerryPalette_Salac[] = INCBIN_U32("graphics/berries/salac.gbapal.lz");
const u32 gBerryPalette_Petaya[] = INCBIN_U32("graphics/berries/petaya.gbapal.lz");
const u32 gBerryPalette_Apicot[] = INCBIN_U32("graphics/berries/apicot.gbapal.lz");
const u32 gBerryPalette_Lansat[] = INCBIN_U32("graphics/berries/lansat.gbapal.lz");
const u32 gBerryPalette_Starf[] = INCBIN_U32("graphics/berries/starf.gbapal.lz");
const u32 gBerryPalette_Enigma[] = INCBIN_U32("graphics/berries/enigma.gbapal.lz");
# 1211 "src/graphics.c" 2
# 1 "src/data/graphics/rayquaza_scene.h" 1
const u32 gRaySceneGroudon_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/groudon.4bpp.lz");
const u32 gRaySceneGroudon2_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/groudon_shoulder.4bpp.lz");
const u32 gRaySceneGroudon3_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/groudon_claw.4bpp.lz");

const u32 gRaySceneKyogre_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/kyogre.4bpp.lz");
const u32 gRaySceneKyogre2_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/kyogre_shoulder.4bpp.lz");
const u32 gRaySceneKyogre3_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/kyogre_fin.4bpp.lz");

const u32 gRaySceneGroudon_Pal[] = INCBIN_U32("graphics/rayquaza_scene/groudon.gbapal.lz");
const u32 gRaySceneKyogre_Pal[] = INCBIN_U32("graphics/rayquaza_scene/kyogre.gbapal.lz");

const u32 gRaySceneClouds_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/clouds.4bpp.lz");
const u32 gRaySceneClouds_Pal[] = INCBIN_U32("graphics/rayquaza_scene/clouds.gbapal.lz");
const u32 gRaySceneClouds1_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/clouds1.bin.lz");
const u32 gRaySceneClouds2_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/clouds2.bin.lz");
const u32 gRaySceneClouds3_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/clouds3.bin.lz");

const u32 gRaySceneSmoke_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/smoke.4bpp.lz");
const u32 gRaySceneSmoke_Pal[] = INCBIN_U32("graphics/rayquaza_scene/smoke.gbapal.lz");

const u32 gRaySceneRayquaza_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza.8bpp.lz");
const u32 gRaySceneRayquaza_Pal[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza.gbapal.lz");
const u32 gRaySceneRayquaza_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza.bin.lz");

const u32 gRaySceneOvercast_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/overcast.4bpp.lz");
const u32 gRaySceneOvercast_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/overcast.bin.lz");

const u32 gRaySceneRayquazaFly1_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza_fly1.4bpp.lz");
const u32 gRaySceneRayquazaTail_Gfx[] = INCBIN_U32( "graphics/rayquaza_scene/rayquaza_tail_fix.4bpp.lz");

const u32 gRaySceneOvercast2_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/overcast2.4bpp.lz");

const u32 gRaySceneRayquazaLight_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza_light.4bpp.lz");

const u32 gRaySceneOvercast2_Pal[] = INCBIN_U32("graphics/rayquaza_scene/overcast2.gbapal.lz");
const u32 gRaySceneOvercast2_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/overcast2.bin.lz");

const u32 gRaySceneRayquazaLight_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza_light.bin.lz");

const u32 gRaySceneChaseBg_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/chase_bg.4bpp.lz");
const u32 gRaySceneChaseBg_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/chase_bg.bin.lz");

const u32 gRaySceneChaseStreaks_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/chase_streaks.4bpp.lz");
const u32 gRaySceneChaseStreaks_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/chase_streaks.bin.lz");

const u32 gRaySceneRayquazaChase_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza_chase.4bpp.lz");
const u32 gRayChaseRayquazaChase_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza_chase.bin.lz");
const u32 gRayChaseRayquazaChase2_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza_chase2.bin.lz");

const u32 gRaySceneChase_Pal[] = INCBIN_U32("graphics/rayquaza_scene/chase.gbapal.lz");

const u32 gRaySceneGroudonLeft_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/groudon_left.4bpp.lz");
const u32 gRaySceneGroudonTail_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/groudon_tail.4bpp.lz");

const u32 gRaySceneKyogreRight_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/kyogre_right.4bpp.lz");

const u32 gRaySceneRayquazaHover_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza_hover.4bpp.lz");
const u32 gRaySceneRayquazaFlyIn_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza_flyin.4bpp.lz");

const u32 gRaySceneSplash_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/splash.4bpp.lz");

const u32 gRaySceneGroudonLeft_Pal[] = INCBIN_U32("graphics/rayquaza_scene/groudon_left.gbapal.lz");
const u32 gRaySceneKyogreRight_Pal[] = INCBIN_U32("graphics/rayquaza_scene/kyogre_right.gbapal.lz");
const u32 gRaySceneRayquazaHover_Pal[] = INCBIN_U32("graphics/rayquaza_scene/rayquaza_hover.gbapal.lz");

const u32 gRaySceneSplash_Pal[] = INCBIN_U32("graphics/rayquaza_scene/splash.gbapal.lz");

const u32 gRaySceneHushBg_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/hush_bg.4bpp.lz");
const u32 gRaySceneHushRing_Gfx[] = INCBIN_U32("graphics/rayquaza_scene/hush_ring.8bpp.lz");
const u32 gRaySceneHushBg_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/hush_bg.bin.lz");
const u32 gRaySceneHushRing_Tilemap[] = INCBIN_U32("graphics/rayquaza_scene/hush_ring.bin.lz");
const u32 gRaySceneHushRing_Map[] = INCBIN_U32("graphics/rayquaza_scene/hush_ring_map.bin.lz");
const u32 gRaySceneHushBg_Pal[] = INCBIN_U32("graphics/rayquaza_scene/hush_bg.gbapal.lz");
# 1212 "src/graphics.c" 2
# 1 "src/data/graphics/items.h" 1
const u32 gItemIcon_QuestionMark[] = INCBIN_U32("graphics/items/icons/question_mark.4bpp.lz");
const u32 gItemIconPalette_QuestionMark[] = INCBIN_U32("graphics/items/icon_palettes/question_mark.gbapal.lz");

const u32 gItemIcon_ReturnToFieldArrow[] = INCBIN_U32("graphics/items/icons/return_to_field_arrow.4bpp.lz");
const u32 gItemIconPalette_ReturnToFieldArrow[] = INCBIN_U32("graphics/items/icon_palettes/return_to_field_arrow.gbapal.lz");



const u32 gItemIcon_MasterBall[] = INCBIN_U32("graphics/items/icons/master_ball.4bpp.lz");
const u32 gItemIconPalette_MasterBall[] = INCBIN_U32("graphics/items/icon_palettes/master_ball.gbapal.lz");

const u32 gItemIcon_UltraBall[] = INCBIN_U32("graphics/items/icons/ultra_ball.4bpp.lz");
const u32 gItemIconPalette_UltraBall[] = INCBIN_U32("graphics/items/icon_palettes/ultra_ball.gbapal.lz");

const u32 gItemIcon_GreatBall[] = INCBIN_U32("graphics/items/icons/great_ball.4bpp.lz");
const u32 gItemIconPalette_GreatBall[] = INCBIN_U32("graphics/items/icon_palettes/great_ball.gbapal.lz");

const u32 gItemIcon_PokeBall[] = INCBIN_U32("graphics/items/icons/poke_ball.4bpp.lz");
const u32 gItemIconPalette_PokeBall[] = INCBIN_U32("graphics/items/icon_palettes/poke_ball.gbapal.lz");

const u32 gItemIcon_SafariBall[] = INCBIN_U32("graphics/items/icons/safari_ball.4bpp.lz");
const u32 gItemIconPalette_SafariBall[] = INCBIN_U32("graphics/items/icon_palettes/safari_ball.gbapal.lz");

const u32 gItemIcon_NetBall[] = INCBIN_U32("graphics/items/icons/net_ball.4bpp.lz");
const u32 gItemIconPalette_NetBall[] = INCBIN_U32("graphics/items/icon_palettes/net_ball.gbapal.lz");

const u32 gItemIcon_DiveBall[] = INCBIN_U32("graphics/items/icons/dive_ball.4bpp.lz");
const u32 gItemIconPalette_DiveBall[] = INCBIN_U32("graphics/items/icon_palettes/dive_ball.gbapal.lz");

const u32 gItemIcon_NestBall[] = INCBIN_U32("graphics/items/icons/nest_ball.4bpp.lz");
const u32 gItemIconPalette_NestBall[] = INCBIN_U32("graphics/items/icon_palettes/nest_ball.gbapal.lz");

const u32 gItemIcon_RepeatBall[] = INCBIN_U32("graphics/items/icons/repeat_ball.4bpp.lz");
const u32 gItemIconPalette_RepeatBall[] = INCBIN_U32("graphics/items/icon_palettes/repeat_ball.gbapal.lz");

const u32 gItemIcon_TimerBall[] = INCBIN_U32("graphics/items/icons/timer_ball.4bpp.lz");

const u32 gItemIcon_LuxuryBall[] = INCBIN_U32("graphics/items/icons/luxury_ball.4bpp.lz");
const u32 gItemIconPalette_LuxuryBall[] = INCBIN_U32("graphics/items/icon_palettes/luxury_ball.gbapal.lz");

const u32 gItemIcon_PremierBall[] = INCBIN_U32("graphics/items/icons/premier_ball.4bpp.lz");



const u32 gItemIcon_Potion[] = INCBIN_U32("graphics/items/icons/potion.4bpp.lz");
const u32 gItemIconPalette_Potion[] = INCBIN_U32("graphics/items/icon_palettes/potion.gbapal.lz");

const u32 gItemIcon_Antidote[] = INCBIN_U32("graphics/items/icons/antidote.4bpp.lz");
const u32 gItemIconPalette_Antidote[] = INCBIN_U32("graphics/items/icon_palettes/antidote.gbapal.lz");

const u32 gItemIconPalette_BurnHeal[] = INCBIN_U32("graphics/items/icon_palettes/burn_heal.gbapal.lz");
const u32 gItemIconPalette_IceHeal[] = INCBIN_U32("graphics/items/icon_palettes/ice_heal.gbapal.lz");
const u32 gItemIcon_StatusHeal[] = INCBIN_U32("graphics/items/icons/status_heal.4bpp.lz");
const u32 gItemIconPalette_Awakening[] = INCBIN_U32("graphics/items/icon_palettes/awakening.gbapal.lz");
const u32 gItemIconPalette_ParalyzeHeal[] = INCBIN_U32("graphics/items/icon_palettes/paralyze_heal.gbapal.lz");

const u32 gItemIcon_LargePotion[] = INCBIN_U32("graphics/items/icons/large_potion.4bpp.lz");
const u32 gItemIconPalette_FullRestore[] = INCBIN_U32("graphics/items/icon_palettes/full_restore.gbapal.lz");
const u32 gItemIconPalette_MaxPotion[] = INCBIN_U32("graphics/items/icon_palettes/max_potion.gbapal.lz");

const u32 gItemIconPalette_HyperPotion[] = INCBIN_U32("graphics/items/icon_palettes/hyper_potion.gbapal.lz");

const u32 gItemIconPalette_SuperPotion[] = INCBIN_U32("graphics/items/icon_palettes/super_potion.gbapal.lz");

const u32 gItemIcon_FullHeal[] = INCBIN_U32("graphics/items/icons/full_heal.4bpp.lz");
const u32 gItemIconPalette_FullHeal[] = INCBIN_U32("graphics/items/icon_palettes/full_heal.gbapal.lz");

const u32 gItemIcon_Revive[] = INCBIN_U32("graphics/items/icons/revive.4bpp.lz");

const u32 gItemIcon_MaxRevive[] = INCBIN_U32("graphics/items/icons/max_revive.4bpp.lz");

const u32 gItemIconPalette_Revive[] = INCBIN_U32("graphics/items/icon_palettes/revive.gbapal.lz");

const u32 gItemIcon_FreshWater[] = INCBIN_U32("graphics/items/icons/fresh_water.4bpp.lz");
const u32 gItemIconPalette_FreshWater[] = INCBIN_U32("graphics/items/icon_palettes/fresh_water.gbapal.lz");

const u32 gItemIcon_SodaPop[] = INCBIN_U32("graphics/items/icons/soda_pop.4bpp.lz");
const u32 gItemIconPalette_SodaPop[] = INCBIN_U32("graphics/items/icon_palettes/soda_pop.gbapal.lz");

const u32 gItemIcon_Lemonade[] = INCBIN_U32("graphics/items/icons/lemonade.4bpp.lz");
const u32 gItemIconPalette_Lemonade[] = INCBIN_U32("graphics/items/icon_palettes/lemonade.gbapal.lz");

const u32 gItemIcon_MoomooMilk[] = INCBIN_U32("graphics/items/icons/moomoo_milk.4bpp.lz");
const u32 gItemIconPalette_MoomooMilk[] = INCBIN_U32("graphics/items/icon_palettes/moomoo_milk.gbapal.lz");

const u32 gItemIcon_Powder[] = INCBIN_U32("graphics/items/icons/powder.4bpp.lz");
const u32 gItemIconPalette_EnergyPowder[] = INCBIN_U32("graphics/items/icon_palettes/energy_powder.gbapal.lz");

const u32 gItemIcon_EnergyRoot[] = INCBIN_U32("graphics/items/icons/energy_root.4bpp.lz");
const u32 gItemIconPalette_EnergyRoot[] = INCBIN_U32("graphics/items/icon_palettes/energy_root.gbapal.lz");

const u32 gItemIconPalette_HealPowder[] = INCBIN_U32("graphics/items/icon_palettes/heal_powder.gbapal.lz");

const u32 gItemIcon_RevivalHerb[] = INCBIN_U32("graphics/items/icons/revival_herb.4bpp.lz");
const u32 gItemIconPalette_RevivalHerb[] = INCBIN_U32("graphics/items/icon_palettes/revival_herb.gbapal.lz");

const u32 gItemIcon_Ether[] = INCBIN_U32("graphics/items/icons/ether.4bpp.lz");
const u32 gItemIconPalette_Ether[] = INCBIN_U32("graphics/items/icon_palettes/ether.gbapal.lz");
const u32 gItemIconPalette_MaxEther[] = INCBIN_U32("graphics/items/icon_palettes/max_ether.gbapal.lz");
const u32 gItemIconPalette_Elixir[] = INCBIN_U32("graphics/items/icon_palettes/elixir.gbapal.lz");
const u32 gItemIconPalette_MaxElixir[] = INCBIN_U32("graphics/items/icon_palettes/max_elixir.gbapal.lz");

const u32 gItemIcon_LavaCookie[] = INCBIN_U32("graphics/items/icons/lava_cookie.4bpp.lz");
const u32 gItemIconPalette_LavaCookieAndLetter[] = INCBIN_U32("graphics/items/icon_palettes/lava_cookie_and_letter.gbapal.lz");

const u32 gItemIcon_Flute[] = INCBIN_U32("graphics/items/icons/flute.4bpp.lz");
const u32 gItemIconPalette_BlueFlute[] = INCBIN_U32("graphics/items/icon_palettes/blue_flute.gbapal.lz");
const u32 gItemIconPalette_YellowFlute[] = INCBIN_U32("graphics/items/icon_palettes/yellow_flute.gbapal.lz");
const u32 gItemIconPalette_RedFlute[] = INCBIN_U32("graphics/items/icon_palettes/red_flute.gbapal.lz");
const u32 gItemIconPalette_BlackFlute[] = INCBIN_U32("graphics/items/icon_palettes/black_flute.gbapal.lz");
const u32 gItemIconPalette_WhiteFlute[] = INCBIN_U32("graphics/items/icon_palettes/white_flute.gbapal.lz");

const u32 gItemIcon_BerryJuice[] = INCBIN_U32("graphics/items/icons/berry_juice.4bpp.lz");
const u32 gItemIconPalette_BerryJuice[] = INCBIN_U32("graphics/items/icon_palettes/berry_juice.gbapal.lz");

const u32 gItemIcon_SacredAsh[] = INCBIN_U32("graphics/items/icons/sacred_ash.4bpp.lz");
const u32 gItemIconPalette_SacredAsh[] = INCBIN_U32("graphics/items/icon_palettes/sacred_ash.gbapal.lz");



const u32 gItemIconPalette_ShoalSalt[] = INCBIN_U32("graphics/items/icon_palettes/shoal_salt.gbapal.lz");

const u32 gItemIcon_ShoalShell[] = INCBIN_U32("graphics/items/icons/shoal_shell.4bpp.lz");
const u32 gItemIconPalette_Shell[] = INCBIN_U32("graphics/items/icon_palettes/shell.gbapal.lz");

const u32 gItemIcon_Shard[] = INCBIN_U32("graphics/items/icons/shard.4bpp.lz");
const u32 gItemIconPalette_RedShard[] = INCBIN_U32("graphics/items/icon_palettes/red_shard.gbapal.lz");
const u32 gItemIconPalette_BlueShard[] = INCBIN_U32("graphics/items/icon_palettes/blue_shard.gbapal.lz");
const u32 gItemIconPalette_YellowShard[] = INCBIN_U32("graphics/items/icon_palettes/yellow_shard.gbapal.lz");
const u32 gItemIconPalette_GreenShard[] = INCBIN_U32("graphics/items/icon_palettes/green_shard.gbapal.lz");



const u32 gItemIcon_HPUp[] = INCBIN_U32("graphics/items/icons/hp_up.4bpp.lz");
const u32 gItemIconPalette_HPUp[] = INCBIN_U32("graphics/items/icon_palettes/hp_up.gbapal.lz");

const u32 gItemIcon_Vitamin[] = INCBIN_U32("graphics/items/icons/vitamin.4bpp.lz");
const u32 gItemIconPalette_Protein[] = INCBIN_U32("graphics/items/icon_palettes/protein.gbapal.lz");
const u32 gItemIconPalette_Iron[] = INCBIN_U32("graphics/items/icon_palettes/iron.gbapal.lz");
const u32 gItemIconPalette_Carbos[] = INCBIN_U32("graphics/items/icon_palettes/carbos.gbapal.lz");
const u32 gItemIconPalette_Calcium[] = INCBIN_U32("graphics/items/icon_palettes/calcium.gbapal.lz");

const u32 gItemIcon_RareCandy[] = INCBIN_U32("graphics/items/icons/rare_candy.4bpp.lz");
const u32 gItemIconPalette_RareCandy[] = INCBIN_U32("graphics/items/icon_palettes/rare_candy.gbapal.lz");

const u32 gItemIcon_PPUp[] = INCBIN_U32("graphics/items/icons/pp_up.4bpp.lz");
const u32 gItemIconPalette_PPUp[] = INCBIN_U32("graphics/items/icon_palettes/pp_up.gbapal.lz");

const u32 gItemIconPalette_Zinc[] = INCBIN_U32("graphics/items/icon_palettes/zinc.gbapal.lz");

const u32 gItemIcon_PPMax[] = INCBIN_U32("graphics/items/icons/pp_max.4bpp.lz");
const u32 gItemIconPalette_PPMax[] = INCBIN_U32("graphics/items/icon_palettes/pp_max.gbapal.lz");



const u32 gItemIconPalette_GuardSpec[] = INCBIN_U32("graphics/items/icon_palettes/guard_spec.gbapal.lz");
const u32 gItemIconPalette_DireHit[] = INCBIN_U32("graphics/items/icon_palettes/dire_hit.gbapal.lz");
const u32 gItemIconPalette_XAttack[] = INCBIN_U32("graphics/items/icon_palettes/x_attack.gbapal.lz");
const u32 gItemIcon_BattleStatItem[] = INCBIN_U32("graphics/items/icons/battle_stat_item.4bpp.lz");
const u32 gItemIconPalette_XDefend[] = INCBIN_U32("graphics/items/icon_palettes/x_defend.gbapal.lz");
const u32 gItemIconPalette_XSpeed[] = INCBIN_U32("graphics/items/icon_palettes/x_speed.gbapal.lz");
const u32 gItemIconPalette_XAccuracy[] = INCBIN_U32("graphics/items/icon_palettes/x_accuracy.gbapal.lz");
const u32 gItemIconPalette_XSpecial[] = INCBIN_U32("graphics/items/icon_palettes/x_special.gbapal.lz");

const u32 gItemIcon_PokeDoll[] = INCBIN_U32("graphics/items/icons/poke_doll.4bpp.lz");
const u32 gItemIconPalette_PokeDoll[] = INCBIN_U32("graphics/items/icon_palettes/poke_doll.gbapal.lz");

const u32 gItemIcon_FluffyTail[] = INCBIN_U32("graphics/items/icons/fluffy_tail.4bpp.lz");
const u32 gItemIconPalette_FluffyTail[] = INCBIN_U32("graphics/items/icon_palettes/fluffy_tail.gbapal.lz");



const u32 gItemIcon_Repel[] = INCBIN_U32("graphics/items/icons/repel.4bpp.lz");
const u32 gItemIconPalette_SuperRepel[] = INCBIN_U32("graphics/items/icon_palettes/super_repel.gbapal.lz");
const u32 gItemIconPalette_MaxRepel[] = INCBIN_U32("graphics/items/icon_palettes/max_repel.gbapal.lz");

const u32 gItemIcon_EscapeRope[] = INCBIN_U32("graphics/items/icons/escape_rope.4bpp.lz");

const u32 gItemIconPalette_EscapeRope[] = INCBIN_U32("graphics/items/icon_palettes/escape_rope.gbapal.lz");

const u32 gItemIconPalette_Repel[] = INCBIN_U32("graphics/items/icon_palettes/repel.gbapal.lz");



const u32 gItemIcon_SunStone[] = INCBIN_U32("graphics/items/icons/sun_stone.4bpp.lz");
const u32 gItemIconPalette_SunStone[] = INCBIN_U32("graphics/items/icon_palettes/sun_stone.gbapal.lz");

const u32 gItemIcon_MoonStone[] = INCBIN_U32("graphics/items/icons/moon_stone.4bpp.lz");
const u32 gItemIconPalette_MoonStone[] = INCBIN_U32("graphics/items/icon_palettes/moon_stone.gbapal.lz");

const u32 gItemIcon_FireStone[] = INCBIN_U32("graphics/items/icons/fire_stone.4bpp.lz");
const u32 gItemIconPalette_FireStone[] = INCBIN_U32("graphics/items/icon_palettes/fire_stone.gbapal.lz");

const u32 gItemIcon_ThunderStone[] = INCBIN_U32("graphics/items/icons/thunder_stone.4bpp.lz");
const u32 gItemIconPalette_ThunderStone[] = INCBIN_U32("graphics/items/icon_palettes/thunder_stone.gbapal.lz");

const u32 gItemIcon_WaterStone[] = INCBIN_U32("graphics/items/icons/water_stone.4bpp.lz");
const u32 gItemIconPalette_WaterStone[] = INCBIN_U32("graphics/items/icon_palettes/water_stone.gbapal.lz");

const u32 gItemIcon_LeafStone[] = INCBIN_U32("graphics/items/icons/leaf_stone.4bpp.lz");
const u32 gItemIconPalette_LeafStone[] = INCBIN_U32("graphics/items/icon_palettes/leaf_stone.gbapal.lz");



const u32 gItemIcon_TinyMushroom[] = INCBIN_U32("graphics/items/icons/tiny_mushroom.4bpp.lz");
const u32 gItemIcon_BigMushroom[] = INCBIN_U32("graphics/items/icons/big_mushroom.4bpp.lz");
const u32 gItemIconPalette_Mushroom[] = INCBIN_U32("graphics/items/icon_palettes/mushroom.gbapal.lz");

const u32 gItemIcon_Pearl[] = INCBIN_U32("graphics/items/icons/pearl.4bpp.lz");
const u32 gItemIconPalette_Pearl[] = INCBIN_U32("graphics/items/icon_palettes/pearl.gbapal.lz");
const u32 gItemIcon_BigPearl[] = INCBIN_U32("graphics/items/icons/big_pearl.4bpp.lz");

const u32 gItemIcon_Stardust[] = INCBIN_U32("graphics/items/icons/stardust.4bpp.lz");
const u32 gItemIconPalette_Star[] = INCBIN_U32("graphics/items/icon_palettes/star.gbapal.lz");
const u32 gItemIcon_StarPiece[] = INCBIN_U32("graphics/items/icons/star_piece.4bpp.lz");

const u32 gItemIcon_Nugget[] = INCBIN_U32("graphics/items/icons/nugget.4bpp.lz");
const u32 gItemIconPalette_Nugget[] = INCBIN_U32("graphics/items/icon_palettes/nugget.gbapal.lz");

const u32 gItemIcon_HeartScale[] = INCBIN_U32("graphics/items/icons/heart_scale.4bpp.lz");
const u32 gItemIconPalette_HeartScale[] = INCBIN_U32("graphics/items/icon_palettes/heart_scale.gbapal.lz");



const u32 gItemIcon_OrangeMail[] = INCBIN_U32("graphics/items/icons/orange_mail.4bpp.lz");
const u32 gItemIconPalette_OrangeMail[] = INCBIN_U32("graphics/items/icon_palettes/orange_mail.gbapal.lz");

const u32 gItemIcon_HarborMail[] = INCBIN_U32("graphics/items/icons/harbor_mail.4bpp.lz");
const u32 gItemIconPalette_HarborMail[] = INCBIN_U32("graphics/items/icon_palettes/harbor_mail.gbapal.lz");

const u32 gItemIcon_GlitterMail[] = INCBIN_U32("graphics/items/icons/glitter_mail.4bpp.lz");
const u32 gItemIconPalette_GlitterMail[] = INCBIN_U32("graphics/items/icon_palettes/glitter_mail.gbapal.lz");

const u32 gItemIcon_MechMail[] = INCBIN_U32("graphics/items/icons/mech_mail.4bpp.lz");
const u32 gItemIconPalette_MechMail[] = INCBIN_U32("graphics/items/icon_palettes/mech_mail.gbapal.lz");

const u32 gItemIcon_WoodMail[] = INCBIN_U32("graphics/items/icons/wood_mail.4bpp.lz");
const u32 gItemIconPalette_WoodMail[] = INCBIN_U32("graphics/items/icon_palettes/wood_mail.gbapal.lz");

const u32 gItemIcon_WaveMail[] = INCBIN_U32("graphics/items/icons/wave_mail.4bpp.lz");
const u32 gItemIconPalette_WaveMail[] = INCBIN_U32("graphics/items/icon_palettes/wave_mail.gbapal.lz");

const u32 gItemIcon_BeadMail[] = INCBIN_U32("graphics/items/icons/bead_mail.4bpp.lz");
const u32 gItemIconPalette_BeadMail[] = INCBIN_U32("graphics/items/icon_palettes/bead_mail.gbapal.lz");

const u32 gItemIcon_ShadowMail[] = INCBIN_U32("graphics/items/icons/shadow_mail.4bpp.lz");
const u32 gItemIconPalette_ShadowMail[] = INCBIN_U32("graphics/items/icon_palettes/shadow_mail.gbapal.lz");

const u32 gItemIcon_TropicMail[] = INCBIN_U32("graphics/items/icons/tropic_mail.4bpp.lz");
const u32 gItemIconPalette_TropicMail[] = INCBIN_U32("graphics/items/icon_palettes/tropic_mail.gbapal.lz");

const u32 gItemIcon_DreamMail[] = INCBIN_U32("graphics/items/icons/dream_mail.4bpp.lz");
const u32 gItemIconPalette_DreamMail[] = INCBIN_U32("graphics/items/icon_palettes/dream_mail.gbapal.lz");

const u32 gItemIcon_FabMail[] = INCBIN_U32("graphics/items/icons/fab_mail.4bpp.lz");
const u32 gItemIconPalette_FabMail[] = INCBIN_U32("graphics/items/icon_palettes/fab_mail.gbapal.lz");

const u32 gItemIcon_RetroMail[] = INCBIN_U32("graphics/items/icons/retro_mail.4bpp.lz");
const u32 gItemIconPalette_RetroMail[] = INCBIN_U32("graphics/items/icon_palettes/retro_mail.gbapal.lz");



const u32 gItemIcon_CheriBerry[] = INCBIN_U32("graphics/items/icons/cheri_berry.4bpp.lz");
const u32 gItemIconPalette_CheriBerry[] = INCBIN_U32("graphics/items/icon_palettes/cheri_berry.gbapal.lz");

const u32 gItemIcon_ChestoBerry[] = INCBIN_U32("graphics/items/icons/chesto_berry.4bpp.lz");
const u32 gItemIconPalette_ChestoBerry[] = INCBIN_U32("graphics/items/icon_palettes/chesto_berry.gbapal.lz");

const u32 gItemIcon_PechaBerry[] = INCBIN_U32("graphics/items/icons/pecha_berry.4bpp.lz");
const u32 gItemIconPalette_PechaBerry[] = INCBIN_U32("graphics/items/icon_palettes/pecha_berry.gbapal.lz");

const u32 gItemIcon_RawstBerry[] = INCBIN_U32("graphics/items/icons/rawst_berry.4bpp.lz");
const u32 gItemIconPalette_RawstBerry[] = INCBIN_U32("graphics/items/icon_palettes/rawst_berry.gbapal.lz");

const u32 gItemIcon_AspearBerry[] = INCBIN_U32("graphics/items/icons/aspear_berry.4bpp.lz");
const u32 gItemIconPalette_AspearBerry[] = INCBIN_U32("graphics/items/icon_palettes/aspear_berry.gbapal.lz");

const u32 gItemIcon_LeppaBerry[] = INCBIN_U32("graphics/items/icons/leppa_berry.4bpp.lz");
const u32 gItemIconPalette_LeppaBerry[] = INCBIN_U32("graphics/items/icon_palettes/leppa_berry.gbapal.lz");

const u32 gItemIcon_OranBerry[] = INCBIN_U32("graphics/items/icons/oran_berry.4bpp.lz");
const u32 gItemIconPalette_OranBerry[] = INCBIN_U32("graphics/items/icon_palettes/oran_berry.gbapal.lz");

const u32 gItemIcon_PersimBerry[] = INCBIN_U32("graphics/items/icons/persim_berry.4bpp.lz");
const u32 gItemIconPalette_PersimBerry[] = INCBIN_U32("graphics/items/icon_palettes/persim_berry.gbapal.lz");

const u32 gItemIcon_LumBerry[] = INCBIN_U32("graphics/items/icons/lum_berry.4bpp.lz");
const u32 gItemIconPalette_LumBerry[] = INCBIN_U32("graphics/items/icon_palettes/lum_berry.gbapal.lz");

const u32 gItemIcon_SitrusBerry[] = INCBIN_U32("graphics/items/icons/sitrus_berry.4bpp.lz");
const u32 gItemIconPalette_SitrusBerry[] = INCBIN_U32("graphics/items/icon_palettes/sitrus_berry.gbapal.lz");

const u32 gItemIcon_FigyBerry[] = INCBIN_U32("graphics/items/icons/figy_berry.4bpp.lz");
const u32 gItemIconPalette_FigyBerry[] = INCBIN_U32("graphics/items/icon_palettes/figy_berry.gbapal.lz");

const u32 gItemIcon_WikiBerry[] = INCBIN_U32("graphics/items/icons/wiki_berry.4bpp.lz");
const u32 gItemIconPalette_WikiBerry[] = INCBIN_U32("graphics/items/icon_palettes/wiki_berry.gbapal.lz");

const u32 gItemIcon_MagoBerry[] = INCBIN_U32("graphics/items/icons/mago_berry.4bpp.lz");
const u32 gItemIconPalette_MagoBerry[] = INCBIN_U32("graphics/items/icon_palettes/mago_berry.gbapal.lz");

const u32 gItemIcon_AguavBerry[] = INCBIN_U32("graphics/items/icons/aguav_berry.4bpp.lz");
const u32 gItemIconPalette_AguavBerry[] = INCBIN_U32("graphics/items/icon_palettes/aguav_berry.gbapal.lz");

const u32 gItemIcon_IapapaBerry[] = INCBIN_U32("graphics/items/icons/iapapa_berry.4bpp.lz");
const u32 gItemIconPalette_IapapaBerry[] = INCBIN_U32("graphics/items/icon_palettes/iapapa_berry.gbapal.lz");

const u32 gItemIcon_RazzBerry[] = INCBIN_U32("graphics/items/icons/razz_berry.4bpp.lz");
const u32 gItemIconPalette_RazzBerry[] = INCBIN_U32("graphics/items/icon_palettes/razz_berry.gbapal.lz");

const u32 gItemIcon_BlukBerry[] = INCBIN_U32("graphics/items/icons/bluk_berry.4bpp.lz");
const u32 gItemIconPalette_BlukBerry[] = INCBIN_U32("graphics/items/icon_palettes/bluk_berry.gbapal.lz");

const u32 gItemIcon_NanabBerry[] = INCBIN_U32("graphics/items/icons/nanab_berry.4bpp.lz");
const u32 gItemIconPalette_NanabBerry[] = INCBIN_U32("graphics/items/icon_palettes/nanab_berry.gbapal.lz");

const u32 gItemIcon_WepearBerry[] = INCBIN_U32("graphics/items/icons/wepear_berry.4bpp.lz");
const u32 gItemIconPalette_WepearBerry[] = INCBIN_U32("graphics/items/icon_palettes/wepear_berry.gbapal.lz");

const u32 gItemIcon_PinapBerry[] = INCBIN_U32("graphics/items/icons/pinap_berry.4bpp.lz");
const u32 gItemIconPalette_PinapBerry[] = INCBIN_U32("graphics/items/icon_palettes/pinap_berry.gbapal.lz");

const u32 gItemIcon_PomegBerry[] = INCBIN_U32("graphics/items/icons/pomeg_berry.4bpp.lz");
const u32 gItemIconPalette_PomegBerry[] = INCBIN_U32("graphics/items/icon_palettes/pomeg_berry.gbapal.lz");

const u32 gItemIcon_KelpsyBerry[] = INCBIN_U32("graphics/items/icons/kelpsy_berry.4bpp.lz");
const u32 gItemIconPalette_KelpsyBerry[] = INCBIN_U32("graphics/items/icon_palettes/kelpsy_berry.gbapal.lz");

const u32 gItemIcon_QualotBerry[] = INCBIN_U32("graphics/items/icons/qualot_berry.4bpp.lz");
const u32 gItemIconPalette_QualotBerry[] = INCBIN_U32("graphics/items/icon_palettes/qualot_berry.gbapal.lz");

const u32 gItemIcon_HondewBerry[] = INCBIN_U32("graphics/items/icons/hondew_berry.4bpp.lz");
const u32 gItemIconPalette_HondewBerry[] = INCBIN_U32("graphics/items/icon_palettes/hondew_berry.gbapal.lz");

const u32 gItemIcon_GrepaBerry[] = INCBIN_U32("graphics/items/icons/grepa_berry.4bpp.lz");
const u32 gItemIconPalette_GrepaBerry[] = INCBIN_U32("graphics/items/icon_palettes/grepa_berry.gbapal.lz");

const u32 gItemIcon_TamatoBerry[] = INCBIN_U32("graphics/items/icons/tamato_berry.4bpp.lz");
const u32 gItemIconPalette_TamatoBerry[] = INCBIN_U32("graphics/items/icon_palettes/tamato_berry.gbapal.lz");

const u32 gItemIcon_CornnBerry[] = INCBIN_U32("graphics/items/icons/cornn_berry.4bpp.lz");
const u32 gItemIconPalette_CornnBerry[] = INCBIN_U32("graphics/items/icon_palettes/cornn_berry.gbapal.lz");

const u32 gItemIcon_MagostBerry[] = INCBIN_U32("graphics/items/icons/magost_berry.4bpp.lz");
const u32 gItemIconPalette_MagostBerry[] = INCBIN_U32("graphics/items/icon_palettes/magost_berry.gbapal.lz");

const u32 gItemIcon_RabutaBerry[] = INCBIN_U32("graphics/items/icons/rabuta_berry.4bpp.lz");
const u32 gItemIconPalette_RabutaBerry[] = INCBIN_U32("graphics/items/icon_palettes/rabuta_berry.gbapal.lz");

const u32 gItemIcon_NomelBerry[] = INCBIN_U32("graphics/items/icons/nomel_berry.4bpp.lz");
const u32 gItemIconPalette_NomelBerry[] = INCBIN_U32("graphics/items/icon_palettes/nomel_berry.gbapal.lz");

const u32 gItemIcon_SpelonBerry[] = INCBIN_U32("graphics/items/icons/spelon_berry.4bpp.lz");
const u32 gItemIconPalette_SpelonBerry[] = INCBIN_U32("graphics/items/icon_palettes/spelon_berry.gbapal.lz");

const u32 gItemIcon_PamtreBerry[] = INCBIN_U32("graphics/items/icons/pamtre_berry.4bpp.lz");
const u32 gItemIconPalette_PamtreBerry[] = INCBIN_U32("graphics/items/icon_palettes/pamtre_berry.gbapal.lz");

const u32 gItemIcon_WatmelBerry[] = INCBIN_U32("graphics/items/icons/watmel_berry.4bpp.lz");
const u32 gItemIconPalette_WatmelBerry[] = INCBIN_U32("graphics/items/icon_palettes/watmel_berry.gbapal.lz");

const u32 gItemIcon_DurinBerry[] = INCBIN_U32("graphics/items/icons/durin_berry.4bpp.lz");
const u32 gItemIconPalette_DurinBerry[] = INCBIN_U32("graphics/items/icon_palettes/durin_berry.gbapal.lz");

const u32 gItemIcon_BelueBerry[] = INCBIN_U32("graphics/items/icons/belue_berry.4bpp.lz");
const u32 gItemIconPalette_BelueBerry[] = INCBIN_U32("graphics/items/icon_palettes/belue_berry.gbapal.lz");

const u32 gItemIcon_LiechiBerry[] = INCBIN_U32("graphics/items/icons/liechi_berry.4bpp.lz");
const u32 gItemIconPalette_LiechiBerry[] = INCBIN_U32("graphics/items/icon_palettes/liechi_berry.gbapal.lz");

const u32 gItemIcon_GanlonBerry[] = INCBIN_U32("graphics/items/icons/ganlon_berry.4bpp.lz");
const u32 gItemIconPalette_GanlonBerry[] = INCBIN_U32("graphics/items/icon_palettes/ganlon_berry.gbapal.lz");

const u32 gItemIcon_SalacBerry[] = INCBIN_U32("graphics/items/icons/salac_berry.4bpp.lz");
const u32 gItemIconPalette_SalacBerry[] = INCBIN_U32("graphics/items/icon_palettes/salac_berry.gbapal.lz");

const u32 gItemIcon_PetayaBerry[] = INCBIN_U32("graphics/items/icons/petaya_berry.4bpp.lz");
const u32 gItemIconPalette_PetayaBerry[] = INCBIN_U32("graphics/items/icon_palettes/petaya_berry.gbapal.lz");

const u32 gItemIcon_ApicotBerry[] = INCBIN_U32("graphics/items/icons/apicot_berry.4bpp.lz");
const u32 gItemIconPalette_ApicotBerry[] = INCBIN_U32("graphics/items/icon_palettes/apicot_berry.gbapal.lz");

const u32 gItemIcon_LansatBerry[] = INCBIN_U32("graphics/items/icons/lansat_berry.4bpp.lz");
const u32 gItemIconPalette_LansatBerry[] = INCBIN_U32("graphics/items/icon_palettes/lansat_berry.gbapal.lz");

const u32 gItemIcon_StarfBerry[] = INCBIN_U32("graphics/items/icons/starf_berry.4bpp.lz");
const u32 gItemIconPalette_StarfBerry[] = INCBIN_U32("graphics/items/icon_palettes/starf_berry.gbapal.lz");

const u32 gItemIcon_EnigmaBerry[] = INCBIN_U32("graphics/items/icons/enigma_berry.4bpp.lz");
const u32 gItemIconPalette_EnigmaBerry[] = INCBIN_U32("graphics/items/icon_palettes/enigma_berry.gbapal.lz");



const u32 gItemIcon_BrightPowder[] = INCBIN_U32("graphics/items/icons/bright_powder.4bpp.lz");
const u32 gItemIconPalette_BrightPowder[] = INCBIN_U32("graphics/items/icon_palettes/bright_powder.gbapal.lz");

const u32 gItemIcon_InBattleHerb[] = INCBIN_U32("graphics/items/icons/in_battle_herb.4bpp.lz");
const u32 gItemIconPalette_WhiteHerb[] = INCBIN_U32("graphics/items/icon_palettes/white_herb.gbapal.lz");

const u32 gItemIcon_MachoBrace[] = INCBIN_U32("graphics/items/icons/macho_brace.4bpp.lz");
const u32 gItemIconPalette_MachoBrace[] = INCBIN_U32("graphics/items/icon_palettes/macho_brace.gbapal.lz");

const u32 gItemIcon_ExpShare[] = INCBIN_U32("graphics/items/icons/exp_share.4bpp.lz");
const u32 gItemIconPalette_ExpShare[] = INCBIN_U32("graphics/items/icon_palettes/exp_share.gbapal.lz");

const u32 gItemIcon_QuickClaw[] = INCBIN_U32("graphics/items/icons/quick_claw.4bpp.lz");
const u32 gItemIconPalette_QuickClaw[] = INCBIN_U32("graphics/items/icon_palettes/quick_claw.gbapal.lz");

const u32 gItemIcon_SootheBell[] = INCBIN_U32("graphics/items/icons/soothe_bell.4bpp.lz");
const u32 gItemIconPalette_SootheBell[] = INCBIN_U32("graphics/items/icon_palettes/soothe_bell.gbapal.lz");

const u32 gItemIconPalette_MentalHerb[] = INCBIN_U32("graphics/items/icon_palettes/mental_herb.gbapal.lz");

const u32 gItemIcon_ChoiceBand[] = INCBIN_U32("graphics/items/icons/choice_band.4bpp.lz");
const u32 gItemIconPalette_ChoiceBand[] = INCBIN_U32("graphics/items/icon_palettes/choice_band.gbapal.lz");

const u32 gItemIcon_KingsRock[] = INCBIN_U32("graphics/items/icons/kings_rock.4bpp.lz");
const u32 gItemIconPalette_KingsRock[] = INCBIN_U32("graphics/items/icon_palettes/kings_rock.gbapal.lz");

const u32 gItemIcon_SilverPowder[] = INCBIN_U32("graphics/items/icons/silver_powder.4bpp.lz");
const u32 gItemIconPalette_SilverPowder[] = INCBIN_U32("graphics/items/icon_palettes/silver_powder.gbapal.lz");

const u32 gItemIcon_AmuletCoin[] = INCBIN_U32("graphics/items/icons/amulet_coin.4bpp.lz");
const u32 gItemIconPalette_AmuletCoin[] = INCBIN_U32("graphics/items/icon_palettes/amulet_coin.gbapal.lz");

const u32 gItemIcon_CleanseTag[] = INCBIN_U32("graphics/items/icons/cleanse_tag.4bpp.lz");
const u32 gItemIconPalette_CleanseTag[] = INCBIN_U32("graphics/items/icon_palettes/cleanse_tag.gbapal.lz");

const u32 gItemIcon_SoulDew[] = INCBIN_U32("graphics/items/icons/soul_dew.4bpp.lz");
const u32 gItemIconPalette_SoulDew[] = INCBIN_U32("graphics/items/icon_palettes/soul_dew.gbapal.lz");

const u32 gItemIcon_DeepSeaTooth[] = INCBIN_U32("graphics/items/icons/deep_sea_tooth.4bpp.lz");
const u32 gItemIconPalette_DeepSeaTooth[] = INCBIN_U32("graphics/items/icon_palettes/deep_sea_tooth.gbapal.lz");

const u32 gItemIcon_DeepSeaScale[] = INCBIN_U32("graphics/items/icons/deep_sea_scale.4bpp.lz");
const u32 gItemIconPalette_DeepSeaScale[] = INCBIN_U32("graphics/items/icon_palettes/deep_sea_scale.gbapal.lz");

const u32 gItemIcon_SmokeBall[] = INCBIN_U32("graphics/items/icons/smoke_ball.4bpp.lz");
const u32 gItemIconPalette_SmokeBall[] = INCBIN_U32("graphics/items/icon_palettes/smoke_ball.gbapal.lz");

const u32 gItemIcon_Everstone[] = INCBIN_U32("graphics/items/icons/everstone.4bpp.lz");
const u32 gItemIconPalette_Everstone[] = INCBIN_U32("graphics/items/icon_palettes/everstone.gbapal.lz");

const u32 gItemIcon_FocusBand[] = INCBIN_U32("graphics/items/icons/focus_band.4bpp.lz");
const u32 gItemIconPalette_FocusBand[] = INCBIN_U32("graphics/items/icon_palettes/focus_band.gbapal.lz");

const u32 gItemIcon_LuckyEgg[] = INCBIN_U32("graphics/items/icons/lucky_egg.4bpp.lz");
const u32 gItemIconPalette_LuckyEgg[] = INCBIN_U32("graphics/items/icon_palettes/lucky_egg.gbapal.lz");

const u32 gItemIcon_ScopeLens[] = INCBIN_U32("graphics/items/icons/scope_lens.4bpp.lz");
const u32 gItemIconPalette_ScopeLens[] = INCBIN_U32("graphics/items/icon_palettes/scope_lens.gbapal.lz");

const u32 gItemIcon_MetalCoat[] = INCBIN_U32("graphics/items/icons/metal_coat.4bpp.lz");
const u32 gItemIconPalette_MetalCoat[] = INCBIN_U32("graphics/items/icon_palettes/metal_coat.gbapal.lz");

const u32 gItemIcon_Leftovers[] = INCBIN_U32("graphics/items/icons/leftovers.4bpp.lz");
const u32 gItemIconPalette_Leftovers[] = INCBIN_U32("graphics/items/icon_palettes/leftovers.gbapal.lz");

const u32 gItemIcon_DragonScale[] = INCBIN_U32("graphics/items/icons/dragon_scale.4bpp.lz");
const u32 gItemIconPalette_DragonScale[] = INCBIN_U32("graphics/items/icon_palettes/dragon_scale.gbapal.lz");

const u32 gItemIcon_LightBall[] = INCBIN_U32("graphics/items/icons/light_ball.4bpp.lz");
const u32 gItemIconPalette_LightBall[] = INCBIN_U32("graphics/items/icon_palettes/light_ball.gbapal.lz");

const u32 gItemIcon_SoftSand[] = INCBIN_U32("graphics/items/icons/soft_sand.4bpp.lz");
const u32 gItemIconPalette_SoftSand[] = INCBIN_U32("graphics/items/icon_palettes/soft_sand.gbapal.lz");

const u32 gItemIcon_HardStone[] = INCBIN_U32("graphics/items/icons/hard_stone.4bpp.lz");
const u32 gItemIconPalette_HardStone[] = INCBIN_U32("graphics/items/icon_palettes/hard_stone.gbapal.lz");

const u32 gItemIcon_MiracleSeed[] = INCBIN_U32("graphics/items/icons/miracle_seed.4bpp.lz");
const u32 gItemIconPalette_MiracleSeed[] = INCBIN_U32("graphics/items/icon_palettes/miracle_seed.gbapal.lz");

const u32 gItemIcon_BlackGlasses[] = INCBIN_U32("graphics/items/icons/black_glasses.4bpp.lz");
const u32 gItemIconPalette_BlackTypeEnhancingItem[] = INCBIN_U32("graphics/items/icon_palettes/black_type_enhancing_item.gbapal.lz");

const u32 gItemIcon_BlackBelt[] = INCBIN_U32("graphics/items/icons/black_belt.4bpp.lz");

const u32 gItemIcon_Magnet[] = INCBIN_U32("graphics/items/icons/magnet.4bpp.lz");
const u32 gItemIconPalette_Magnet[] = INCBIN_U32("graphics/items/icon_palettes/magnet.gbapal.lz");

const u32 gItemIcon_MysticWater[] = INCBIN_U32("graphics/items/icons/mystic_water.4bpp.lz");
const u32 gItemIconPalette_MysticWater[] = INCBIN_U32("graphics/items/icon_palettes/mystic_water.gbapal.lz");

const u32 gItemIcon_SharpBeak[] = INCBIN_U32("graphics/items/icons/sharp_beak.4bpp.lz");
const u32 gItemIconPalette_SharpBeak[] = INCBIN_U32("graphics/items/icon_palettes/sharp_beak.gbapal.lz");

const u32 gItemIcon_PoisonBarb[] = INCBIN_U32("graphics/items/icons/poison_barb.4bpp.lz");
const u32 gItemIconPalette_PoisonBarb[] = INCBIN_U32("graphics/items/icon_palettes/poison_barb.gbapal.lz");

const u32 gItemIcon_NeverMeltIce[] = INCBIN_U32("graphics/items/icons/never_melt_ice.4bpp.lz");
const u32 gItemIconPalette_NeverMeltIce[] = INCBIN_U32("graphics/items/icon_palettes/never_melt_ice.gbapal.lz");

const u32 gItemIcon_SpellTag[] = INCBIN_U32("graphics/items/icons/spell_tag.4bpp.lz");
const u32 gItemIconPalette_SpellTag[] = INCBIN_U32("graphics/items/icon_palettes/spell_tag.gbapal.lz");

const u32 gItemIcon_TwistedSpoon[] = INCBIN_U32("graphics/items/icons/twisted_spoon.4bpp.lz");
const u32 gItemIconPalette_TwistedSpoon[] = INCBIN_U32("graphics/items/icon_palettes/twisted_spoon.gbapal.lz");

const u32 gItemIcon_Charcoal[] = INCBIN_U32("graphics/items/icons/charcoal.4bpp.lz");
const u32 gItemIconPalette_Charcoal[] = INCBIN_U32("graphics/items/icon_palettes/charcoal.gbapal.lz");

const u32 gItemIcon_DragonFang[] = INCBIN_U32("graphics/items/icons/dragon_fang.4bpp.lz");
const u32 gItemIconPalette_DragonFang[] = INCBIN_U32("graphics/items/icon_palettes/dragon_fang.gbapal.lz");

const u32 gItemIcon_SilkScarf[] = INCBIN_U32("graphics/items/icons/silk_scarf.4bpp.lz");
const u32 gItemIconPalette_SilkScarf[] = INCBIN_U32("graphics/items/icon_palettes/silk_scarf.gbapal.lz");

const u32 gItemIcon_UpGrade[] = INCBIN_U32("graphics/items/icons/up_grade.4bpp.lz");
const u32 gItemIconPalette_UpGrade[] = INCBIN_U32("graphics/items/icon_palettes/up_grade.gbapal.lz");

const u32 gItemIcon_ShellBell[] = INCBIN_U32("graphics/items/icons/shell_bell.4bpp.lz");

const u32 gItemIcon_SeaIncense[] = INCBIN_U32("graphics/items/icons/sea_incense.4bpp.lz");
const u32 gItemIconPalette_SeaIncense[] = INCBIN_U32("graphics/items/icon_palettes/sea_incense.gbapal.lz");

const u32 gItemIcon_LaxIncense[] = INCBIN_U32("graphics/items/icons/lax_incense.4bpp.lz");
const u32 gItemIconPalette_LaxIncense[] = INCBIN_U32("graphics/items/icon_palettes/lax_incense.gbapal.lz");

const u32 gItemIcon_LuckyPunch[] = INCBIN_U32("graphics/items/icons/lucky_punch.4bpp.lz");
const u32 gItemIconPalette_LuckyPunch[] = INCBIN_U32("graphics/items/icon_palettes/lucky_punch.gbapal.lz");

const u32 gItemIcon_MetalPowder[] = INCBIN_U32("graphics/items/icons/metal_powder.4bpp.lz");
const u32 gItemIconPalette_MetalPowder[] = INCBIN_U32("graphics/items/icon_palettes/metal_powder.gbapal.lz");

const u32 gItemIcon_ThickClub[] = INCBIN_U32("graphics/items/icons/thick_club.4bpp.lz");
const u32 gItemIconPalette_ThickClub[] = INCBIN_U32("graphics/items/icon_palettes/thick_club.gbapal.lz");

const u32 gItemIcon_Stick[] = INCBIN_U32("graphics/items/icons/stick.4bpp.lz");
const u32 gItemIconPalette_Stick[] = INCBIN_U32("graphics/items/icon_palettes/stick.gbapal.lz");

const u32 gItemIcon_Scarf[] = INCBIN_U32("graphics/items/icons/scarf.4bpp.lz");
const u32 gItemIconPalette_RedScarf[] = INCBIN_U32("graphics/items/icon_palettes/red_scarf.gbapal.lz");
const u32 gItemIconPalette_BlueScarf[] = INCBIN_U32("graphics/items/icon_palettes/blue_scarf.gbapal.lz");
const u32 gItemIconPalette_PinkScarf[] = INCBIN_U32("graphics/items/icon_palettes/pink_scarf.gbapal.lz");
const u32 gItemIconPalette_GreenScarf[] = INCBIN_U32("graphics/items/icon_palettes/green_scarf.gbapal.lz");
const u32 gItemIconPalette_YellowScarf[] = INCBIN_U32("graphics/items/icon_palettes/yellow_scarf.gbapal.lz");



const u32 gItemIcon_MachBike[] = INCBIN_U32("graphics/items/icons/mach_bike.4bpp.lz");
const u32 gItemIconPalette_MachBike[] = INCBIN_U32("graphics/items/icon_palettes/mach_bike.gbapal.lz");

const u32 gItemIcon_CoinCase[] = INCBIN_U32("graphics/items/icons/coin_case.4bpp.lz");
const u32 gItemIconPalette_CoinCase[] = INCBIN_U32("graphics/items/icon_palettes/coin_case.gbapal.lz");

const u32 gItemIcon_Itemfinder[] = INCBIN_U32("graphics/items/icons/itemfinder.4bpp.lz");
const u32 gItemIconPalette_Itemfinder[] = INCBIN_U32("graphics/items/icon_palettes/itemfinder.gbapal.lz");

const u32 gItemIcon_OldRod[] = INCBIN_U32("graphics/items/icons/old_rod.4bpp.lz");
const u32 gItemIconPalette_OldRod[] = INCBIN_U32("graphics/items/icon_palettes/old_rod.gbapal.lz");

const u32 gItemIcon_GoodRod[] = INCBIN_U32("graphics/items/icons/good_rod.4bpp.lz");
const u32 gItemIconPalette_GoodRod[] = INCBIN_U32("graphics/items/icon_palettes/good_rod.gbapal.lz");

const u32 gItemIcon_SuperRod[] = INCBIN_U32("graphics/items/icons/super_rod.4bpp.lz");
const u32 gItemIconPalette_SuperRod[] = INCBIN_U32("graphics/items/icon_palettes/super_rod.gbapal.lz");

const u32 gItemIcon_SSTicket[] = INCBIN_U32("graphics/items/icons/ss_ticket.4bpp.lz");
const u32 gItemIconPalette_SSTicket[] = INCBIN_U32("graphics/items/icon_palettes/ss_ticket.gbapal.lz");

const u32 gItemIcon_ContestPass[] = INCBIN_U32("graphics/items/icons/contest_pass.4bpp.lz");
const u32 gItemIconPalette_ContestPass[] = INCBIN_U32("graphics/items/icon_palettes/contest_pass.gbapal.lz");

const u32 gItemIcon_WailmerPail[] = INCBIN_U32("graphics/items/icons/wailmer_pail.4bpp.lz");
const u32 gItemIconPalette_WailmerPail[] = INCBIN_U32("graphics/items/icon_palettes/wailmer_pail.gbapal.lz");

const u32 gItemIcon_DevonGoods[] = INCBIN_U32("graphics/items/icons/devon_goods.4bpp.lz");
const u32 gItemIconPalette_DevonGoods[] = INCBIN_U32("graphics/items/icon_palettes/devon_goods.gbapal.lz");

const u32 gItemIcon_SootSack[] = INCBIN_U32("graphics/items/icons/soot_sack.4bpp.lz");
const u32 gItemIconPalette_SootSack[] = INCBIN_U32("graphics/items/icon_palettes/soot_sack.gbapal.lz");

const u32 gItemIcon_BasementKey[] = INCBIN_U32("graphics/items/icons/basement_key.4bpp.lz");
const u32 gItemIconPalette_OldKey[] = INCBIN_U32("graphics/items/icon_palettes/old_key.gbapal.lz");

const u32 gItemIcon_AcroBike[] = INCBIN_U32("graphics/items/icons/acro_bike.4bpp.lz");
const u32 gItemIconPalette_AcroBike[] = INCBIN_U32("graphics/items/icon_palettes/acro_bike.gbapal.lz");

const u32 gItemIcon_PokeblockCase[] = INCBIN_U32("graphics/items/icons/pokeblock_case.4bpp.lz");
const u32 gItemIconPalette_PokeblockCase[] = INCBIN_U32("graphics/items/icon_palettes/pokeblock_case.gbapal.lz");

const u32 gItemIcon_Letter[] = INCBIN_U32("graphics/items/icons/letter.4bpp.lz");
const u32 gItemIcon_EonTicket[] = INCBIN_U32("graphics/items/icons/eon_ticket.4bpp.lz");

const u32 gItemIconPalette_EonTicket[] = INCBIN_U32("graphics/items/icon_palettes/eon_ticket.gbapal.lz");

const u32 gItemIcon_Orb[] = INCBIN_U32("graphics/items/icons/orb.4bpp.lz");
const u32 gItemIconPalette_RedOrb[] = INCBIN_U32("graphics/items/icon_palettes/red_orb.gbapal.lz");
const u32 gItemIconPalette_BlueOrb[] = INCBIN_U32("graphics/items/icon_palettes/blue_orb.gbapal.lz");

const u32 gItemIcon_Scanner[] = INCBIN_U32("graphics/items/icons/scanner.4bpp.lz");
const u32 gItemIconPalette_Scanner[] = INCBIN_U32("graphics/items/icon_palettes/scanner.gbapal.lz");

const u32 gItemIcon_GoGoggles[] = INCBIN_U32("graphics/items/icons/go_goggles.4bpp.lz");
const u32 gItemIconPalette_GoGoggles[] = INCBIN_U32("graphics/items/icon_palettes/go_goggles.gbapal.lz");

const u32 gItemIcon_Meteorite[] = INCBIN_U32("graphics/items/icons/meteorite.4bpp.lz");
const u32 gItemIconPalette_Meteorite[] = INCBIN_U32("graphics/items/icon_palettes/meteorite.gbapal.lz");

const u32 gItemIcon_Room1Key[] = INCBIN_U32("graphics/items/icons/room1_key.4bpp.lz");

const u32 gItemIcon_Room2Key[] = INCBIN_U32("graphics/items/icons/room2_key.4bpp.lz");

const u32 gItemIcon_Room4Key[] = INCBIN_U32("graphics/items/icons/room4_key.4bpp.lz");

const u32 gItemIcon_Room6Key[] = INCBIN_U32("graphics/items/icons/room6_key.4bpp.lz");

const u32 gItemIcon_StorageKey[] = INCBIN_U32("graphics/items/icons/storage_key.4bpp.lz");

const u32 gItemIcon_RootFossil[] = INCBIN_U32("graphics/items/icons/root_fossil.4bpp.lz");
const u32 gItemIconPalette_HoennFossil[] = INCBIN_U32("graphics/items/icon_palettes/hoenn_fossil.gbapal.lz");
const u32 gItemIcon_ClawFossil[] = INCBIN_U32("graphics/items/icons/claw_fossil.4bpp.lz");

const u32 gItemIcon_DevonScope[] = INCBIN_U32("graphics/items/icons/devon_scope.4bpp.lz");
const u32 gItemIconPalette_DevonScope[] = INCBIN_U32("graphics/items/icon_palettes/devon_scope.gbapal.lz");



const u32 gItemIcon_TM[] = INCBIN_U32("graphics/items/icons/tm.4bpp.lz");

const u32 gItemIconPalette_FightingTMHM[] = INCBIN_U32("graphics/items/icon_palettes/fighting_tm_hm.gbapal.lz");

const u32 gItemIconPalette_DragonTMHM[] = INCBIN_U32("graphics/items/icon_palettes/dragon_tm_hm.gbapal.lz");

const u32 gItemIconPalette_WaterTMHM[] = INCBIN_U32("graphics/items/icon_palettes/water_tm_hm.gbapal.lz");

const u32 gItemIconPalette_PsychicTMHM[] = INCBIN_U32("graphics/items/icon_palettes/psychic_tm_hm.gbapal.lz");

const u32 gItemIconPalette_NormalTMHM[] = INCBIN_U32("graphics/items/icon_palettes/normal_tm_hm.gbapal.lz");

const u32 gItemIconPalette_PoisonTMHM[] = INCBIN_U32("graphics/items/icon_palettes/poison_tm_hm.gbapal.lz");

const u32 gItemIconPalette_IceTMHM[] = INCBIN_U32("graphics/items/icon_palettes/ice_tm_hm.gbapal.lz");

const u32 gItemIconPalette_GrassTMHM[] = INCBIN_U32("graphics/items/icon_palettes/grass_tm_hm.gbapal.lz");

const u32 gItemIconPalette_FireTMHM[] = INCBIN_U32("graphics/items/icon_palettes/fire_tm_hm.gbapal.lz");

const u32 gItemIconPalette_DarkTMHM[] = INCBIN_U32("graphics/items/icon_palettes/dark_tm_hm.gbapal.lz");

const u32 gItemIconPalette_SteelTMHM[] = INCBIN_U32("graphics/items/icon_palettes/steel_tm_hm.gbapal.lz");

const u32 gItemIconPalette_ElectricTMHM[] = INCBIN_U32("graphics/items/icon_palettes/electric_tm_hm.gbapal.lz");

const u32 gItemIconPalette_GroundTMHM[] = INCBIN_U32("graphics/items/icon_palettes/ground_tm_hm.gbapal.lz");

const u32 gItemIconPalette_GhostTMHM[] = INCBIN_U32("graphics/items/icon_palettes/ghost_tm_hm.gbapal.lz");

const u32 gItemIconPalette_RockTMHM[] = INCBIN_U32("graphics/items/icon_palettes/rock_tm_hm.gbapal.lz");

const u32 gItemIconPalette_FlyingTMHM[] = INCBIN_U32("graphics/items/icon_palettes/flying_tm_hm.gbapal.lz");

const u32 gItemIcon_HM[] = INCBIN_U32("graphics/items/icons/hm.4bpp.lz");



const u32 gItemIcon_OaksParcel[] = INCBIN_U32("graphics/items/icons/oaks_parcel.4bpp.lz");
const u32 gItemIconPalette_OaksParcel[] = INCBIN_U32("graphics/items/icon_palettes/oaks_parcel.gbapal.lz");

const u32 gItemIcon_PokeFlute[] = INCBIN_U32("graphics/items/icons/poke_flute.4bpp.lz");
const u32 gItemIconPalette_PokeFlute[] = INCBIN_U32("graphics/items/icon_palettes/poke_flute.gbapal.lz");

const u32 gItemIcon_SecretKey[] = INCBIN_U32("graphics/items/icons/secret_key.4bpp.lz");
const u32 gItemIconPalette_SecretKey[] = INCBIN_U32("graphics/items/icon_palettes/secret_key.gbapal.lz");

const u32 gItemIcon_BikeVoucher[] = INCBIN_U32("graphics/items/icons/bike_voucher.4bpp.lz");
const u32 gItemIconPalette_BikeVoucher[] = INCBIN_U32("graphics/items/icon_palettes/bike_voucher.gbapal.lz");

const u32 gItemIcon_GoldTeeth[] = INCBIN_U32("graphics/items/icons/gold_teeth.4bpp.lz");
const u32 gItemIconPalette_GoldTeeth[] = INCBIN_U32("graphics/items/icon_palettes/gold_teeth.gbapal.lz");

const u32 gItemIcon_OldAmber[] = INCBIN_U32("graphics/items/icons/old_amber.4bpp.lz");
const u32 gItemIconPalette_OldAmber[] = INCBIN_U32("graphics/items/icon_palettes/old_amber.gbapal.lz");

const u32 gItemIcon_CardKey[] = INCBIN_U32("graphics/items/icons/card_key.4bpp.lz");
const u32 gItemIconPalette_CardKey[] = INCBIN_U32("graphics/items/icon_palettes/card_key.gbapal.lz");

const u32 gItemIcon_LiftKey[] = INCBIN_U32("graphics/items/icons/lift_key.4bpp.lz");
const u32 gItemIconPalette_Key[] = INCBIN_U32("graphics/items/icon_palettes/key.gbapal.lz");

const u32 gItemIcon_HelixFossil[] = INCBIN_U32("graphics/items/icons/helix_fossil.4bpp.lz");
const u32 gItemIconPalette_KantoFossil[] = INCBIN_U32("graphics/items/icon_palettes/kanto_fossil.gbapal.lz");
const u32 gItemIcon_DomeFossil[] = INCBIN_U32("graphics/items/icons/dome_fossil.4bpp.lz");

const u32 gItemIcon_SilphScope[] = INCBIN_U32("graphics/items/icons/silph_scope.4bpp.lz");
const u32 gItemIconPalette_SilphScope[] = INCBIN_U32("graphics/items/icon_palettes/silph_scope.gbapal.lz");

const u32 gItemIcon_Bicycle[] = INCBIN_U32("graphics/items/icons/bicycle.4bpp.lz");
const u32 gItemIconPalette_Bicycle[] = INCBIN_U32("graphics/items/icon_palettes/bicycle.gbapal.lz");

const u32 gItemIcon_TownMap[] = INCBIN_U32("graphics/items/icons/town_map.4bpp.lz");
const u32 gItemIconPalette_TownMap[] = INCBIN_U32("graphics/items/icon_palettes/town_map.gbapal.lz");

const u32 gItemIcon_VSSeeker[] = INCBIN_U32("graphics/items/icons/vs_seeker.4bpp.lz");
const u32 gItemIconPalette_VSSeeker[] = INCBIN_U32("graphics/items/icon_palettes/vs_seeker.gbapal.lz");

const u32 gItemIcon_FameChecker[] = INCBIN_U32("graphics/items/icons/fame_checker.4bpp.lz");
const u32 gItemIconPalette_FameChecker[] = INCBIN_U32("graphics/items/icon_palettes/fame_checker.gbapal.lz");

const u32 gItemIcon_TMCase[] = INCBIN_U32("graphics/items/icons/tm_case.4bpp.lz");
const u32 gItemIconPalette_TMCase[] = INCBIN_U32("graphics/items/icon_palettes/tm_case.gbapal.lz");

const u32 gItemIcon_BerryPouch[] = INCBIN_U32("graphics/items/icons/berry_pouch.4bpp.lz");
const u32 gItemIconPalette_BerryPouch[] = INCBIN_U32("graphics/items/icon_palettes/berry_pouch.gbapal.lz");

const u32 gItemIcon_TeachyTV[] = INCBIN_U32("graphics/items/icons/teachy_tv.4bpp.lz");
const u32 gItemIconPalette_TeachyTV[] = INCBIN_U32("graphics/items/icon_palettes/teachy_tv.gbapal.lz");

const u32 gItemIcon_TriPass[] = INCBIN_U32("graphics/items/icons/tri_pass.4bpp.lz");
const u32 gItemIconPalette_TriPass[] = INCBIN_U32("graphics/items/icon_palettes/tri_pass.gbapal.lz");

const u32 gItemIcon_RainbowPass[] = INCBIN_U32("graphics/items/icons/rainbow_pass.4bpp.lz");
const u32 gItemIconPalette_RainbowPass[] = INCBIN_U32("graphics/items/icon_palettes/rainbow_pass.gbapal.lz");

const u32 gItemIcon_Tea[] = INCBIN_U32("graphics/items/icons/tea.4bpp.lz");
const u32 gItemIconPalette_Tea[] = INCBIN_U32("graphics/items/icon_palettes/tea.gbapal.lz");

const u32 gItemIcon_MysticTicket[] = INCBIN_U32("graphics/items/icons/mystic_ticket.4bpp.lz");
const u32 gItemIconPalette_MysticTicket[] = INCBIN_U32("graphics/items/icon_palettes/mystic_ticket.gbapal.lz");

const u32 gItemIcon_AuroraTicket[] = INCBIN_U32("graphics/items/icons/aurora_ticket.4bpp.lz");
const u32 gItemIconPalette_AuroraTicket[] = INCBIN_U32("graphics/items/icon_palettes/aurora_ticket.gbapal.lz");

const u32 gItemIcon_PowderJar[] = INCBIN_U32("graphics/items/icons/powder_jar.4bpp.lz");
const u32 gItemIconPalette_PowderJar[] = INCBIN_U32("graphics/items/icon_palettes/powder_jar.gbapal.lz");

const u32 gItemIconPalette_Ruby[] = INCBIN_U32("graphics/items/icon_palettes/ruby.gbapal.lz");
const u32 gItemIcon_Gem[] = INCBIN_U32("graphics/items/icons/gem.4bpp.lz");
const u32 gItemIconPalette_Sapphire[] = INCBIN_U32("graphics/items/icon_palettes/sapphire.gbapal.lz");



const u32 gItemIcon_MagmaEmblem[] = INCBIN_U32("graphics/items/icons/magma_emblem.4bpp.lz");
const u32 gItemIconPalette_MagmaEmblem[] = INCBIN_U32("graphics/items/icon_palettes/magma_emblem.gbapal.lz");

const u32 gItemIcon_OldSeaMap[] = INCBIN_U32("graphics/items/icons/old_sea_map.4bpp.lz");
const u32 gItemIconPalette_OldSeaMap[] = INCBIN_U32("graphics/items/icon_palettes/old_sea_map.gbapal.lz");
# 1213 "src/graphics.c" 2
# 1 "src/data/graphics/decorations.h" 1
const u32 gDecorIcon_HeavyDesk[] = INCBIN_U32("graphics/decorations/heavy_desk.4bpp.lz");
const u32 gDecorIconPalette_HeavyDesk[] = INCBIN_U32("graphics/decorations/heavy_desk.gbapal.lz");

const u32 gDecorIcon_RaggedDesk[] = INCBIN_U32("graphics/decorations/ragged_desk.4bpp.lz");
const u32 gDecorIconPalette_RaggedDesk[] = INCBIN_U32("graphics/decorations/ragged_desk.gbapal.lz");

const u32 gDecorIcon_ComfortDesk[] = INCBIN_U32("graphics/decorations/comfort_desk.4bpp.lz");
const u32 gDecorIconPalette_ComfortDesk[] = INCBIN_U32("graphics/decorations/comfort_desk.gbapal.lz");

const u32 gDecorIcon_PrettyDesk[] = INCBIN_U32("graphics/decorations/pretty_desk.4bpp.lz");
const u32 gDecorIconPalette_PrettyDesk[] = INCBIN_U32("graphics/decorations/pretty_desk.gbapal.lz");

const u32 gDecorIcon_BrickDesk[] = INCBIN_U32("graphics/decorations/brick_desk.4bpp.lz");
const u32 gDecorIconPalette_BrickDesk[] = INCBIN_U32("graphics/decorations/brick_desk.gbapal.lz");

const u32 gDecorIcon_CampDesk[] = INCBIN_U32("graphics/decorations/camp_desk.4bpp.lz");
const u32 gDecorIconPalette_CampDesk[] = INCBIN_U32("graphics/decorations/camp_desk.gbapal.lz");

const u32 gDecorIcon_HardDesk[] = INCBIN_U32("graphics/decorations/hard_desk.4bpp.lz");
const u32 gDecorIconPalette_HardDesk[] = INCBIN_U32("graphics/decorations/hard_desk.gbapal.lz");

const u32 gDecorIcon_RedPlant[] = INCBIN_U32("graphics/decorations/red_plant.4bpp.lz");
const u32 gDecorIconPalette_RedPlant[] = INCBIN_U32("graphics/decorations/red_plant.gbapal.lz");

const u32 gDecorIcon_TropicalPlant[] = INCBIN_U32("graphics/decorations/tropical_plant.4bpp.lz");
const u32 gDecorIconPalette_TropicalPlant[] = INCBIN_U32("graphics/decorations/tropical_plant.gbapal.lz");

const u32 gDecorIcon_PrettyFlowers[] = INCBIN_U32("graphics/decorations/pretty_flowers.4bpp.lz");
const u32 gDecorIconPalette_PrettyFlowers[] = INCBIN_U32("graphics/decorations/pretty_flowers.gbapal.lz");

const u32 gDecorIcon_ColorfulPlant[] = INCBIN_U32("graphics/decorations/colorful_plant.4bpp.lz");
const u32 gDecorIconPalette_ColorfulPlant[] = INCBIN_U32("graphics/decorations/colorful_plant.gbapal.lz");

const u32 gDecorIcon_BigPlant[] = INCBIN_U32("graphics/decorations/big_plant.4bpp.lz");
const u32 gDecorIconPalette_BigPlant[] = INCBIN_U32("graphics/decorations/big_plant.gbapal.lz");

const u32 gDecorIcon_GorgeousPlant[] = INCBIN_U32("graphics/decorations/gorgeous_plant.4bpp.lz");
const u32 gDecorIconPalette_GorgeousPlant[] = INCBIN_U32("graphics/decorations/gorgeous_plant.gbapal.lz");

const u32 gDecorIcon_RedBrick[] = INCBIN_U32("graphics/decorations/red_brick.4bpp.lz");
const u32 gDecorIconPalette_RedBrick[] = INCBIN_U32("graphics/decorations/red_brick.gbapal.lz");

const u32 gDecorIcon_YellowBrick[] = INCBIN_U32("graphics/decorations/yellow_brick.4bpp.lz");
const u32 gDecorIconPalette_YellowBrick[] = INCBIN_U32("graphics/decorations/yellow_brick.gbapal.lz");

const u32 gDecorIcon_BlueBrick[] = INCBIN_U32("graphics/decorations/blue_brick.4bpp.lz");
const u32 gDecorIconPalette_BlueBrick[] = INCBIN_U32("graphics/decorations/blue_brick.gbapal.lz");

const u32 gDecorIcon_RedTent[] = INCBIN_U32("graphics/decorations/red_tent.4bpp.lz");
const u32 gDecorIconPalette_RedTent[] = INCBIN_U32("graphics/decorations/red_tent.gbapal.lz");

const u32 gDecorIcon_BlueTent[] = INCBIN_U32("graphics/decorations/blue_tent.4bpp.lz");
const u32 gDecorIconPalette_BlueTent[] = INCBIN_U32("graphics/decorations/blue_tent.gbapal.lz");

const u32 gDecorIcon_SolidBoard[] = INCBIN_U32("graphics/decorations/solid_board.4bpp.lz");
const u32 gDecorIconPalette_SolidBoard[] = INCBIN_U32("graphics/decorations/solid_board.gbapal.lz");

const u32 gDecorIcon_Slide[] = INCBIN_U32("graphics/decorations/slide.4bpp.lz");
const u32 gDecorIconPalette_Slide[] = INCBIN_U32("graphics/decorations/slide.gbapal.lz");

const u32 gDecorIcon_Tire[] = INCBIN_U32("graphics/decorations/tire.4bpp.lz");
const u32 gDecorIconPalette_Tire[] = INCBIN_U32("graphics/decorations/tire.gbapal.lz");

const u32 gDecorIcon_Stand[] = INCBIN_U32("graphics/decorations/stand.4bpp.lz");
const u32 gDecorIconPalette_Stand[] = INCBIN_U32("graphics/decorations/stand.gbapal.lz");

const u32 gDecorIcon_BreakableDoor[] = INCBIN_U32("graphics/decorations/breakable_door.4bpp.lz");
const u32 gDecorIconPalette_BreakableDoor[] = INCBIN_U32("graphics/decorations/breakable_door.gbapal.lz");

const u32 gDecorIcon_SandOrnament[] = INCBIN_U32("graphics/decorations/sand_ornament.4bpp.lz");
const u32 gDecorIconPalette_SandOrnament[] = INCBIN_U32("graphics/decorations/sand_ornament.gbapal.lz");

const u32 gDecorIcon_GlassOrnament[] = INCBIN_U32("graphics/decorations/glass_ornament.4bpp.lz");
const u32 gDecorIconPalette_GlassOrnament[] = INCBIN_U32("graphics/decorations/glass_ornament.gbapal.lz");

const u32 gDecorIcon_SurfMat[] = INCBIN_U32("graphics/decorations/surf_mat.4bpp.lz");
const u32 gDecorIconPalette_SurfMat[] = INCBIN_U32("graphics/decorations/surf_mat.gbapal.lz");

const u32 gDecorIcon_ThunderMat[] = INCBIN_U32("graphics/decorations/thunder_mat.4bpp.lz");
const u32 gDecorIconPalette_ThunderMat[] = INCBIN_U32("graphics/decorations/thunder_mat.gbapal.lz");

const u32 gDecorIcon_FireBlastMat[] = INCBIN_U32("graphics/decorations/fire_blast_mat.4bpp.lz");
const u32 gDecorIconPalette_FireBlastMat[] = INCBIN_U32("graphics/decorations/fire_blast_mat.gbapal.lz");

const u32 gDecorIcon_PowderSnowMat[] = INCBIN_U32("graphics/decorations/powder_snow_mat.4bpp.lz");
const u32 gDecorIconPalette_PowderSnowMat[] = INCBIN_U32("graphics/decorations/powder_snow_mat.gbapal.lz");

const u32 gDecorIcon_AttractMat[] = INCBIN_U32("graphics/decorations/attract_mat.4bpp.lz");
const u32 gDecorIconPalette_AttractMat[] = INCBIN_U32("graphics/decorations/attract_mat.gbapal.lz");

const u32 gDecorIcon_FissureMat[] = INCBIN_U32("graphics/decorations/fissure_mat.4bpp.lz");
const u32 gDecorIconPalette_FissureMat[] = INCBIN_U32("graphics/decorations/fissure_mat.gbapal.lz");

const u32 gDecorIcon_SpikesMat[] = INCBIN_U32("graphics/decorations/spikes_mat.4bpp.lz");
const u32 gDecorIconPalette_SpikesMat[] = INCBIN_U32("graphics/decorations/spikes_mat.gbapal.lz");

const u32 gDecorIcon_SnorlaxDoll[] = INCBIN_U32("graphics/decorations/snorlax_doll.4bpp.lz");
const u32 gDecorIconPalette_SnorlaxDoll[] = INCBIN_U32("graphics/decorations/snorlax_doll.gbapal.lz");

const u32 gDecorIcon_RhydonDoll[] = INCBIN_U32("graphics/decorations/rhydon_doll.4bpp.lz");
const u32 gDecorIconPalette_RhydonDoll[] = INCBIN_U32("graphics/decorations/rhydon_doll.gbapal.lz");

const u32 gDecorIcon_LaprasDoll[] = INCBIN_U32("graphics/decorations/lapras_doll.4bpp.lz");
const u32 gDecorIconPalette_LaprasDoll[] = INCBIN_U32("graphics/decorations/lapras_doll.gbapal.lz");

const u32 gDecorIcon_VenusaurDoll[] = INCBIN_U32("graphics/decorations/venusaur_doll.4bpp.lz");
const u32 gDecorIconPalette_VenusaurDoll[] = INCBIN_U32("graphics/decorations/venusaur_doll.gbapal.lz");

const u32 gDecorIcon_CharizardDoll[] = INCBIN_U32("graphics/decorations/charizard_doll.4bpp.lz");
const u32 gDecorIconPalette_CharizardDoll[] = INCBIN_U32("graphics/decorations/charizard_doll.gbapal.lz");

const u32 gDecorIcon_BlastoiseDoll[] = INCBIN_U32("graphics/decorations/blastoise_doll.4bpp.lz");
const u32 gDecorIconPalette_BlastoiseDoll[] = INCBIN_U32("graphics/decorations/blastoise_doll.gbapal.lz");

const u32 gDecorIcon_WailmerDoll[] = INCBIN_U32("graphics/decorations/wailmer_doll.4bpp.lz");
const u32 gDecorIconPalette_WailmerDoll[] = INCBIN_U32("graphics/decorations/wailmer_doll.gbapal.lz");

const u32 gDecorIcon_RegiceDoll[] = INCBIN_U32("graphics/decorations/regice_doll.4bpp.lz");
const u32 gDecorIconPalette_RegiceDoll[] = INCBIN_U32("graphics/decorations/regice_doll.gbapal.lz");

const u32 gDecorIcon_RegirockDoll[] = INCBIN_U32("graphics/decorations/regirock_doll.4bpp.lz");
const u32 gDecorIconPalette_RegirockDoll[] = INCBIN_U32("graphics/decorations/regirock_doll.gbapal.lz");

const u32 gDecorIcon_RegisteelDoll[] = INCBIN_U32("graphics/decorations/registeel_doll.4bpp.lz");
const u32 gDecorIconPalette_RegisteelDoll[] = INCBIN_U32("graphics/decorations/registeel_doll.gbapal.lz");
# 1214 "src/graphics.c" 2

const u32 gBattleAnimSpritePal_Shock3[] = INCBIN_U32("graphics/battle_anims/sprites/shock_3.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Shock3[] = INCBIN_U32("graphics/battle_anims/sprites/shock_3.4bpp.lz");

const u32 gBattleAnimSpritePal_WhiteFeather[] = INCBIN_U32("graphics/battle_anims/sprites/white_feather.gbapal.lz");
const u32 gBattleAnimSpriteGfx_WhiteFeather[] = INCBIN_U32("graphics/battle_anims/sprites/white_feather.4bpp.lz");

const u32 gBattleAnimSpritePal_Sparkle6[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_6.gbapal.lz");
const u32 gBattleAnimSpriteGfx_Sparkle6[] = INCBIN_U32("graphics/battle_anims/sprites/sparkle_6.4bpp.lz");

const u16 gUnknown_08DBA518[] = INCBIN_U16("graphics/misc/cable_car_bg.gbapal");
const u16 gCableCar_Pal[] = INCBIN_U16("graphics/misc/cable_car.gbapal");

const u32 gUnknown_08DBA5B8[] = INCBIN_U32("graphics/misc/cable_car_bg.4bpp.lz");
const u32 gCableCar_Gfx[] = INCBIN_U32("graphics/misc/cable_car.4bpp.lz");
const u32 gCableCarDoor_Gfx[] = INCBIN_U32("graphics/misc/cable_car_door.4bpp.lz");
const u32 gCableCarCord_Gfx[] = INCBIN_U32("graphics/misc/cable_car_cord.4bpp.lz");

const u32 gRouletteMenuTiles[] = INCBIN_U32("graphics/roulette/window.4bpp.lz");
const u32 gRouletteWheelTiles[] = INCBIN_U32("graphics/roulette/wheel.8bpp.lz");
const u32 gRouletteCenter_Gfx[] = INCBIN_U32("graphics/roulette/center.4bpp.lz");
const u32 gRouletteHeadersTiles[] = INCBIN_U32("graphics/roulette/headers.4bpp.lz");
const u32 gRouletteCreditTiles[] = INCBIN_U32("graphics/roulette/credit.4bpp.lz");
const u32 gRouletteNumbersTiles[] = INCBIN_U32("graphics/roulette/numbers.4bpp.lz");
const u32 gRouletteMultiplierTiles[] = INCBIN_U32("graphics/roulette/multiplier.4bpp.lz");

# 1 "src/data/graphics/mail.h" 1
const u16 gMailPalette_Orange[] = INCBIN_U16("graphics/mail/orange/palette.gbapal");
const u16 gMailPalette_Harbor[] = INCBIN_U16("graphics/mail/harbor/palette.gbapal");
const u16 gMailPalette_Glitter[] = INCBIN_U16("graphics/mail/glitter/palette.gbapal");
const u16 gMailPalette_Mech[] = INCBIN_U16("graphics/mail/mech/palette.gbapal");
const u16 gMailPalette_Wood[] = INCBIN_U16("graphics/mail/wood/palette.gbapal");
const u16 gMailPalette_Wave[] = INCBIN_U16("graphics/mail/wave/palette.gbapal");
const u16 gMailPalette_Bead[] = INCBIN_U16("graphics/mail/bead/palette.gbapal");
const u16 gMailPalette_Shadow[] = INCBIN_U16("graphics/mail/shadow/palette.gbapal");
const u16 gMailPalette_Tropic[] = INCBIN_U16("graphics/mail/tropic/palette.gbapal");
const u16 gMailPalette_Dream[] = INCBIN_U16("graphics/mail/dream/palette.gbapal");
const u16 gMailPalette_Fab[] = INCBIN_U16("graphics/mail/fab/palette.gbapal");
const u16 gMailPalette_Retro[] = INCBIN_U16("graphics/mail/retro/palette.gbapal");

const u32 gMailTiles_Orange[] = INCBIN_U32("graphics/mail/orange/tiles.4bpp.lz");
const u32 gMailTiles_Harbor[] = INCBIN_U32("graphics/mail/harbor/tiles.4bpp.lz");
const u32 gMailTiles_Glitter[] = INCBIN_U32("graphics/mail/glitter/tiles.4bpp.lz");
const u32 gMailTiles_Mech[] = INCBIN_U32("graphics/mail/mech/tiles.4bpp.lz");
const u32 gMailTiles_Wood[] = INCBIN_U32("graphics/mail/wood/tiles.4bpp.lz");
const u32 gMailTiles_Wave[] = INCBIN_U32("graphics/mail/wave/tiles.4bpp.lz");
const u32 gMailTiles_Bead[] = INCBIN_U32("graphics/mail/bead/tiles.4bpp.lz");
const u32 gMailTiles_Shadow[] = INCBIN_U32("graphics/mail/shadow/tiles.4bpp.lz");
const u32 gMailTiles_Tropic[] = INCBIN_U32("graphics/mail/tropic/tiles.4bpp.lz");
const u32 gMailTiles_Dream[] = INCBIN_U32("graphics/mail/dream/tiles.4bpp.lz");
const u32 gMailTiles_Fab[] = INCBIN_U32("graphics/mail/fab/tiles.4bpp.lz");
const u32 gMailTiles_Retro[] = INCBIN_U32("graphics/mail/retro/tiles.4bpp.lz");

const u32 gMailTilemap_Orange[] = INCBIN_U32("graphics/mail/orange/map.bin.lz");
const u32 gMailTilemap_Harbor[] = INCBIN_U32("graphics/mail/harbor/map.bin.lz");
const u32 gMailTilemap_Glitter[] = INCBIN_U32("graphics/mail/glitter/map.bin.lz");
const u32 gMailTilemap_Mech[] = INCBIN_U32("graphics/mail/mech/map.bin.lz");
const u32 gMailTilemap_Wood[] = INCBIN_U32("graphics/mail/wood/map.bin.lz");
const u32 gMailTilemap_Wave[] = INCBIN_U32("graphics/mail/wave/map.bin.lz");
const u32 gMailTilemap_Bead[] = INCBIN_U32("graphics/mail/bead/map.bin.lz");
const u32 gMailTilemap_Shadow[] = INCBIN_U32("graphics/mail/shadow/map.bin.lz");
const u32 gMailTilemap_Tropic[] = INCBIN_U32("graphics/mail/tropic/map.bin.lz");
const u32 gMailTilemap_Dream[] = INCBIN_U32("graphics/mail/dream/map.bin.lz");
const u32 gMailTilemap_Fab[] = INCBIN_U32("graphics/mail/fab/map.bin.lz");
const u32 gMailTilemap_Retro[] = INCBIN_U32("graphics/mail/retro/map.bin.lz");
# 1241 "src/graphics.c" 2

const u16 gFrontierFactorySelectMenu_Pal[] = INCBIN_U16("graphics/battle_frontier/factory_menu1.gbapal");
const u16 gFrontierFactorySelectMenu_Pal2[] = INCBIN_U16("graphics/battle_frontier/factory_menu2.gbapal");

const u8 gFrontierFactorySelectMenu_Gfx[] = INCBIN_U8("graphics/battle_frontier/factory_menu1.4bpp");
const u8 gFrontierFactorySelectMenu_Gfx2[] = INCBIN_U8("graphics/battle_frontier/factory_menu2.4bpp");

const u16 gFrontierFactorySelectMenu_Tilemap[] = INCBIN_U16("graphics/battle_frontier/factory_menu.bin");

const u32 gFrontierPassMedals_Gfx[] = INCBIN_U32("graphics/frontier_pass/medals.4bpp.lz");

const u16 gFrontierPassCursor_Pal[] = INCBIN_U16("graphics/frontier_pass/cursor.gbapal");

const u16 gFrontierPassMapCursor_Pal[] = INCBIN_U16("graphics/frontier_pass/map_cursor.gbapal");

const u16 gFrontierPassMedalsSilver_Pal[] = INCBIN_U16("graphics/frontier_pass/silver.gbapal");
const u16 gFrontierPassMedalsGold_Pal[] = INCBIN_U16("graphics/frontier_pass/gold.gbapal");


const u16 gPokedexBgHoenn_Pal[] = INCBIN_U16("graphics/pokedex/bg_hoenn.gbapal");
const u16 gPokedexCaughtScreen_Pal[] = INCBIN_U16("graphics/pokedex/caught_screen.gbapal");
const u16 gPokedexSearchResults_Pal[] = INCBIN_U16("graphics/pokedex/search_results_bg.gbapal");
const u16 gPokedexBgNational_Pal[] = INCBIN_U16("graphics/pokedex/bg_national.gbapal");
const u32 gPokedexMenu_Gfx[] = INCBIN_U32("graphics/pokedex/menu.4bpp.lz");
const u32 gPokedexInterface_Gfx[] = INCBIN_U32("graphics/pokedex/interface.4bpp.lz");
const u32 gUnused_PokedexNoBall[] = INCBIN_U32("graphics/pokedex/noball_unused.4bpp.lz");
const u32 gPokedexStartMenuMain_Tilemap[] = INCBIN_U32("graphics/pokedex/start_menu_main.bin.lz");
const u32 gPokedexStartMenuSearchResults_Tilemap[] = INCBIN_U32("graphics/pokedex/start_menu_search_results.bin.lz");
const u32 gPokedexList_Tilemap[] = INCBIN_U32("graphics/pokedex/list.bin.lz");
const u32 gPokedexListUnderlay_Tilemap[] = INCBIN_U32("graphics/pokedex/list_underlay.bin.lz");
const u32 gPokedexSizeScreen_Tilemap[] = INCBIN_U32("graphics/pokedex/size_screen.bin.lz");
const u32 gPokedexScreenSelectBarMain_Tilemap[] = INCBIN_U32("graphics/pokedex/screen_select_bar_main.bin.lz");
const u32 gPokedexScreenSelectBarSubmenu_Tilemap[] = INCBIN_U32("graphics/pokedex/screen_select_bar_submenu.bin.lz");
const u32 gPokedexInfoScreen_Tilemap[] = INCBIN_U32("graphics/pokedex/info_screen.bin.lz");
const u32 gPokedexCryScreen_Tilemap[] = INCBIN_U32("graphics/pokedex/cry_screen.bin.lz");
const u16 gPokedexSearchMenu_Pal[] = INCBIN_U16("graphics/pokedex/search_menu.gbapal");
const u32 gPokedexSearchMenu_Gfx[] = INCBIN_U32("graphics/pokedex/search_menu.4bpp.lz");
const u32 gPokedexSearchMenuNational_Tilemap[] = INCBIN_U32("graphics/pokedex/search_menu_national.bin.lz");
const u32 gPokedexSearchMenuHoenn_Tilemap[] = INCBIN_U32("graphics/pokedex/search_menu_hoenn.bin.lz");

const u16 gSummaryScreenPowAcc_Tilemap[] = INCBIN_U16("graphics/interface/powacc_tilemap.bin");
const u16 gSummaryScreenAppealJam_Tilemap[] = INCBIN_U16("graphics/interface/appealjam_tilemap.bin");
const u16 gSummaryScreenWindow_Tilemap[] = INCBIN_U16("graphics/interface/summary.bin");

const u16 gIntroCopyright_Pal[] = INCBIN_U16("graphics/intro/copyright.gbapal");
const u32 gIntroCopyright_Gfx[] = INCBIN_U32("graphics/intro/copyright.4bpp.lz");
const u32 gIntroCopyright_Tilemap[] = INCBIN_U32("graphics/intro/copyright.bin.lz");

const u16 gPokedexAreaScreenAreaUnknown_Pal[] = INCBIN_U16("graphics/pokedex/area_unknown.gbapal");
const u32 gPokedexAreaScreenAreaUnknown_Gfx[] = INCBIN_U32("graphics/pokedex/area_unknown.4bpp.lz");



const u16 gFireRedMenuElements1_Pal[] = INCBIN_U16("graphics/interface_fr/menu1.gbapal");
const u16 gFireRedMenuElements2_Pal[] = INCBIN_U16("graphics/interface_fr/menu2.gbapal");
const u16 gFireRedMenuElements3_Pal[] = INCBIN_U16("graphics/interface_fr/menu3.gbapal");
const u8 gFireRedMenuElements_Gfx[] = INCBIN_U8("graphics/interface_fr/menu.4bpp");

const u8 gBagMenuHMIcon_Gfx[] = INCBIN_U8("graphics/interface/hm.4bpp");



const u16 gUnknown_08DC63F8[] = INCBIN_U16("graphics/contest/clink_tilemap1.bin");
const u16 gUnknown_08DC6420[] = INCBIN_U16("graphics/contest/clink_tilemap2.bin");
const u16 gUnknown_08DC6448[] = INCBIN_U16("graphics/contest/clink_tilemap3.bin");
const u16 gUnknown_08DC6470[] = INCBIN_U16("graphics/contest/clink_tilemap4.bin");
const u16 gUnknown_08DC6498[] = INCBIN_U16("graphics/contest/clink_tilemap5.bin");
const u16 gUnknown_08DC64AC[] = INCBIN_U16("graphics/contest/clink_tilemap6.bin");
const u16 gUnknown_08DC64C0[] = INCBIN_U16("graphics/contest/clink_tilemap7.bin");
const u16 gUnknown_08DC64D4[] = INCBIN_U16("graphics/contest/clink_tilemap8.bin");
const u16 gUnknown_08DC64E8[] = INCBIN_U16("graphics/contest/clink_tilemap9.bin");
const u16 gUnknown_08DC64FC[] = INCBIN_U16("graphics/contest/clink_tilemap10.bin");
const u16 gUnknown_08DC6510[] = INCBIN_U16("graphics/contest/clink_tilemap11.bin");



const u16 gPokenavCondition_Pal[] = INCBIN_U16("graphics/pokenav/condition.gbapal");

const u32 gPokenavCondition_Gfx[] = INCBIN_U32("graphics/pokenav/condition.4bpp.lz");
const u32 gPokenavCondition_Tilemap[] = INCBIN_U32("graphics/pokenav/condition.bin.lz");

const u16 gPokenavOptions_Tilemap[] = INCBIN_U16("graphics/pokenav/options/options.bin");
const u32 gPokenavOptions_Gfx[] = INCBIN_U32("graphics/pokenav/options/options.4bpp.lz");
const u16 gPokenavOptions_Pal[] = INCBIN_U16("graphics/pokenav/options/options.gbapal");

const u16 gPokenavHeader_Pal[] = INCBIN_U16("graphics/pokenav/header.gbapal");
const u32 gPokenavHeader_Gfx[] = INCBIN_U32("graphics/pokenav/header.4bpp.lz");
const u32 gPokenavHeader_Tilemap[] = INCBIN_U32("graphics/pokenav/header.bin.lz");

const u16 gPokenavLeftHeader_Pal[] = INCBIN_U16("graphics/pokenav/left_headers/palette.gbapal");
const u32 gPokenavLeftHeaderBeauty_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/beauty.4bpp.lz");
const u32 gPokenavLeftHeaderSmart_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/smart.4bpp.lz");
const u32 gPokenavLeftHeaderCondition_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/condition.4bpp.lz");
const u32 gPokenavLeftHeaderCute_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/cute.4bpp.lz");
const u32 gPokenavLeftHeaderMatchCall_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/match_call.4bpp.lz");
const u32 gPokenavLeftHeaderMainMenu_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/main_menu.4bpp.lz");
const u32 gPokenavLeftHeaderHoennMap_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/hoenn_map.4bpp.lz");
const u32 gPokenavLeftHeaderRibbons_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/ribbons.4bpp.lz");
const u32 gPokenavLeftHeaderSearch_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/search.4bpp.lz");
const u32 gPokenavLeftHeaderTough_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/tough.4bpp.lz");
const u32 gPokenavLeftHeaderCool_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/cool.4bpp.lz");
const u32 gPokenavLeftHeaderParty_Gfx[] = INCBIN_U32("graphics/pokenav/left_headers/party.4bpp.lz");

const u16 gPokenavMessageBox_Pal[] = INCBIN_U16("graphics/pokenav/message.gbapal");
const u32 gPokenavMessageBox_Gfx[] = INCBIN_U32("graphics/pokenav/message.4bpp.lz");
const u32 gPokenavMessageBox_Tilemap[] = INCBIN_U32("graphics/pokenav/message.bin.lz");

const u16 gRegionMapCityZoomTiles_Pal[] = INCBIN_U16("graphics/pokenav/zoom_tiles.gbapal");
const u32 gRegionMapCityZoomText_Gfx[] = INCBIN_U32("graphics/pokenav/city_zoom_text.4bpp.lz");

const u16 gPokenavConditionCancel_Pal[] = INCBIN_U16("graphics/pokenav/cancel.gbapal");
const u8 gPokenavConditionCancel_Gfx[] = INCBIN_U8("graphics/pokenav/cancel.4bpp");

const u16 gPokenavConditionMarker_Pal[] = INCBIN_U16("graphics/pokenav/marker.gbapal");
const u8 gPokenavConditionMarker_Gfx[] = INCBIN_U8("graphics/pokenav/marker.4bpp");

const u16 gBerryBlenderMiscPalette[] = INCBIN_U16("graphics/berry_blender/misc.gbapal");

const u16 gBerryBlenderArrowPalette[] = INCBIN_U16("graphics/berry_blender/arrow.gbapal");

const u8 gBerryBlenderBetaArrow_Gfx[] = INCBIN_U8("graphics/berry_blender/arrow_old.4bpp");

const u8 gBerryBlenderMarubatsuTiles[] = INCBIN_U8("graphics/berry_blender/marubatsu.4bpp");

const u8 gBerryBlenderParticlesTiles[] = INCBIN_U8("graphics/berry_blender/particles.4bpp");

asm(".space 0x120");

const u8 gBerryBlenderCountdownNumbersTiles[] = INCBIN_U8("graphics/berry_blender/countdown_numbers.4bpp");

const u8 gBerryBlenderStartTiles[] = INCBIN_U8("graphics/berry_blender/start.4bpp");

asm(".space 0x200");

const u8 gBerryBlenderArrowTiles[] = INCBIN_U8("graphics/berry_blender/arrow.4bpp");

asm(".space 0x2C0");

const u16 gEasyChatCursor_Pal[] = INCBIN_U16("graphics/easy_chat/cursor.gbapal");
const u32 gEasyChatCursor_Gfx[] = INCBIN_U32("graphics/easy_chat/cursor.4bpp.lz");

const u16 gEasyChatRightWindow_Pal[] = INCBIN_U16("graphics/easy_chat/rwindow.gbapal");
const u32 gEasyChatRightWindow_Gfx[] = INCBIN_U32("graphics/easy_chat/rwindow.4bpp.lz");

const u32 gEasyChatMode_Gfx[] = INCBIN_U32("graphics/easy_chat/mode.4bpp.lz");
const u16 gEasyChatMode_Pal[] = INCBIN_U16("graphics/easy_chat/mode.gbapal");

const u32 gEasyChatWindow_Gfx[] = INCBIN_U32("graphics/easy_chat/window.4bpp.lz");
const u32 gEasyChatWindow_Tilemap[] = INCBIN_U32("graphics/easy_chat/window.bin.lz");

const u16 gWallclockMale_Pal[] = INCBIN_U16("graphics/interface/wallclock_male.gbapal");
const u16 gWallclockFemale_Pal[] = INCBIN_U16("graphics/interface/wallclock_female.gbapal");
const u32 gWallclock_Gfx[] = INCBIN_U32("graphics/interface/wallclock.4bpp.lz");
const u32 gUnknown_08DCC648[] = INCBIN_U32("graphics/interface/wallclock1.bin.lz");
const u32 gUnknown_08DCC908[] = INCBIN_U32("graphics/interface/wallclock2.bin.lz");

const u16 gUsePokeblockCondition_Pal[] = INCBIN_U16("graphics/pokeblock/use_screen/condition.gbapal");
const u32 gUsePokeblockCondition_Gfx[] = INCBIN_U32("graphics/pokeblock/use_screen/condition.4bpp.lz");

const u16 gUsePokeblockUpDown_Pal[] = INCBIN_U16("graphics/pokeblock/use_screen/updown.gbapal");
const u8 gUsePokeblockUpDown_Gfx[] = INCBIN_U8("graphics/pokeblock/use_screen/updown.4bpp");

const u16 gUsePokeblockGraph_Pal[] = INCBIN_U16("graphics/pokeblock/use_screen/graph.gbapal");
const u32 gUsePokeblockGraph_Gfx[] = INCBIN_U32("graphics/pokeblock/use_screen/graph.4bpp.lz");

const u32 gUsePokeblockGraph_Tilemap[] = INCBIN_U32("graphics/pokeblock/use_screen/graph.bin.lz");
const u16 gUsePokeblockNatureWin_Pal[] = INCBIN_U16("graphics/pokeblock/use_screen/nature.gbapal");

# 1 "src/data/graphics/slot_machine.h" 1
const u16 gSlotMachineMenu_Pal[] = INCBIN_U16("graphics/slot_machine/menu.gbapal");
const u32 gSlotMachineMenu_Gfx[] = INCBIN_U32("graphics/slot_machine/menu.4bpp.lz");
const u16 gSlotMachineMenu_Tilemap[] = INCBIN_U16("graphics/slot_machine/menu.bin");

const u16 gUnknown_08DCEC70[] = INCBIN_U16("graphics/slot_machine/slots_layout.bin");

const u16 gUnknown_08DCF170[] = INCBIN_U16("graphics/slot_machine/reel_symbols/1.gbapal");

const u16 gUnknown_08DCF190[] = INCBIN_U16("graphics/slot_machine/reel_pikachu.gbapal");

const u16 gUnknown_08DCF1B0[] = INCBIN_U16("graphics/slot_machine/shadow.gbapal");

const u16 gSlotMachineReelTime_Pal[] = INCBIN_U16("graphics/slot_machine/reel_time.gbapal");

const u16 gUnknown_08DCF1F0[] = INCBIN_U16("graphics/slot_machine/smoke.gbapal");

const u16 gUnknown_08DCF210[] = INCBIN_U16("graphics/slot_machine/reel_time_explosion/0.gbapal");

const u16 gUnknown_08DCF230[] = INCBIN_U16("graphics/slot_machine/spr6.gbapal");

const u8 gSlotMachineReelSymbol1Tiles[] = INCBIN_U8("graphics/slot_machine/reel_symbols/1.4bpp");
const u8 gSlotMachineReelSymbol2Tiles[] = INCBIN_U8("graphics/slot_machine/reel_symbols/2.4bpp");
const u8 gSlotMachineReelSymbol3Tiles[] = INCBIN_U8("graphics/slot_machine/reel_symbols/3.4bpp");
const u8 gSlotMachineReelSymbol4Tiles[] = INCBIN_U8("graphics/slot_machine/reel_symbols/4.4bpp");
const u8 gSlotMachineReelSymbol5Tiles[] = INCBIN_U8("graphics/slot_machine/reel_symbols/5.4bpp");
const u8 gSlotMachineReelSymbol6Tiles[] = INCBIN_U8("graphics/slot_machine/reel_symbols/6.4bpp");
const u8 gSlotMachineReelSymbol7Tiles[] = INCBIN_U8("graphics/slot_machine/reel_symbols/7.4bpp");

const u32 gSlotMachineReelTime_Gfx[] = INCBIN_U32("graphics/slot_machine/reel_time.4bpp.lz");

const u8 gSlotMachineNumber0Tiles[] = INCBIN_U8("graphics/slot_machine/numbers/0.4bpp");
const u8 gSlotMachineNumber1Tiles[] = INCBIN_U8("graphics/slot_machine/numbers/1.4bpp");
const u8 gSlotMachineNumber2Tiles[] = INCBIN_U8("graphics/slot_machine/numbers/2.4bpp");
const u8 gSlotMachineNumber3Tiles[] = INCBIN_U8("graphics/slot_machine/numbers/3.4bpp");
const u8 gSlotMachineNumber4Tiles[] = INCBIN_U8("graphics/slot_machine/numbers/4.4bpp");
const u8 gSlotMachineNumber5Tiles[] = INCBIN_U8("graphics/slot_machine/numbers/5.4bpp");
const u8 gSlotMachineNumber6Tiles[] = INCBIN_U8("graphics/slot_machine/numbers/6.4bpp");
const u8 gSlotMachineNumber7Tiles[] = INCBIN_U8("graphics/slot_machine/numbers/7.4bpp");
const u8 gSlotMachineNumber8Tiles[] = INCBIN_U8("graphics/slot_machine/numbers/8.4bpp");
const u8 gSlotMachineNumber9Tiles[] = INCBIN_U8("graphics/slot_machine/numbers/9.4bpp");

const u8 gSlotMachineReelTimeBolt[] = INCBIN_U8("graphics/slot_machine/bolt.4bpp");
const u8 gSlotMachineReelTimeDuck[] = INCBIN_U8("graphics/slot_machine/duck.4bpp");
const u8 gSlotMachineReelTimeSmoke[] = INCBIN_U8("graphics/slot_machine/smoke.4bpp");

const u8 gSlotMachineReelTimeNumber0[] = INCBIN_U8("graphics/slot_machine/reel_time_numbers/0.4bpp");
const u8 gSlotMachineReelTimeNumber1[] = INCBIN_U8("graphics/slot_machine/reel_time_numbers/1.4bpp");
const u8 gSlotMachineReelTimeNumber2[] = INCBIN_U8("graphics/slot_machine/reel_time_numbers/2.4bpp");
const u8 gSlotMachineReelTimeNumber3[] = INCBIN_U8("graphics/slot_machine/reel_time_numbers/3.4bpp");
const u8 gSlotMachineReelTimeNumber4[] = INCBIN_U8("graphics/slot_machine/reel_time_numbers/4.4bpp");
const u8 gSlotMachineReelTimeNumber5[] = INCBIN_U8("graphics/slot_machine/reel_time_numbers/5.4bpp");

const u8 gSlotMachineReelTimeLargeBolt0[] = INCBIN_U8("graphics/slot_machine/large_bolt/0.4bpp");
const u8 gSlotMachineReelTimeLargeBolt1[] = INCBIN_U8("graphics/slot_machine/large_bolt/1.4bpp");

const u8 gSlotMachineReelTimeExplosion0[] = INCBIN_U8("graphics/slot_machine/reel_time_explosion/0.4bpp");
const u8 gSlotMachineReelTimeExplosion1[] = INCBIN_U8("graphics/slot_machine/reel_time_explosion/1.4bpp");

const u8 gSlotMachineReelTimeShadow[] = INCBIN_U8("graphics/slot_machine/shadow.4bpp");
const u8 gSlotMachineReelTimePikaAura[] = INCBIN_U8("graphics/slot_machine/pika_aura.4bpp");

const u8 gUnknown_08DD19F8[] = INCBIN_U8("graphics/unknown/unknown_DD19F8.bin");
const u8 gUnknown_08DD1A18[] = INCBIN_U8("graphics/unknown/unknown_DD1A18.4bpp");
# 1410 "src/graphics.c" 2



const u16 gHoennTrainerCard0Star_Pal[] = INCBIN_U16("graphics/trainer_card/0star.gbapal");
const u32 gHoennTrainerCard_Gfx[] = INCBIN_U32("graphics/trainer_card/card.4bpp.lz");
const u32 gHoennTrainerCardBg_Tilemap[] = INCBIN_U32("graphics/trainer_card/bg.bin.lz");
const u32 gHoennTrainerCardFront_Tilemap[] = INCBIN_U32("graphics/trainer_card/front.bin.lz");
const u32 gHoennTrainerCardBack_Tilemap[] = INCBIN_U32("graphics/trainer_card/back.bin.lz");
const u32 gHoennTrainerCardFrontLink_Tilemap[] = INCBIN_U32("graphics/trainer_card/front_link.bin.lz");

const u16 gKantoTrainerCard0Star_Pal[] = INCBIN_U16("graphics/trainer_card/0star_fr.gbapal");
const u32 gKantoTrainerCard_Gfx[] = INCBIN_U32("graphics/trainer_card/card_fr.4bpp.lz");
const u32 gKantoTrainerCardBg_Tilemap[] = INCBIN_U32("graphics/trainer_card/bg_fr.bin.lz");
const u32 gKantoTrainerCardFront_Tilemap[] = INCBIN_U32("graphics/trainer_card/front_fr.bin.lz");
const u32 gKantoTrainerCardBack_Tilemap[] = INCBIN_U32("graphics/trainer_card/back_fr.bin.lz");
const u32 gKantoTrainerCardFrontLink_Tilemap[] = INCBIN_U32("graphics/trainer_card/front_link_fr.bin.lz");



const u32 gPSSMenu_Gfx[] = INCBIN_U32("graphics/pokemon_storage/menu.4bpp.lz");
const u16 gPSSMenu_Pal[] = INCBIN_U16("graphics/pokemon_storage/menu.gbapal");
const u32 gUnknown_08DD36C8[] = INCBIN_U32("graphics/unknown/unknown_DD36C8.bin.lz");



const u16 gNamingScreenMenu_Pal[] = INCBIN_U16("graphics/naming_screen/menu.gbapal");
const u32 gNamingScreenMenu_Gfx[] = INCBIN_U32("graphics/naming_screen/menu.4bpp.lz");
const u8 gNamingScreenRWindow_Gfx[] = INCBIN_U8("graphics/naming_screen/rwindow.4bpp");
const u8 gNamingScreenROptions_Gfx[] = INCBIN_U8("graphics/naming_screen/roptions.4bpp");
const u8 gNamingScreenCursor_Gfx[] = INCBIN_U8("graphics/naming_screen/cursor.4bpp");
const u8 gNamingScreenKeyboardButton_Gfx[] = INCBIN_U8("graphics/naming_screen/keyboard_button.4bpp");

const u8 gNamingScreenRightPointingTriangleTiles[] = INCBIN_U8("graphics/naming_screen/right_pointing_triangle.4bpp");
const u8 gNamingScreenUnderscoreTiles[] = INCBIN_U8("graphics/naming_screen/underscore.4bpp");

const u32 gUnknown_08DD4544[] = INCBIN_U32("graphics/unknown/unknown_DD4544.bin.lz");
const u32 gUnknown_08DD4620[] = INCBIN_U32("graphics/unknown/unknown_DD4620.bin.lz");
const u32 gUnknown_08DD46E0[] = INCBIN_U32("graphics/unknown/unknown_DD46E0.bin.lz");
const u32 gUnknown_08DD47A0[] = INCBIN_U32("graphics/unknown/unknown_DD47A0.bin.lz");



const u16 gLinkMiscMenu_Pal[] = INCBIN_U16("graphics/link/misc.gbapal");
const u32 gLinkMiscMenu_Gfx[] = INCBIN_U32("graphics/link/misc.4bpp.lz");
const u32 gLinkMiscMenu_Tilemap[] = INCBIN_U32("graphics/link/misc.bin.lz");

const u16 gUnknown_08DD4BB0[] = INCBIN_U16("graphics/link/link1.gbapal");
const u16 gUnknown_08DD4BD0[] = INCBIN_U16("graphics/link/link2.gbapal");

const u32 gUnknown_08DD4BF0[] = INCBIN_U32("graphics/link/link_winedge.4bpp.lz");
const u32 gUnknown_08DD4C4C[] = INCBIN_U32("graphics/link/link_winedge.bin.lz");

const u32 gUnknown_08DD4CF8[] = INCBIN_U32("graphics/interface/unk_change_case.4bpp.lz");

const u16 gTilesetPalettes_General[][16] =
{
    INCBIN_U16("data/tilesets/primary/general/palettes/00.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/01.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/02.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/03.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/04.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/05.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/06.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/07.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/08.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/09.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/10.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/11.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/12.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/13.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/14.gbapal"),
    INCBIN_U16("data/tilesets/primary/general/palettes/15.gbapal"),
};

const u32 gTilesetTiles_General[] = INCBIN_U32("data/tilesets/primary/general/tiles.4bpp.lz");



const u16 gTradeGba_Pal[] = INCBIN_U16("graphics/link/gba.gbapal");
const u16 gTradeGba2_Pal[] = INCBIN_U16("graphics/link/gba_pal2.gbapal");
const u8 gTradeGba_Gfx[] = INCBIN_U8("graphics/link/gba.4bpp");


asm(".space 0x20");

# 1 "src/data/graphics/berry_fix.h" 1
const u16 gBerryFixGameboy_Pal[] = INCBIN_U16("graphics/berry_fix/gba_small.gbapal");
const u32 gBerryFixGameboy_Gfx[] = INCBIN_U32("graphics/berry_fix/gba_small.4bpp.lz");
const u32 gBerryFixGameboy_Tilemap[] = INCBIN_U32("graphics/berry_fix/gba_small.bin.lz");

const u16 gBerryFixGameboyLogo_Pal[] = INCBIN_U16("graphics/berry_fix/logo.gbapal");
const u32 gBerryFixGameboyLogo_Gfx[] = INCBIN_U32("graphics/berry_fix/logo.4bpp.lz");
const u32 gBerryFixGameboyLogo_Tilemap[] = INCBIN_U32("graphics/berry_fix/logo.bin.lz");

const u16 gBerryFixGbaTransfer_Pal[] = INCBIN_U16("graphics/berry_fix/gba_transfer.gbapal");
const u32 gBerryFixGbaTransfer_Gfx[] = INCBIN_U32("graphics/berry_fix/gba_transfer.4bpp.lz");
const u32 gBerryFixGbaTransfer_Tilemap[] = INCBIN_U32("graphics/berry_fix/gba_transfer.bin.lz");

const u16 gBerryFixGbaTransferHighlight_Pal[] = INCBIN_U16("graphics/berry_fix/gba_transfer_highlight.gbapal");
const u32 gBerryFixGbaTransferHighlight_Gfx[] = INCBIN_U32("graphics/berry_fix/gba_transfer_highlight.4bpp.lz");
const u32 gBerryFixGbaTransferHighlight_Tilemap[] = INCBIN_U32("graphics/berry_fix/gba_transfer_highlight.bin.lz");

const u16 gBerryFixGbaTransferError_Pal[] = INCBIN_U16("graphics/berry_fix/gba_transfer_error.gbapal");
const u32 gBerryFixGbaTransferError_Gfx[] = INCBIN_U32("graphics/berry_fix/gba_transfer_error.4bpp.lz");
const u32 gBerryFixGbaTransferError_Tilemap[] = INCBIN_U32("graphics/berry_fix/gba_transfer_error.bin.lz");

const u16 gBerryFixWindow_Pal[] = INCBIN_U16("graphics/berry_fix/window.gbapal");
const u32 gBerryFixWindow_Gfx[] = INCBIN_U32("graphics/berry_fix/window.4bpp.lz");
const u32 gBerryFixWindow_Tilemap[] = INCBIN_U32("graphics/berry_fix/window.bin.lz");
# 1496 "src/graphics.c" 2


const u16 gTradeMenu_Pal[] = INCBIN_U16("graphics/trade/menu.gbapal");
const u16 gUnknown_08DDB444[] = INCBIN_U16("graphics/trade/unknown_DDB444.gbapal");
const u8 gTradeMenu_Gfx[] = INCBIN_U8("graphics/trade/menu.4bpp");
const u8 gTradeButtons_Gfx[] = INCBIN_U8("graphics/trade/buttons.4bpp");
const u16 gUnused_DDCEE4[] = INCBIN_U16("graphics/unused/unused_DDCEE4.bin");
const u16 gUnknown_08DDCF04[] = INCBIN_U16("graphics/trade/unknown_DDCF04.bin");
const u16 gTradeMenuMonBox_Tilemap[] = INCBIN_U16("graphics/trade/menu_mon_box.bin");

const u16 gMessageBox_Pal[] = INCBIN_U16("graphics/text_window/message_box.gbapal");
const u8 gMessageBox_Gfx[] = INCBIN_U8("graphics/text_window/message_box.4bpp");

const u32 gWallpaperIcon_Cross[] = INCBIN_U32("graphics/pokemon_storage/cross_icon.4bpp.lz");
const u32 gWallpaperIcon_Bolt[] = INCBIN_U32("graphics/pokemon_storage/bolt_icon.4bpp.lz");
const u32 gWallpaperIcon_Plusle[] = INCBIN_U32("graphics/pokemon_storage/plusle_icon.4bpp.lz");

const u16 gWallpaperPalettes_Horizontal[][16] =
{
    INCBIN_U16("graphics/pokemon_storage/friends_frame2.gbapal"),
    INCBIN_U16("graphics/pokemon_storage/horizontal_bg.gbapal"),
};

const u32 gWallpaperTiles_Horizontal[] = INCBIN_U32("graphics/pokemon_storage/horizontal.4bpp.lz");
const u32 gWallpaperTilemap_Horizontal[] = INCBIN_U32("graphics/pokemon_storage/horizontal.bin.lz");

const u16 gWallpaperPalettes_Ribbon[][16] =
{
    INCBIN_U16("graphics/pokemon_storage/ribbon_frame.gbapal"),
    INCBIN_U16("graphics/pokemon_storage/ribbon_bg.gbapal"),
};

const u32 gWallpaperTiles_Ribbon[] = INCBIN_U32("graphics/pokemon_storage/ribbon.4bpp.lz");
const u32 gWallpaperTilemap_Ribbon[] = INCBIN_U32("graphics/pokemon_storage/ribbon.bin.lz");



const u16 gUnknown_08DDE010[] = INCBIN_U16("graphics/pokenav/ribbons.gbapal");
const u32 gUnknown_08DDE030[] = INCBIN_U32("graphics/pokenav/ribbons.4bpp.lz");
const u32 gUnknown_08DDE12C[] = INCBIN_U32("graphics/pokenav/ribbons.bin.lz");

const u16 gMonIconPalettes[][16] =
{
    INCBIN_U16("graphics/pokemon/icon_palettes/icon_palette_0.gbapal"),
    INCBIN_U16("graphics/pokemon/icon_palettes/icon_palette_1.gbapal"),
    INCBIN_U16("graphics/pokemon/icon_palettes/icon_palette_2.gbapal"),
};

const u16 gTitleScreenBgPalettes[] = INCBIN_U16("graphics/title_screen/pokemon_logo.gbapal",
                                                "graphics/title_screen/rayquaza_and_clouds.gbapal");

const u16 gTitleScreenEmeraldVersionPal[] = INCBIN_U16("graphics/title_screen/emerald_version.gbapal");

const u32 gUnknown_08DDE458[] = INCBIN_U32("graphics/title_screen/title_screen1.bin.lz");

const u32 gTitleScreenPokemonLogoGfx[] = INCBIN_U32("graphics/title_screen/pokemon_logo.8bpp.lz");

const u32 gTitleScreenEmeraldVersionGfx[] = INCBIN_U32("graphics/title_screen/emerald_version.8bpp.lz");

const u16 gTitleScreenPressStartPal[] = INCBIN_U16("graphics/title_screen/press_start.gbapal");
const u32 gTitleScreenPressStartGfx[] = INCBIN_U32("graphics/title_screen/press_start.4bpp.lz");

const u32 gUnknown_08DE0644[] = INCBIN_U32("graphics/title_screen/title_screen2.bin.lz");



const u16 gUnknown_08DE07C8[][16] = INCBIN_U16("graphics/frontier_pass/tiles.gbapal");
const u32 gUnknown_08DE08C8[] = INCBIN_U32("graphics/frontier_pass/tiles.4bpp.lz");
const u32 gUnknown_08DE2084[] = INCBIN_U32("graphics/frontier_pass/tiles2.8bpp.lz");
const u32 gUnknown_08DE3060[] = INCBIN_U32("graphics/frontier_pass/tiles.bin.lz");
const u16 gUnknown_08DE3350[] = INCBIN_U16("graphics/frontier_pass/tilemap1.bin");
const u16 gUnknown_08DE3374[] = INCBIN_U16("graphics/frontier_pass/tilemap2.bin");


const u16 gUnknown_08DE3398[] = INCBIN_U16("graphics/berry_crusher/tiles.gbapal");
const u32 gUnknown_08DE34B8[] = INCBIN_U32("graphics/berry_crusher/tiles.4bpp.lz");
const u32 gUnknown_08DE3FD4[] = INCBIN_U32("graphics/berry_crusher/tiles.bin.lz");


asm(".space 0x54BAC \n     .byte 0x0D, 0x00, 0x58, 0x02 \n     .space 0x1145 \n     .byte 0x02 \n     .space 0x3242 \n     .byte 0x40 \n     .space 0x13");
