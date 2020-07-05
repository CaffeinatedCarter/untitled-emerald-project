# 1 "src/wild_encounter.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/wild_encounter.c"
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
# 2 "src/wild_encounter.c" 2
# 1 "include/wild_encounter.h" 1
# 9 "include/wild_encounter.h"
struct WildPokemon
{
    u8 minLevel;
    u8 maxLevel;
    u16 species;
};

struct WildPokemonInfo
{
    u8 encounterRate;
    const struct WildPokemon *wildPokemon;
};

struct WildPokemonHeader
{
    u8 mapGroup;
    u8 mapNum;
    const struct WildPokemonInfo *landMonsInfo;
    const struct WildPokemonInfo *waterMonsInfo;
    const struct WildPokemonInfo *rockSmashMonsInfo;
    const struct WildPokemonInfo *fishingMonsInfo;
};

extern const struct WildPokemonHeader gWildMonHeaders[];

void DisableWildEncounters(bool8 disabled);
bool8 StandardWildEncounter(u16 currMetaTileBehavior, u16 previousMetaTileBehavior);
void ScrSpecial_RockSmashWildEncounter(void);
bool8 SweetScentWildEncounter(void);
bool8 DoesCurrentMapHaveFishingMons(void);
void FishingWildEncounter(u8 rod);
u16 GetLocalWildMon(bool8 *isWaterMon);
u16 GetLocalWaterMon(void);
bool8 UpdateRepelCounter(void);
# 3 "src/wild_encounter.c" 2
# 1 "include/pokemon.h" 1
# 4 "src/wild_encounter.c" 2
# 1 "include/metatile_behavior.h" 1



bool8 MetatileBehavior_IsATile(u8);
bool8 MetatileBehavior_IsEncounterTile(u8);
bool8 MetatileBehavior_IsJumpEast(u8);
bool8 MetatileBehavior_IsJumpWest(u8);
bool8 MetatileBehavior_IsJumpNorth(u8);
bool8 MetatileBehavior_IsJumpSouth(u8);
bool8 MetatileBehavior_IsPokeGrass(u8);
bool8 MetatileBehavior_IsSandOrDeepSand(u8);
bool8 MetatileBehavior_IsDeepSand(u8);
bool8 MetatileBehavior_IsReflective(u8);
bool8 MetatileBehavior_IsIce(u8);
bool8 MetatileBehavior_IsWarpDoor(u8);
bool8 MetatileBehavior_IsDoor(u8);
bool8 MetatileBehavior_IsEscalator(u8);
bool8 MetatileBehavior_IsMB_04(u8);
bool8 MetatileBehavior_IsLadder(u8);
bool8 MetatileBehavior_IsNonAnimDoor(u8);
bool8 MetatileBehavior_IsDeepSouthWarp(u8);
bool8 MetatileBehavior_IsSurfableWaterOrUnderwater(u8);
bool8 MetatileBehavior_IsEastArrowWarp(u8);
bool8 MetatileBehavior_IsWestArrowWarp(u8);
bool8 MetatileBehavior_IsNorthArrowWarp(u8);
bool8 MetatileBehavior_IsSouthArrowWarp(u8);
bool8 MetatileBehavior_IsArrowWarp(u8);
bool8 MetatileBehavior_IsForcedMovementTile(u8);
bool8 MetatileBehavior_IsIce_2(u8);
bool8 MetatileBehavior_IsTrickHouseSlipperyFloor(u8);
bool8 MetatileBehavior_IsMB_05(u8);
bool8 MetatileBehavior_IsWalkNorth(u8);
bool8 MetatileBehavior_IsWalkSouth(u8);
bool8 MetatileBehavior_IsWalkWest(u8);
bool8 MetatileBehavior_IsWalkEast(u8);
bool8 MetatileBehavior_IsNorthwardCurrent(u8);
bool8 MetatileBehavior_IsSouthwardCurrent(u8);
bool8 MetatileBehavior_IsWestwardCurrent(u8);
bool8 MetatileBehavior_IsEastwardCurrent(u8);
bool8 MetatileBehavior_IsSlideNorth(u8);
bool8 MetatileBehavior_IsSlideSouth(u8);
bool8 MetatileBehavior_IsSlideWest(u8);
bool8 MetatileBehavior_IsSlideEast(u8);
bool8 MetatileBehavior_IsCounter(u8);
bool8 MetatileBehavior_IsPlayerFacingTVScreen(u8 tile, u8 playerDir);
bool8 MetatileBehavior_IsPC(u8);
bool8 MetatileBehavior_IsCableBoxResults1(u8);
bool8 MetatileBehavior_IsOpenSecretBaseDoor(u8);
bool8 MetatileBehavior_IsSecretBaseCave(u8);
bool8 MetatileBehavior_IsSecretBaseTree(u8);
bool8 MetatileBehavior_IsSecretBaseShrub(u8);
bool8 MetatileBehavior_IsSecretBasePC(u8);
bool8 MetatileBehavior_IsRecordMixingSecretBasePC(u8);
bool8 MetatileBehavior_IsMB_B2(u8);
bool8 MetatileBehavior_IsBlockDecoration(u8);
bool8 MetatileBehavior_IsSecretBaseImpassable(u8);
bool8 MetatileBehavior_IsMB_C6(u8);
bool8 MetatileBehavior_IsSecretBasePoster(u8);
bool8 MetatileBehavior_IsNormal(u8);
bool8 MetatileBehavior_IsSecretBaseNorthWall(u8);
bool8 MetatileBehavior_IsMB_B2_Duplicate(u8);
bool8 MetatileBehavior_HoldsSmallDecoration(u8);
bool8 MetatileBehavior_HoldsLargeDecoration(u8);
bool8 MetatileBehavior_IsSecretBaseHole(u8);
bool8 MetatileBehavior_IsSecretBaseBalloon(u8);
bool8 MetatileBehavior_IsSecretBaseBreakableDoor(u8);
bool8 MetatileBehavior_IsSecretBaseSoundMat(u8);
bool8 MetatileBehavior_IsSecretBaseGlitterMat(u8);
bool8 MetatileBehavior_IsSecretBaseSandOrnament(u8);
bool8 MetatileBehavior_IsSecretBaseShieldOrToyTV(u8);
bool8 MetatileBehavior_IsPlayerRoomPCOn(u8);
bool8 MetatileBehavior_HasRipples(u8);
bool8 MetatileBehavior_IsPuddle(u8);
bool8 MetatileBehavior_IsTallGrass(u8);
bool8 MetatileBehavior_IsLongGrass(u8);
bool8 MetatileBehavior_IsBerryTreeSoil(u8);
bool8 MetatileBehavior_IsAshGrass(u8);
bool8 MetatileBehavior_IsFootprints(u8);
bool8 MetatileBehavior_IsBridge(u8);
u8 MetatileBehavior_GetBridgeType(u8);
u8 MetatileBehavior_8089510(u8);
bool8 MetatileBehavior_IsLandWildEncounter(u8);
bool8 MetatileBehavior_IsWaterWildEncounter(u8);
bool8 MetatileBehavior_IsIndoorEncounter(u8);
bool8 MetatileBehavior_IsMountain(u8);
bool8 MetatileBehavior_IsDiveable(u8);
bool8 MetatileBehavior_IsUnableToEmerge(u8);
bool8 MetatileBehavior_IsShallowFlowingWater(u8);
bool8 MetatileBehavior_IsThinIce(u8);
bool8 MetatileBehavior_IsCrackedIce(u8);
bool8 MetatileBehavior_IsDeepOrOceanWater(u8);
bool8 MetatileBehavior_IsMB_18_OrMB_1A(u8);
bool8 MetatileBehavior_IsSurfableAndNotWaterfall(u8);
bool8 MetatileBehavior_IsEastBlocked(u8);
bool8 MetatileBehavior_IsWestBlocked(u8);
bool8 MetatileBehavior_IsNorthBlocked(u8);
bool8 MetatileBehavior_IsSouthBlocked(u8);
bool8 MetatileBehavior_IsShortGrass(u8);
bool8 MetatileBehavior_IsHotSprings(u8);
bool8 MetatileBehavior_IsWaterfall(u8);
bool8 MetatileBehavior_IsFortreeBridge(u8);
bool8 MetatileBehavior_IsPacifilogVerticalLog1(u8);
bool8 MetatileBehavior_IsPacifilogVerticalLog2(u8);
bool8 MetatileBehavior_IsPacifilogHorizontalLog1(u8);
bool8 MetatileBehavior_IsPacifilogHorizontalLog2(u8);
bool8 MetatileBehavior_IsPacifidlogLog(u8);
bool8 MetatileBehavior_IsTrickHousePuzzleDoor(u8);
bool8 MetatileBehavior_IsRegionMap(u8);
bool8 MetatileBehavior_IsClosedSootopolisDoor(u8);
bool8 MetatileBehavior_IsSkyPillarClosedDoor(u8);
bool8 MetatileBehavior_IsRoulette(u8);
bool8 MetatileBehavior_IsPokeblockFeeder(u8);
bool8 MetatileBehavior_IsSecretBaseJumpMat(u8);
bool8 MetatileBehavior_IsSecretBaseSpinMat(u8);
bool8 MetatileBehavior_IsLavaridgeB1FWarp(u8);
bool8 MetatileBehavior_IsLavaridge1FWarp(u8);
bool8 MetatileBehavior_IsAquaHideoutWarp(u8);
bool8 MetatileBehavior_IsWarpOrBridge(u8);
bool8 MetatileBehavior_IsMossdeepGymWarp(u8);
bool8 MetatileBehavior_IsSurfableFishableWater(u8);
bool8 MetatileBehavior_IsMtPyreHole(u8);
bool8 MetatileBehavior_IsCrackedFloorHole(u8);
bool8 MetatileBehavior_IsCrackedFloor(u8);
bool8 MetatileBehavior_IsMuddySlope(u8);
bool8 MetatileBehavior_IsBumpySlope(u8);
bool8 MetatileBehavior_IsIsolatedVerticalRail(u8);
bool8 MetatileBehavior_IsIsolatedHorizontalRail(u8);
bool8 MetatileBehavior_IsVerticalRail(u8);
bool8 MetatileBehavior_IsHorizontalRail(u8);
bool8 MetatileBehavior_IsSeaweed(u8);
bool8 MetatileBehavior_IsRunningDisallowed(u8);
bool8 MetatileBehavior_IsCuttableGrass(u8);
bool8 MetatileBehavior_IsRunningShoesManual(u8);
bool8 MetatileBehavior_IsPictureBookShelf(u8);
bool8 MetatileBehavior_IsBookShelf(u8);
bool8 MetatileBehavior_IsPokeCenterBookShelf(u8);
bool8 MetatileBehavior_IsVase(u8);
bool8 MetatileBehavior_IsTrashCan(u8);
bool8 MetatileBehavior_IsShopShelf(u8);
bool8 MetatileBehavior_IsBlueprint(u8);
bool8 MetatileBehavior_IsBattlePyramidWarp(u8);
bool8 MetatileBehavior_IsPlayerFacingWirelessBoxResults(u8 tile, u8 playerDir);
bool8 MetatileBehavior_IsCableBoxResults2(u8 tile, u8 playerDir);
bool8 MetatileBehavior_IsQuestionnaire(u8);
bool8 MetatileBehavior_IsLongGrass_Duplicate(u8);
bool8 MetatileBehavior_IsLongGrassSouthEdge(u8);
bool8 MetatileBehavior_IsTrainerHillTimer(u8);
# 5 "src/wild_encounter.c" 2
# 1 "include/fieldmap.h" 1
# 12 "include/fieldmap.h"
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
# 13 "include/fieldmap.h" 2

extern struct BackupMapLayout gBackupMapLayout;

u32 MapGridGetMetatileIdAt(int, int);
u32 MapGridGetMetatileBehaviorAt(int, int);
void MapGridSetMetatileIdAt(int, int, u16);
void MapGridSetMetatileEntryAt(int, int, u16);
void GetCameraCoords(u16*, u16*);
bool8 MapGridIsImpassableAt(int, int);
int GetMapBorderIdAt(int x, int y);
int CanCameraMoveInDirection(int direction);
u16 GetBehaviorByMetatileId(u16 metatileId);
void GetCameraFocusCoords(u16 *x, u16 *y);
u8 MapGridGetMetatileLayerTypeAt(int x, int y);
u8 MapGridGetZCoordAt(int x, int y);
bool8 CameraMove(int deltaX, int deltaY);
struct MapConnection *sub_8088950(u8 direction, int x, int y);
bool8 sub_80889A8(u8 direction, int x, int y, struct MapConnection *connection);
bool8 sub_8088A0C(int x, int src_width, int dest_width, int offset);
void save_serialize_map(void);
void sub_8088B3C(u16 x, u16 y);
void InitMap(void);
void InitMapFromSavedGame(void);
void InitTrainerHillMap(void);
void InitBattlePyramidMap(bool8 setPlayerPosition);
void copy_map_tileset1_tileset2_to_vram(struct MapLayout const *mapLayout);
void apply_map_tileset1_tileset2_palette(struct MapLayout const *mapLayout);
void apply_map_tileset2_palette(struct MapLayout const *mapLayout);
void copy_map_tileset2_to_vram_2(struct MapLayout const *mapLayout);
void copy_map_tileset1_to_vram(const struct MapLayout *);
void copy_map_tileset2_to_vram(const struct MapLayout *);
struct MapHeader const *const mapconnection_get_mapheader(struct MapConnection *connection);
struct MapConnection *GetConnectionAtCoords(s16 x, s16 y);

void SpriteCB_PokeballGlow(struct Sprite *);
void SpriteCB_PokecenterMonitor(struct Sprite *);
void SpriteCB_HallOfFameMonitor(struct Sprite *);


void FieldInitRegionMap(MainCallback callback);
void sub_8088B94(int x, int y, int a2);
# 6 "src/wild_encounter.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 20 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 7 "src/wild_encounter.c" 2
# 1 "include/field_player_avatar.h" 1



void player_step(u8 a, u16 b, u16 c);
void ClearPlayerAvatarInfo(void);
void SetPlayerAvatarExtraStateTransition(u8, u8);
u8 GetPlayerAvatarGenderByGraphicsId(u8);
bool8 TestPlayerAvatarFlags(u8);
u8 GetPlayerAvatarObjectId(void);
void PlayerGetDestCoords(s16 *, s16 *);
u8 GetPlayerFacingDirection(void);
u8 GetPlayerMovementDirection(void);
u8 PlayerGetCopyableMovement(void);
void PlayerGoSpeed1(u8);
void PlayerGoSpeed2(u8);
void PlayerRideWaterCurrent(u8);
void PlayerGoSpeed4(u8);
void PlayerOnBikeCollide(u8);
void PlayerFaceDirection(u8 a);
void PlayerTurnInPlace(u8 a);
void PlayerJumpLedge(u8 a);
void PlayerIdleWheelie(u8 a);
void PlayerStartWheelie(u8 a);
void PlayerEndWheelie(u8 a);
void PlayerStandingHoppingWheelie(u8 a);
void PlayerMovingHoppingWheelie(u8 a);
void PlayerLedgeHoppingWheelie(u8 a);
void PlayerAcroTurnJump(u8 a);
void PlayerSetAnimId(u8 a, u8 b);
bool8 IsPlayerCollidingWithFarawayIslandMew(u8 direction);
void PlayerOnBikeCollideWithFarawayIslandMew(u8 direction);
u8 CheckForObjectEventCollision(struct ObjectEvent *a, s16 b, s16 c, u8 d, u8 e);
u8 PlayerGetZCoord(void);
void SetPlayerAvatarTransitionFlags(u16 a);
void sub_808BCE8(void);
void InitPlayerAvatar(s16 a, s16 b, u8 c, u8 d);
void sub_808B864(void);
void sub_808BCF4(void);
void sub_808D074(u8);
void GetXYCoordsOneStepInFrontOfPlayer(s16 *xPtr, s16 *yPtr);
u8 GetRivalAvatarGraphicsIdByStateIdAndGender(u8, u8);
void sub_808C114(void);
u8 GetPlayerAvatarGraphicsIdByCurrentState(void);
void SetPlayerAvatarStateMask(u8 a);
u8 GetPlayerAvatarGraphicsIdByStateId(u8 a);
u8 GetJumpSpecialMovementAction(u32);
bool8 PartyHasMonWithSurf(void);
bool8 IsPlayerFacingSurfableFishableWater(void);
bool8 IsPlayerSurfingNorth(void);
void sub_808C228(u8 direction);
u8 GetPlayerAvatarFlags(void);
void sub_808B578(void);
u8 GetFRLGAvatarGraphicsIdByGender(u8);
u8 GetRSAvatarGraphicsIdByGender(u8);
void PlayerWheelieInPlace(u8 direction);
void PlayerWheelieMove(u8 direction);
void PlayerPopWheelieWhileMoving(u8 direction);
void PlayerUseAcroBikeOnBumpySlope(u8 direction);
void PlayerEndWheelieWhileMoving(u8 direction);
void sub_808D194(void);
void sub_808D1C8(void);
bool32 sub_808D1B4(void);
bool32 sub_808D1E8(void);
void SetPlayerInvisibility(bool8 invisible);
u8 player_get_pos_including_state_based_drift(s16 *x, s16 *y);
void StartFishing(u8 rod);
# 8 "src/wild_encounter.c" 2
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
# 9 "src/wild_encounter.c" 2
# 1 "include/safari_zone.h" 1



extern u8 gNumSafariBalls;

bool32 GetSafariZoneFlag(void);
void SetSafariZoneFlag(void);
void ResetSafariZoneFlag(void);

void EnterSafariMode(void);
void ExitSafariMode(void);

bool8 SafariZoneTakeStep(void);
void SafariZoneRetirePrompt(void);

void CB2_EndSafariBattle(void);

struct Pokeblock *SafariZoneGetActivePokeblock(void);
void SafariZoneActivatePokeblockFeeder(u8 pokeblock_index);
# 10 "src/wild_encounter.c" 2
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
# 11 "src/wild_encounter.c" 2
# 1 "include/pokeblock.h" 1






enum
{
    PBLOCK_CLR_BLACK,
    PBLOCK_CLR_RED,
    PBLOCK_CLR_BLUE,
    PBLOCK_CLR_PINK,
    PBLOCK_CLR_GREEN,
    PBLOCK_CLR_YELLOW
};

enum
{
    PBLOCK_COLOR,
    PBLOCK_SPICY,
    PBLOCK_DRY,
    PBLOCK_SWEET,
    PBLOCK_BITTER,
    PBLOCK_SOUR,
    PBLOCK_FEEL,
};

enum
{
    PBLOCK_CASE_FIELD,
    PBLOCK_CASE_BATTLE,
    PBLOCK_CASE_FEEDER,
    PBLOCK_CASE_GIVE
};


extern u8 gPokeblockMonId;
extern s16 gPokeblockGain;

void ChooseMonToGivePokeblock(struct Pokeblock *pokeblock, void (*callback)(void));


void CB2_PreparePokeblockFeedScene(void);


extern const s8 gPokeblockFlavorCompatibilityTable[];
extern const u8 *const gPokeblockNames[];
extern const struct CompressedSpriteSheet gPokeblockCase_SpriteSheet;
extern const struct CompressedSpritePalette gPokeblockCase_SpritePal;

void OpenPokeblockCase(u8 caseId, void (*callback)(void));
void OpenPokeblockCaseInBattle(void);
void OpenPokeblockCaseOnFeeder(void);
void ResetPokeblockScrollPositions(void);
u8 CreatePokeblockCaseSprite(s16 x, s16 y, u8 subpriority);
void ClearPokeblocks(void);
u8 GetHighestPokeblocksFlavorLevel(const struct Pokeblock *pokeblock);
u8 GetPokeblocksFeel(const struct Pokeblock *pokeblock);
s8 GetFirstFreePokeblockSlot(void);
bool32 AddPokeblock(const struct Pokeblock *pokeblock);
bool32 TryClearPokeblock(u8 pkblId);
s16 GetPokeblockData(const struct Pokeblock *pokeblock, u8 field);
s16 PokeblockGetGain(u8 nature, const struct Pokeblock *pokeblock);
void PokeblockCopyName(const struct Pokeblock *pokeblock, u8 *dest);
bool8 CopyMonFavoritePokeblockName(u8 nature, u8 *dest);
u8 GetPokeblocksFlavor(const struct Pokeblock *pokeblock);
# 12 "src/wild_encounter.c" 2
# 1 "include/battle_setup.h" 1



# 1 "include/gym_leader_rematch.h" 1



enum {
    REMATCH_ROSE,
    REMATCH_ANDRES,
    REMATCH_DUSTY,
    REMATCH_LOLA,
    REMATCH_RICKY,
    REMATCH_LILA_AND_ROY,
    REMATCH_CRISTIN,
    REMATCH_BROOKE,
    REMATCH_WILTON,
    REMATCH_VALERIE,
    REMATCH_CINDY,
    REMATCH_THALIA,
    REMATCH_JESSICA,
    REMATCH_WINSTON,
    REMATCH_STEVE,
    REMATCH_TONY,
    REMATCH_NOB,
    REMATCH_KOJI,
    REMATCH_FERNANDO,
    REMATCH_DALTON,
    REMATCH_BERNIE,
    REMATCH_ETHAN,
    REMATCH_JOHN_AND_JAY,
    REMATCH_JEFFREY,
    REMATCH_CAMERON,
    REMATCH_JACKI,
    REMATCH_WALTER,
    REMATCH_KAREN,
    REMATCH_JERRY,
    REMATCH_ANNA_AND_MEG,
    REMATCH_ISABEL,
    REMATCH_MIGUEL,
    REMATCH_TIMOTHY,
    REMATCH_SHELBY,
    REMATCH_CALVIN,
    REMATCH_ELLIOT,
    REMATCH_ISAIAH,
    REMATCH_MARIA,
    REMATCH_ABIGAIL,
    REMATCH_DYLAN,
    REMATCH_KATELYN,
    REMATCH_BENJAMIN,
    REMATCH_PABLO,
    REMATCH_NICOLAS,
    REMATCH_ROBERT,
    REMATCH_LAO,
    REMATCH_CYNDY,
    REMATCH_MADELINE,
    REMATCH_JENNY,
    REMATCH_DIANA,
    REMATCH_AMY_AND_LIV,
    REMATCH_ERNEST,
    REMATCH_CORY,
    REMATCH_EDWIN,
    REMATCH_LYDIA,
    REMATCH_ISAAC,
    REMATCH_GABRIELLE,
    REMATCH_CATHERINE,
    REMATCH_JACKSON,
    REMATCH_HALEY,
    REMATCH_JAMES,
    REMATCH_TRENT,
    REMATCH_SAWYER,
    REMATCH_KIRA_AND_DAN,
    REMATCH_WALLY_3,
    REMATCH_ROXANNE,
    REMATCH_BRAWLY,
    REMATCH_WATTSON,
    REMATCH_FLANNERY,
    REMATCH_NORMAN,
    REMATCH_WINONA,
    REMATCH_TATE_AND_LIZA,
    REMATCH_JUAN,
    REMATCH_SIDNEY,
    REMATCH_PHOEBE,
    REMATCH_GLACIA,
    REMATCH_DRAKE,
    REMATCH_WALLACE,
    REMATCH_TABLE_ENTRIES
};




void UpdateGymLeaderRematch(void);
# 5 "include/battle_setup.h" 2



struct RematchTrainer
{
    u16 trainerIds[5];
    u16 mapGroup;
    u16 mapNum;
};

extern const struct RematchTrainer gRematchTable[REMATCH_TABLE_ENTRIES];

extern u16 gTrainerBattleOpponent_A;
extern u16 gTrainerBattleOpponent_B;
extern u16 gPartnerTrainerId;

void BattleSetup_StartWildBattle(void);
void BattleSetup_StartBattlePikeWildBattle(void);
void BattleSetup_StartRoamerBattle(void);
void StartWallyTutorialBattle(void);
void BattleSetup_StartScriptedWildBattle(void);
void BattleSetup_StartLatiBattle(void);
void BattleSetup_StartLegendaryBattle(void);
void StartGroudonKyogreBattle(void);
void StartRegiBattle(void);
u8 BattleSetup_GetTerrainId(void);
u8 sub_80B100C(s32 arg0);
void ChooseStarter(void);
void ResetTrainerOpponentIds(void);
void SetMapVarsToTrainer(void);
const u8 *BattleSetup_ConfigureTrainerBattle(const u8 *data);
void ConfigureAndSetUpOneTrainerBattle(u8 trainerObjEventId, const u8 *trainerScript);
void ConfigureTwoTrainersBattle(u8 trainerObjEventId, const u8 *trainerScript);
void SetUpTwoTrainersBattle(void);
bool32 GetTrainerFlagFromScriptPointer(const u8 *data);
void SetUpTrainerMovement(void);
u8 GetTrainerBattleMode(void);
bool8 GetTrainerFlag(void);
bool8 HasTrainerBeenFought(u16 trainerId);
void SetTrainerFlag(u16 trainerId);
void ClearTrainerFlag(u16 trainerId);
void BattleSetup_StartTrainerBattle(void);
void BattleSetup_StartRematchBattle(void);
void ShowTrainerIntroSpeech(void);
const u8 *BattleSetup_GetScriptAddrAfterBattle(void);
const u8 *BattleSetup_GetTrainerPostBattleScript(void);
void ShowTrainerCantBattleSpeech(void);
void SetUpTrainerEncounterMusic(void);
const u8 *GetTrainerALoseText(void);
const u8 *GetTrainerBLoseText(void);
const u8 *GetTrainerWonSpeech(void);
void UpdateRematchIfDefeated(s32 rematchTableId);
void IncrementRematchStepCounter(void);
void TryUpdateRandomTrainerRematches(u16 mapGroup, u16 mapNum);
bool32 DoesSomeoneWantRematchIn(u16 mapGroup, u16 mapNum);
bool32 IsRematchTrainerIn(u16 mapGroup, u16 mapNum);
u16 GetLastBeatenRematchTrainerId(u16 trainerId);
bool8 ShouldTryRematchBattle(void);
bool8 IsTrainerReadyForRematch(void);
void ShouldTryGetTrainerScript(void);
u16 CountBattledRematchTeams(u16 trainerId);
# 13 "src/wild_encounter.c" 2
# 1 "include/roamer.h" 1



void ClearRoamerData(void);
void ClearRoamerLocationData(void);
void InitRoamer(void);
void UpdateLocationHistoryForRoamer(void);
void RoamerMoveToOtherLocationSet(void);
void RoamerMove(void);
bool8 IsRoamerAt(u8 mapGroup, u8 mapNum);
void CreateRoamerMonInstance(void);
u8 TryStartRoamerEncounter(void);
void UpdateRoamerHPStatus(struct Pokemon *mon);
void SetRoamerInactive(void);
void GetRoamerLocation(u8 *mapGroup, u8 *mapNum);
# 14 "src/wild_encounter.c" 2
# 1 "include/tv.h" 1






extern u8 *const gTVStringVarPtrs[3];

void ClearTVShowData(void);
void sub_80EE184(void);
void sub_80EE35C(u16 foeSpecies, u16 species, u8 moveIdx, const u16 *movePtr, u16 betterMove);
void TryPutFrontierTVShowOnAir(u16 winStreak, u8 facility);
void DoTVShow(void);
void DoTVShowInSearchOfTrainers(void);
void TryPutTreasureInvestigatorsOnAir(void);
void TryPutLotteryWinnerReportOnAir(void);
void TryPutTrainerFanClubOnAir(void);
void IncrementDailyPlantedBerries(void);
void IncrementDailyPickedBerries(void);
void IncrementDailyBattlePoints(u16 delta);
void HideBattleTowerReporter(void);
void ReceiveTvShowsData(void *src, u32 size, u8 masterIdx);
void TryPutSpotTheCutiesOnAir(struct Pokemon *pokemon, u8 ribbonMonDataIdx);
u32 GetPlayerIDAsU32(void);
bool8 GetPriceReduction(u8 newsKind);
void sub_80F14F8(TVShow *shows);
size_t CountDigits(int value);
u8 GetRibbonCount(struct Pokemon *pokemon);
void AlertTVThatPlayerPlayedSlotMachine(u16 nCoinsSpent);
void AlertTVThatPlayerPlayedRoulette(u16 nCoinsSpent);
void AlertTVOfNewCoinTotal(u16 nCoinsPaidOut);
void TryPutSecretBaseSecretsOnAir(void);
void sub_80EDB44(void);
void sub_80EDC60(const u16 *words);
void sub_80EDA80(void);
void ReceivePokeNewsData(void *src, u32 size, u8 masterIdx);
void sub_80F0BB8(void);
void sub_80ED950(bool8 flag);
void IncrementDailySlotsUses(void);
void IncrementDailyRouletteUses(void);
void IncrementDailyWildBattles(void);
void IncrementDailyBerryBlender(void);
void sub_80F1208(TVShow *shows);
void sub_80EE44C(u8 nMonsCaught, u8 nPkblkUsed);
void sub_80F14F8(TVShow *shows);
size_t sub_80EF370(int value);
bool8 Put3CheersForPokeblocksOnTheAir(const u8 *partnersName, u8 flavor, u8 unused, u8 sheen, u8 language);
void SetPokemonAnglerSpecies(u16 species);
void UpdateTVShowsPerDay(u16 days);
void PutPokemonTodayCaughtOnAir(void);
void TV_PutSecretBaseVisitOnTheAir(void);
void PutBattleUpdateOnTheAir(u8 opponentLinkPlayerId, u16 move, u16 speciesPlayer, u16 speciesOpponent);
void BravoTrainerPokemonProfile_BeforeInterview1(u16 move);
void InterviewBefore(void);
void InterviewAfter(void);
void UpdateTVScreensOnMap(int, int);
void TV_PrintIntToStringVar(u8 varIdx, int value);
void SaveRecordedItemPurchasesForTVShow(void);
bool8 ShouldAirFrontierTVShow(void);
void sub_80EE8C8(u16 winStreak, u8 facilityAndMode);
void BravoTrainerPokemonProfile_BeforeInterview2(u8 contestStandingPlace);
void ContestLiveUpdates_BeforeInterview_1(u8 a0);
void ContestLiveUpdates_BeforeInterview_2(u8 a0);
void ContestLiveUpdates_BeforeInterview_3(u8 a0);
void ContestLiveUpdates_BeforeInterview_4(u16 a0);
void ContestLiveUpdates_BeforeInterview_5(u8 a0, u8 a1);
void ResetGabbyAndTy(void);
# 15 "src/wild_encounter.c" 2
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
# 16 "src/wild_encounter.c" 2
# 1 "include/script.h" 1



struct ScriptContext;

typedef bool8 (*ScrCmdFunc)(struct ScriptContext *);
typedef u8 Script[];

struct ScriptContext
{
    u8 stackDepth;
    u8 mode;
    u8 comparisonResult;
    u8 (*nativePtr)(void);
    const u8 *scriptPtr;
    const u8 *stack[20];
    ScrCmdFunc *cmdTable;
    ScrCmdFunc *cmdTableEnd;
    u32 data[4];
};



void InitScriptContext(struct ScriptContext *ctx, void *cmdTable, void *cmdTableEnd);
u8 SetupBytecodeScript(struct ScriptContext *ctx, const u8 *ptr);
void SetupNativeScript(struct ScriptContext *ctx, bool8 (*ptr)(void));
void StopScript(struct ScriptContext *ctx);
bool8 RunScriptCommand(struct ScriptContext *ctx);
u8 ScriptPush(struct ScriptContext *ctx, const u8 *ptr);
const u8 *ScriptPop(struct ScriptContext *ctx);
void ScriptJump(struct ScriptContext *ctx, const u8 *ptr);
void ScriptCall(struct ScriptContext *ctx, const u8 *ptr);
void ScriptReturn(struct ScriptContext *ctx);
u16 ScriptReadHalfword(struct ScriptContext *ctx);
u32 ScriptReadWord(struct ScriptContext *ctx);
void ScriptContext2_Enable(void);
void ScriptContext2_Disable(void);
bool8 ScriptContext2_IsEnabled(void);
void ScriptContext1_Init(void);
bool8 ScriptContext1_IsScriptSetUp(void);
bool8 ScriptContext2_RunScript(void);
void ScriptContext1_SetupScript(const u8 *ptr);
void ScriptContext1_Stop(void);
void EnableBothScriptContexts(void);
void ScriptContext2_RunNewScript(const u8 *ptr);
u8 *MapHeaderGetScriptTable(u8 tag);
void MapHeaderRunScriptType(u8 tag);
u8 *MapHeaderCheckScriptTable(u8 tag);
void RunOnLoadMapScript(void);
void RunOnTransitionMapScript(void);
void RunOnResumeMapScript(void);
void RunOnReturnToFieldMapScript(void);
void RunOnDiveWarpMapScript(void);
bool8 TryRunOnFrameMapScript(void);
void TryRunOnWarpIntoMapScript(void);
u32 CalculateRamScriptChecksum(void);
void ClearRamScript(void);
bool8 InitRamScript(const u8 *script, u16 scriptSize, u8 mapGroup, u8 mapNum, u8 objectId);
const u8 *GetRamScript(u8 objectId, const u8 *script);
bool32 ValidateSavedRamScript(void);
u8 *GetSavedRamScriptIfValid(void);
void InitRamScript_NoObjectEvent(u8 *script, u16 scriptSize);


void SetMovingNpcId(u16 npcId);
# 17 "src/wild_encounter.c" 2
# 1 "include/battle_pike.h" 1



void CallBattlePikeFunction(void);
u8 GetBattlePikeWildMonHeaderId(void);
bool32 TryGenerateBattlePikeWildMon(bool8 checkKeenEyeIntimidate);
bool8 InBattlePike(void);
# 18 "src/wild_encounter.c" 2
# 1 "include/battle_pyramid.h" 1



void CallBattlePyramidFunction(void);
u16 LocalIdToPyramidTrainerId(u8 localId);
bool8 GetBattlePyramidTrainerFlag(u8 eventId);
void MarkApproachingPyramidTrainersAsBattled(void);
void GenerateBattlePyramidWildMon(void);
u8 GetPyramidRunMultiplier(void);
u8 InBattlePyramid(void);
bool8 InBattlePyramid_(void);
void PausePyramidChallenge(void);
void SoftResetInBattlePyramid(void);
void CopyPyramidTrainerSpeechBefore(u16 trainerId);
void CopyPyramidTrainerWinSpeech(u16 trainerId);
void CopyPyramidTrainerLoseSpeech(u16 trainerId);
u8 GetBattlePyramindTrainerEncounterMusicId(u16 trainerId);
void GenerateBattlePyramidFloorLayout(u16 *mapArg, bool8 setPlayerPosition);
void LoadBattlePyramidObjectEventTemplates(void);
void LoadBattlePyramidFloorObjectEventScripts(void);
u8 GetNumBattlePyramidObjectEvents(void);
u16 GetBattlePyramidPickupItemId(void);
# 19 "src/wild_encounter.c" 2
# 1 "include/constants/abilities.h" 1
# 20 "src/wild_encounter.c" 2
# 1 "include/constants/game_stat.h" 1
# 21 "src/wild_encounter.c" 2
# 1 "include/constants/items.h" 1
# 22 "src/wild_encounter.c" 2
# 1 "include/constants/layouts.h" 1
# 23 "src/wild_encounter.c" 2
# 1 "include/constants/maps.h" 1



# 1 "include/constants/map_groups.h" 1
# 5 "include/constants/maps.h" 2
# 24 "src/wild_encounter.c" 2
# 1 "include/constants/species.h" 1
# 25 "src/wild_encounter.c" 2
# 1 "include/constants/weather.h" 1
# 26 "src/wild_encounter.c" 2

extern const u8 EventScript_RepelWoreOff[];




static u16 FeebasRandom(void);
static void FeebasSeedRng(u16 seed);
static bool8 IsWildLevelAllowedByRepel(u8 level);
static void ApplyFluteEncounterRateMod(u32 *encRate);
static void ApplyCleanseTagEncounterRateMod(u32 *encRate);
static bool8 TryGetAbilityInfluencedWildMonIndex(const struct WildPokemon *wildMon, u8 type, u8 ability, u8 *monIndex);
static bool8 IsAbilityAllowingEncounter(u8 level);


__attribute__((section("ewram_data"))) static u8 sWildEncountersDisabled = 0;
__attribute__((section("ewram_data"))) static u32 sFeebasRngValue = 0;

# 1 "src/data/wild_encounters.h" 1
# 64 "src/data/wild_encounters.h"
const struct WildPokemon gRoute101_LandMons[] =
{
    { 2, 2, 290 },
    { 2, 2, 286 },
    { 2, 2, 290 },
    { 3, 3, 290 },
    { 3, 3, 286 },
    { 3, 3, 286 },
    { 3, 3, 290 },
    { 3, 3, 286 },
    { 2, 2, 288 },
    { 2, 2, 288 },
    { 3, 3, 288 },
    { 3, 3, 288 },
};

const struct WildPokemonInfo gRoute101_LandMonsInfo = { 20, gRoute101_LandMons };





const struct WildPokemon gRoute102_LandMons[] =
{
    { 3, 3, 286 },
    { 3, 3, 290 },
    { 4, 4, 286 },
    { 4, 4, 290 },
    { 3, 3, 295 },
    { 4, 4, 295 },
    { 3, 3, 288 },
    { 3, 3, 288 },
    { 4, 4, 288 },
    { 4, 4, 392 },
    { 4, 4, 288 },
    { 3, 3, 298 },
};

const struct WildPokemonInfo gRoute102_LandMonsInfo = { 20, gRoute102_LandMons };


const struct WildPokemon gRoute102_WaterMons[] =
{
    { 20, 30, 183 },
    { 10, 20, 183 },
    { 30, 35, 183 },
    { 5, 10, 183 },
    { 20, 30, 118 },
};

const struct WildPokemonInfo gRoute102_WaterMonsInfo = { 4, gRoute102_WaterMons };



const struct WildPokemon gRoute102_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 326 },
    { 25, 30, 326 },
    { 30, 35, 326 },
    { 20, 25, 326 },
    { 35, 40, 326 },
    { 40, 45, 326 },
};

const struct WildPokemonInfo gRoute102_FishingMonsInfo = { 30, gRoute102_FishingMons };


const struct WildPokemon gRoute103_LandMons[] =
{
    { 2, 2, 286 },
    { 3, 3, 286 },
    { 3, 3, 286 },
    { 4, 4, 286 },
    { 2, 2, 309 },
    { 3, 3, 288 },
    { 3, 3, 288 },
    { 4, 4, 288 },
    { 3, 3, 309 },
    { 3, 3, 309 },
    { 2, 2, 309 },
    { 4, 4, 309 },
};

const struct WildPokemonInfo gRoute103_LandMonsInfo = { 20, gRoute103_LandMons };


const struct WildPokemon gRoute103_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute103_WaterMonsInfo = { 4, gRoute103_WaterMons };



const struct WildPokemon gRoute103_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute103_FishingMonsInfo = { 30, gRoute103_FishingMons };


const struct WildPokemon gRoute104_LandMons[] =
{
    { 4, 4, 286 },
    { 4, 4, 290 },
    { 5, 5, 286 },
    { 5, 5, 183 },
    { 4, 4, 183 },
    { 5, 5, 286 },
    { 4, 4, 304 },
    { 5, 5, 304 },
    { 4, 4, 309 },
    { 4, 4, 309 },
    { 3, 3, 309 },
    { 5, 5, 309 },
};

const struct WildPokemonInfo gRoute104_LandMonsInfo = { 20, gRoute104_LandMons };


const struct WildPokemon gRoute104_WaterMons[] =
{
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute104_WaterMonsInfo = { 4, gRoute104_WaterMons };



const struct WildPokemon gRoute104_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 129 },
    { 10, 30, 129 },
    { 10, 30, 129 },
    { 10, 30, 129 },
    { 25, 30, 129 },
    { 30, 35, 129 },
    { 20, 25, 129 },
    { 35, 40, 129 },
    { 40, 45, 129 },
};

const struct WildPokemonInfo gRoute104_FishingMonsInfo = { 30, gRoute104_FishingMons };



const struct WildPokemon gRoute105_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute105_WaterMonsInfo = { 4, gRoute105_WaterMons };



const struct WildPokemon gRoute105_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute105_FishingMonsInfo = { 30, gRoute105_FishingMons };


const struct WildPokemon gRoute110_LandMons[] =
{
    { 12, 12, 286 },
    { 12, 12, 337 },
    { 12, 12, 367 },
    { 13, 13, 337 },
    { 13, 13, 354 },
    { 13, 13, 43 },
    { 13, 13, 354 },
    { 13, 13, 367 },
    { 12, 12, 309 },
    { 12, 12, 309 },
    { 12, 12, 353 },
    { 13, 13, 353 },
};

const struct WildPokemonInfo gRoute110_LandMonsInfo = { 20, gRoute110_LandMons };


const struct WildPokemon gRoute110_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute110_WaterMonsInfo = { 4, gRoute110_WaterMons };



const struct WildPokemon gRoute110_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute110_FishingMonsInfo = { 30, gRoute110_FishingMons };


const struct WildPokemon gRoute111_LandMons[] =
{
    { 20, 20, 27 },
    { 20, 20, 332 },
    { 21, 21, 27 },
    { 21, 21, 332 },
    { 19, 19, 318 },
    { 21, 21, 318 },
    { 19, 19, 27 },
    { 19, 19, 332 },
    { 20, 20, 318 },
    { 20, 20, 344 },
    { 22, 22, 344 },
    { 22, 22, 344 },
};

const struct WildPokemonInfo gRoute111_LandMonsInfo = { 10, gRoute111_LandMons };


const struct WildPokemon gRoute111_WaterMons[] =
{
    { 20, 30, 183 },
    { 10, 20, 183 },
    { 30, 35, 183 },
    { 5, 10, 183 },
    { 20, 30, 118 },
};

const struct WildPokemonInfo gRoute111_WaterMonsInfo = { 4, gRoute111_WaterMons };


const struct WildPokemon gRoute111_RockSmashMons[] =
{
    { 10, 15, 74 },
    { 5, 10, 74 },
    { 15, 20, 74 },
    { 15, 20, 74 },
    { 15, 20, 74 },
};

const struct WildPokemonInfo gRoute111_RockSmashMonsInfo = { 20, gRoute111_RockSmashMons };


const struct WildPokemon gRoute111_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 323 },
    { 25, 30, 323 },
    { 30, 35, 323 },
    { 20, 25, 323 },
    { 35, 40, 323 },
    { 40, 45, 323 },
};

const struct WildPokemonInfo gRoute111_FishingMonsInfo = { 30, gRoute111_FishingMons };


const struct WildPokemon gRoute112_LandMons[] =
{
    { 15, 15, 339 },
    { 15, 15, 339 },
    { 15, 15, 183 },
    { 14, 14, 339 },
    { 14, 14, 339 },
    { 14, 14, 183 },
    { 16, 16, 339 },
    { 16, 16, 183 },
    { 16, 16, 339 },
    { 16, 16, 339 },
    { 16, 16, 339 },
    { 16, 16, 339 },
};

const struct WildPokemonInfo gRoute112_LandMonsInfo = { 20, gRoute112_LandMons };





const struct WildPokemon gRoute113_LandMons[] =
{
    { 15, 15, 308 },
    { 15, 15, 308 },
    { 15, 15, 218 },
    { 14, 14, 308 },
    { 14, 14, 308 },
    { 14, 14, 218 },
    { 16, 16, 308 },
    { 16, 16, 218 },
    { 16, 16, 308 },
    { 16, 16, 227 },
    { 16, 16, 308 },
    { 16, 16, 227 },
};

const struct WildPokemonInfo gRoute113_LandMonsInfo = { 20, gRoute113_LandMons };





const struct WildPokemon gRoute114_LandMons[] =
{
    { 16, 16, 358 },
    { 16, 16, 295 },
    { 17, 17, 358 },
    { 15, 15, 358 },
    { 15, 15, 295 },
    { 16, 16, 296 },
    { 16, 16, 296 },
    { 18, 18, 296 },
    { 17, 17, 379 },
    { 15, 15, 379 },
    { 17, 17, 379 },
    { 15, 15, 299 },
};

const struct WildPokemonInfo gRoute114_LandMonsInfo = { 20, gRoute114_LandMons };


const struct WildPokemon gRoute114_WaterMons[] =
{
    { 20, 30, 183 },
    { 10, 20, 183 },
    { 30, 35, 183 },
    { 5, 10, 183 },
    { 20, 30, 118 },
};

const struct WildPokemonInfo gRoute114_WaterMonsInfo = { 4, gRoute114_WaterMons };


const struct WildPokemon gRoute114_RockSmashMons[] =
{
    { 10, 15, 74 },
    { 5, 10, 74 },
    { 15, 20, 74 },
    { 15, 20, 74 },
    { 15, 20, 74 },
};

const struct WildPokemonInfo gRoute114_RockSmashMonsInfo = { 20, gRoute114_RockSmashMons };


const struct WildPokemon gRoute114_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 323 },
    { 25, 30, 323 },
    { 30, 35, 323 },
    { 20, 25, 323 },
    { 35, 40, 323 },
    { 40, 45, 323 },
};

const struct WildPokemonInfo gRoute114_FishingMonsInfo = { 30, gRoute114_FishingMons };


const struct WildPokemon gRoute116_LandMons[] =
{
    { 6, 6, 286 },
    { 6, 6, 370 },
    { 6, 6, 301 },
    { 7, 7, 63 },
    { 7, 7, 301 },
    { 6, 6, 304 },
    { 7, 7, 304 },
    { 8, 8, 304 },
    { 7, 7, 286 },
    { 8, 8, 286 },
    { 7, 7, 315 },
    { 8, 8, 315 },
};

const struct WildPokemonInfo gRoute116_LandMonsInfo = { 20, gRoute116_LandMons };





const struct WildPokemon gRoute117_LandMons[] =
{
    { 13, 13, 286 },
    { 13, 13, 43 },
    { 14, 14, 286 },
    { 14, 14, 43 },
    { 13, 13, 183 },
    { 13, 13, 43 },
    { 13, 13, 387 },
    { 13, 13, 387 },
    { 14, 14, 387 },
    { 14, 14, 387 },
    { 13, 13, 386 },
    { 13, 13, 298 },
};

const struct WildPokemonInfo gRoute117_LandMonsInfo = { 20, gRoute117_LandMons };


const struct WildPokemon gRoute117_WaterMons[] =
{
    { 20, 30, 183 },
    { 10, 20, 183 },
    { 30, 35, 183 },
    { 5, 10, 183 },
    { 20, 30, 118 },
};

const struct WildPokemonInfo gRoute117_WaterMonsInfo = { 4, gRoute117_WaterMons };



const struct WildPokemon gRoute117_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 326 },
    { 25, 30, 326 },
    { 30, 35, 326 },
    { 20, 25, 326 },
    { 35, 40, 326 },
    { 40, 45, 326 },
};

const struct WildPokemonInfo gRoute117_FishingMonsInfo = { 30, gRoute117_FishingMons };


const struct WildPokemon gRoute118_LandMons[] =
{
    { 24, 24, 288 },
    { 24, 24, 337 },
    { 26, 26, 288 },
    { 26, 26, 337 },
    { 26, 26, 289 },
    { 26, 26, 338 },
    { 25, 25, 309 },
    { 25, 25, 309 },
    { 26, 26, 309 },
    { 26, 26, 309 },
    { 27, 27, 309 },
    { 25, 25, 317 },
};

const struct WildPokemonInfo gRoute118_LandMonsInfo = { 20, gRoute118_LandMons };


const struct WildPokemon gRoute118_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute118_WaterMonsInfo = { 4, gRoute118_WaterMons };



const struct WildPokemon gRoute118_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 330 },
    { 30, 35, 331 },
    { 30, 35, 330 },
    { 20, 25, 330 },
    { 35, 40, 330 },
    { 40, 45, 330 },
};

const struct WildPokemonInfo gRoute118_FishingMonsInfo = { 30, gRoute118_FishingMons };



const struct WildPokemon gRoute124_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute124_WaterMonsInfo = { 4, gRoute124_WaterMons };



const struct WildPokemon gRoute124_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute124_FishingMonsInfo = { 30, gRoute124_FishingMons };


const struct WildPokemon gPetalburgWoods_LandMons[] =
{
    { 5, 5, 286 },
    { 5, 5, 290 },
    { 5, 5, 306 },
    { 6, 6, 286 },
    { 5, 5, 291 },
    { 5, 5, 293 },
    { 6, 6, 290 },
    { 6, 6, 306 },
    { 5, 5, 304 },
    { 5, 5, 364 },
    { 6, 6, 304 },
    { 6, 6, 364 },
};

const struct WildPokemonInfo gPetalburgWoods_LandMonsInfo = { 20, gPetalburgWoods_LandMons };





const struct WildPokemon gRusturfTunnel_LandMons[] =
{
    { 6, 6, 370 },
    { 7, 7, 370 },
    { 6, 6, 370 },
    { 6, 6, 370 },
    { 7, 7, 370 },
    { 7, 7, 370 },
    { 5, 5, 370 },
    { 8, 8, 370 },
    { 5, 5, 370 },
    { 8, 8, 370 },
    { 5, 5, 370 },
    { 8, 8, 370 },
};

const struct WildPokemonInfo gRusturfTunnel_LandMonsInfo = { 10, gRusturfTunnel_LandMons };





const struct WildPokemon gGraniteCave_1F_LandMons[] =
{
    { 7, 7, 41 },
    { 8, 8, 335 },
    { 7, 7, 335 },
    { 8, 8, 41 },
    { 9, 9, 335 },
    { 8, 8, 63 },
    { 10, 10, 335 },
    { 6, 6, 335 },
    { 7, 7, 74 },
    { 8, 8, 74 },
    { 6, 6, 74 },
    { 9, 9, 74 },
};

const struct WildPokemonInfo gGraniteCave_1F_LandMonsInfo = { 10, gGraniteCave_1F_LandMons };





const struct WildPokemon gGraniteCave_B1F_LandMons[] =
{
    { 9, 9, 41 },
    { 10, 10, 382 },
    { 9, 9, 382 },
    { 11, 11, 382 },
    { 10, 10, 41 },
    { 9, 9, 63 },
    { 10, 10, 335 },
    { 11, 11, 335 },
    { 10, 10, 322 },
    { 10, 10, 322 },
    { 9, 9, 322 },
    { 11, 11, 322 },
};

const struct WildPokemonInfo gGraniteCave_B1F_LandMonsInfo = { 10, gGraniteCave_B1F_LandMons };





const struct WildPokemon gMtPyre_1F_LandMons[] =
{
    { 27, 27, 377 },
    { 28, 28, 377 },
    { 26, 26, 377 },
    { 25, 25, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
    { 23, 23, 377 },
    { 22, 22, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
};

const struct WildPokemonInfo gMtPyre_1F_LandMonsInfo = { 10, gMtPyre_1F_LandMons };





const struct WildPokemon gVictoryRoad_1F_LandMons[] =
{
    { 40, 40, 42 },
    { 40, 40, 336 },
    { 40, 40, 383 },
    { 40, 40, 371 },
    { 36, 36, 41 },
    { 36, 36, 335 },
    { 38, 38, 42 },
    { 38, 38, 336 },
    { 36, 36, 382 },
    { 36, 36, 370 },
    { 36, 36, 382 },
    { 36, 36, 370 },
};

const struct WildPokemonInfo gVictoryRoad_1F_LandMonsInfo = { 10, gVictoryRoad_1F_LandMons };





const struct WildPokemon gSafariZone_South_LandMons[] =
{
    { 25, 25, 43 },
    { 27, 27, 43 },
    { 25, 25, 203 },
    { 27, 27, 203 },
    { 25, 25, 177 },
    { 25, 25, 84 },
    { 25, 25, 44 },
    { 27, 27, 202 },
    { 25, 25, 25 },
    { 27, 27, 202 },
    { 27, 27, 25 },
    { 29, 29, 202 },
};

const struct WildPokemonInfo gSafariZone_South_LandMonsInfo = { 25, gSafariZone_South_LandMons };






const struct WildPokemon gUnderwater2_WaterMons[] =
{
    { 20, 30, 373 },
    { 20, 30, 170 },
    { 30, 35, 373 },
    { 30, 35, 381 },
    { 30, 35, 381 },
};

const struct WildPokemonInfo gUnderwater2_WaterMonsInfo = { 4, gUnderwater2_WaterMons };





const struct WildPokemon gAbandonedShip_Rooms_B1F_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 35, 72 },
    { 5, 35, 72 },
    { 5, 35, 72 },
    { 30, 35, 73 },
};

const struct WildPokemonInfo gAbandonedShip_Rooms_B1F_WaterMonsInfo = { 4, gAbandonedShip_Rooms_B1F_WaterMons };



const struct WildPokemon gAbandonedShip_Rooms_B1F_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 72 },
    { 25, 30, 72 },
    { 30, 35, 72 },
    { 30, 35, 73 },
    { 25, 30, 73 },
    { 20, 25, 73 },
};

const struct WildPokemonInfo gAbandonedShip_Rooms_B1F_FishingMonsInfo = { 20, gAbandonedShip_Rooms_B1F_FishingMons };


const struct WildPokemon gGraniteCave_B2F_LandMons[] =
{
    { 10, 10, 41 },
    { 11, 11, 382 },
    { 10, 10, 382 },
    { 11, 11, 41 },
    { 12, 12, 382 },
    { 10, 10, 63 },
    { 10, 10, 322 },
    { 11, 11, 322 },
    { 12, 12, 322 },
    { 10, 10, 322 },
    { 12, 12, 322 },
    { 10, 10, 322 },
};

const struct WildPokemonInfo gGraniteCave_B2F_LandMonsInfo = { 10, gGraniteCave_B2F_LandMons };



const struct WildPokemon gGraniteCave_B2F_RockSmashMons[] =
{
    { 10, 15, 74 },
    { 10, 20, 320 },
    { 5, 10, 74 },
    { 15, 20, 74 },
    { 15, 20, 74 },
};

const struct WildPokemonInfo gGraniteCave_B2F_RockSmashMonsInfo = { 20, gGraniteCave_B2F_RockSmashMons };



const struct WildPokemon gFieryPath_LandMons[] =
{
    { 15, 15, 339 },
    { 15, 15, 109 },
    { 16, 16, 339 },
    { 15, 15, 66 },
    { 15, 15, 321 },
    { 15, 15, 218 },
    { 16, 16, 109 },
    { 16, 16, 66 },
    { 14, 14, 321 },
    { 16, 16, 321 },
    { 14, 14, 88 },
    { 14, 14, 88 },
};

const struct WildPokemonInfo gFieryPath_LandMonsInfo = { 10, gFieryPath_LandMons };





const struct WildPokemon gMeteorFalls_B1F_2R_LandMons[] =
{
    { 33, 33, 42 },
    { 35, 35, 42 },
    { 30, 30, 395 },
    { 35, 35, 349 },
    { 35, 35, 395 },
    { 37, 37, 349 },
    { 25, 25, 395 },
    { 39, 39, 349 },
    { 38, 38, 42 },
    { 40, 40, 42 },
    { 38, 38, 42 },
    { 40, 40, 42 },
};

const struct WildPokemonInfo gMeteorFalls_B1F_2R_LandMonsInfo = { 10, gMeteorFalls_B1F_2R_LandMons };


const struct WildPokemon gMeteorFalls_B1F_2R_WaterMons[] =
{
    { 30, 35, 42 },
    { 30, 35, 42 },
    { 25, 35, 349 },
    { 15, 25, 349 },
    { 5, 15, 349 },
};

const struct WildPokemonInfo gMeteorFalls_B1F_2R_WaterMonsInfo = { 4, gMeteorFalls_B1F_2R_WaterMons };



const struct WildPokemon gMeteorFalls_B1F_2R_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 323 },
    { 25, 30, 323 },
    { 30, 35, 323 },
    { 30, 35, 324 },
    { 35, 40, 324 },
    { 40, 45, 324 },
};

const struct WildPokemonInfo gMeteorFalls_B1F_2R_FishingMonsInfo = { 30, gMeteorFalls_B1F_2R_FishingMons };


const struct WildPokemon gJaggedPass_LandMons[] =
{
    { 21, 21, 339 },
    { 21, 21, 339 },
    { 21, 21, 66 },
    { 20, 20, 339 },
    { 20, 20, 351 },
    { 20, 20, 66 },
    { 21, 21, 351 },
    { 22, 22, 66 },
    { 22, 22, 339 },
    { 22, 22, 351 },
    { 22, 22, 339 },
    { 22, 22, 351 },
};

const struct WildPokemonInfo gJaggedPass_LandMonsInfo = { 20, gJaggedPass_LandMons };






const struct WildPokemon gRoute106_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute106_WaterMonsInfo = { 4, gRoute106_WaterMons };



const struct WildPokemon gRoute106_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute106_FishingMonsInfo = { 30, gRoute106_FishingMons };



const struct WildPokemon gRoute107_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute107_WaterMonsInfo = { 4, gRoute107_WaterMons };



const struct WildPokemon gRoute107_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute107_FishingMonsInfo = { 30, gRoute107_FishingMons };



const struct WildPokemon gRoute108_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute108_WaterMonsInfo = { 4, gRoute108_WaterMons };



const struct WildPokemon gRoute108_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute108_FishingMonsInfo = { 30, gRoute108_FishingMons };



const struct WildPokemon gRoute109_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute109_WaterMonsInfo = { 4, gRoute109_WaterMons };



const struct WildPokemon gRoute109_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute109_FishingMonsInfo = { 30, gRoute109_FishingMons };


const struct WildPokemon gRoute115_LandMons[] =
{
    { 23, 23, 358 },
    { 23, 23, 304 },
    { 25, 25, 358 },
    { 24, 24, 304 },
    { 25, 25, 304 },
    { 25, 25, 305 },
    { 24, 24, 39 },
    { 25, 25, 39 },
    { 24, 24, 309 },
    { 24, 24, 309 },
    { 26, 26, 309 },
    { 25, 25, 309 },
};

const struct WildPokemonInfo gRoute115_LandMonsInfo = { 20, gRoute115_LandMons };


const struct WildPokemon gRoute115_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute115_WaterMonsInfo = { 4, gRoute115_WaterMons };



const struct WildPokemon gRoute115_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute115_FishingMonsInfo = { 30, gRoute115_FishingMons };


const struct WildPokemon gNewMauville_Inside_LandMons[] =
{
    { 24, 24, 100 },
    { 24, 24, 81 },
    { 25, 25, 100 },
    { 25, 25, 81 },
    { 23, 23, 100 },
    { 23, 23, 81 },
    { 26, 26, 100 },
    { 26, 26, 81 },
    { 22, 22, 100 },
    { 22, 22, 81 },
    { 26, 26, 101 },
    { 26, 26, 82 },
};

const struct WildPokemonInfo gNewMauville_Inside_LandMonsInfo = { 10, gNewMauville_Inside_LandMons };





const struct WildPokemon gRoute119_LandMons[] =
{
    { 25, 25, 288 },
    { 25, 25, 289 },
    { 27, 27, 288 },
    { 25, 25, 43 },
    { 27, 27, 289 },
    { 26, 26, 43 },
    { 27, 27, 43 },
    { 24, 24, 43 },
    { 25, 25, 369 },
    { 26, 26, 369 },
    { 27, 27, 369 },
    { 25, 25, 317 },
};

const struct WildPokemonInfo gRoute119_LandMonsInfo = { 15, gRoute119_LandMons };


const struct WildPokemon gRoute119_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute119_WaterMonsInfo = { 4, gRoute119_WaterMons };



const struct WildPokemon gRoute119_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 330 },
    { 25, 30, 330 },
    { 30, 35, 330 },
    { 20, 25, 330 },
    { 35, 40, 330 },
    { 40, 45, 330 },
};

const struct WildPokemonInfo gRoute119_FishingMonsInfo = { 30, gRoute119_FishingMons };


const struct WildPokemon gRoute120_LandMons[] =
{
    { 25, 25, 286 },
    { 25, 25, 287 },
    { 27, 27, 287 },
    { 25, 25, 43 },
    { 25, 25, 183 },
    { 26, 26, 43 },
    { 27, 27, 43 },
    { 27, 27, 183 },
    { 25, 25, 376 },
    { 27, 27, 376 },
    { 25, 25, 317 },
    { 25, 25, 298 },
};

const struct WildPokemonInfo gRoute120_LandMonsInfo = { 20, gRoute120_LandMons };


const struct WildPokemon gRoute120_WaterMons[] =
{
    { 20, 30, 183 },
    { 10, 20, 183 },
    { 30, 35, 183 },
    { 5, 10, 183 },
    { 20, 30, 118 },
};

const struct WildPokemonInfo gRoute120_WaterMonsInfo = { 4, gRoute120_WaterMons };



const struct WildPokemon gRoute120_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 323 },
    { 25, 30, 323 },
    { 30, 35, 323 },
    { 20, 25, 323 },
    { 35, 40, 323 },
    { 40, 45, 323 },
};

const struct WildPokemonInfo gRoute120_FishingMonsInfo = { 30, gRoute120_FishingMons };


const struct WildPokemon gRoute121_LandMons[] =
{
    { 26, 26, 286 },
    { 26, 26, 377 },
    { 26, 26, 287 },
    { 28, 28, 377 },
    { 28, 28, 287 },
    { 26, 26, 43 },
    { 28, 28, 43 },
    { 28, 28, 44 },
    { 26, 26, 309 },
    { 27, 27, 309 },
    { 28, 28, 309 },
    { 25, 25, 317 },
};

const struct WildPokemonInfo gRoute121_LandMonsInfo = { 20, gRoute121_LandMons };


const struct WildPokemon gRoute121_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute121_WaterMonsInfo = { 4, gRoute121_WaterMons };



const struct WildPokemon gRoute121_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute121_FishingMonsInfo = { 30, gRoute121_FishingMons };



const struct WildPokemon gRoute122_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute122_WaterMonsInfo = { 4, gRoute122_WaterMons };



const struct WildPokemon gRoute122_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute122_FishingMonsInfo = { 30, gRoute122_FishingMons };


const struct WildPokemon gRoute123_LandMons[] =
{
    { 26, 26, 286 },
    { 26, 26, 377 },
    { 26, 26, 287 },
    { 28, 28, 377 },
    { 28, 28, 287 },
    { 26, 26, 43 },
    { 28, 28, 43 },
    { 28, 28, 44 },
    { 26, 26, 309 },
    { 27, 27, 309 },
    { 28, 28, 309 },
    { 25, 25, 317 },
};

const struct WildPokemonInfo gRoute123_LandMonsInfo = { 20, gRoute123_LandMons };


const struct WildPokemon gRoute123_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute123_WaterMonsInfo = { 4, gRoute123_WaterMons };



const struct WildPokemon gRoute123_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute123_FishingMonsInfo = { 30, gRoute123_FishingMons };


const struct WildPokemon gMtPyre_2F_LandMons[] =
{
    { 27, 27, 377 },
    { 28, 28, 377 },
    { 26, 26, 377 },
    { 25, 25, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
    { 23, 23, 377 },
    { 22, 22, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
};

const struct WildPokemonInfo gMtPyre_2F_LandMonsInfo = { 10, gMtPyre_2F_LandMons };





const struct WildPokemon gMtPyre_3F_LandMons[] =
{
    { 27, 27, 377 },
    { 28, 28, 377 },
    { 26, 26, 377 },
    { 25, 25, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
    { 23, 23, 377 },
    { 22, 22, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
};

const struct WildPokemonInfo gMtPyre_3F_LandMonsInfo = { 10, gMtPyre_3F_LandMons };





const struct WildPokemon gMtPyre_4F_LandMons[] =
{
    { 27, 27, 377 },
    { 28, 28, 377 },
    { 26, 26, 377 },
    { 25, 25, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
    { 23, 23, 377 },
    { 22, 22, 377 },
    { 27, 27, 361 },
    { 27, 27, 361 },
    { 25, 25, 361 },
    { 29, 29, 361 },
};

const struct WildPokemonInfo gMtPyre_4F_LandMonsInfo = { 10, gMtPyre_4F_LandMons };





const struct WildPokemon gMtPyre_5F_LandMons[] =
{
    { 27, 27, 377 },
    { 28, 28, 377 },
    { 26, 26, 377 },
    { 25, 25, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
    { 23, 23, 377 },
    { 22, 22, 377 },
    { 27, 27, 361 },
    { 27, 27, 361 },
    { 25, 25, 361 },
    { 29, 29, 361 },
};

const struct WildPokemonInfo gMtPyre_5F_LandMonsInfo = { 10, gMtPyre_5F_LandMons };





const struct WildPokemon gMtPyre_6F_LandMons[] =
{
    { 27, 27, 377 },
    { 28, 28, 377 },
    { 26, 26, 377 },
    { 25, 25, 377 },
    { 29, 29, 377 },
    { 24, 24, 377 },
    { 23, 23, 377 },
    { 22, 22, 377 },
    { 27, 27, 361 },
    { 27, 27, 361 },
    { 25, 25, 361 },
    { 29, 29, 361 },
};

const struct WildPokemonInfo gMtPyre_6F_LandMonsInfo = { 10, gMtPyre_6F_LandMons };





const struct WildPokemon gMtPyre_Exterior_LandMons[] =
{
    { 27, 27, 377 },
    { 27, 27, 377 },
    { 28, 28, 377 },
    { 29, 29, 377 },
    { 29, 29, 37 },
    { 27, 27, 37 },
    { 29, 29, 37 },
    { 25, 25, 37 },
    { 27, 27, 309 },
    { 27, 27, 309 },
    { 26, 26, 309 },
    { 28, 28, 309 },
};

const struct WildPokemonInfo gMtPyre_Exterior_LandMonsInfo = { 10, gMtPyre_Exterior_LandMons };





const struct WildPokemon gMtPyre_Summit_LandMons[] =
{
    { 28, 28, 377 },
    { 29, 29, 377 },
    { 27, 27, 377 },
    { 26, 26, 377 },
    { 30, 30, 377 },
    { 25, 25, 377 },
    { 24, 24, 377 },
    { 28, 28, 361 },
    { 26, 26, 361 },
    { 30, 30, 361 },
    { 28, 28, 411 },
    { 28, 28, 411 },
};

const struct WildPokemonInfo gMtPyre_Summit_LandMonsInfo = { 10, gMtPyre_Summit_LandMons };





const struct WildPokemon gGraniteCave_StevensRoom_LandMons[] =
{
    { 7, 7, 41 },
    { 8, 8, 335 },
    { 7, 7, 335 },
    { 8, 8, 41 },
    { 9, 9, 335 },
    { 8, 8, 63 },
    { 10, 10, 335 },
    { 6, 6, 335 },
    { 7, 7, 382 },
    { 8, 8, 382 },
    { 7, 7, 382 },
    { 8, 8, 382 },
};

const struct WildPokemonInfo gGraniteCave_StevensRoom_LandMonsInfo = { 10, gGraniteCave_StevensRoom_LandMons };






const struct WildPokemon gRoute125_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute125_WaterMonsInfo = { 4, gRoute125_WaterMons };



const struct WildPokemon gRoute125_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute125_FishingMonsInfo = { 30, gRoute125_FishingMons };



const struct WildPokemon gRoute126_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute126_WaterMonsInfo = { 4, gRoute126_WaterMons };



const struct WildPokemon gRoute126_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute126_FishingMonsInfo = { 30, gRoute126_FishingMons };



const struct WildPokemon gRoute127_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute127_WaterMonsInfo = { 4, gRoute127_WaterMons };



const struct WildPokemon gRoute127_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute127_FishingMonsInfo = { 30, gRoute127_FishingMons };



const struct WildPokemon gRoute128_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute128_WaterMonsInfo = { 4, gRoute128_WaterMons };



const struct WildPokemon gRoute128_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 325 },
    { 10, 30, 313 },
    { 30, 35, 325 },
    { 30, 35, 313 },
    { 30, 35, 222 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute128_FishingMonsInfo = { 30, gRoute128_FishingMons };



const struct WildPokemon gRoute129_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 314 },
};

const struct WildPokemonInfo gRoute129_WaterMonsInfo = { 4, gRoute129_WaterMons };



const struct WildPokemon gRoute129_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute129_FishingMonsInfo = { 30, gRoute129_FishingMons };


const struct WildPokemon gRoute130_LandMons[] =
{
    { 30, 30, 360 },
    { 35, 35, 360 },
    { 25, 25, 360 },
    { 40, 40, 360 },
    { 20, 20, 360 },
    { 45, 45, 360 },
    { 15, 15, 360 },
    { 50, 50, 360 },
    { 10, 10, 360 },
    { 5, 5, 360 },
    { 10, 10, 360 },
    { 5, 5, 360 },
};

const struct WildPokemonInfo gRoute130_LandMonsInfo = { 20, gRoute130_LandMons };


const struct WildPokemon gRoute130_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute130_WaterMonsInfo = { 4, gRoute130_WaterMons };



const struct WildPokemon gRoute130_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute130_FishingMonsInfo = { 30, gRoute130_FishingMons };



const struct WildPokemon gRoute131_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute131_WaterMonsInfo = { 4, gRoute131_WaterMons };



const struct WildPokemon gRoute131_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute131_FishingMonsInfo = { 30, gRoute131_FishingMons };



const struct WildPokemon gRoute132_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute132_WaterMonsInfo = { 4, gRoute132_WaterMons };



const struct WildPokemon gRoute132_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 116 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute132_FishingMonsInfo = { 30, gRoute132_FishingMons };



const struct WildPokemon gRoute133_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute133_WaterMonsInfo = { 4, gRoute133_WaterMons };



const struct WildPokemon gRoute133_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 116 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute133_FishingMonsInfo = { 30, gRoute133_FishingMons };



const struct WildPokemon gRoute134_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gRoute134_WaterMonsInfo = { 4, gRoute134_WaterMons };



const struct WildPokemon gRoute134_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 116 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gRoute134_FishingMonsInfo = { 30, gRoute134_FishingMons };



const struct WildPokemon gAbandonedShip_HiddenFloorCorridors_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 35, 72 },
    { 5, 35, 72 },
    { 5, 35, 72 },
    { 30, 35, 73 },
};

const struct WildPokemonInfo gAbandonedShip_HiddenFloorCorridors_WaterMonsInfo = { 4, gAbandonedShip_HiddenFloorCorridors_WaterMons };



const struct WildPokemon gAbandonedShip_HiddenFloorCorridors_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 72 },
    { 25, 30, 72 },
    { 30, 35, 72 },
    { 30, 35, 73 },
    { 25, 30, 73 },
    { 20, 25, 73 },
};

const struct WildPokemonInfo gAbandonedShip_HiddenFloorCorridors_FishingMonsInfo = { 20, gAbandonedShip_HiddenFloorCorridors_FishingMons };


const struct WildPokemon gSeafloorCavern_Room1_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 33, 33, 41 },
    { 28, 28, 41 },
    { 29, 29, 41 },
    { 34, 34, 41 },
    { 35, 35, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Room1_LandMonsInfo = { 4, gSeafloorCavern_Room1_LandMons };





const struct WildPokemon gSeafloorCavern_Room2_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 33, 33, 41 },
    { 28, 28, 41 },
    { 29, 29, 41 },
    { 34, 34, 41 },
    { 35, 35, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Room2_LandMonsInfo = { 4, gSeafloorCavern_Room2_LandMons };





const struct WildPokemon gSeafloorCavern_Room3_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 33, 33, 41 },
    { 28, 28, 41 },
    { 29, 29, 41 },
    { 34, 34, 41 },
    { 35, 35, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Room3_LandMonsInfo = { 4, gSeafloorCavern_Room3_LandMons };





const struct WildPokemon gSeafloorCavern_Room4_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 33, 33, 41 },
    { 28, 28, 41 },
    { 29, 29, 41 },
    { 34, 34, 41 },
    { 35, 35, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Room4_LandMonsInfo = { 4, gSeafloorCavern_Room4_LandMons };





const struct WildPokemon gSeafloorCavern_Room5_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 33, 33, 41 },
    { 28, 28, 41 },
    { 29, 29, 41 },
    { 34, 34, 41 },
    { 35, 35, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Room5_LandMonsInfo = { 4, gSeafloorCavern_Room5_LandMons };





const struct WildPokemon gSeafloorCavern_Room6_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 33, 33, 41 },
    { 28, 28, 41 },
    { 29, 29, 41 },
    { 34, 34, 41 },
    { 35, 35, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Room6_LandMonsInfo = { 4, gSeafloorCavern_Room6_LandMons };


const struct WildPokemon gSeafloorCavern_Room6_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 35, 41 },
    { 30, 35, 41 },
    { 30, 35, 42 },
    { 30, 35, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Room6_WaterMonsInfo = { 4, gSeafloorCavern_Room6_WaterMons };



const struct WildPokemon gSeafloorCavern_Room6_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gSeafloorCavern_Room6_FishingMonsInfo = { 10, gSeafloorCavern_Room6_FishingMons };


const struct WildPokemon gSeafloorCavern_Room7_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 33, 33, 41 },
    { 28, 28, 41 },
    { 29, 29, 41 },
    { 34, 34, 41 },
    { 35, 35, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Room7_LandMonsInfo = { 4, gSeafloorCavern_Room7_LandMons };


const struct WildPokemon gSeafloorCavern_Room7_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 35, 41 },
    { 30, 35, 41 },
    { 30, 35, 42 },
    { 30, 35, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Room7_WaterMonsInfo = { 4, gSeafloorCavern_Room7_WaterMons };



const struct WildPokemon gSeafloorCavern_Room7_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gSeafloorCavern_Room7_FishingMonsInfo = { 10, gSeafloorCavern_Room7_FishingMons };


const struct WildPokemon gSeafloorCavern_Room8_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 33, 33, 41 },
    { 28, 28, 41 },
    { 29, 29, 41 },
    { 34, 34, 41 },
    { 35, 35, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Room8_LandMonsInfo = { 4, gSeafloorCavern_Room8_LandMons };






const struct WildPokemon gSeafloorCavern_Entrance_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 35, 41 },
    { 30, 35, 41 },
    { 30, 35, 42 },
    { 30, 35, 42 },
};

const struct WildPokemonInfo gSeafloorCavern_Entrance_WaterMonsInfo = { 4, gSeafloorCavern_Entrance_WaterMons };



const struct WildPokemon gSeafloorCavern_Entrance_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gSeafloorCavern_Entrance_FishingMonsInfo = { 10, gSeafloorCavern_Entrance_FishingMons };


const struct WildPokemon gCaveOfOrigin_Entrance_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 33, 33, 41 },
    { 28, 28, 41 },
    { 29, 29, 41 },
    { 34, 34, 41 },
    { 35, 35, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gCaveOfOrigin_Entrance_LandMonsInfo = { 4, gCaveOfOrigin_Entrance_LandMons };





const struct WildPokemon gCaveOfOrigin_1F_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 30, 30, 322 },
    { 32, 32, 322 },
    { 34, 34, 322 },
    { 33, 33, 41 },
    { 34, 34, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gCaveOfOrigin_1F_LandMonsInfo = { 4, gCaveOfOrigin_1F_LandMons };





const struct WildPokemon gCaveOfOrigin_UnusedRubySapphireMap1_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 30, 30, 322 },
    { 32, 32, 322 },
    { 34, 34, 322 },
    { 33, 33, 41 },
    { 34, 34, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gCaveOfOrigin_UnusedRubySapphireMap1_LandMonsInfo = { 4, gCaveOfOrigin_UnusedRubySapphireMap1_LandMons };





const struct WildPokemon gCaveOfOrigin_UnusedRubySapphireMap2_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 30, 30, 322 },
    { 32, 32, 322 },
    { 34, 34, 322 },
    { 33, 33, 41 },
    { 34, 34, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gCaveOfOrigin_UnusedRubySapphireMap2_LandMonsInfo = { 4, gCaveOfOrigin_UnusedRubySapphireMap2_LandMons };





const struct WildPokemon gCaveOfOrigin_UnusedRubySapphireMap3_LandMons[] =
{
    { 30, 30, 41 },
    { 31, 31, 41 },
    { 32, 32, 41 },
    { 30, 30, 322 },
    { 32, 32, 322 },
    { 34, 34, 322 },
    { 33, 33, 41 },
    { 34, 34, 41 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 36, 36, 42 },
};

const struct WildPokemonInfo gCaveOfOrigin_UnusedRubySapphireMap3_LandMonsInfo = { 4, gCaveOfOrigin_UnusedRubySapphireMap3_LandMons };





const struct WildPokemon gNewMauville_Entrance_LandMons[] =
{
    { 24, 24, 100 },
    { 24, 24, 81 },
    { 25, 25, 100 },
    { 25, 25, 81 },
    { 23, 23, 100 },
    { 23, 23, 81 },
    { 26, 26, 100 },
    { 26, 26, 81 },
    { 22, 22, 100 },
    { 22, 22, 81 },
    { 22, 22, 100 },
    { 22, 22, 81 },
};

const struct WildPokemonInfo gNewMauville_Entrance_LandMonsInfo = { 10, gNewMauville_Entrance_LandMons };





const struct WildPokemon gSafariZone_Southwest_LandMons[] =
{
    { 25, 25, 43 },
    { 27, 27, 43 },
    { 25, 25, 203 },
    { 27, 27, 203 },
    { 25, 25, 177 },
    { 27, 27, 84 },
    { 25, 25, 44 },
    { 27, 27, 202 },
    { 25, 25, 25 },
    { 27, 27, 202 },
    { 27, 27, 25 },
    { 29, 29, 202 },
};

const struct WildPokemonInfo gSafariZone_Southwest_LandMonsInfo = { 25, gSafariZone_Southwest_LandMons };


const struct WildPokemon gSafariZone_Southwest_WaterMons[] =
{
    { 20, 30, 54 },
    { 20, 30, 54 },
    { 30, 35, 54 },
    { 30, 35, 54 },
    { 30, 35, 54 },
};

const struct WildPokemonInfo gSafariZone_Southwest_WaterMonsInfo = { 9, gSafariZone_Southwest_WaterMons };



const struct WildPokemon gSafariZone_Southwest_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 25, 118 },
    { 10, 30, 118 },
    { 25, 30, 118 },
    { 30, 35, 118 },
    { 30, 35, 119 },
    { 35, 40, 119 },
    { 25, 30, 119 },
};

const struct WildPokemonInfo gSafariZone_Southwest_FishingMonsInfo = { 35, gSafariZone_Southwest_FishingMons };


const struct WildPokemon gSafariZone_North_LandMons[] =
{
    { 27, 27, 231 },
    { 27, 27, 43 },
    { 29, 29, 231 },
    { 29, 29, 43 },
    { 27, 27, 177 },
    { 29, 29, 44 },
    { 31, 31, 44 },
    { 29, 29, 177 },
    { 29, 29, 178 },
    { 27, 27, 214 },
    { 31, 31, 178 },
    { 29, 29, 214 },
};

const struct WildPokemonInfo gSafariZone_North_LandMonsInfo = { 25, gSafariZone_North_LandMons };



const struct WildPokemon gSafariZone_North_RockSmashMons[] =
{
    { 10, 15, 74 },
    { 5, 10, 74 },
    { 15, 20, 74 },
    { 20, 25, 74 },
    { 25, 30, 74 },
};

const struct WildPokemonInfo gSafariZone_North_RockSmashMonsInfo = { 25, gSafariZone_North_RockSmashMons };



const struct WildPokemon gSafariZone_Northwest_LandMons[] =
{
    { 27, 27, 111 },
    { 27, 27, 43 },
    { 29, 29, 111 },
    { 29, 29, 43 },
    { 27, 27, 84 },
    { 29, 29, 44 },
    { 31, 31, 44 },
    { 29, 29, 84 },
    { 29, 29, 85 },
    { 27, 27, 127 },
    { 31, 31, 85 },
    { 29, 29, 127 },
};

const struct WildPokemonInfo gSafariZone_Northwest_LandMonsInfo = { 25, gSafariZone_Northwest_LandMons };


const struct WildPokemon gSafariZone_Northwest_WaterMons[] =
{
    { 20, 30, 54 },
    { 20, 30, 54 },
    { 30, 35, 54 },
    { 30, 35, 55 },
    { 25, 40, 55 },
};

const struct WildPokemonInfo gSafariZone_Northwest_WaterMonsInfo = { 9, gSafariZone_Northwest_WaterMons };



const struct WildPokemon gSafariZone_Northwest_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 25, 118 },
    { 10, 30, 118 },
    { 25, 30, 118 },
    { 30, 35, 118 },
    { 30, 35, 119 },
    { 35, 40, 119 },
    { 25, 30, 119 },
};

const struct WildPokemonInfo gSafariZone_Northwest_FishingMonsInfo = { 35, gSafariZone_Northwest_FishingMons };


const struct WildPokemon gVictoryRoad_B1F_LandMons[] =
{
    { 40, 40, 42 },
    { 40, 40, 336 },
    { 40, 40, 383 },
    { 40, 40, 383 },
    { 38, 38, 42 },
    { 38, 38, 336 },
    { 42, 42, 42 },
    { 42, 42, 336 },
    { 42, 42, 383 },
    { 38, 38, 355 },
    { 42, 42, 383 },
    { 38, 38, 355 },
};

const struct WildPokemonInfo gVictoryRoad_B1F_LandMonsInfo = { 10, gVictoryRoad_B1F_LandMons };



const struct WildPokemon gVictoryRoad_B1F_RockSmashMons[] =
{
    { 30, 40, 75 },
    { 30, 40, 74 },
    { 35, 40, 75 },
    { 35, 40, 75 },
    { 35, 40, 75 },
};

const struct WildPokemonInfo gVictoryRoad_B1F_RockSmashMonsInfo = { 20, gVictoryRoad_B1F_RockSmashMons };



const struct WildPokemon gVictoryRoad_B2F_LandMons[] =
{
    { 40, 40, 42 },
    { 40, 40, 322 },
    { 40, 40, 383 },
    { 40, 40, 383 },
    { 42, 42, 42 },
    { 42, 42, 322 },
    { 44, 44, 42 },
    { 44, 44, 322 },
    { 42, 42, 383 },
    { 42, 42, 355 },
    { 44, 44, 383 },
    { 44, 44, 355 },
};

const struct WildPokemonInfo gVictoryRoad_B2F_LandMonsInfo = { 10, gVictoryRoad_B2F_LandMons };


const struct WildPokemon gVictoryRoad_B2F_WaterMons[] =
{
    { 30, 35, 42 },
    { 25, 30, 42 },
    { 35, 40, 42 },
    { 35, 40, 42 },
    { 35, 40, 42 },
};

const struct WildPokemonInfo gVictoryRoad_B2F_WaterMonsInfo = { 4, gVictoryRoad_B2F_WaterMons };



const struct WildPokemon gVictoryRoad_B2F_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 323 },
    { 25, 30, 323 },
    { 30, 35, 323 },
    { 30, 35, 324 },
    { 35, 40, 324 },
    { 40, 45, 324 },
};

const struct WildPokemonInfo gVictoryRoad_B2F_FishingMonsInfo = { 30, gVictoryRoad_B2F_FishingMons };


const struct WildPokemon gMeteorFalls_1F_1R_LandMons[] =
{
    { 16, 16, 41 },
    { 17, 17, 41 },
    { 18, 18, 41 },
    { 15, 15, 41 },
    { 14, 14, 41 },
    { 16, 16, 349 },
    { 18, 18, 349 },
    { 14, 14, 349 },
    { 19, 19, 41 },
    { 20, 20, 41 },
    { 19, 19, 41 },
    { 20, 20, 41 },
};

const struct WildPokemonInfo gMeteorFalls_1F_1R_LandMonsInfo = { 10, gMeteorFalls_1F_1R_LandMons };


const struct WildPokemon gMeteorFalls_1F_1R_WaterMons[] =
{
    { 5, 35, 41 },
    { 30, 35, 41 },
    { 25, 35, 349 },
    { 15, 25, 349 },
    { 5, 15, 349 },
};

const struct WildPokemonInfo gMeteorFalls_1F_1R_WaterMonsInfo = { 4, gMeteorFalls_1F_1R_WaterMons };



const struct WildPokemon gMeteorFalls_1F_1R_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 323 },
    { 25, 30, 323 },
    { 30, 35, 323 },
    { 20, 25, 323 },
    { 35, 40, 323 },
    { 40, 45, 323 },
};

const struct WildPokemonInfo gMeteorFalls_1F_1R_FishingMonsInfo = { 30, gMeteorFalls_1F_1R_FishingMons };


const struct WildPokemon gMeteorFalls_1F_2R_LandMons[] =
{
    { 33, 33, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 35, 35, 349 },
    { 33, 33, 349 },
    { 37, 37, 349 },
    { 35, 35, 42 },
    { 39, 39, 349 },
    { 38, 38, 42 },
    { 40, 40, 42 },
    { 38, 38, 42 },
    { 40, 40, 42 },
};

const struct WildPokemonInfo gMeteorFalls_1F_2R_LandMonsInfo = { 10, gMeteorFalls_1F_2R_LandMons };


const struct WildPokemon gMeteorFalls_1F_2R_WaterMons[] =
{
    { 30, 35, 42 },
    { 30, 35, 42 },
    { 25, 35, 349 },
    { 15, 25, 349 },
    { 5, 15, 349 },
};

const struct WildPokemonInfo gMeteorFalls_1F_2R_WaterMonsInfo = { 4, gMeteorFalls_1F_2R_WaterMons };



const struct WildPokemon gMeteorFalls_1F_2R_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 323 },
    { 25, 30, 323 },
    { 30, 35, 323 },
    { 30, 35, 324 },
    { 35, 40, 324 },
    { 40, 45, 324 },
};

const struct WildPokemonInfo gMeteorFalls_1F_2R_FishingMonsInfo = { 30, gMeteorFalls_1F_2R_FishingMons };


const struct WildPokemon gMeteorFalls_B1F_1R_LandMons[] =
{
    { 33, 33, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 35, 35, 349 },
    { 33, 33, 349 },
    { 37, 37, 349 },
    { 35, 35, 42 },
    { 39, 39, 349 },
    { 38, 38, 42 },
    { 40, 40, 42 },
    { 38, 38, 42 },
    { 40, 40, 42 },
};

const struct WildPokemonInfo gMeteorFalls_B1F_1R_LandMonsInfo = { 10, gMeteorFalls_B1F_1R_LandMons };


const struct WildPokemon gMeteorFalls_B1F_1R_WaterMons[] =
{
    { 30, 35, 42 },
    { 30, 35, 42 },
    { 25, 35, 349 },
    { 15, 25, 349 },
    { 5, 15, 349 },
};

const struct WildPokemonInfo gMeteorFalls_B1F_1R_WaterMonsInfo = { 4, gMeteorFalls_B1F_1R_WaterMons };



const struct WildPokemon gMeteorFalls_B1F_1R_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 323 },
    { 25, 30, 323 },
    { 30, 35, 323 },
    { 30, 35, 324 },
    { 35, 40, 324 },
    { 40, 45, 324 },
};

const struct WildPokemonInfo gMeteorFalls_B1F_1R_FishingMonsInfo = { 30, gMeteorFalls_B1F_1R_FishingMons };


const struct WildPokemon gShoalCave_LowTideStairsRoom_LandMons[] =
{
    { 26, 26, 41 },
    { 26, 26, 341 },
    { 28, 28, 41 },
    { 28, 28, 341 },
    { 30, 30, 41 },
    { 30, 30, 341 },
    { 32, 32, 41 },
    { 32, 32, 341 },
    { 32, 32, 42 },
    { 32, 32, 341 },
    { 32, 32, 42 },
    { 32, 32, 341 },
};

const struct WildPokemonInfo gShoalCave_LowTideStairsRoom_LandMonsInfo = { 10, gShoalCave_LowTideStairsRoom_LandMons };





const struct WildPokemon gShoalCave_LowTideLowerRoom_LandMons[] =
{
    { 26, 26, 41 },
    { 26, 26, 341 },
    { 28, 28, 41 },
    { 28, 28, 341 },
    { 30, 30, 41 },
    { 30, 30, 341 },
    { 32, 32, 41 },
    { 32, 32, 341 },
    { 32, 32, 42 },
    { 32, 32, 341 },
    { 32, 32, 42 },
    { 32, 32, 341 },
};

const struct WildPokemonInfo gShoalCave_LowTideLowerRoom_LandMonsInfo = { 10, gShoalCave_LowTideLowerRoom_LandMons };





const struct WildPokemon gShoalCave_LowTideInnerRoom_LandMons[] =
{
    { 26, 26, 41 },
    { 26, 26, 341 },
    { 28, 28, 41 },
    { 28, 28, 341 },
    { 30, 30, 41 },
    { 30, 30, 341 },
    { 32, 32, 41 },
    { 32, 32, 341 },
    { 32, 32, 42 },
    { 32, 32, 341 },
    { 32, 32, 42 },
    { 32, 32, 341 },
};

const struct WildPokemonInfo gShoalCave_LowTideInnerRoom_LandMonsInfo = { 10, gShoalCave_LowTideInnerRoom_LandMons };


const struct WildPokemon gShoalCave_LowTideInnerRoom_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 35, 41 },
    { 25, 30, 341 },
    { 25, 30, 341 },
    { 25, 35, 341 },
};

const struct WildPokemonInfo gShoalCave_LowTideInnerRoom_WaterMonsInfo = { 4, gShoalCave_LowTideInnerRoom_WaterMons };



const struct WildPokemon gShoalCave_LowTideInnerRoom_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gShoalCave_LowTideInnerRoom_FishingMonsInfo = { 10, gShoalCave_LowTideInnerRoom_FishingMons };


const struct WildPokemon gShoalCave_LowTideEntranceRoom_LandMons[] =
{
    { 26, 26, 41 },
    { 26, 26, 341 },
    { 28, 28, 41 },
    { 28, 28, 341 },
    { 30, 30, 41 },
    { 30, 30, 341 },
    { 32, 32, 41 },
    { 32, 32, 341 },
    { 32, 32, 42 },
    { 32, 32, 341 },
    { 32, 32, 42 },
    { 32, 32, 341 },
};

const struct WildPokemonInfo gShoalCave_LowTideEntranceRoom_LandMonsInfo = { 10, gShoalCave_LowTideEntranceRoom_LandMons };


const struct WildPokemon gShoalCave_LowTideEntranceRoom_WaterMons[] =
{
    { 5, 35, 72 },
    { 5, 35, 41 },
    { 25, 30, 341 },
    { 25, 30, 341 },
    { 25, 35, 341 },
};

const struct WildPokemonInfo gShoalCave_LowTideEntranceRoom_WaterMonsInfo = { 4, gShoalCave_LowTideEntranceRoom_WaterMons };



const struct WildPokemon gShoalCave_LowTideEntranceRoom_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gShoalCave_LowTideEntranceRoom_FishingMonsInfo = { 10, gShoalCave_LowTideEntranceRoom_FishingMons };



const struct WildPokemon gLilycoveCity_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gLilycoveCity_WaterMonsInfo = { 4, gLilycoveCity_WaterMons };



const struct WildPokemon gLilycoveCity_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 25, 30, 120 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gLilycoveCity_FishingMonsInfo = { 10, gLilycoveCity_FishingMons };



const struct WildPokemon gDewfordTown_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gDewfordTown_WaterMonsInfo = { 4, gDewfordTown_WaterMons };



const struct WildPokemon gDewfordTown_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gDewfordTown_FishingMonsInfo = { 10, gDewfordTown_FishingMons };



const struct WildPokemon gSlateportCity_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gSlateportCity_WaterMonsInfo = { 4, gSlateportCity_WaterMons };



const struct WildPokemon gSlateportCity_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 25, 30, 313 },
    { 30, 35, 313 },
    { 20, 25, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gSlateportCity_FishingMonsInfo = { 10, gSlateportCity_FishingMons };



const struct WildPokemon gMossdeepCity_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gMossdeepCity_WaterMonsInfo = { 4, gMossdeepCity_WaterMons };



const struct WildPokemon gMossdeepCity_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gMossdeepCity_FishingMonsInfo = { 10, gMossdeepCity_FishingMons };



const struct WildPokemon gPacifidlogTown_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gPacifidlogTown_WaterMonsInfo = { 4, gPacifidlogTown_WaterMons };



const struct WildPokemon gPacifidlogTown_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 72 },
    { 10, 30, 313 },
    { 30, 35, 331 },
    { 30, 35, 313 },
    { 25, 30, 313 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gPacifidlogTown_FishingMonsInfo = { 10, gPacifidlogTown_FishingMons };



const struct WildPokemon gEverGrandeCity_WaterMons[] =
{
    { 5, 35, 72 },
    { 10, 30, 309 },
    { 15, 25, 309 },
    { 25, 30, 310 },
    { 25, 30, 310 },
};

const struct WildPokemonInfo gEverGrandeCity_WaterMonsInfo = { 4, gEverGrandeCity_WaterMons };



const struct WildPokemon gEverGrandeCity_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 325 },
    { 10, 30, 313 },
    { 30, 35, 325 },
    { 30, 35, 313 },
    { 30, 35, 222 },
    { 35, 40, 313 },
    { 40, 45, 313 },
};

const struct WildPokemonInfo gEverGrandeCity_FishingMonsInfo = { 10, gEverGrandeCity_FishingMons };



const struct WildPokemon gPetalburgCity_WaterMons[] =
{
    { 20, 30, 183 },
    { 10, 20, 183 },
    { 30, 35, 183 },
    { 5, 10, 183 },
    { 5, 10, 183 },
};

const struct WildPokemonInfo gPetalburgCity_WaterMonsInfo = { 1, gPetalburgCity_WaterMons };



const struct WildPokemon gPetalburgCity_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 118 },
    { 10, 30, 129 },
    { 10, 30, 118 },
    { 10, 30, 326 },
    { 25, 30, 326 },
    { 30, 35, 326 },
    { 20, 25, 326 },
    { 35, 40, 326 },
    { 40, 45, 326 },
};

const struct WildPokemonInfo gPetalburgCity_FishingMonsInfo = { 10, gPetalburgCity_FishingMons };



const struct WildPokemon gUnderwater1_WaterMons[] =
{
    { 20, 30, 373 },
    { 20, 30, 170 },
    { 30, 35, 373 },
    { 30, 35, 381 },
    { 30, 35, 381 },
};

const struct WildPokemonInfo gUnderwater1_WaterMonsInfo = { 4, gUnderwater1_WaterMons };




const struct WildPokemon gShoalCave_LowTideIceRoom_LandMons[] =
{
    { 26, 26, 41 },
    { 26, 26, 341 },
    { 28, 28, 41 },
    { 28, 28, 341 },
    { 30, 30, 41 },
    { 30, 30, 341 },
    { 26, 26, 346 },
    { 32, 32, 341 },
    { 30, 30, 42 },
    { 28, 28, 346 },
    { 32, 32, 42 },
    { 30, 30, 346 },
};

const struct WildPokemonInfo gShoalCave_LowTideIceRoom_LandMonsInfo = { 10, gShoalCave_LowTideIceRoom_LandMons };





const struct WildPokemon gSkyPillar_1F_LandMons[] =
{
    { 33, 33, 322 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 34, 34, 322 },
    { 36, 36, 319 },
    { 37, 37, 378 },
    { 38, 38, 378 },
    { 36, 36, 319 },
    { 37, 37, 319 },
    { 38, 38, 319 },
    { 37, 37, 319 },
    { 38, 38, 319 },
};

const struct WildPokemonInfo gSkyPillar_1F_LandMonsInfo = { 10, gSkyPillar_1F_LandMons };






const struct WildPokemon gSootopolisCity_WaterMons[] =
{
    { 5, 35, 129 },
    { 10, 30, 129 },
    { 15, 25, 129 },
    { 25, 30, 129 },
    { 25, 30, 129 },
};

const struct WildPokemonInfo gSootopolisCity_WaterMonsInfo = { 1, gSootopolisCity_WaterMons };



const struct WildPokemon gSootopolisCity_FishingMons[] =
{
    { 5, 10, 129 },
    { 5, 10, 72 },
    { 10, 30, 129 },
    { 10, 30, 129 },
    { 10, 30, 129 },
    { 30, 35, 129 },
    { 30, 35, 129 },
    { 35, 40, 130 },
    { 35, 45, 130 },
    { 5, 45, 130 },
};

const struct WildPokemonInfo gSootopolisCity_FishingMonsInfo = { 10, gSootopolisCity_FishingMons };


const struct WildPokemon gSkyPillar_3F_LandMons[] =
{
    { 33, 33, 322 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 34, 34, 322 },
    { 36, 36, 319 },
    { 37, 37, 378 },
    { 38, 38, 378 },
    { 36, 36, 319 },
    { 37, 37, 319 },
    { 38, 38, 319 },
    { 37, 37, 319 },
    { 38, 38, 319 },
};

const struct WildPokemonInfo gSkyPillar_3F_LandMonsInfo = { 10, gSkyPillar_3F_LandMons };





const struct WildPokemon gSkyPillar_5F_LandMons[] =
{
    { 33, 33, 322 },
    { 34, 34, 42 },
    { 35, 35, 42 },
    { 34, 34, 322 },
    { 36, 36, 319 },
    { 37, 37, 378 },
    { 38, 38, 378 },
    { 36, 36, 319 },
    { 37, 37, 319 },
    { 38, 38, 359 },
    { 39, 39, 359 },
    { 39, 39, 359 },
};

const struct WildPokemonInfo gSkyPillar_5F_LandMonsInfo = { 10, gSkyPillar_5F_LandMons };





const struct WildPokemon gSafariZone_Southeast_LandMons[] =
{
    { 33, 33, 191 },
    { 34, 34, 179 },
    { 35, 35, 191 },
    { 36, 36, 179 },
    { 34, 34, 190 },
    { 33, 33, 167 },
    { 35, 35, 163 },
    { 34, 34, 209 },
    { 36, 36, 234 },
    { 37, 37, 207 },
    { 39, 39, 234 },
    { 40, 40, 207 },
};

const struct WildPokemonInfo gSafariZone_Southeast_LandMonsInfo = { 25, gSafariZone_Southeast_LandMons };


const struct WildPokemon gSafariZone_Southeast_WaterMons[] =
{
    { 25, 30, 194 },
    { 25, 30, 183 },
    { 25, 30, 183 },
    { 30, 35, 183 },
    { 35, 40, 195 },
};

const struct WildPokemonInfo gSafariZone_Southeast_WaterMonsInfo = { 9, gSafariZone_Southeast_WaterMons };



const struct WildPokemon gSafariZone_Southeast_FishingMons[] =
{
    { 25, 30, 129 },
    { 25, 30, 118 },
    { 25, 30, 129 },
    { 25, 30, 118 },
    { 30, 35, 223 },
    { 25, 30, 118 },
    { 25, 30, 223 },
    { 30, 35, 223 },
    { 30, 35, 223 },
    { 35, 40, 224 },
};

const struct WildPokemonInfo gSafariZone_Southeast_FishingMonsInfo = { 35, gSafariZone_Southeast_FishingMons };


const struct WildPokemon gSafariZone_Northeast_LandMons[] =
{
    { 33, 33, 190 },
    { 34, 34, 216 },
    { 35, 35, 190 },
    { 36, 36, 216 },
    { 34, 34, 191 },
    { 33, 33, 165 },
    { 35, 35, 163 },
    { 34, 34, 204 },
    { 36, 36, 228 },
    { 37, 37, 241 },
    { 39, 39, 228 },
    { 40, 40, 241 },
};

const struct WildPokemonInfo gSafariZone_Northeast_LandMonsInfo = { 25, gSafariZone_Northeast_LandMons };



const struct WildPokemon gSafariZone_Northeast_RockSmashMons[] =
{
    { 25, 30, 213 },
    { 20, 25, 213 },
    { 30, 35, 213 },
    { 30, 35, 213 },
    { 35, 40, 213 },
};

const struct WildPokemonInfo gSafariZone_Northeast_RockSmashMonsInfo = { 25, gSafariZone_Northeast_RockSmashMons };



const struct WildPokemon gMagmaHideout_1F_LandMons[] =
{
    { 27, 27, 74 },
    { 28, 28, 321 },
    { 28, 28, 74 },
    { 30, 30, 321 },
    { 29, 29, 74 },
    { 30, 30, 74 },
    { 30, 30, 74 },
    { 30, 30, 75 },
    { 30, 30, 75 },
    { 31, 31, 75 },
    { 32, 32, 75 },
    { 33, 33, 75 },
};

const struct WildPokemonInfo gMagmaHideout_1F_LandMonsInfo = { 10, gMagmaHideout_1F_LandMons };





const struct WildPokemon gMagmaHideout_2F_1R_LandMons[] =
{
    { 27, 27, 74 },
    { 28, 28, 321 },
    { 28, 28, 74 },
    { 30, 30, 321 },
    { 29, 29, 74 },
    { 30, 30, 74 },
    { 30, 30, 74 },
    { 30, 30, 75 },
    { 30, 30, 75 },
    { 31, 31, 75 },
    { 32, 32, 75 },
    { 33, 33, 75 },
};

const struct WildPokemonInfo gMagmaHideout_2F_1R_LandMonsInfo = { 10, gMagmaHideout_2F_1R_LandMons };





const struct WildPokemon gMagmaHideout_2F_2R_LandMons[] =
{
    { 27, 27, 74 },
    { 28, 28, 321 },
    { 28, 28, 74 },
    { 30, 30, 321 },
    { 29, 29, 74 },
    { 30, 30, 74 },
    { 30, 30, 74 },
    { 30, 30, 75 },
    { 30, 30, 75 },
    { 31, 31, 75 },
    { 32, 32, 75 },
    { 33, 33, 75 },
};

const struct WildPokemonInfo gMagmaHideout_2F_2R_LandMonsInfo = { 10, gMagmaHideout_2F_2R_LandMons };





const struct WildPokemon gMagmaHideout_3F_1R_LandMons[] =
{
    { 27, 27, 74 },
    { 28, 28, 321 },
    { 28, 28, 74 },
    { 30, 30, 321 },
    { 29, 29, 74 },
    { 30, 30, 74 },
    { 30, 30, 74 },
    { 30, 30, 75 },
    { 30, 30, 75 },
    { 31, 31, 75 },
    { 32, 32, 75 },
    { 33, 33, 75 },
};

const struct WildPokemonInfo gMagmaHideout_3F_1R_LandMonsInfo = { 10, gMagmaHideout_3F_1R_LandMons };





const struct WildPokemon gMagmaHideout_3F_2R_LandMons[] =
{
    { 27, 27, 74 },
    { 28, 28, 321 },
    { 28, 28, 74 },
    { 30, 30, 321 },
    { 29, 29, 74 },
    { 30, 30, 74 },
    { 30, 30, 74 },
    { 30, 30, 75 },
    { 30, 30, 75 },
    { 31, 31, 75 },
    { 32, 32, 75 },
    { 33, 33, 75 },
};

const struct WildPokemonInfo gMagmaHideout_3F_2R_LandMonsInfo = { 10, gMagmaHideout_3F_2R_LandMons };





const struct WildPokemon gMagmaHideout_4F_LandMons[] =
{
    { 27, 27, 74 },
    { 28, 28, 321 },
    { 28, 28, 74 },
    { 30, 30, 321 },
    { 29, 29, 74 },
    { 30, 30, 74 },
    { 30, 30, 74 },
    { 30, 30, 75 },
    { 30, 30, 75 },
    { 31, 31, 75 },
    { 32, 32, 75 },
    { 33, 33, 75 },
};

const struct WildPokemonInfo gMagmaHideout_4F_LandMonsInfo = { 10, gMagmaHideout_4F_LandMons };





const struct WildPokemon gMagmaHideout_3F_3R_LandMons[] =
{
    { 27, 27, 74 },
    { 28, 28, 321 },
    { 28, 28, 74 },
    { 30, 30, 321 },
    { 29, 29, 74 },
    { 30, 30, 74 },
    { 30, 30, 74 },
    { 30, 30, 75 },
    { 30, 30, 75 },
    { 31, 31, 75 },
    { 32, 32, 75 },
    { 33, 33, 75 },
};

const struct WildPokemonInfo gMagmaHideout_3F_3R_LandMonsInfo = { 10, gMagmaHideout_3F_3R_LandMons };





const struct WildPokemon gMagmaHideout_2F_3R_LandMons[] =
{
    { 27, 27, 74 },
    { 28, 28, 321 },
    { 28, 28, 74 },
    { 30, 30, 321 },
    { 29, 29, 74 },
    { 30, 30, 74 },
    { 30, 30, 74 },
    { 30, 30, 75 },
    { 30, 30, 75 },
    { 31, 31, 75 },
    { 32, 32, 75 },
    { 33, 33, 75 },
};

const struct WildPokemonInfo gMagmaHideout_2F_3R_LandMonsInfo = { 10, gMagmaHideout_2F_3R_LandMons };





const struct WildPokemon gMirageTower_1F_LandMons[] =
{
    { 21, 21, 27 },
    { 21, 21, 332 },
    { 20, 20, 27 },
    { 20, 20, 332 },
    { 20, 20, 27 },
    { 20, 20, 332 },
    { 22, 22, 27 },
    { 22, 22, 332 },
    { 23, 23, 27 },
    { 23, 23, 332 },
    { 24, 24, 27 },
    { 24, 24, 332 },
};

const struct WildPokemonInfo gMirageTower_1F_LandMonsInfo = { 10, gMirageTower_1F_LandMons };





const struct WildPokemon gMirageTower_2F_LandMons[] =
{
    { 21, 21, 27 },
    { 21, 21, 332 },
    { 20, 20, 27 },
    { 20, 20, 332 },
    { 20, 20, 27 },
    { 20, 20, 332 },
    { 22, 22, 27 },
    { 22, 22, 332 },
    { 23, 23, 27 },
    { 23, 23, 332 },
    { 24, 24, 27 },
    { 24, 24, 332 },
};

const struct WildPokemonInfo gMirageTower_2F_LandMonsInfo = { 10, gMirageTower_2F_LandMons };





const struct WildPokemon gMirageTower_3F_LandMons[] =
{
    { 21, 21, 27 },
    { 21, 21, 332 },
    { 20, 20, 27 },
    { 20, 20, 332 },
    { 20, 20, 27 },
    { 20, 20, 332 },
    { 22, 22, 27 },
    { 22, 22, 332 },
    { 23, 23, 27 },
    { 23, 23, 332 },
    { 24, 24, 27 },
    { 24, 24, 332 },
};

const struct WildPokemonInfo gMirageTower_3F_LandMonsInfo = { 10, gMirageTower_3F_LandMons };





const struct WildPokemon gMirageTower_4F_LandMons[] =
{
    { 21, 21, 27 },
    { 21, 21, 332 },
    { 20, 20, 27 },
    { 20, 20, 332 },
    { 20, 20, 27 },
    { 20, 20, 332 },
    { 22, 22, 27 },
    { 22, 22, 332 },
    { 23, 23, 27 },
    { 23, 23, 332 },
    { 24, 24, 27 },
    { 24, 24, 332 },
};

const struct WildPokemonInfo gMirageTower_4F_LandMonsInfo = { 10, gMirageTower_4F_LandMons };





const struct WildPokemon gDesertUnderpass_LandMons[] =
{
    { 38, 38, 132 },
    { 35, 35, 370 },
    { 40, 40, 132 },
    { 40, 40, 371 },
    { 41, 41, 132 },
    { 36, 36, 370 },
    { 38, 38, 371 },
    { 42, 42, 132 },
    { 38, 38, 370 },
    { 43, 43, 132 },
    { 44, 44, 371 },
    { 45, 45, 132 },
};

const struct WildPokemonInfo gDesertUnderpass_LandMonsInfo = { 10, gDesertUnderpass_LandMons };





const struct WildPokemon gArtisanCave_B1F_LandMons[] =
{
    { 40, 40, 235 },
    { 41, 41, 235 },
    { 42, 42, 235 },
    { 43, 43, 235 },
    { 44, 44, 235 },
    { 45, 45, 235 },
    { 46, 46, 235 },
    { 47, 47, 235 },
    { 48, 48, 235 },
    { 49, 49, 235 },
    { 50, 50, 235 },
    { 50, 50, 235 },
};

const struct WildPokemonInfo gArtisanCave_B1F_LandMonsInfo = { 10, gArtisanCave_B1F_LandMons };





const struct WildPokemon gArtisanCave_1F_LandMons[] =
{
    { 40, 40, 235 },
    { 41, 41, 235 },
    { 42, 42, 235 },
    { 43, 43, 235 },
    { 44, 44, 235 },
    { 45, 45, 235 },
    { 46, 46, 235 },
    { 47, 47, 235 },
    { 48, 48, 235 },
    { 49, 49, 235 },
    { 50, 50, 235 },
    { 50, 50, 235 },
};

const struct WildPokemonInfo gArtisanCave_1F_LandMonsInfo = { 10, gArtisanCave_1F_LandMons };





const struct WildPokemon gAlteringCave1_LandMons[] =
{
    { 10, 10, 41 },
    { 12, 12, 41 },
    { 8, 8, 41 },
    { 14, 14, 41 },
    { 10, 10, 41 },
    { 12, 12, 41 },
    { 16, 16, 41 },
    { 6, 6, 41 },
    { 8, 8, 41 },
    { 14, 14, 41 },
    { 8, 8, 41 },
    { 14, 14, 41 },
};

const struct WildPokemonInfo gAlteringCave1_LandMonsInfo = { 7, gAlteringCave1_LandMons };





const struct WildPokemon gAlteringCave2_LandMons[] =
{
    { 7, 7, 179 },
    { 9, 9, 179 },
    { 5, 5, 179 },
    { 11, 11, 179 },
    { 7, 7, 179 },
    { 9, 9, 179 },
    { 13, 13, 179 },
    { 3, 3, 179 },
    { 5, 5, 179 },
    { 11, 11, 179 },
    { 5, 5, 179 },
    { 11, 11, 179 },
};

const struct WildPokemonInfo gAlteringCave2_LandMonsInfo = { 7, gAlteringCave2_LandMons };





const struct WildPokemon gAlteringCave3_LandMons[] =
{
    { 23, 23, 204 },
    { 25, 25, 204 },
    { 22, 22, 204 },
    { 27, 27, 204 },
    { 23, 23, 204 },
    { 25, 25, 204 },
    { 29, 29, 204 },
    { 19, 19, 204 },
    { 21, 21, 204 },
    { 27, 27, 204 },
    { 21, 21, 204 },
    { 27, 27, 204 },
};

const struct WildPokemonInfo gAlteringCave3_LandMonsInfo = { 7, gAlteringCave3_LandMons };





const struct WildPokemon gAlteringCave4_LandMons[] =
{
    { 16, 16, 228 },
    { 18, 18, 228 },
    { 14, 14, 228 },
    { 20, 20, 228 },
    { 16, 16, 228 },
    { 18, 18, 228 },
    { 22, 22, 228 },
    { 12, 12, 228 },
    { 14, 14, 228 },
    { 20, 20, 228 },
    { 14, 14, 228 },
    { 20, 20, 228 },
};

const struct WildPokemonInfo gAlteringCave4_LandMonsInfo = { 7, gAlteringCave4_LandMons };





const struct WildPokemon gAlteringCave5_LandMons[] =
{
    { 10, 10, 216 },
    { 12, 12, 216 },
    { 8, 8, 216 },
    { 14, 14, 216 },
    { 10, 10, 216 },
    { 12, 12, 216 },
    { 16, 16, 216 },
    { 6, 6, 216 },
    { 8, 8, 216 },
    { 14, 14, 216 },
    { 8, 8, 216 },
    { 14, 14, 216 },
};

const struct WildPokemonInfo gAlteringCave5_LandMonsInfo = { 7, gAlteringCave5_LandMons };





const struct WildPokemon gAlteringCave6_LandMons[] =
{
    { 22, 22, 190 },
    { 24, 24, 190 },
    { 20, 20, 190 },
    { 26, 26, 190 },
    { 22, 22, 190 },
    { 24, 24, 190 },
    { 28, 28, 190 },
    { 18, 18, 190 },
    { 20, 20, 190 },
    { 26, 26, 190 },
    { 20, 20, 190 },
    { 26, 26, 190 },
};

const struct WildPokemonInfo gAlteringCave6_LandMonsInfo = { 7, gAlteringCave6_LandMons };





const struct WildPokemon gAlteringCave7_LandMons[] =
{
    { 22, 22, 213 },
    { 24, 24, 213 },
    { 20, 20, 213 },
    { 26, 26, 213 },
    { 22, 22, 213 },
    { 24, 24, 213 },
    { 28, 28, 213 },
    { 18, 18, 213 },
    { 20, 20, 213 },
    { 26, 26, 213 },
    { 20, 20, 213 },
    { 26, 26, 213 },
};

const struct WildPokemonInfo gAlteringCave7_LandMonsInfo = { 7, gAlteringCave7_LandMons };





const struct WildPokemon gAlteringCave8_LandMons[] =
{
    { 22, 22, 234 },
    { 24, 24, 234 },
    { 20, 20, 234 },
    { 26, 26, 234 },
    { 22, 22, 234 },
    { 24, 24, 234 },
    { 28, 28, 234 },
    { 18, 18, 234 },
    { 20, 20, 234 },
    { 26, 26, 234 },
    { 20, 20, 234 },
    { 26, 26, 234 },
};

const struct WildPokemonInfo gAlteringCave8_LandMonsInfo = { 7, gAlteringCave8_LandMons };





const struct WildPokemon gAlteringCave9_LandMons[] =
{
    { 22, 22, 235 },
    { 24, 24, 235 },
    { 20, 20, 235 },
    { 26, 26, 235 },
    { 22, 22, 235 },
    { 24, 24, 235 },
    { 28, 28, 235 },
    { 18, 18, 235 },
    { 20, 20, 235 },
    { 26, 26, 235 },
    { 20, 20, 235 },
    { 26, 26, 235 },
};

const struct WildPokemonInfo gAlteringCave9_LandMonsInfo = { 7, gAlteringCave9_LandMons };





const struct WildPokemon gMeteorFalls_StevensCave_LandMons[] =
{
    { 33, 33, 42 },
    { 35, 35, 42 },
    { 33, 33, 42 },
    { 35, 35, 349 },
    { 33, 33, 349 },
    { 37, 37, 349 },
    { 35, 35, 42 },
    { 39, 39, 349 },
    { 38, 38, 42 },
    { 40, 40, 42 },
    { 38, 38, 42 },
    { 40, 40, 42 },
};

const struct WildPokemonInfo gMeteorFalls_StevensCave_LandMonsInfo = { 10, gMeteorFalls_StevensCave_LandMons };





const struct WildPokemonHeader gWildMonHeaders[] =
{
    {
        .mapGroup = ((16 | (0 << 8)) >> 8),
        .mapNum = ((16 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute101_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((17 | (0 << 8)) >> 8),
        .mapNum = ((17 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute102_LandMonsInfo,
        .waterMonsInfo = &gRoute102_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute102_FishingMonsInfo,
    },
    {
        .mapGroup = ((18 | (0 << 8)) >> 8),
        .mapNum = ((18 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute103_LandMonsInfo,
        .waterMonsInfo = &gRoute103_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute103_FishingMonsInfo,
    },
    {
        .mapGroup = ((19 | (0 << 8)) >> 8),
        .mapNum = ((19 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute104_LandMonsInfo,
        .waterMonsInfo = &gRoute104_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute104_FishingMonsInfo,
    },
    {
        .mapGroup = ((20 | (0 << 8)) >> 8),
        .mapNum = ((20 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute105_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute105_FishingMonsInfo,
    },
    {
        .mapGroup = ((25 | (0 << 8)) >> 8),
        .mapNum = ((25 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute110_LandMonsInfo,
        .waterMonsInfo = &gRoute110_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute110_FishingMonsInfo,
    },
    {
        .mapGroup = ((26 | (0 << 8)) >> 8),
        .mapNum = ((26 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute111_LandMonsInfo,
        .waterMonsInfo = &gRoute111_WaterMonsInfo,
        .rockSmashMonsInfo = &gRoute111_RockSmashMonsInfo,
        .fishingMonsInfo = &gRoute111_FishingMonsInfo,
    },
    {
        .mapGroup = ((27 | (0 << 8)) >> 8),
        .mapNum = ((27 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute112_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((28 | (0 << 8)) >> 8),
        .mapNum = ((28 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute113_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((29 | (0 << 8)) >> 8),
        .mapNum = ((29 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute114_LandMonsInfo,
        .waterMonsInfo = &gRoute114_WaterMonsInfo,
        .rockSmashMonsInfo = &gRoute114_RockSmashMonsInfo,
        .fishingMonsInfo = &gRoute114_FishingMonsInfo,
    },
    {
        .mapGroup = ((31 | (0 << 8)) >> 8),
        .mapNum = ((31 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute116_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((32 | (0 << 8)) >> 8),
        .mapNum = ((32 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute117_LandMonsInfo,
        .waterMonsInfo = &gRoute117_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute117_FishingMonsInfo,
    },
    {
        .mapGroup = ((33 | (0 << 8)) >> 8),
        .mapNum = ((33 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute118_LandMonsInfo,
        .waterMonsInfo = &gRoute118_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute118_FishingMonsInfo,
    },
    {
        .mapGroup = ((39 | (0 << 8)) >> 8),
        .mapNum = ((39 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute124_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute124_FishingMonsInfo,
    },
    {
        .mapGroup = ((11 | (24 << 8)) >> 8),
        .mapNum = ((11 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gPetalburgWoods_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((4 | (24 << 8)) >> 8),
        .mapNum = ((4 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gRusturfTunnel_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((7 | (24 << 8)) >> 8),
        .mapNum = ((7 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gGraniteCave_1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((8 | (24 << 8)) >> 8),
        .mapNum = ((8 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gGraniteCave_B1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((15 | (24 << 8)) >> 8),
        .mapNum = ((15 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMtPyre_1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((43 | (24 << 8)) >> 8),
        .mapNum = ((43 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gVictoryRoad_1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((3 | (26 << 8)) >> 8),
        .mapNum = ((3 | (26 << 8)) & 0xFF),
        .landMonsInfo = &gSafariZone_South_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((51 | (0 << 8)) >> 8),
        .mapNum = ((51 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gUnderwater2_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((58 | (24 << 8)) >> 8),
        .mapNum = ((58 | (24 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gAbandonedShip_Rooms_B1F_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gAbandonedShip_Rooms_B1F_FishingMonsInfo,
    },
    {
        .mapGroup = ((9 | (24 << 8)) >> 8),
        .mapNum = ((9 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gGraniteCave_B2F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &gGraniteCave_B2F_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((14 | (24 << 8)) >> 8),
        .mapNum = ((14 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gFieryPath_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((3 | (24 << 8)) >> 8),
        .mapNum = ((3 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMeteorFalls_B1F_2R_LandMonsInfo,
        .waterMonsInfo = &gMeteorFalls_B1F_2R_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gMeteorFalls_B1F_2R_FishingMonsInfo,
    },
    {
        .mapGroup = ((13 | (24 << 8)) >> 8),
        .mapNum = ((13 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gJaggedPass_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((21 | (0 << 8)) >> 8),
        .mapNum = ((21 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute106_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute106_FishingMonsInfo,
    },
    {
        .mapGroup = ((22 | (0 << 8)) >> 8),
        .mapNum = ((22 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute107_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute107_FishingMonsInfo,
    },
    {
        .mapGroup = ((23 | (0 << 8)) >> 8),
        .mapNum = ((23 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute108_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute108_FishingMonsInfo,
    },
    {
        .mapGroup = ((24 | (0 << 8)) >> 8),
        .mapNum = ((24 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute109_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute109_FishingMonsInfo,
    },
    {
        .mapGroup = ((30 | (0 << 8)) >> 8),
        .mapNum = ((30 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute115_LandMonsInfo,
        .waterMonsInfo = &gRoute115_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute115_FishingMonsInfo,
    },
    {
        .mapGroup = ((53 | (24 << 8)) >> 8),
        .mapNum = ((53 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gNewMauville_Inside_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((34 | (0 << 8)) >> 8),
        .mapNum = ((34 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute119_LandMonsInfo,
        .waterMonsInfo = &gRoute119_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute119_FishingMonsInfo,
    },
    {
        .mapGroup = ((35 | (0 << 8)) >> 8),
        .mapNum = ((35 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute120_LandMonsInfo,
        .waterMonsInfo = &gRoute120_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute120_FishingMonsInfo,
    },
    {
        .mapGroup = ((36 | (0 << 8)) >> 8),
        .mapNum = ((36 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute121_LandMonsInfo,
        .waterMonsInfo = &gRoute121_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute121_FishingMonsInfo,
    },
    {
        .mapGroup = ((37 | (0 << 8)) >> 8),
        .mapNum = ((37 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute122_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute122_FishingMonsInfo,
    },
    {
        .mapGroup = ((38 | (0 << 8)) >> 8),
        .mapNum = ((38 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute123_LandMonsInfo,
        .waterMonsInfo = &gRoute123_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute123_FishingMonsInfo,
    },
    {
        .mapGroup = ((16 | (24 << 8)) >> 8),
        .mapNum = ((16 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMtPyre_2F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((17 | (24 << 8)) >> 8),
        .mapNum = ((17 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMtPyre_3F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((18 | (24 << 8)) >> 8),
        .mapNum = ((18 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMtPyre_4F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((19 | (24 << 8)) >> 8),
        .mapNum = ((19 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMtPyre_5F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((20 | (24 << 8)) >> 8),
        .mapNum = ((20 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMtPyre_6F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((21 | (24 << 8)) >> 8),
        .mapNum = ((21 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMtPyre_Exterior_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((22 | (24 << 8)) >> 8),
        .mapNum = ((22 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMtPyre_Summit_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((10 | (24 << 8)) >> 8),
        .mapNum = ((10 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gGraniteCave_StevensRoom_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((40 | (0 << 8)) >> 8),
        .mapNum = ((40 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute125_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute125_FishingMonsInfo,
    },
    {
        .mapGroup = ((41 | (0 << 8)) >> 8),
        .mapNum = ((41 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute126_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute126_FishingMonsInfo,
    },
    {
        .mapGroup = ((42 | (0 << 8)) >> 8),
        .mapNum = ((42 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute127_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute127_FishingMonsInfo,
    },
    {
        .mapGroup = ((43 | (0 << 8)) >> 8),
        .mapNum = ((43 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute128_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute128_FishingMonsInfo,
    },
    {
        .mapGroup = ((44 | (0 << 8)) >> 8),
        .mapNum = ((44 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute129_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute129_FishingMonsInfo,
    },
    {
        .mapGroup = ((45 | (0 << 8)) >> 8),
        .mapNum = ((45 | (0 << 8)) & 0xFF),
        .landMonsInfo = &gRoute130_LandMonsInfo,
        .waterMonsInfo = &gRoute130_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute130_FishingMonsInfo,
    },
    {
        .mapGroup = ((46 | (0 << 8)) >> 8),
        .mapNum = ((46 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute131_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute131_FishingMonsInfo,
    },
    {
        .mapGroup = ((47 | (0 << 8)) >> 8),
        .mapNum = ((47 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute132_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute132_FishingMonsInfo,
    },
    {
        .mapGroup = ((48 | (0 << 8)) >> 8),
        .mapNum = ((48 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute133_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute133_FishingMonsInfo,
    },
    {
        .mapGroup = ((49 | (0 << 8)) >> 8),
        .mapNum = ((49 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gRoute134_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gRoute134_FishingMonsInfo,
    },
    {
        .mapGroup = ((65 | (24 << 8)) >> 8),
        .mapNum = ((65 | (24 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gAbandonedShip_HiddenFloorCorridors_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gAbandonedShip_HiddenFloorCorridors_FishingMonsInfo,
    },
    {
        .mapGroup = ((28 | (24 << 8)) >> 8),
        .mapNum = ((28 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSeafloorCavern_Room1_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((29 | (24 << 8)) >> 8),
        .mapNum = ((29 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSeafloorCavern_Room2_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((30 | (24 << 8)) >> 8),
        .mapNum = ((30 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSeafloorCavern_Room3_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((31 | (24 << 8)) >> 8),
        .mapNum = ((31 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSeafloorCavern_Room4_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((32 | (24 << 8)) >> 8),
        .mapNum = ((32 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSeafloorCavern_Room5_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((33 | (24 << 8)) >> 8),
        .mapNum = ((33 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSeafloorCavern_Room6_LandMonsInfo,
        .waterMonsInfo = &gSeafloorCavern_Room6_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gSeafloorCavern_Room6_FishingMonsInfo,
    },
    {
        .mapGroup = ((34 | (24 << 8)) >> 8),
        .mapNum = ((34 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSeafloorCavern_Room7_LandMonsInfo,
        .waterMonsInfo = &gSeafloorCavern_Room7_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gSeafloorCavern_Room7_FishingMonsInfo,
    },
    {
        .mapGroup = ((35 | (24 << 8)) >> 8),
        .mapNum = ((35 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSeafloorCavern_Room8_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((27 | (24 << 8)) >> 8),
        .mapNum = ((27 | (24 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gSeafloorCavern_Entrance_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gSeafloorCavern_Entrance_FishingMonsInfo,
    },
    {
        .mapGroup = ((37 | (24 << 8)) >> 8),
        .mapNum = ((37 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gCaveOfOrigin_Entrance_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((38 | (24 << 8)) >> 8),
        .mapNum = ((38 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gCaveOfOrigin_1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((39 | (24 << 8)) >> 8),
        .mapNum = ((39 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gCaveOfOrigin_UnusedRubySapphireMap1_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((40 | (24 << 8)) >> 8),
        .mapNum = ((40 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gCaveOfOrigin_UnusedRubySapphireMap2_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((41 | (24 << 8)) >> 8),
        .mapNum = ((41 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gCaveOfOrigin_UnusedRubySapphireMap3_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((52 | (24 << 8)) >> 8),
        .mapNum = ((52 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gNewMauville_Entrance_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((2 | (26 << 8)) >> 8),
        .mapNum = ((2 | (26 << 8)) & 0xFF),
        .landMonsInfo = &gSafariZone_Southwest_LandMonsInfo,
        .waterMonsInfo = &gSafariZone_Southwest_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gSafariZone_Southwest_FishingMonsInfo,
    },
    {
        .mapGroup = ((1 | (26 << 8)) >> 8),
        .mapNum = ((1 | (26 << 8)) & 0xFF),
        .landMonsInfo = &gSafariZone_North_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &gSafariZone_North_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((0 | (26 << 8)) >> 8),
        .mapNum = ((0 | (26 << 8)) & 0xFF),
        .landMonsInfo = &gSafariZone_Northwest_LandMonsInfo,
        .waterMonsInfo = &gSafariZone_Northwest_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gSafariZone_Northwest_FishingMonsInfo,
    },
    {
        .mapGroup = ((44 | (24 << 8)) >> 8),
        .mapNum = ((44 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gVictoryRoad_B1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &gVictoryRoad_B1F_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((45 | (24 << 8)) >> 8),
        .mapNum = ((45 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gVictoryRoad_B2F_LandMonsInfo,
        .waterMonsInfo = &gVictoryRoad_B2F_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gVictoryRoad_B2F_FishingMonsInfo,
    },
    {
        .mapGroup = ((0 | (24 << 8)) >> 8),
        .mapNum = ((0 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMeteorFalls_1F_1R_LandMonsInfo,
        .waterMonsInfo = &gMeteorFalls_1F_1R_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gMeteorFalls_1F_1R_FishingMonsInfo,
    },
    {
        .mapGroup = ((1 | (24 << 8)) >> 8),
        .mapNum = ((1 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMeteorFalls_1F_2R_LandMonsInfo,
        .waterMonsInfo = &gMeteorFalls_1F_2R_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gMeteorFalls_1F_2R_FishingMonsInfo,
    },
    {
        .mapGroup = ((2 | (24 << 8)) >> 8),
        .mapNum = ((2 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMeteorFalls_B1F_1R_LandMonsInfo,
        .waterMonsInfo = &gMeteorFalls_B1F_1R_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gMeteorFalls_B1F_1R_FishingMonsInfo,
    },
    {
        .mapGroup = ((48 | (24 << 8)) >> 8),
        .mapNum = ((48 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gShoalCave_LowTideStairsRoom_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((49 | (24 << 8)) >> 8),
        .mapNum = ((49 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gShoalCave_LowTideLowerRoom_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((47 | (24 << 8)) >> 8),
        .mapNum = ((47 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gShoalCave_LowTideInnerRoom_LandMonsInfo,
        .waterMonsInfo = &gShoalCave_LowTideInnerRoom_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gShoalCave_LowTideInnerRoom_FishingMonsInfo,
    },
    {
        .mapGroup = ((46 | (24 << 8)) >> 8),
        .mapNum = ((46 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gShoalCave_LowTideEntranceRoom_LandMonsInfo,
        .waterMonsInfo = &gShoalCave_LowTideEntranceRoom_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gShoalCave_LowTideEntranceRoom_FishingMonsInfo,
    },
    {
        .mapGroup = ((5 | (0 << 8)) >> 8),
        .mapNum = ((5 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gLilycoveCity_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gLilycoveCity_FishingMonsInfo,
    },
    {
        .mapGroup = ((11 | (0 << 8)) >> 8),
        .mapNum = ((11 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gDewfordTown_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gDewfordTown_FishingMonsInfo,
    },
    {
        .mapGroup = ((1 | (0 << 8)) >> 8),
        .mapNum = ((1 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gSlateportCity_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gSlateportCity_FishingMonsInfo,
    },
    {
        .mapGroup = ((6 | (0 << 8)) >> 8),
        .mapNum = ((6 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gMossdeepCity_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gMossdeepCity_FishingMonsInfo,
    },
    {
        .mapGroup = ((15 | (0 << 8)) >> 8),
        .mapNum = ((15 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gPacifidlogTown_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gPacifidlogTown_FishingMonsInfo,
    },
    {
        .mapGroup = ((8 | (0 << 8)) >> 8),
        .mapNum = ((8 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gEverGrandeCity_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gEverGrandeCity_FishingMonsInfo,
    },
    {
        .mapGroup = ((0 | (0 << 8)) >> 8),
        .mapNum = ((0 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gPetalburgCity_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gPetalburgCity_FishingMonsInfo,
    },
    {
        .mapGroup = ((50 | (0 << 8)) >> 8),
        .mapNum = ((50 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gUnderwater1_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((83 | (24 << 8)) >> 8),
        .mapNum = ((83 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gShoalCave_LowTideIceRoom_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((79 | (24 << 8)) >> 8),
        .mapNum = ((79 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSkyPillar_1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((7 | (0 << 8)) >> 8),
        .mapNum = ((7 | (0 << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = &gSootopolisCity_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gSootopolisCity_FishingMonsInfo,
    },
    {
        .mapGroup = ((81 | (24 << 8)) >> 8),
        .mapNum = ((81 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSkyPillar_3F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((84 | (24 << 8)) >> 8),
        .mapNum = ((84 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gSkyPillar_5F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((13 | (26 << 8)) >> 8),
        .mapNum = ((13 | (26 << 8)) & 0xFF),
        .landMonsInfo = &gSafariZone_Southeast_LandMonsInfo,
        .waterMonsInfo = &gSafariZone_Southeast_WaterMonsInfo,
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = &gSafariZone_Southeast_FishingMonsInfo,
    },
    {
        .mapGroup = ((12 | (26 << 8)) >> 8),
        .mapNum = ((12 | (26 << 8)) & 0xFF),
        .landMonsInfo = &gSafariZone_Northeast_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = &gSafariZone_Northeast_RockSmashMonsInfo,
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((86 | (24 << 8)) >> 8),
        .mapNum = ((86 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMagmaHideout_1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((87 | (24 << 8)) >> 8),
        .mapNum = ((87 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMagmaHideout_2F_1R_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((88 | (24 << 8)) >> 8),
        .mapNum = ((88 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMagmaHideout_2F_2R_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((89 | (24 << 8)) >> 8),
        .mapNum = ((89 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMagmaHideout_3F_1R_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((90 | (24 << 8)) >> 8),
        .mapNum = ((90 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMagmaHideout_3F_2R_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((91 | (24 << 8)) >> 8),
        .mapNum = ((91 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMagmaHideout_4F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((92 | (24 << 8)) >> 8),
        .mapNum = ((92 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMagmaHideout_3F_3R_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((93 | (24 << 8)) >> 8),
        .mapNum = ((93 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMagmaHideout_2F_3R_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((94 | (24 << 8)) >> 8),
        .mapNum = ((94 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMirageTower_1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((95 | (24 << 8)) >> 8),
        .mapNum = ((95 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMirageTower_2F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((96 | (24 << 8)) >> 8),
        .mapNum = ((96 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMirageTower_3F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((97 | (24 << 8)) >> 8),
        .mapNum = ((97 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMirageTower_4F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((98 | (24 << 8)) >> 8),
        .mapNum = ((98 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gDesertUnderpass_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((99 | (24 << 8)) >> 8),
        .mapNum = ((99 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gArtisanCave_B1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((100 | (24 << 8)) >> 8),
        .mapNum = ((100 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gArtisanCave_1F_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((106 | (24 << 8)) >> 8),
        .mapNum = ((106 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gAlteringCave1_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((106 | (24 << 8)) >> 8),
        .mapNum = ((106 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gAlteringCave2_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((106 | (24 << 8)) >> 8),
        .mapNum = ((106 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gAlteringCave3_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((106 | (24 << 8)) >> 8),
        .mapNum = ((106 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gAlteringCave4_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((106 | (24 << 8)) >> 8),
        .mapNum = ((106 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gAlteringCave5_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((106 | (24 << 8)) >> 8),
        .mapNum = ((106 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gAlteringCave6_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((106 | (24 << 8)) >> 8),
        .mapNum = ((106 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gAlteringCave7_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((106 | (24 << 8)) >> 8),
        .mapNum = ((106 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gAlteringCave8_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((106 | (24 << 8)) >> 8),
        .mapNum = ((106 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gAlteringCave9_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((107 | (24 << 8)) >> 8),
        .mapNum = ((107 | (24 << 8)) & 0xFF),
        .landMonsInfo = &gMeteorFalls_StevensCave_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((0xFF | (0xFF << 8)) >> 8),
        .mapNum = ((0xFF | (0xFF << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
};





const struct WildPokemon gBattlePyramid_1_LandMons[] =
{
    { 5, 5, 1 },
    { 5, 5, 1 },
    { 5, 5, 1 },
    { 5, 5, 1 },
    { 5, 5, 2 },
    { 5, 5, 2 },
    { 5, 5, 3 },
    { 5, 5, 3 },
    { 5, 5, 3 },
    { 5, 5, 4 },
    { 5, 5, 3 },
    { 5, 5, 4 },
};

const struct WildPokemonInfo gBattlePyramid_1_LandMonsInfo = { 4, gBattlePyramid_1_LandMons };





const struct WildPokemon gBattlePyramid_2_LandMons[] =
{
    { 5, 5, 2 },
    { 5, 5, 2 },
    { 5, 5, 2 },
    { 5, 5, 2 },
    { 5, 5, 3 },
    { 5, 5, 3 },
    { 5, 5, 4 },
    { 5, 5, 4 },
    { 5, 5, 4 },
    { 5, 5, 5 },
    { 5, 5, 5 },
    { 5, 5, 4 },
};

const struct WildPokemonInfo gBattlePyramid_2_LandMonsInfo = { 4, gBattlePyramid_2_LandMons };





const struct WildPokemon gBattlePyramid_3_LandMons[] =
{
    { 5, 5, 3 },
    { 5, 5, 3 },
    { 5, 5, 3 },
    { 5, 5, 3 },
    { 5, 5, 4 },
    { 5, 5, 4 },
    { 5, 5, 5 },
    { 5, 5, 5 },
    { 5, 5, 5 },
    { 5, 5, 6 },
    { 5, 5, 5 },
    { 5, 5, 6 },
};

const struct WildPokemonInfo gBattlePyramid_3_LandMonsInfo = { 4, gBattlePyramid_3_LandMons };





const struct WildPokemon gBattlePyramid_4_LandMons[] =
{
    { 5, 5, 4 },
    { 5, 5, 4 },
    { 5, 5, 4 },
    { 5, 5, 4 },
    { 5, 5, 5 },
    { 5, 5, 5 },
    { 5, 5, 6 },
    { 5, 5, 6 },
    { 5, 5, 6 },
    { 5, 5, 7 },
    { 5, 5, 6 },
    { 5, 5, 7 },
};

const struct WildPokemonInfo gBattlePyramid_4_LandMonsInfo = { 4, gBattlePyramid_4_LandMons };





const struct WildPokemon gBattlePyramid_5_LandMons[] =
{
    { 5, 5, 5 },
    { 5, 5, 5 },
    { 5, 5, 5 },
    { 5, 5, 5 },
    { 5, 5, 6 },
    { 5, 5, 6 },
    { 5, 5, 7 },
    { 5, 5, 7 },
    { 5, 5, 7 },
    { 5, 5, 8 },
    { 5, 5, 7 },
    { 5, 5, 8 },
};

const struct WildPokemonInfo gBattlePyramid_5_LandMonsInfo = { 4, gBattlePyramid_5_LandMons };





const struct WildPokemon gBattlePyramid_6_LandMons[] =
{
    { 5, 5, 6 },
    { 5, 5, 6 },
    { 5, 5, 6 },
    { 5, 5, 5 },
    { 5, 5, 7 },
    { 5, 5, 7 },
    { 5, 5, 8 },
    { 5, 5, 8 },
    { 5, 5, 8 },
    { 5, 5, 8 },
    { 5, 5, 8 },
    { 5, 5, 8 },
};

const struct WildPokemonInfo gBattlePyramid_6_LandMonsInfo = { 4, gBattlePyramid_6_LandMons };





const struct WildPokemon gBattlePyramid_7_LandMons[] =
{
    { 5, 5, 8 },
    { 5, 5, 8 },
    { 5, 5, 7 },
    { 5, 5, 7 },
    { 5, 5, 7 },
    { 5, 5, 6 },
    { 5, 5, 6 },
    { 5, 5, 6 },
    { 5, 5, 5 },
    { 5, 5, 5 },
    { 5, 5, 5 },
    { 5, 5, 5 },
};

const struct WildPokemonInfo gBattlePyramid_7_LandMonsInfo = { 8, gBattlePyramid_7_LandMons };





const struct WildPokemonHeader gBattlePyramidWildMonHeaders[] =
{
    {
        .mapGroup = 0,
        .mapNum = 1,
        .landMonsInfo = &gBattlePyramid_1_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = 0,
        .mapNum = 2,
        .landMonsInfo = &gBattlePyramid_2_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = 0,
        .mapNum = 3,
        .landMonsInfo = &gBattlePyramid_3_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = 0,
        .mapNum = 4,
        .landMonsInfo = &gBattlePyramid_4_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = 0,
        .mapNum = 5,
        .landMonsInfo = &gBattlePyramid_5_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = 0,
        .mapNum = 6,
        .landMonsInfo = &gBattlePyramid_6_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = 0,
        .mapNum = 7,
        .landMonsInfo = &gBattlePyramid_7_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((0xFF | (0xFF << 8)) >> 8),
        .mapNum = ((0xFF | (0xFF << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
};





const struct WildPokemon gBattlePike_1_LandMons[] =
{
    { 5, 5, 379 },
    { 5, 5, 329 },
    { 5, 5, 362 },
    { 5, 5, 362 },
    { 5, 5, 362 },
    { 5, 5, 362 },
    { 5, 5, 379 },
    { 5, 5, 329 },
    { 5, 5, 362 },
    { 5, 5, 362 },
    { 5, 5, 379 },
    { 5, 5, 329 },
};

const struct WildPokemonInfo gBattlePike_1_LandMonsInfo = { 10, gBattlePike_1_LandMons };





const struct WildPokemon gBattlePike_2_LandMons[] =
{
    { 5, 5, 379 },
    { 5, 5, 329 },
    { 5, 5, 101 },
    { 5, 5, 101 },
    { 5, 5, 101 },
    { 5, 5, 101 },
    { 5, 5, 379 },
    { 5, 5, 329 },
    { 5, 5, 101 },
    { 5, 5, 101 },
    { 5, 5, 379 },
    { 5, 5, 329 },
};

const struct WildPokemonInfo gBattlePike_2_LandMonsInfo = { 10, gBattlePike_2_LandMons };





const struct WildPokemon gBattlePike_3_LandMons[] =
{
    { 5, 5, 379 },
    { 5, 5, 329 },
    { 5, 5, 307 },
    { 5, 5, 307 },
    { 5, 5, 307 },
    { 5, 5, 307 },
    { 5, 5, 379 },
    { 5, 5, 329 },
    { 5, 5, 307 },
    { 5, 5, 307 },
    { 5, 5, 379 },
    { 5, 5, 329 },
};

const struct WildPokemonInfo gBattlePike_3_LandMonsInfo = { 10, gBattlePike_3_LandMons };





const struct WildPokemon gBattlePike_4_LandMons[] =
{
    { 5, 5, 379 },
    { 5, 5, 329 },
    { 5, 5, 202 },
    { 5, 5, 202 },
    { 5, 5, 202 },
    { 5, 5, 202 },
    { 5, 5, 379 },
    { 5, 5, 329 },
    { 5, 5, 202 },
    { 5, 5, 202 },
    { 5, 5, 379 },
    { 5, 5, 329 },
};

const struct WildPokemonInfo gBattlePike_4_LandMonsInfo = { 10, gBattlePike_4_LandMons };





const struct WildPokemonHeader gBattlePikeWildMonHeaders[] =
{
    {
        .mapGroup = 0,
        .mapNum = 1,
        .landMonsInfo = &gBattlePike_1_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = 0,
        .mapNum = 2,
        .landMonsInfo = &gBattlePike_2_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = 0,
        .mapNum = 3,
        .landMonsInfo = &gBattlePike_3_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = 0,
        .mapNum = 4,
        .landMonsInfo = &gBattlePike_4_LandMonsInfo,
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
    {
        .mapGroup = ((0xFF | (0xFF << 8)) >> 8),
        .mapNum = ((0xFF | (0xFF << 8)) & 0xFF),
        .landMonsInfo = ((void *)0),
        .waterMonsInfo = ((void *)0),
        .rockSmashMonsInfo = ((void *)0),
        .fishingMonsInfo = ((void *)0),
    },
};
# 45 "src/wild_encounter.c" 2


const struct WildPokemon gWildFeebasRoute119Data = {20, 25, 328};

const u16 gRoute119WaterTileData[] =
{
    0, 0x2D, 0,
    0x2E, 0x5B, 0x83,
    0x5C, 0x8B, 0x12A,
};


void DisableWildEncounters(bool8 disabled)
{
    sWildEncountersDisabled = disabled;
}

static u16 GetRoute119WaterTileNum(s16 x, s16 y, u8 section)
{
    u16 xCur;
    u16 yCur;
    u16 yMin = gRoute119WaterTileData[section * 3 + 0];
    u16 yMax = gRoute119WaterTileData[section * 3 + 1];
    u16 tileNum = gRoute119WaterTileData[section * 3 + 2];

    for (yCur = yMin; yCur <= yMax; yCur++)
    {
        for (xCur = 0; xCur < gMapHeader.mapLayout->width; xCur++)
        {
            u8 tileBehaviorId = MapGridGetMetatileBehaviorAt(xCur + 7, yCur + 7);
            if (MetatileBehavior_IsSurfableAndNotWaterfall(tileBehaviorId) == 1)
            {
                tileNum++;
                if (x == xCur && y == yCur)
                    return tileNum;
            }
        }
    }
    return tileNum + 1;
}

static bool8 CheckFeebas(void)
{
    u8 i;
    u16 feebasSpots[6];
    s16 x;
    s16 y;
    u8 route119Section = 0;
    u16 waterTileNum;

    if (gSaveBlock1Ptr->location.mapGroup == ((34 | (0 << 8)) >> 8)
     && gSaveBlock1Ptr->location.mapNum == ((34 | (0 << 8)) & 0xFF))
    {
        GetXYCoordsOneStepInFrontOfPlayer(&x, &y);
        x -= 7;
        y -= 7;

        if (y >= gRoute119WaterTileData[3 * 0 + 0] && y <= gRoute119WaterTileData[3 * 0 + 1])
            route119Section = 0;
        if (y >= gRoute119WaterTileData[3 * 1 + 0] && y <= gRoute119WaterTileData[3 * 1 + 1])
            route119Section = 1;
        if (y >= gRoute119WaterTileData[3 * 2 + 0] && y <= gRoute119WaterTileData[3 * 2 + 1])
            route119Section = 2;

        if (Random() % 100 > 49)
            return 0;

        FeebasSeedRng(gSaveBlock1Ptr->easyChatPairs[0].unk2);
        for (i = 0; i != 6;)
        {
            feebasSpots[i] = FeebasRandom() % 447;
            if (feebasSpots[i] == 0)
                feebasSpots[i] = 447;
            if (feebasSpots[i] < 1 || feebasSpots[i] >= 4)
                i++;
        }
        waterTileNum = GetRoute119WaterTileNum(x, y, route119Section);
        for (i = 0; i < 6; i++)
        {
            if (waterTileNum == feebasSpots[i])
                return 1;
        }
    }
    return 0;
}

static u16 FeebasRandom(void)
{
    sFeebasRngValue = (1103515245 * (sFeebasRngValue) + 12345);
    return sFeebasRngValue >> 16;
}

static void FeebasSeedRng(u16 seed)
{
    sFeebasRngValue = seed;
}

static u8 ChooseWildMonIndex_Land(void)
{
    u8 rand = Random() % (20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4 + 4 + 1 + 1);

    if (rand < 20)
        return 0;
    else if (rand >= 20 && rand < 20 + 20)
        return 1;
    else if (rand >= 20 + 20 && rand < 20 + 20 + 10)
        return 2;
    else if (rand >= 20 + 20 + 10 && rand < 20 + 20 + 10 + 10)
        return 3;
    else if (rand >= 20 + 20 + 10 + 10 && rand < 20 + 20 + 10 + 10 + 10)
        return 4;
    else if (rand >= 20 + 20 + 10 + 10 + 10 && rand < 20 + 20 + 10 + 10 + 10 + 10)
        return 5;
    else if (rand >= 20 + 20 + 10 + 10 + 10 + 10 && rand < 20 + 20 + 10 + 10 + 10 + 10 + 5)
        return 6;
    else if (rand >= 20 + 20 + 10 + 10 + 10 + 10 + 5 && rand < 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5)
        return 7;
    else if (rand >= 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 && rand < 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4)
        return 8;
    else if (rand >= 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4 && rand < 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4 + 4)
        return 9;
    else if (rand == 20 + 20 + 10 + 10 + 10 + 10 + 5 + 5 + 4 + 4)
        return 10;
    else
        return 11;
}

static u8 ChooseWildMonIndex_WaterRock(void)
{
    u8 rand = Random() % (60 + 30 + 5 + 4 + 1);

    if (rand < 60)
        return 0;
    else if (rand >= 60 && rand < 60 + 30)
        return 1;
    else if (rand >= 60 + 30 && rand < 60 + 30 + 5)
        return 2;
    else if (rand >= 60 + 30 + 5 && rand < 60 + 30 + 5 + 4)
        return 3;
    else
        return 4;
}

enum
{
    OLD_ROD,
    GOOD_ROD,
    SUPER_ROD
};

static u8 ChooseWildMonIndex_Fishing(u8 rod)
{
    u8 wildMonIndex = 0;
    u8 rand = Random() % (((((70 + 30)) >= ((60 + 20 + 20)) ? ((70 + 30)) : ((60 + 20 + 20)))) >= ((40 + 40 + 15 + 4 + 1)) ? ((((70 + 30)) >= ((60 + 20 + 20)) ? ((70 + 30)) : ((60 + 20 + 20)))) : ((40 + 40 + 15 + 4 + 1)))
                                                                           ;

    switch (rod)
    {
    case OLD_ROD:
        if (rand < 70)
            wildMonIndex = 0;
        else
            wildMonIndex = 1;
        break;
    case GOOD_ROD:
        if (rand < 60)
            wildMonIndex = 2;
        if (rand >= 60 && rand < 60 + 20)
            wildMonIndex = 3;
        if (rand >= 60 + 20 && rand < 60 + 20 + 20)
            wildMonIndex = 4;
        break;
    case SUPER_ROD:
        if (rand < 40)
            wildMonIndex = 5;
        if (rand >= 40 && rand < 40 + 40)
            wildMonIndex = 6;
        if (rand >= 40 + 40 && rand < 40 + 40 + 15)
            wildMonIndex = 7;
        if (rand >= 40 + 40 + 15 && rand < 40 + 40 + 15 + 4)
            wildMonIndex = 8;
        if (rand == 40 + 40 + 15 + 4)
            wildMonIndex = 9;
        break;
    }
    return wildMonIndex;
}

static u8 ChooseWildMonLevel(const struct WildPokemon *wildPokemon)
{
    u8 min;
    u8 max;
    u8 range;
    u8 rand;


    if (wildPokemon->maxLevel >= wildPokemon->minLevel)
    {
        min = wildPokemon->minLevel;
        max = wildPokemon->maxLevel;
    }
    else
    {
        min = wildPokemon->maxLevel;
        max = wildPokemon->minLevel;
    }
    range = max - min + 1;
    rand = Random() % range;


    if (!GetMonData(&gPlayerParty[0], 6))
    {
        u8 ability = GetMonAbility(&gPlayerParty[0]);
        if (ability == 55 || ability == 72 || ability == 46)
        {
            if (Random() % 2 == 0)
                return max;

            if (rand != 0)
                rand--;
        }
    }

    return min + rand;
}

static u16 GetCurrentMapWildMonHeaderId(void)
{
    u16 i;

    for (i = 0; ; i++)
    {
        const struct WildPokemonHeader *wildHeader = &gWildMonHeaders[i];
        if (wildHeader->mapGroup == 0xFF)
            break;

        if (gWildMonHeaders[i].mapGroup == gSaveBlock1Ptr->location.mapGroup &&
            gWildMonHeaders[i].mapNum == gSaveBlock1Ptr->location.mapNum)
        {
            if (gSaveBlock1Ptr->location.mapGroup == ((106 | (24 << 8)) >> 8) &&
                gSaveBlock1Ptr->location.mapNum == ((106 | (24 << 8)) & 0xFF))
            {
                u16 alteringCaveId = VarGet(0x403E);
                if (alteringCaveId > 8)
                    alteringCaveId = 0;

                i += alteringCaveId;
            }

            return i;
        }
    }

    return -1;
}

static u8 PickWildMonNature(void)
{
    u8 i;
    u8 j;
    struct Pokeblock *safariPokeblock;
    u8 natures[25];

    if (GetSafariZoneFlag() == 1 && Random() % 100 < 80)
    {
        safariPokeblock = SafariZoneGetActivePokeblock();
        if (safariPokeblock != ((void *)0))
        {
            for (i = 0; i < 25; i++)
                natures[i] = i;
            for (i = 0; i < 24; i++)
            {
                for (j = i + 1; j < 25; j++)
                {
                    if (Random() & 1)
                    {
                        u8 temp = natures[i];

                        natures[i] = natures[j];
                        natures[j] = temp;
                    }
                }
            }
            for (i = 0; i < 25; i++)
            {
                if (PokeblockGetGain(natures[i], safariPokeblock) > 0)
                    return natures[i];
            }
        }
    }

    if (!GetMonData(&gPlayerParty[0], 6)
        && GetMonAbility(&gPlayerParty[0]) == 28
        && Random() % 2 == 0)
    {
        return GetMonData(&gPlayerParty[0], 0) % 25;
    }


    return Random() % 25;
}

static void CreateWildMon(u16 species, u8 level)
{
    bool32 checkCuteCharm;

    ZeroEnemyPartyMons();
    checkCuteCharm = 1;

    switch (gBaseStats[species].genderRatio)
    {
    case 0x00:
    case 0xFE:
    case 0xFF:
        checkCuteCharm = 0;
        break;
    }

    if (checkCuteCharm
        && !GetMonData(&gPlayerParty[0], 6)
        && GetMonAbility(&gPlayerParty[0]) == 56
        && Random() % 3 != 0)
    {
        u16 leadingMonSpecies = GetMonData(&gPlayerParty[0], 11);
        u32 leadingMonPersonality = GetMonData(&gPlayerParty[0], 0);
        u8 gender = GetGenderFromSpeciesAndPersonality(leadingMonSpecies, leadingMonPersonality);


        if (gender == 0xFE)
            gender = 0x00;
        else
            gender = 0xFE;

        CreateMonWithGenderNatureLetter(&gEnemyParty[0], species, level, 32, gender, PickWildMonNature(), 0);
        return;
    }

    CreateMonWithNature(&gEnemyParty[0], species, level, 32, PickWildMonNature());
}

enum
{
    WILD_AREA_LAND,
    WILD_AREA_WATER,
    WILD_AREA_ROCKS,
    WILD_AREA_FISHING,
};




static bool8 TryGenerateWildMon(const struct WildPokemonInfo *wildMonInfo, u8 area, u8 flags)
{
    u8 wildMonIndex = 0;
    u8 level;

    switch (area)
    {
    case WILD_AREA_LAND:
        if (TryGetAbilityInfluencedWildMonIndex(wildMonInfo->wildPokemon, 8, 42, &wildMonIndex))
            break;
        if (TryGetAbilityInfluencedWildMonIndex(wildMonInfo->wildPokemon, 13, 9, &wildMonIndex))
            break;

        wildMonIndex = ChooseWildMonIndex_Land();
        break;
    case WILD_AREA_WATER:
        if (TryGetAbilityInfluencedWildMonIndex(wildMonInfo->wildPokemon, 13, 9, &wildMonIndex))
            break;

        wildMonIndex = ChooseWildMonIndex_WaterRock();
        break;
    case WILD_AREA_ROCKS:
        wildMonIndex = ChooseWildMonIndex_WaterRock();
        break;
    }

    level = ChooseWildMonLevel(&wildMonInfo->wildPokemon[wildMonIndex]);
    if (flags & 0x1 && !IsWildLevelAllowedByRepel(level))
        return 0;
    if (gMapHeader.mapLayoutId != 358 && flags & 0x2 && !IsAbilityAllowingEncounter(level))
        return 0;

    CreateWildMon(wildMonInfo->wildPokemon[wildMonIndex].species, level);
    return 1;
}

static u16 GenerateFishingWildMon(const struct WildPokemonInfo *wildMonInfo, u8 rod)
{
    u8 wildMonIndex = ChooseWildMonIndex_Fishing(rod);
    u8 level = ChooseWildMonLevel(&wildMonInfo->wildPokemon[wildMonIndex]);

    CreateWildMon(wildMonInfo->wildPokemon[wildMonIndex].species, level);
    return wildMonInfo->wildPokemon[wildMonIndex].species;
}

static bool8 SetUpMassOutbreakEncounter(u8 flags)
{
    u16 i;

    if (flags & 0x1 && !IsWildLevelAllowedByRepel(gSaveBlock1Ptr->outbreakPokemonLevel))
        return 0;

    CreateWildMon(gSaveBlock1Ptr->outbreakPokemonSpecies, gSaveBlock1Ptr->outbreakPokemonLevel);
    for (i = 0; i < 4; i++)
        SetMonMoveSlot(&gEnemyParty[0], gSaveBlock1Ptr->outbreakPokemonMoves[i], i);

    return 1;
}

static bool8 DoMassOutbreakEncounterTest(void)
{
    if (gSaveBlock1Ptr->outbreakPokemonSpecies != 0
     && gSaveBlock1Ptr->location.mapNum == gSaveBlock1Ptr->outbreakLocationMapNum
     && gSaveBlock1Ptr->location.mapGroup == gSaveBlock1Ptr->outbreakLocationMapGroup)
    {
        if (Random() % 100 < gSaveBlock1Ptr->outbreakPokemonProbability)
            return 1;
    }
    return 0;
}

static bool8 DoWildEncounterRateDiceRoll(u16 encounterRate)
{
    if (Random() % 2880 < encounterRate)
        return 1;
    else
        return 0;
}

static bool8 DoWildEncounterRateTest(u32 encounterRate, bool8 ignoreAbility)
{
    encounterRate *= 16;
    if (TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_MACH_BIKE) | (1 << PLAYER_AVATAR_STATE_ACRO_BIKE)))
        encounterRate = encounterRate * 80 / 100;
    ApplyFluteEncounterRateMod(&encounterRate);
    ApplyCleanseTagEncounterRateMod(&encounterRate);
    if (!ignoreAbility && !GetMonData(&gPlayerParty[0], 6))
    {
        u32 ability = GetMonAbility(&gPlayerParty[0]);

        if (ability == 1 && gMapHeader.mapLayoutId == 361)
            encounterRate = encounterRate * 3 / 4;
        else if (ability == 1)
            encounterRate /= 2;
        else if (ability == 35)
            encounterRate *= 2;
        else if (ability == 73)
            encounterRate /= 2;
        else if (ability == 71)
            encounterRate *= 2;
        else if (ability == 8 && gSaveBlock1Ptr->weather == 8)
            encounterRate /= 2;
    }
    if (encounterRate > 2880)
        encounterRate = 2880;
    return DoWildEncounterRateDiceRoll(encounterRate);
}

static bool8 DoGlobalWildEncounterDiceRoll(void)
{
    if (Random() % 100 >= 60)
        return 0;
    else
        return 1;
}

static bool8 AreLegendariesInSootopolisPreventingEncounters(void)
{
    if (gSaveBlock1Ptr->location.mapGroup != ((7 | (0 << 8)) >> 8)
     || gSaveBlock1Ptr->location.mapNum != ((7 | (0 << 8)) & 0xFF))
    {
        return 0;
    }

    return FlagGet(0x53);
}

bool8 StandardWildEncounter(u16 currMetaTileBehavior, u16 previousMetaTileBehavior)
{
    u16 headerId;
    struct Roamer *roamer;

    if (sWildEncountersDisabled == 1)
        return 0;

    headerId = GetCurrentMapWildMonHeaderId();
    if (headerId == 0xFFFF)
    {
        if (gMapHeader.mapLayoutId == 358)
        {
            headerId = GetBattlePikeWildMonHeaderId();
            if (previousMetaTileBehavior != currMetaTileBehavior && !DoGlobalWildEncounterDiceRoll())
                return 0;
            else if (DoWildEncounterRateTest(gBattlePikeWildMonHeaders[headerId].landMonsInfo->encounterRate, 0) != 1)
                return 0;
            else if (TryGenerateWildMon(gBattlePikeWildMonHeaders[headerId].landMonsInfo, WILD_AREA_LAND, 0x2) != 1)
                return 0;
            else if (!TryGenerateBattlePikeWildMon(1))
                return 0;

            BattleSetup_StartBattlePikeWildBattle();
            return 1;
        }
        if (gMapHeader.mapLayoutId == 361)
        {
            headerId = gSaveBlock2Ptr->frontier.curChallengeBattleNum;
            if (previousMetaTileBehavior != currMetaTileBehavior && !DoGlobalWildEncounterDiceRoll())
                return 0;
            else if (DoWildEncounterRateTest(gBattlePyramidWildMonHeaders[headerId].landMonsInfo->encounterRate, 0) != 1)
                return 0;
            else if (TryGenerateWildMon(gBattlePyramidWildMonHeaders[headerId].landMonsInfo, WILD_AREA_LAND, 0x2) != 1)
                return 0;

            GenerateBattlePyramidWildMon();
            BattleSetup_StartWildBattle();
            return 1;
        }
    }
    else
    {
        if (MetatileBehavior_IsLandWildEncounter(currMetaTileBehavior) == 1)
        {
            if (gWildMonHeaders[headerId].landMonsInfo == ((void *)0))
                return 0;
            else if (previousMetaTileBehavior != currMetaTileBehavior && !DoGlobalWildEncounterDiceRoll())
                return 0;
            else if (DoWildEncounterRateTest(gWildMonHeaders[headerId].landMonsInfo->encounterRate, 0) != 1)
                return 0;

            if (TryStartRoamerEncounter() == 1)
            {
                roamer = &gSaveBlock1Ptr->roamer;
                if (!IsWildLevelAllowedByRepel(roamer->level))
                    return 0;

                BattleSetup_StartRoamerBattle();
                return 1;
            }
            else
            {
                if (DoMassOutbreakEncounterTest() == 1 && SetUpMassOutbreakEncounter(0x1 | 0x2) == 1)
                {
                    BattleSetup_StartWildBattle();
                    return 1;
                }


                if (TryGenerateWildMon(gWildMonHeaders[headerId].landMonsInfo, WILD_AREA_LAND, 0x1 | 0x2) == 1)
                {
                    BattleSetup_StartWildBattle();
                    return 1;
                }

                return 0;
            }
        }
        else if (MetatileBehavior_IsWaterWildEncounter(currMetaTileBehavior) == 1
                 || (TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_SURFING)) && MetatileBehavior_IsBridge(currMetaTileBehavior) == 1))
        {
            if (AreLegendariesInSootopolisPreventingEncounters() == 1)
                return 0;
            else if (gWildMonHeaders[headerId].waterMonsInfo == ((void *)0))
                return 0;
            else if (previousMetaTileBehavior != currMetaTileBehavior && !DoGlobalWildEncounterDiceRoll())
                return 0;
            else if (DoWildEncounterRateTest(gWildMonHeaders[headerId].waterMonsInfo->encounterRate, 0) != 1)
                return 0;

            if (TryStartRoamerEncounter() == 1)
            {
                roamer = &gSaveBlock1Ptr->roamer;
                if (!IsWildLevelAllowedByRepel(roamer->level))
                    return 0;

                BattleSetup_StartRoamerBattle();
                return 1;
            }
            else
            {
                if (TryGenerateWildMon(gWildMonHeaders[headerId].waterMonsInfo, WILD_AREA_WATER, 0x1 | 0x2) == 1)
                {
                    BattleSetup_StartWildBattle();
                    return 1;
                }

                return 0;
            }
        }
    }

    return 0;
}

void RockSmashWildEncounter(void)
{
    u16 headerId = GetCurrentMapWildMonHeaderId();

    if (headerId != 0xFFFF)
    {
        const struct WildPokemonInfo *wildPokemonInfo = gWildMonHeaders[headerId].rockSmashMonsInfo;

        if (wildPokemonInfo == ((void *)0))
        {
            gSpecialVar_Result = 0;
        }
        else if (DoWildEncounterRateTest(wildPokemonInfo->encounterRate, 1) == 1
         && TryGenerateWildMon(wildPokemonInfo, 2, 0x1 | 0x2) == 1)
        {
            BattleSetup_StartWildBattle();
            gSpecialVar_Result = 1;
        }
        else
        {
            gSpecialVar_Result = 0;
        }
    }
    else
    {
        gSpecialVar_Result = 0;
    }
}

bool8 SweetScentWildEncounter(void)
{
    s16 x, y;
    u16 headerId;

    PlayerGetDestCoords(&x, &y);
    headerId = GetCurrentMapWildMonHeaderId();
    if (headerId == 0xFFFF)
    {
        if (gMapHeader.mapLayoutId == 358)
        {
            headerId = GetBattlePikeWildMonHeaderId();
            if (TryGenerateWildMon(gBattlePikeWildMonHeaders[headerId].landMonsInfo, WILD_AREA_LAND, 0) != 1)
                return 0;

            TryGenerateBattlePikeWildMon(0);
            BattleSetup_StartBattlePikeWildBattle();
            return 1;
        }
        if (gMapHeader.mapLayoutId == 361)
        {
            headerId = gSaveBlock2Ptr->frontier.curChallengeBattleNum;
            if (TryGenerateWildMon(gBattlePyramidWildMonHeaders[headerId].landMonsInfo, WILD_AREA_LAND, 0) != 1)
                return 0;

            GenerateBattlePyramidWildMon();
            BattleSetup_StartWildBattle();
            return 1;
        }
    }
    else
    {
        if (MetatileBehavior_IsLandWildEncounter(MapGridGetMetatileBehaviorAt(x, y)) == 1)
        {
            if (gWildMonHeaders[headerId].landMonsInfo == ((void *)0))
                return 0;

            if (TryStartRoamerEncounter() == 1)
            {
                BattleSetup_StartRoamerBattle();
                return 1;
            }

            if (DoMassOutbreakEncounterTest() == 1)
                SetUpMassOutbreakEncounter(0);
            else
                TryGenerateWildMon(gWildMonHeaders[headerId].landMonsInfo, WILD_AREA_LAND, 0);

            BattleSetup_StartWildBattle();
            return 1;
        }
        else if (MetatileBehavior_IsWaterWildEncounter(MapGridGetMetatileBehaviorAt(x, y)) == 1)
        {
            if (AreLegendariesInSootopolisPreventingEncounters() == 1)
                return 0;
            if (gWildMonHeaders[headerId].waterMonsInfo == ((void *)0))
                return 0;

            if (TryStartRoamerEncounter() == 1)
            {
                BattleSetup_StartRoamerBattle();
                return 1;
            }

            TryGenerateWildMon(gWildMonHeaders[headerId].waterMonsInfo, WILD_AREA_WATER, 0);
            BattleSetup_StartWildBattle();
            return 1;
        }
    }

    return 0;
}

bool8 DoesCurrentMapHaveFishingMons(void)
{
    u16 headerId = GetCurrentMapWildMonHeaderId();

    if (headerId != 0xFFFF && gWildMonHeaders[headerId].fishingMonsInfo != ((void *)0))
        return 1;
    else
        return 0;
}

void FishingWildEncounter(u8 rod)
{
    u16 species;

    if (CheckFeebas() == 1)
    {
        u8 level = ChooseWildMonLevel(&gWildFeebasRoute119Data);

        species = gWildFeebasRoute119Data.species;
        CreateWildMon(species, level);
    }
    else
    {
        species = GenerateFishingWildMon(gWildMonHeaders[GetCurrentMapWildMonHeaderId()].fishingMonsInfo, rod);
    }
    IncrementGameStat(12);
    SetPokemonAnglerSpecies(species);
    BattleSetup_StartWildBattle();
}

u16 GetLocalWildMon(bool8 *isWaterMon)
{
    u16 headerId;
    const struct WildPokemonInfo *landMonsInfo;
    const struct WildPokemonInfo *waterMonsInfo;

    *isWaterMon = 0;
    headerId = GetCurrentMapWildMonHeaderId();
    if (headerId == 0xFFFF)
        return 0;
    landMonsInfo = gWildMonHeaders[headerId].landMonsInfo;
    waterMonsInfo = gWildMonHeaders[headerId].waterMonsInfo;

    if (landMonsInfo == ((void *)0) && waterMonsInfo == ((void *)0))
        return 0;

    else if (landMonsInfo != ((void *)0) && waterMonsInfo == ((void *)0))
        return landMonsInfo->wildPokemon[ChooseWildMonIndex_Land()].species;

    else if (landMonsInfo == ((void *)0) && waterMonsInfo != ((void *)0))
    {
        *isWaterMon = 1;
        return waterMonsInfo->wildPokemon[ChooseWildMonIndex_WaterRock()].species;
    }

    if ((Random() % 100) < 80)
    {
        return landMonsInfo->wildPokemon[ChooseWildMonIndex_Land()].species;
    }
    else
    {
        *isWaterMon = 1;
        return waterMonsInfo->wildPokemon[ChooseWildMonIndex_WaterRock()].species;
    }
}

u16 GetLocalWaterMon(void)
{
    u16 headerId = GetCurrentMapWildMonHeaderId();

    if (headerId != 0xFFFF)
    {
        const struct WildPokemonInfo *waterMonsInfo = gWildMonHeaders[headerId].waterMonsInfo;

        if (waterMonsInfo)
            return waterMonsInfo->wildPokemon[ChooseWildMonIndex_WaterRock()].species;
    }
    return 0;
}

bool8 UpdateRepelCounter(void)
{
    u16 steps;

    if (InBattlePike() || InBattlePyramid())
        return 0;
    if (InUnionRoom() == 1)
        return 0;

    steps = VarGet(0x4021);

    if (steps != 0)
    {
        steps--;
        VarSet(0x4021, steps);
        if (steps == 0)
        {
            ScriptContext1_SetupScript(EventScript_RepelWoreOff);
            return 1;
        }
    }
    return 0;
}

static bool8 IsWildLevelAllowedByRepel(u8 wildLevel)
{
    u8 i;

    if (!VarGet(0x4021))
        return 1;

    for (i = 0; i < 6; i++)
    {
        if (GetMonData(&gPlayerParty[i], 57) && !GetMonData(&gPlayerParty[i], 45))
        {
            u8 ourLevel = GetMonData(&gPlayerParty[i], 56);

            if (wildLevel < ourLevel)
                return 0;
            else
                return 1;
        }
    }

    return 0;
}

static bool8 IsAbilityAllowingEncounter(u8 level)
{
    u8 ability;

    if (GetMonData(&gPlayerParty[0], 6))
        return 1;

    ability = GetMonAbility(&gPlayerParty[0]);
    if (ability == 51 || ability == 22)
    {
        u8 playerMonLevel = GetMonData(&gPlayerParty[0], 56);
        if (playerMonLevel > 5 && level <= playerMonLevel - 5 && !(Random() % 2))
            return 0;
    }

    return 1;
}

static bool8 TryGetRandomWildMonIndexByType(const struct WildPokemon *wildMon, u8 type, u8 numMon, u8 *monIndex)
{
    u8 validIndexes[numMon];
    u8 i, validMonCount;

    for (i = 0; i < numMon; i++)
        validIndexes[i] = 0;

    for (validMonCount = 0, i = 0; i < numMon; i++)
    {
        if (gBaseStats[wildMon[i].species].type1 == type || gBaseStats[wildMon[i].species].type2 == type)
            validIndexes[validMonCount++] = i;
    }

    if (validMonCount == 0 || validMonCount == numMon)
        return 0;

    *monIndex = validIndexes[Random() % validMonCount];
    return 1;
}

static bool8 TryGetAbilityInfluencedWildMonIndex(const struct WildPokemon *wildMon, u8 type, u8 ability, u8 *monIndex)
{
    if (GetMonData(&gPlayerParty[0], 6))
        return 0;
    else if (GetMonAbility(&gPlayerParty[0]) != ability)
        return 0;
    else if (Random() % 2 != 0)
        return 0;

    return TryGetRandomWildMonIndexByType(wildMon, type, 12, monIndex);
}

static void ApplyFluteEncounterRateMod(u32 *encRate)
{
    if (FlagGet((((0x500 + 864 - 1) + 1) + 0x4D)) == 1)
        *encRate += *encRate / 2;
    else if (FlagGet((((0x500 + 864 - 1) + 1) + 0x4E)) == 1)
        *encRate = *encRate / 2;
}

static void ApplyCleanseTagEncounterRateMod(u32 *encRate)
{
    if (GetMonData(&gPlayerParty[0], 12) == 190)
        *encRate = *encRate * 2 / 3;
}
