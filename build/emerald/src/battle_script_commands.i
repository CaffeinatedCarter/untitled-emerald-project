# 1 "src/battle_script_commands.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/battle_script_commands.c"
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
# 2 "src/battle_script_commands.c" 2
# 1 "include/battle.h" 1




# 1 "include/constants/battle.h" 1
# 6 "include/battle.h" 2
# 1 "include/battle_main.h" 1



struct TrainerMoney
{
    u8 classId;
    u8 value;
};

struct UnknownPokemonStruct4
{
             u16 species;
             u16 heldItem;
             u8 nickname[10 + 1];
             u8 level;
             u16 hp;
             u16 maxhp;
             u32 status;
             u32 personality;
             u8 gender;
             u8 language;
};
# 46 "include/battle_main.h"
void CB2_InitBattle(void);
void BattleMainCB2(void);
void CB2_QuitRecordedBattle(void);
void sub_8038528(struct Sprite* sprite);
void sub_8038A04(void);
void VBlankCB_Battle(void);
void nullsub_17(struct Sprite *sprite);
void sub_8038B74(struct Sprite *sprite);
void sub_8038D64(void);
u32 sub_80391E0(u8 arrayId, u8 caseId);
u32 sub_80397C4(u32 setId, u32 tableId);
void SpriteCb_WildMon(struct Sprite *sprite);
void SpriteCallbackDummy_2(struct Sprite *sprite);
void SpriteCB_FaintOpponentMon(struct Sprite *sprite);
void sub_8039AD8(struct Sprite *sprite);
void sub_8039B2C(struct Sprite *sprite);
void sub_8039B58(struct Sprite *sprite);
void sub_8039BB4(struct Sprite *sprite);
void sub_80105DC(struct Sprite *sprite);
void sub_8039C00(struct Sprite *sprite);
void DoBounceEffect(u8 battlerId, u8 b, s8 c, s8 d);
void EndBounceEffect(u8 battlerId, bool8 b);
void sub_8039E44(struct Sprite *sprite);
void sub_8039E60(struct Sprite *sprite);
void sub_8039E84(struct Sprite *sprite);
void sub_8039E9C(struct Sprite *sprite);
void nullsub_20(void);
void BeginBattleIntro(void);
void SwitchInClearSetData(void);
void FaintClearSetData(void);
void sub_803B3AC(void);
void sub_803B598(void);
void BattleTurnPassed(void);
u8 IsRunningFromBattleImpossible(void);
void SwitchPartyOrder(u8 battlerId);
void SwapTurnOrder(u8 id1, u8 id2);
u8 GetWhoStrikesFirst(u8 battlerId1, u8 battlerId2, bool8 ignoreChosenMoves);
void RunBattleScriptCommands_PopCallbacksStack(void);
void RunBattleScriptCommands(void);
bool8 TryRunFromBattle(u8 battlerId);

extern struct UnknownPokemonStruct4 gMultiPartnerParty[6 / 2];

extern const struct SpriteTemplate gUnknown_0831AC88;
extern const struct OamData gOamData_831ACA8;
extern const struct OamData gOamData_831ACB0;
extern const u8 gTypeEffectiveness[336];
extern const u8 gTypeNames[18][6 + 1];
extern const struct TrainerMoney gTrainerMoneyTable[];
extern const u8 gAbilityNames[][12 + 1];
extern const u8 *const gAbilityDescriptionPointers[];

extern const u8 gStatusConditionString_PoisonJpn[8];
extern const u8 gStatusConditionString_SleepJpn[8];
extern const u8 gStatusConditionString_ParalysisJpn[8];
extern const u8 gStatusConditionString_BurnJpn[8];
extern const u8 gStatusConditionString_IceJpn[8];
extern const u8 gStatusConditionString_ConfusionJpn[8];
extern const u8 gStatusConditionString_LoveJpn[8];

extern const u8 *const gStatusConditionStringsTable[7][2];
# 7 "include/battle.h" 2
# 1 "include/battle_message.h" 1
# 198 "include/battle_message.h"
struct BattleMsgData
{
    u16 currentMove;
    u16 originallyUsedMove;
    u16 lastItem;
    u8 lastAbility;
    u8 scrActive;
    u8 unk1605E;
    u8 hpScale;
    u8 itemEffectBattler;
    u8 moveType;
    u8 abilities[4];
    u8 textBuffs[3][16];
};

void BufferStringBattle(u16 stringID);
u32 BattleStringExpandPlaceholdersToDisplayedString(const u8* src);
u32 BattleStringExpandPlaceholders(const u8* src, u8* dst);
void BattlePutTextOnWindow(const u8* text, u8 windowId);
void SetPpNumbersPaletteInMoveSelection(void);
u8 GetCurrentPpToMaxPpState(u8 currentPp, u8 maxPp);

extern struct BattleMsgData *gBattleMsgDataPtr;

extern const u8* const gBattleStringsTable[];
extern const u8* const gStatNamesTable[];
extern const u8* const gPokeblockWasTooXStringTable[];
extern const u8* const gRefereeStringsTable[];
extern const u8* const gStatNamesTable2[];
extern const u8 *const gRoundsStringTable[];

extern const u8 gText_PkmnIsEvolving[];
extern const u8 gText_CongratsPkmnEvolved[];
extern const u8 gText_PkmnStoppedEvolving[];
extern const u8 gText_EllipsisQuestionMark[];
extern const u8 gText_WhatWillPkmnDo[];
extern const u8 gText_WhatWillPkmnDo2[];
extern const u8 gText_WhatWillWallyDo[];
extern const u8 gText_LinkStandby[];
extern const u8 gText_BattleMenu[];
extern const u8 gText_SafariZoneMenu[];
extern const u8 gText_MoveInterfacePP[];
extern const u8 gText_MoveInterfaceType[];
extern const u8 gText_MoveInterfacePpType[];
extern const u8 gText_MoveInterfaceDynamicColors[];
extern const u8 gText_WhichMoveToForget4[];
extern const u8 gText_BattleYesNoChoice[];
extern const u8 gText_BattleSwitchWhich[];
extern const u8 gText_BattleSwitchWhich2[];
extern const u8 gText_BattleSwitchWhich3[];
extern const u8 gText_BattleSwitchWhich4[];
extern const u8 gText_BattleSwitchWhich5[];
extern const u8 gText_SafariBalls[];
extern const u8 gText_SafariBallLeft[];
extern const u8 gText_Sleep[];
extern const u8 gText_Poison[];
extern const u8 gText_Burn[];
extern const u8 gText_Paralysis[];
extern const u8 gText_Ice[];
extern const u8 gText_Confusion[];
extern const u8 gText_Love[];
extern const u8 gText_SpaceAndSpace[];
extern const u8 gText_CommaSpace[];
extern const u8 gText_Space2[];
extern const u8 gText_LineBreak[];
extern const u8 gText_NewLine[];
extern const u8 gText_Are[];
extern const u8 gText_Are2[];
extern const u8 gText_BadEgg[];
extern const u8 gText_BattleWallyName[];
extern const u8 gText_Win[];
extern const u8 gText_Loss[];
extern const u8 gText_Draw[];
extern const u8 gText_StatRose[];
extern const u8 gText_PkmnsStatChanged2[];
extern const u8 gText_PkmnGettingPumped[];
extern const u8 gText_PkmnShroudedInMist[];
extern const u8 gText_PkmnsXPreventsSwitching[];
extern const u8 gText_TheGreatNewHope[];
extern const u8 gText_WillChampinshipDreamComeTrue[];
extern const u8 gText_AFormerChampion[];
extern const u8 gText_ThePreviousChampion[];
extern const u8 gText_TheUnbeatenChampion[];
extern const u8 gText_PlayerMon1Name[];
extern const u8 gText_Vs[];
extern const u8 gText_OpponentMon1Name[];
extern const u8 gText_Mind[];
extern const u8 gText_Skill[];
extern const u8 gText_Body[];
extern const u8 gText_Judgement[];
extern const u8 gText_EmptyString3[];
extern const u8 gText_RecordBattleToPass[];
extern const u8 gText_BattleRecordedOnPass[];
extern const u8 gText_BattleTourney[];

extern const u16 gMissStringIds[];
extern const u16 gTrappingMoves[];
# 8 "include/battle.h" 2
# 1 "include/battle_util.h" 1
# 44 "include/battle_util.h"
u8 GetBattlerForBattleScript(u8 caseId);
void PressurePPLose(u8 target, u8 attacker, u16 move);
void PressurePPLoseOnUsingPerishSong(u8 attacker);
void PressurePPLoseOnUsingImprison(u8 attacker);
void MarkAllBattlersForControllerExec(void);
void MarkBattlerForControllerExec(u8 battlerId);
void sub_803F850(u8 arg0);
void CancelMultiTurnMoves(u8 battlerId);
bool8 WasUnableToUseMove(u8 battlerId);
void PrepareStringBattle(u16 stringId, u8 battlerId);
void ResetSentPokesToOpponentValue(void);
void sub_803F9EC(u8 battlerId);
void sub_803FA70(u8 battlerId);
void BattleScriptPush(const u8* bsPtr);
void BattleScriptPushCursor(void);
void BattleScriptPop(void);
u8 TrySetCantSelectMoveBattleScript(void);
u8 CheckMoveLimitations(u8 battlerId, u8 unusableMoves, u8 check);
bool8 AreAllMovesUnusable(void);
u8 GetImprisonedMovesCount(u8 battlerId, u16 move);
u8 DoFieldEndTurnEffects(void);
u8 DoBattlerEndTurnEffects(void);
bool8 HandleWishPerishSongOnTurnEnd(void);
bool8 HandleFaintedMonActions(void);
void TryClearRageStatuses(void);
u8 AtkCanceller_UnableToUseMove(void);
bool8 HasNoMonsToSwitch(u8 battlerId, u8 r1, u8 r2);
u8 CastformDataTypeChange(u8 battlerId);
u8 AbilityBattleEffects(u8 caseID, u8 battlerId, u8 ability, u8 special, u16 moveArg);
void BattleScriptExecute(const u8* BS_ptr);
void BattleScriptPushCursorAndCallback(const u8* BS_ptr);
u8 ItemBattleEffects(u8 caseID, u8 battlerId, bool8 moveTurn);
void ClearFuryCutterDestinyBondGrudge(u8 battlerId);
void HandleAction_RunBattleScript(void);
u8 GetMoveTarget(u16 move, u8 setTarget);
u8 IsMonDisobedient(void);
# 9 "include/battle.h" 2
# 1 "include/battle_script_commands.h" 1






void AI_CalcDmg(u8 battlerIdAtk, u8 battlerIdDef);
u8 TypeCalc(u16 move, u8 battlerIdAtk, u8 battlerIdDef);
u8 AI_TypeCalc(u16 move, u16 targetSpecies, u8 targetAbility);
u8 GetBattlerTurnOrderNum(u8 battlerId);
void SetMoveEffect(bool8 primary, u8 certain);
void BattleDestroyYesNoCursorAt(u8 cursorPosition);
void BattleCreateYesNoCursorAt(u8 cursorPosition);
void BufferMoveToLearnIntoBattleTextBuff2(void);
void HandleBattleWindow(u8 xStart, u8 yStart, u8 xEnd, u8 yEnd, u8 flags);
bool8 UproarWakeUpCheck(u8 battlerId);

extern void (* const gBattleScriptingCommandsTable[])(void);
extern const u8 gUnknown_0831C494[][4];
# 10 "include/battle.h" 2
# 1 "include/battle_ai_switch_items.h" 1



enum
{
    AI_ITEM_FULL_RESTORE = 1,
    AI_ITEM_HEAL_HP,
    AI_ITEM_CURE_CONDITION,
    AI_ITEM_X_STAT,
    AI_ITEM_GUARD_SPECS,
    AI_ITEM_NOT_RECOGNIZABLE
};

void AI_TrySwitchOrUseItem(void);
u8 GetMostSuitableMonToSwitchInto(void);
# 11 "include/battle.h" 2
# 1 "include/battle_gfx_sfx_util.h" 1



void AllocateBattleSpritesData(void);
void FreeBattleSpritesData(void);
u16 ChooseMoveAndTargetInBattlePalace(void);
void sub_805D714(struct Sprite *sprite);
void sub_805D770(struct Sprite *sprite, bool8 arg1);
void sub_805D7AC(struct Sprite *sprite);
void InitAndLaunchChosenStatusAnimation(bool8 isStatus2, u32 status);
bool8 TryHandleLaunchBattleTableAnimation(u8 activeBattlerId, u8 attacker, u8 target, u8 tableId, u16 argument);
void InitAndLaunchSpecialAnimation(u8 activeBattlerId, u8 attacker, u8 target, u8 tableId);
bool8 IsMoveWithoutAnimation(u16 moveId, u8 animationTurn);
bool8 mplay_80342A4(u8 battlerId);
void BattleLoadOpponentMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void BattleLoadPlayerMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void nullsub_23(void);
void nullsub_24(u16 species);
void DecompressTrainerFrontPic(u16 frontPicId, u8 battlerId);
void DecompressTrainerBackPic(u16 backPicId, u8 battlerId);
void nullsub_25(u8 arg0);
void FreeTrainerFrontPicPalette(u16 frontPicId);
void sub_805DFFC(void);
bool8 BattleLoadAllHealthBoxesGfx(u8 state);
void LoadBattleBarGfx(u8 arg0);
bool8 BattleInitAllSprites(u8 *state1, u8 *battlerId);
void ClearSpritesHealthboxAnimData(void);
void CopyAllBattleSpritesInvisibilities(void);
void CopyBattleSpriteInvisibility(u8 battlerId);
void HandleSpeciesGfxDataChange(u8 attacker, u8 target, bool8 notTransform);
void BattleLoadSubstituteOrMonSpriteGfx(u8 battlerId, bool8 loadMonSprite);
void LoadBattleMonGfxAndAnimate(u8 battlerId, bool8 loadMonSprite, u8 spriteId);
void TrySetBehindSubstituteSpriteBit(u8 battlerId, u16 move);
void ClearBehindSubstituteBit(u8 battlerId);
void HandleLowHpMusicChange(struct Pokemon *mon, u8 battlerId);
void BattleStopLowHpSound(void);
u8 GetMonHPBarLevel(struct Pokemon *mon);
void HandleBattleLowHpMusicChange(void);
void sub_805EB9C(u8 affineMode);
void LoadAndCreateEnemyShadowSprites(void);
void SpriteCB_SetInvisible(struct Sprite *sprite);
void SetBattlerShadowSpriteCallback(u8 battlerId, u16 species);
void HideBattlerShadowSprite(u8 battlerId);
void sub_805EF14(void);
void ClearTemporarySpeciesSpriteData(u8 battlerId, bool8 dontClearSubstitute);
void AllocateMonSpritesGfx(void);
void FreeMonSpritesGfx(void);
bool32 ShouldPlayNormalMonCry(struct Pokemon *mon);
# 12 "include/battle.h" 2
# 1 "include/battle_util2.h" 1



void AllocateBattleResources(void);
void FreeBattleResources(void);
void AdjustFriendshipOnBattleFaint(u8 battler);
void SwitchPartyOrderInGameMulti(u8 battler, u8 arg1);
u32 sub_805725C(u8 battler);
# 13 "include/battle.h" 2
# 1 "include/battle_bg.h" 1



void BattleInitBgsAndWindows(void);
void InitBattleBgsVideo(void);
void LoadBattleMenuWindowGfx(void);
void DrawMainBattleBackground(void);
void LoadBattleTextboxAndBackground(void);
void InitLinkBattleVsScreen(u8 taskId);
void DrawBattleEntryBackground(void);
bool8 LoadChosenBattleElement(u8 caseId);
# 14 "include/battle.h" 2
# 64 "include/battle.h"
struct ResourceFlags
{
    u32 flags[4];
};



struct DisableStruct
{
    u32 transformedMonPersonality;
    u16 disabledMove;
    u16 encoredMove;
    u8 protectUses;
    u8 stockpileCounter;
    u8 substituteHP;
    u8 disableTimer:4;
    u8 disableTimerStartValue:4;
    u8 encoredMovePos;
    u8 filler_D;
    u8 encoreTimer:4;
    u8 encoreTimerStartValue:4;
    u8 perishSongTimer:4;
    u8 perishSongTimerStartValue:4;
    u8 furyCutterCounter;
    u8 rolloutTimer:4;
    u8 rolloutTimerStartValue:4;
    u8 chargeTimer:4;
    u8 chargeTimerStartValue:4;
    u8 tauntTimer:4;
    u8 tauntTimer2:4;
    u8 battlerPreventingEscape;
    u8 battlerWithSureHit;
    u8 isFirstTurn;
    u8 filler_17;
    u8 truantCounter:1;
    u8 truantSwitchInHack:1;
    u8 filler_18_2:2;
    u8 mimickedMoves:4;
    u8 rechargeTimer;
};

struct ProtectStruct
{
    u32 protected:1;
    u32 endured:1;
    u32 noValidMoves:1;
    u32 helpingHand:1;
    u32 bounceMove:1;
    u32 stealMove:1;
    u32 flag0Unknown:1;
    u32 prlzImmobility:1;
    u32 confusionSelfDmg:1;
    u32 targetNotAffected:1;
    u32 chargingTurn:1;
    u32 fleeFlag:2;
    u32 usedImprisonedMove:1;
    u32 loveImmobility:1;
    u32 usedDisabledMove:1;
    u32 usedTauntedMove:1;
    u32 flag2Unknown:1;
    u32 flinchImmobility:1;
    u32 notFirstStrike:1;
    u32 palaceUnableToUseMove:1;
    u32 physicalDmg;
    u32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
};

struct SpecialStatus
{
    u8 statLowered:1;
    u8 lightningRodRedirected:1;
    u8 restoredBattlerSprite: 1;
    u8 intimidatedMon:1;
    u8 traced:1;
    u8 ppNotAffectedByPressure:1;
    u8 flag40:1;
    u8 focusBanded:1;
    s32 dmg;
    s32 physicalDmg;
    s32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
};

struct SideTimer
{
    u8 reflectTimer;
    u8 reflectBattlerId;
    u8 lightscreenTimer;
    u8 lightscreenBattlerId;
    u8 mistTimer;
    u8 mistBattlerId;
    u8 safeguardTimer;
    u8 safeguardBattlerId;
    u8 followmeTimer;
    u8 followmeTarget;
    u8 spikesAmount;
};

struct WishFutureKnock
{
    u8 futureSightCounter[4];
    u8 futureSightAttacker[4];
    s32 futureSightDmg[4];
    u16 futureSightMove[4];
    u8 wishCounter[4];
    u8 wishMonId[4];
    u8 weatherDuration;
    u8 knockedOffMons[2];
};

struct AI_ThinkingStruct
{
    u8 aiState;
    u8 movesetIndex;
    u16 moveConsidered;
    s8 score[4];
    u32 funcResult;
    u32 aiFlags;
    u8 aiAction;
    u8 aiLogicId;
    u8 filler12[6];
    u8 simulatedRNG[4];
};

struct UsedMoves
{
    u16 moves[4];
    u16 unknown[4];
};

struct BattleHistory
{
    struct UsedMoves usedMoves[4];
    u8 abilities[4];
    u8 itemEffects[4];
    u16 trainerItems[4];
    u8 itemsNo;
};

struct BattleScriptsStack
{
    const u8 *ptr[8];
    u8 size;
};

struct BattleCallbacksStack
{
    void (*function[8])(void);
    u8 size;
};

struct StatsArray
{
    u16 stats[6];
};

struct BattleResources
{
    struct SecretBase* secretBase;
    struct ResourceFlags *flags;
    struct BattleScriptsStack* battleScriptsStack;
    struct BattleCallbacksStack* battleCallbackStack;
    struct StatsArray* beforeLvlUp;
    struct AI_ThinkingStruct *ai;
    struct BattleHistory *battleHistory;
    struct BattleScriptsStack *AI_ScriptsStack;
};

struct BattleResults
{
    u8 playerFaintCounter;
    u8 opponentFaintCounter;
    u8 playerSwitchesCounter;
    u8 numHealingItemsUsed;
    u8 numRevivesUsed;
    u8 playerMonWasDamaged:1;
    u8 usedMasterBall:1;
    u8 caughtMonBall:4;
    u8 shinyWildMon:1;
    u16 playerMon1Species;
    u8 playerMon1Name[10 + 1];
    u8 battleTurnCounter;
    u8 playerMon2Name[10 + 1];
    u8 pokeblockThrows;
    u16 lastOpponentSpecies;
    u16 lastUsedMovePlayer;
    u16 lastUsedMoveOpponent;
    u16 playerMon2Species;
    u16 caughtMonSpecies;
    u8 caughtMonNick[10 + 1];
    u8 filler35[1];
    u8 catchAttempts[11];
};

struct BattleTv_Side
{
    u32 spikesMonId:3;
    u32 reflectMonId:3;
    u32 lightScreenMonId:3;
    u32 safeguardMonId:3;
    u32 mistMonId:3;
    u32 futureSightMonId:3;
    u32 doomDesireMonId:3;
    u32 perishSongMonId:3;
    u32 wishMonId:3;
    u32 grudgeMonId:3;
    u32 usedMoveSlot:2;
    u32 spikesMoveSlot:2;
    u32 reflectMoveSlot:2;
    u32 lightScreenMoveSlot:2;
    u32 safeguardMoveSlot:2;
    u32 mistMoveSlot:2;
    u32 futureSightMoveSlot:2;
    u32 doomDesireMoveSlot:2;
    u32 perishSongMoveSlot:2;
    u32 wishMoveSlot:2;
    u32 grudgeMoveSlot:2;
    u32 destinyBondMonId:3;
    u32 destinyBondMoveSlot:2;
    u32 faintCause:4;
    u32 faintCauseMonId:3;
    u32 explosion:1;
    u32 explosionMoveSlot:2;
    u32 explosionMonId:3;
    u32 perishSong:1;
};

struct BattleTv_Position
{
    u32 curseMonId:3;
    u32 leechSeedMonId:3;
    u32 nightmareMonId:3;
    u32 wrapMonId:3;
    u32 attractMonId:3;
    u32 confusionMonId:3;
    u32 curseMoveSlot:2;
    u32 leechSeedMoveSlot:2;
    u32 nightmareMoveSlot:2;
    u32 wrapMoveSlot:2;
    u32 attractMoveSlot:2;
    u32 confusionMoveSlot:2;
    u32 waterSportMoveSlot:2;
    u32 waterSportMonId:3;
    u32 mudSportMonId:3;
    u32 mudSportMoveSlot:2;
    u32 ingrainMonId:3;
    u32 ingrainMoveSlot:2;
    u32 attackedByMonId:3;
    u32 attackedByMoveSlot:2;
};

struct BattleTv_Mon
{
    u32 psnMonId:3;
    u32 badPsnMonId:3;
    u32 brnMonId:3;
    u32 prlzMonId:3;
    u32 slpMonId:3;
    u32 frzMonId:3;
    u32 psnMoveSlot:2;
    u32 badPsnMoveSlot:2;
    u32 brnMoveSlot:2;
    u32 prlzMoveSlot:2;
    u32 slpMoveSlot:2;
    u32 frzMoveSlot:2;
};

struct BattleTv
{
    struct BattleTv_Mon mon[2][6];
    struct BattleTv_Position pos[2][2];
    struct BattleTv_Side side[2];
};

struct BattleTvMovePoints
{
    s16 points[2][6 * 4];
};

struct BattleStruct
{
    u8 turnEffectsTracker;
    u8 turnEffectsBattlerId;
    u8 unused_0;
    u8 turnCountersTracker;
    u8 wrappedMove[4 * 2];
    u8 moveTarget[4];
    u8 expGetterMonId;
    u8 unused_1;
    u8 wildVictorySong;
    u8 dynamicMoveType;
    u8 wrappedBy[4];
    u16 assistPossibleMoves[6 * 4];
    u8 focusPunchBattlerId;
    u8 battlerPreventingSwitchout;
    u8 moneyMultiplier;
    u8 savedTurnActionNumber;
    u8 switchInAbilitiesCounter;
    u8 faintedActionsState;
    u8 faintedActionsBattlerId;
    u16 expValue;
    u8 field_52;
    u8 sentInPokes;
    bool8 selectionScriptFinished[4];
    u8 field_58[4];
    u8 monToSwitchIntoId[4];
    u8 field_60[4][3];
    u8 runTries;
    u8 caughtMonNick[10 + 1];
    u8 unused_2;
    u8 safariGoNearCounter;
    u8 safariPkblThrowCounter;
    u8 safariEscapeFactor;
    u8 safariCatchFactor;
    u8 linkBattleVsSpriteId_V;
    u8 linkBattleVsSpriteId_S;
    u8 formToChangeInto;
    u8 chosenMovePositions[4];
    u8 stateIdAfterSelScript[4];
    u8 unused_3[3];
    u8 field_8B;
    u8 unused_4[2];
    u8 stringMoveType;
    u8 expGetterBattlerId;
    u8 unused_5;
    u8 field_91;
    u8 field_92;
    u8 field_93;
    u8 wallyBattleState;
    u8 wallyMovesState;
    u8 wallyWaitFrames;
    u8 wallyMoveFrames;
    u8 lastTakenMove[4 * 2 * 2];
    u16 hpOnSwitchout[2];
    u32 savedBattleTypeFlags;
    u8 abilityPreventingSwitchout;
    u8 hpScale;
    u8 synchronizeMoveEffect;
    bool8 anyMonHasTransformed;
    void (*savedCallback)(void);
    u16 usedHeldItems[4];
    u8 chosenItem[4];
    u8 AI_itemType[2];
    u8 AI_itemFlags[2];
    u16 choicedMove[4];
    u16 changedItems[4];
    u8 intimidateBattler;
    u8 switchInItemsCounter;
    u8 arenaTurnCounter;
    u8 turnSideTracker;
    u8 unused_6[3];
    u8 givenExpMons;
    u8 lastTakenMoveFrom[4 * 4 * 2];
    u16 castformPalette[4][16];
    u8 field_180;
    u8 field_181;
    u8 field_182;
    u8 field_183;
    struct BattleEnigmaBerry battleEnigmaBerry;
    u8 wishPerishSongState;
    u8 wishPerishSongBattlerId;
    bool8 overworldWeatherDone;
    u8 atkCancellerTracker;
    struct BattleTvMovePoints tvMovePoints;
    struct BattleTv tv;
    u8 unused_7[0x28];
    u8 AI_monToSwitchIntoId[4];
    s8 arenaMindPoints[2];
    s8 arenaSkillPoints[2];
    u16 arenaStartHp[2];
    u8 arenaLostPlayerMons;
    u8 arenaLostOpponentMons;
    u8 alreadyStatusedMoveAttempt;
};
# 471 "include/battle.h"
struct BattleScripting
{
    s32 painSplitHp;
    s32 bideDmg;
    u8 multihitString[6];
    u8 dmgMultiplier;
    u8 twoTurnsMoveStringId;
    u8 animArg1;
    u8 animArg2;
    u16 tripleKickPower;
    u8 moveendState;
    u8 battlerWithAbility;
    u8 multihitMoveEffect;
    u8 battler;
    u8 animTurn;
    u8 animTargetsHit;
    u8 statChanger;
    bool8 statAnimPlayed;
    u8 getexpState;
    u8 battleStyle;
    u8 drawlvlupboxState;
    u8 learnMoveState;
    u8 field_20;
    u8 reshowMainState;
    u8 reshowHelperState;
    u8 field_23;
    u8 windowsType;
    u8 multiplayerId;
    u8 specialTrainerBattleType;
};




struct BattleSpriteInfo
{
    u16 invisible:1;
    u16 lowHpSong:1;
    u16 behindSubstitute:1;
    u16 flag_x8:1;
    u16 hpNumbersNoBars:1;
    u16 transformSpecies;
};

struct BattleAnimationInfo
{
    u16 animArg;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7;
    u8 ballThrowCaseId;
    u8 field_9_x1:1;
    u8 field_9_x2:1;
    u8 field_9_x1C:3;
    u8 field_9_x20:1;
    u8 field_9_x40:1;
    u8 field_9_x80:1;
    u8 field_A;
    u8 field_B;
    s16 field_C;
    u8 field_E;
    u8 field_F;
};

struct BattleHealthboxInfo
{
    u8 partyStatusSummaryShown:1;
    u8 healthboxIsBouncing:1;
    u8 battlerIsBouncing:1;
    u8 ballAnimActive:1;
    u8 statusAnimActive:1;
    u8 animFromTableActive:1;
    u8 specialAnimActive:1;
    u8 flag_x80:1;
    u8 field_1_x1:1;
    u8 field_1_x1E:4;
    u8 field_1_x20:1;
    u8 field_1_x40:1;
    u8 field_1_x80:1;
    u8 healthboxBounceSpriteId;
    u8 battlerBounceSpriteId;
    u8 animationState;
    u8 field_5;
    u8 matrixNum;
    u8 shadowSpriteId;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
};

struct BattleBarInfo
{
    u8 healthboxSpriteId;
    s32 maxValue;
    s32 oldValue;
    s32 receivedValue;
    s32 currValue;
};

struct BattleSpriteData
{
    struct BattleSpriteInfo *battlerData;
    struct BattleHealthboxInfo *healthBoxesData;
    struct BattleAnimationInfo *animationData;
    struct BattleBarInfo *battleBars;
};



struct MonSpritesGfx
{
    void* firstDecompressed;
    void* sprites[4];
    struct SpriteTemplate templates[4];
    struct SpriteFrameImage field_74[4][4];
    u8 field_F4[0x80];
    u8 *barFontGfx;
    void *field_178;
    u16 *buffer;
};


extern u16 gBattle_BG0_X;
extern u16 gBattle_BG0_Y;
extern u16 gBattle_BG1_X;
extern u16 gBattle_BG1_Y;
extern u16 gBattle_BG2_X;
extern u16 gBattle_BG2_Y;
extern u16 gBattle_BG3_X;
extern u16 gBattle_BG3_Y;
extern u16 gBattle_WIN0H;
extern u16 gBattle_WIN0V;
extern u16 gBattle_WIN1H;
extern u16 gBattle_WIN1V;
extern u8 gDisplayedStringBattle[300];
extern u8 gBattleTextBuff1[16];
extern u8 gBattleTextBuff2[16];
extern u8 gBattleTextBuff3[16];
extern u32 gBattleTypeFlags;
extern u8 gBattleTerrain;
extern u32 gUnknown_02022FF4;
extern u8 *gUnknown_0202305C;
extern u8 *gUnknown_02023060;
extern u8 gBattleBufferA[4][0x200];
extern u8 gBattleBufferB[4][0x200];
extern u8 gActiveBattler;
extern u32 gBattleControllerExecFlags;
extern u8 gBattlersCount;
extern u16 gBattlerPartyIndexes[4];
extern u8 gBattlerPositions[4];
extern u8 gActionsByTurnOrder[4];
extern u8 gBattlerByTurnOrder[4];
extern u8 gCurrentTurnActionNumber;
extern u8 gCurrentActionFuncId;
extern struct BattlePokemon gBattleMons[4];
extern u8 gBattlerSpriteIds[4];
extern u8 gCurrMovePos;
extern u8 gChosenMovePos;
extern u16 gCurrentMove;
extern u16 gChosenMove;
extern u16 gCalledMove;
extern s32 gBattleMoveDamage;
extern s32 gHpDealt;
extern s32 gTakenDmg[4];
extern u16 gLastUsedItem;
extern u8 gLastUsedAbility;
extern u8 gBattlerAttacker;
extern u8 gBattlerTarget;
extern u8 gBattlerFainted;
extern u8 gEffectBattler;
extern u8 gPotentialItemEffectBattler;
extern u8 gAbsentBattlerFlags;
extern u8 gCritMultiplier;
extern u8 gMultiHitCounter;
extern const u8 *gBattlescriptCurrInstr;
extern u32 gUnusedBattleMainVar;
extern u8 gChosenActionByBattler[4];
extern const u8 *gSelectionBattleScripts[4];
extern const u8 *gPalaceSelectionBattleScripts[4];
extern u16 gLastPrintedMoves[4];
extern u16 gLastMoves[4];
extern u16 gLastLandedMoves[4];
extern u16 gLastHitByType[4];
extern u16 gLastResultingMoves[4];
extern u16 gLockedMoves[4];
extern u8 gLastHitBy[4];
extern u16 gChosenMoveByBattler[4];
extern u8 gMoveResultFlags;
extern u32 gHitMarker;
extern u8 gTakenDmgByBattler[4];
extern u8 gUnknown_0202428C;
extern u16 gSideStatuses[2];
extern struct SideTimer gSideTimers[2];
extern u32 gStatuses3[4];
extern struct DisableStruct gDisableStructs[4];
extern u16 gPauseCounterBattle;
extern u16 gPaydayMoney;
extern u16 gRandomTurnNumber;
extern u8 gBattleCommunication[0x8];
extern u8 gBattleOutcome;
extern struct ProtectStruct gProtectStructs[4];
extern struct SpecialStatus gSpecialStatuses[4];
extern u16 gBattleWeather;
extern struct WishFutureKnock gWishFutureKnock;
extern u16 gIntroSlideFlags;
extern u8 gSentPokesToOpponent[2];
extern u16 gDynamicBasePower;
extern u16 gExpShareExp;
extern struct BattleEnigmaBerry gEnigmaBerries[4];
extern struct BattleScripting gBattleScripting;
extern struct BattleStruct *gBattleStruct;
extern u8 *gLinkBattleSendBuffer;
extern u8 *gLinkBattleRecvBuffer;
extern struct BattleResources *gBattleResources;
extern u8 gActionSelectionCursor[4];
extern u8 gMoveSelectionCursor[4];
extern u8 gBattlerStatusSummaryTaskId[4];
extern u8 gBattlerInMenuId;
extern bool8 gDoingBattleAnim;
extern u32 gTransformedPersonalities[4];
extern u8 gPlayerDpadHoldFrames;
extern struct BattleSpriteData *gBattleSpritesDataPtr;
extern struct MonSpritesGfx *gMonSpritesGfxPtr;
extern struct BattleHealthboxInfo *gUnknown_020244D8;
extern struct BattleHealthboxInfo *gUnknown_020244DC;
extern u16 gBattleMovePower;
extern u16 gMoveToLearn;
extern u8 gBattleMonForms[4];

extern void (*gPreBattleCallback1)(void);
extern void (*gBattleMainFunc)(void);
extern struct BattleResults gBattleResults;
extern u8 gLeveledUpInBattle;
extern void (*gBattlerControllerFuncs[4])(void);
extern u8 gHealthboxSpriteIds[4];
extern u8 gMultiUsePlayerCursor;
extern u8 gNumberOfMovesToChoose;
extern u8 gUnknown_03005D7C[4];
# 3 "src/battle_script_commands.c" 2
# 1 "include/constants/battle_move_effects.h" 1
# 4 "src/battle_script_commands.c" 2
# 1 "include/constants/battle_script_commands.h" 1
# 5 "src/battle_script_commands.c" 2
# 1 "include/battle_message.h" 1
# 6 "src/battle_script_commands.c" 2
# 1 "include/battle_anim.h" 1



# 1 "include/battle.h" 1
# 5 "include/battle_anim.h" 2
# 1 "include/constants/battle_anim.h" 1
# 6 "include/battle_anim.h" 2
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
# 7 "include/battle_anim.h" 2

enum
{
    BG_ANIM_SCREEN_SIZE,
    BG_ANIM_AREA_OVERFLOW_MODE,
    BG_ANIM_MOSAIC,
    BG_ANIM_CHAR_BASE_BLOCK,
    BG_ANIM_PRIORITY,
    BG_ANIM_PALETTES_MODE,
    BG_ANIM_SCREEN_BASE_BLOCK,
};

struct BattleAnimBgData
{
    u8 *bgTiles;
    u16 *bgTilemap;
    u8 paletteId;
    u8 bgId;
    u16 tilesOffset;
    u16 unused;
};

struct BattleAnimBackground
{
    const u32 *image;
    const u32 *palette;
    const u32 *tilemap;
};



extern void (*gAnimScriptCallback)(void);
extern bool8 gAnimScriptActive;
extern u8 gAnimVisualTaskCount;
extern u8 gAnimSoundTaskCount;
extern struct DisableStruct *gAnimDisableStructPtr;
extern s32 gAnimMoveDmg;
extern u16 gAnimMovePower;
extern u8 gAnimFriendship;
extern u16 gWeatherMoveAnim;
extern s16 gBattleAnimArgs[8];
extern u8 gAnimMoveTurn;
extern u8 gBattleAnimAttacker;
extern u8 gBattleAnimTarget;
extern u16 gAnimBattlerSpecies[4];
extern u8 gAnimCustomPanning;

void ClearBattleAnimationVars(void);
void DoMoveAnim(u16 move);
void LaunchBattleAnimation(const u8 *const animsTable[], u16 tableId, bool8 isMoveAnim);
void DestroyAnimSprite(struct Sprite *sprite);
void DestroyAnimVisualTask(u8 taskId);
void DestroyAnimSoundTask(u8 taskId);
bool8 IsBattlerSpriteVisible(u8 battlerId);
void MoveBattlerSpriteToBG(u8 battlerId, bool8 toBG_2, bool8 setSpriteInvisible);
bool8 IsContest(void);
s8 BattleAnimAdjustPanning(s8 pan);
s8 BattleAnimAdjustPanning2(s8 pan);
s16 KeepPanInRange(s16 a, int oldPan);
s16 CalculatePanIncrement(s16 sourcePan, s16 targetPan, s16 incrementPan);
void sub_80A4720(u16 a, u16 *b, u32 c, u8 d);
void sub_80A477C(bool8);


void SetAnimBgAttribute(u8 bgId, u8 attributeId, u8 value);
void sub_8118FBC(int bgId, u8 arg1, u8 arg2, u8 battlerPosition, u8 arg4, u8 *arg5, u16 *arg6, u16 arg7);
void HandleIntroSlide(u8 terrainId);
int GetAnimBgAttribute(u8 bgId, u8 attributeId);


void TranslateSpriteInEllipseOverDuration(struct Sprite *sprite);
void sub_80A8AEC(struct Sprite *sprite);
void sub_80A8A6C(struct Sprite *sprite);
void AnimWeatherBallUp(struct Sprite *sprite);
void AnimWeatherBallDown(struct Sprite *sprite);
void AnimSpinningSparkle(struct Sprite *sprite);
void SetAverageBattlerPositions(u8 battlerId, bool8 respectMonPicOffsets, s16 *x, s16 *y);
void DestroySpriteAndMatrix(struct Sprite *sprite);
void TranslateSpriteLinearFixedPoint(struct Sprite *sprite);
void InitSpritePosToAnimAttacker(struct Sprite *sprite, bool8 respectMonPicOffsets);
void InitSpritePosToAnimTarget(struct Sprite *sprite, bool8 respectMonPicOffsets);
void StartAnimLinearTranslation(struct Sprite *sprite);
void InitAnimArcTranslation(struct Sprite *sprite);
bool8 AnimTranslateLinear(struct Sprite *sprite);
void TranslateAnimSpriteToTargetMonLocation(struct Sprite *sprite);
u8 GetBattlerSpriteCoord2(u8 battlerId, u8 attributeId);
void sub_80A6FD4(struct Sprite *sprite);
u16 ArcTan2Neg(s16 a, s16 b);
void TrySetSpriteRotScale(struct Sprite *sprite, bool8 a2, s16 xScale, s16 yScale, u16 rotation);
void RunStoredCallbackWhenAffineAnimEnds(struct Sprite *sprite);
void TranslateSpriteLinearAndFlicker(struct Sprite *sprite);
void SetSpriteCoordsToAnimAttackerCoords(struct Sprite *sprite);
void RunStoredCallbackWhenAnimEnds(struct Sprite *sprite);
void SetAnimSpriteInitialXOffset(struct Sprite *sprite, s16 a2);
s16 GetBattlerSpriteCoordAttr(u8 battlerId, u8 a2);
u8 GetBattlerYCoordWithElevation(u8 battlerId);
void WaitAnimForDuration(struct Sprite *sprite);
void AnimTravelDiagonally(struct Sprite *sprite);
void InitAnimLinearTranslation(struct Sprite *sprite);
void sub_80A6F98(struct Sprite *sprite);
u8 GetBattlerSpriteBGPriority(u8 battlerId);
void *LoadPointerFromVars(s16 bottom, s16 top);
void StorePointerInVars(s16 *bottom, s16 *top, const void *ptr);
void sub_80A8278(void);
void sub_80A6B30(struct BattleAnimBgData*);
void sub_80A6B90(struct BattleAnimBgData*, u32 arg1);
u8 GetBattlerSpriteSubpriority(u8 battlerId);
bool8 TranslateAnimHorizontalArc(struct Sprite *sprite);
void sub_80A6630(struct Sprite *sprite);
void TranslateMonSpriteLinearFixedPoint(struct Sprite *sprite);
void ResetSpriteRotScale(u8 spriteId);
void SetSpriteRotScale(u8 spriteId, s16 xScale, s16 yScale, u16 rotation);
void InitSpriteDataForLinearTranslation(struct Sprite *sprite);
void PrepareBattlerSpriteForRotScale(u8 spriteId, u8 objMode);
void SetBattlerSpriteYOffsetFromRotation(u8 spriteId);
u32 sub_80A75AC(u8 a1, u8 a2, u8 a3, u8 a4, u8 a5, u8 a6, u8 a7);
u32 sub_80A76C4(u8 a1, u8 a2, u8 a3, u8 a4);
u8 sub_80A77AC(u8 a1);
s16 CloneBattlerSpriteWithBlend(u8);
void obj_delete_but_dont_free_vram(struct Sprite*);
u8 sub_80A89C8(int, u8, int);
void AnimLoadCompressedBgTilemapHandleContest(struct BattleAnimBgData*, const void*, u32);
void AnimLoadCompressedBgGfx(u32, const u32*, u32);
void sub_80A6DAC(bool8);
void TranslateSpriteInGrowingCircleOverDuration(struct Sprite *);
void sub_80A653C(struct Sprite *);
void SetBattlerSpriteYOffsetFromYScale(u8 spriteId);
void sub_80A805C(struct Task *task, u8 a2, s16 a3, s16 a4, s16 a5, s16 a6, u16 a7);
u8 sub_80A80C8(struct Task *task);
void DestroyAnimSpriteAndDisableBlend(struct Sprite *);
void AnimLoadCompressedBgTilemap(u32 bgId, const void *src);
void InitAnimFastLinearTranslationWithSpeed(struct Sprite *sprite);
bool8 AnimFastTranslateLinear(struct Sprite *sprite);
void InitAndRunAnimFastLinearTranslation(struct Sprite *sprite);
void TranslateMonSpriteLinear(struct Sprite *sprite);
void TranslateSpriteLinear(struct Sprite *sprite);
void AnimSpriteOnMonPos(struct Sprite *sprite);
void sub_80A7000(struct Sprite *sprite);
void TranslateSpriteInCircleOverDuration(struct Sprite *sprite);
void SetGreyscaleOrOriginalPalette(u16 palNum, bool8 restoreOriginal);
void PrepareAffineAnimInTaskData(struct Task *task, u8 spriteId, const union AffineAnimCmd *affineAnimCmds);
bool8 RunAffineAnimFromTaskData(struct Task *task);
void AnimThrowProjectile(struct Sprite *sprite);
void sub_80A6BFC(struct BattleAnimBgData *unk, u8 unused);
u8 sub_80A8394(u16 species, bool8 isBackpic, u8 a3, s16 x, s16 y, u8 subpriority, u32 personality, u32 trainerId, u32 battlerId, u32 a10);
void sub_80A749C(struct Sprite *sprite);
void TradeMenuBouncePartySprites(struct Sprite *sprite);
void DestroyAnimVisualTaskAndDisableBlend(u8 taskId);
void DestroySpriteAndFreeResources_(struct Sprite *sprite);
void SetBattlerSpriteYOffsetFromOtherYScale(u8 spriteId, u8 otherSpriteId);
u8 GetBattlerSide(u8 battler);
u8 GetBattlerPosition(u8 battler);
u8 GetBattlerAtPosition(u8 position);
void sub_80A64EC(struct Sprite *sprite);
void sub_80A718C(struct Sprite *sprite);

enum
{
    BATTLER_COORD_X,
    BATTLER_COORD_Y,
    BATTLER_COORD_X_2,
    BATTLER_COORD_Y_PIC_OFFSET,
    BATTLER_COORD_Y_PIC_OFFSET_DEFAULT,
};

enum
{
    BATTLER_COORD_ATTR_HEIGHT,
    BATTLER_COORD_ATTR_WIDTH,
    BATTLER_COORD_ATTR_TOP,
    BATTLER_COORD_ATTR_BOTTOM,
    BATTLER_COORD_ATTR_LEFT,
    BATTLER_COORD_ATTR_RIGHT,
    BATTLER_COORD_ATTR_RAW_BOTTOM,
};

u8 GetBattlerSpriteCoord(u8 battlerId, u8 attributeId);

bool8 IsBattlerSpritePresent(u8 battlerId);
void sub_80A6C68(u32 arg0);
u8 GetAnimBattlerSpriteId(u8 wantedBattler);
bool8 IsDoubleBattle(void);
u8 GetBattleBgPaletteNum(void);
u8 GetBattlerSpriteBGPriorityRank(u8 battlerId);
void StoreSpriteCallbackInData6(struct Sprite *sprite, void (*spriteCallback)(struct Sprite*));
void SetSpritePrimaryCoordsFromSecondaryCoords(struct Sprite *sprite);
u8 GetBattlerSpriteDefault_Y(u8 battlerId);
u8 GetSubstituteSpriteDefault_Y(u8 battlerId);
# 205 "include/battle_anim.h"
void LaunchStatusAnimation(u8 battlerId, u8 statusAnimId);


void AnimTask_HorizontalShake(u8 taskId);


void sub_8172EF0(u8 battler, struct Pokemon *mon);
u8 ItemIdToBallId(u16 itemId);
u8 AnimateBallOpenParticles(u8 x, u8 y, u8 priority, u8 subpriority, u8 ballId);
u8 LaunchBallFadeMonTask(bool8 unFadeLater, u8 battlerId, u32 selectedPalettes, u8 ballId);


void sub_8116EB4(u8);
void sub_8117854(u8 taskId, int unused, u16 arg2, u8 battler1, u8 arg4, u8 arg5, u8 arg6, u8 arg7, const u32 *arg8, const u32 *arg9, const u32 *palette);


void SetSpriteNextToMonHead(u8 battler, struct Sprite* sprite);
void AnimMoveTwisterParticle(struct Sprite* sprite);
void AnimParticleBurst(struct Sprite *);


void AnimWaterPulseRing(struct Sprite *sprite);


void DestroyAnimSpriteAfterTimer(struct Sprite *sprite);


u8 SmokescreenImpact(s16 x, s16 y, u8 a3);

u32 UnpackSelectedBattleAnimPalettes(s16);

u8 GetBattlerSpriteFinal_Y(u8, u16, u8);

extern const struct OamData gOamData_AffineOff_ObjNormal_8x16;
extern const struct OamData gOamData_AffineNormal_ObjBlend_16x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_8x8;
extern const struct OamData gOamData_AffineDouble_ObjNormal_8x8;
extern const struct OamData gOamData_AffineOff_ObjNormal_16x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x16;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_64x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_16x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x32;
extern const struct OamData gOamData_AffineNormal_ObjNormal_16x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_64x64;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x32;
extern const struct OamData gOamData_AffineOff_ObjNormal_16x32;
extern const struct OamData gOamData_AffineDouble_ObjBlend_8x8;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x32;
extern const struct OamData gOamData_AffineNormal_ObjBlend_64x64;
extern const struct OamData gOamData_AffineNormal_ObjBlend_32x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_32x16;
extern const struct OamData gOamData_AffineDouble_ObjNormal_16x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x64;
extern const struct OamData gOamData_AffineNormal_ObjNormal_32x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_32x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_64x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_64x64;
extern const struct OamData gOamData_AffineDouble_ObjBlend_64x32;
extern const struct OamData gOamData_AffineDouble_ObjNormal_8x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_16x16;
extern const struct OamData gOamData_AffineDouble_ObjBlend_16x16;
extern const struct OamData gOamData_AffineNormal_ObjNormal_8x8;
extern const struct OamData gOamData_AffineDouble_ObjBlend_8x16;
extern const struct OamData gOamData_AffineOff_ObjBlend_8x8;
extern const struct OamData gOamData_AffineNormal_ObjBlend_8x16;
extern const struct OamData gOamData_AffineNormal_ObjBlend_8x8;
extern const struct OamData gOamData_AffineOff_ObjBlend_8x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_64x64;
extern const struct OamData gOamData_AffineOff_ObjNormal_32x64;
extern const struct OamData gOamData_AffineNormal_ObjNormal_64x64;
extern const struct OamData gOamData_AffineDouble_ObjNormal_32x16;
extern const struct OamData gOamData_AffineOff_ObjNormal_64x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_64x32;
extern const struct OamData gOamData_AffineOff_ObjBlend_16x32;

extern const struct CompressedSpriteSheet gBattleAnimPicTable[];
extern const struct CompressedSpritePalette gBattleAnimPaletteTable[];

extern const struct SpriteTemplate gWaterHitSplatSpriteTemplate;

extern const union AnimCmd *const gAnims_WaterMudOrb[];
extern const union AnimCmd *const gAnims_BasicFire[];
extern const union AffineAnimCmd *const gGrowingRingAffineAnimTable[];
extern const union AffineAnimCmd *const gAffineAnims_Droplet[];
extern const union AnimCmd *const gAnims_SmallBubblePair[];
extern const union AnimCmd *const gAnims_WaterBubble[];
extern const union AffineAnimCmd *const gAffineAnims_Bite[];
# 7 "src/battle_script_commands.c" 2
# 1 "include/battle_ai_script_commands.h" 1
# 9 "include/battle_ai_script_commands.h"
void BattleAI_HandleItemUseBeforeAISetup(u8 defaultScoreMoves);
void BattleAI_SetupAIData(u8 defaultScoreMoves);
u8 BattleAI_ChooseMoveOrAction(void);
void ClearBattlerMoveHistory(u8 battlerId);
void RecordAbilityBattle(u8 battlerId, u8 abilityId);
void ClearBattlerAbilityHistory(u8 battlerId);
void RecordItemEffectBattle(u8 battlerId, u8 itemEffect);
void ClearBattlerItemEffectHistory(u8 battlerId);
# 8 "src/battle_script_commands.c" 2
# 1 "include/battle_scripts.h" 1



extern const u8 BattleScript_HitFromCritCalc[];
extern const u8 BattleScript_MoveEnd[];
extern const u8 BattleScript_MakeMoveMissed[];
extern const u8 BattleScript_PrintMoveMissed[];
extern const u8 BattleScript_MoveMissedPause[];
extern const u8 BattleScript_MoveMissed[];
extern const u8 BattleScript_ButItFailed[];
extern const u8 BattleScript_StatUp[];
extern const u8 BattleScript_StatDown[];
extern const u8 BattleScript_AlreadyAtFullHp[];
extern const u8 BattleScript_PresentHealTarget[];
extern const u8 BattleScript_MoveUsedMustRecharge[];
extern const u8 BattleScript_FaintAttacker[];
extern const u8 BattleScript_FaintTarget[];
extern const u8 BattleScript_GiveExp[];
extern const u8 BattleScript_HandleFaintedMon[];
extern const u8 BattleScript_LocalTrainerBattleWon[];
extern const u8 BattleScript_LocalTwoTrainersDefeated[];
extern const u8 BattleScript_LocalBattleWonLoseTexts[];
extern const u8 BattleScript_LocalBattleWonReward[];
extern const u8 BattleScript_PayDayMoneyAndPickUpItems[];
extern const u8 BattleScript_LocalBattleLost[];
extern const u8 BattleScript_LocalBattleLostPrintWhiteOut[];
extern const u8 BattleScript_LocalBattleLostEnd[];
extern const u8 BattleScript_CheckDomeDrew[];
extern const u8 BattleScript_FlushMessageBox[];
extern const u8 BattleScript_LinkBattleWonOrLost[];
extern const u8 BattleScript_FrontierTrainerBattleWon[];
extern const u8 BattleScript_SmokeBallEscape[];
extern const u8 BattleScript_RanAwayUsingMonAbility[];
extern const u8 BattleScript_GotAwaySafely[];
extern const u8 BattleScript_WildMonFled[];
extern const u8 BattleScript_PrintCantRunFromTrainer[];
extern const u8 BattleScript_PrintFailedToRunString[];
extern const u8 BattleScript_PrintCantEscapeFromBattle[];
extern const u8 BattleScript_PrintFullBox[];
extern const u8 BattleScript_ActionSwitch[];
extern const u8 BattleScript_Pausex20[];
extern const u8 BattleScript_LevelUp[];
extern const u8 BattleScript_RainContinuesOrEnds[];
extern const u8 BattleScript_DamagingWeatherContinues[];
extern const u8 BattleScript_SandStormHailEnds[];
extern const u8 BattleScript_SunlightContinues[];
extern const u8 BattleScript_SunlightFaded[];
extern const u8 BattleScript_OverworldWeatherStarts[];
extern const u8 BattleScript_SideStatusWoreOff[];
extern const u8 BattleScript_SafeguardProtected[];
extern const u8 BattleScript_SafeguardEnds[];
extern const u8 BattleScript_LeechSeedTurnDrain[];
extern const u8 BattleScript_BideStoringEnergy[];
extern const u8 BattleScript_BideAttack[];
extern const u8 BattleScript_BideNoEnergyToAttack[];
extern const u8 BattleScript_SuccessForceOut[];
extern const u8 BattleScript_MistProtected[];
extern const u8 BattleScript_RageIsBuilding[];
extern const u8 BattleScript_MoveUsedIsDisabled[];
extern const u8 BattleScript_SelectingDisabledMove[];
extern const u8 BattleScript_DisabledNoMore[];
extern const u8 BattleScript_SelectingDisabledMoveInPalace[];
extern const u8 BattleScript_SelectingUnusableMoveInPalace[];
extern const u8 BattleScript_EncoredNoMore[];
extern const u8 BattleScript_DestinyBondTakesLife[];
extern const u8 BattleScript_SpikesOnAttacker[];
extern const u8 BattleScript_SpikesOnTarget[];
extern const u8 BattleScript_SpikesOnFaintedBattler[];
extern const u8 BattleScript_PerishSongTakesLife[];
extern const u8 BattleScript_PerishSongCountGoesDown[];
extern const u8 BattleScript_AllStatsUp[];
extern const u8 BattleScript_RapidSpinAway[];
extern const u8 BattleScript_WrapFree[];
extern const u8 BattleScript_LeechSeedFree[];
extern const u8 BattleScript_SpikesFree[];
extern const u8 BattleScript_MonTookFutureAttack[];
extern const u8 BattleScript_NoMovesLeft[];
extern const u8 BattleScript_SelectingMoveWithNoPP[];
extern const u8 BattleScript_NoPPForMove[];
extern const u8 BattleScript_SelectingTormentedMove[];
extern const u8 BattleScript_MoveUsedIsTormented[];
extern const u8 BattleScript_SelectingTormentedMoveInPalace[];
extern const u8 BattleScript_SelectingNotAllowedMoveTaunt[];
extern const u8 BattleScript_MoveUsedIsTaunted[];
extern const u8 BattleScript_SelectingNotAllowedMoveTauntInPalace[];
extern const u8 BattleScript_WishComesTrue[];
extern const u8 BattleScript_IngrainTurnHeal[];
extern const u8 BattleScript_AtkDefDown[];
extern const u8 BattleScript_KnockedOff[];
extern const u8 BattleScript_MoveUsedIsImprisoned[];
extern const u8 BattleScript_SelectingImprisonedMove[];
extern const u8 BattleScript_SelectingImprisonedMoveInPalace[];
extern const u8 BattleScript_GrudgeTakesPp[];
extern const u8 BattleScript_MagicCoatBounce[];
extern const u8 BattleScript_SnatchedMove[];
extern const u8 BattleScript_EnduredMsg[];
extern const u8 BattleScript_OneHitKOMsg[];
extern const u8 BattleScript_SAtkDown2[];
extern const u8 BattleScript_FocusPunchSetUp[];
extern const u8 BattleScript_MoveUsedIsAsleep[];
extern const u8 BattleScript_MoveUsedWokeUp[];
extern const u8 BattleScript_MonWokeUpInUproar[];
extern const u8 BattleScript_PoisonTurnDmg[];
extern const u8 BattleScript_BurnTurnDmg[];
extern const u8 BattleScript_MoveUsedIsFrozen[];
extern const u8 BattleScript_MoveUsedUnfroze[];
extern const u8 BattleScript_DefrostedViaFireMove[];
extern const u8 BattleScript_MoveUsedIsParalyzed[];
extern const u8 BattleScript_MoveUsedFlinched[];
extern const u8 BattleScript_PrintUproarOverTurns[];
extern const u8 BattleScript_ThrashConfuses[];
extern const u8 BattleScript_MoveUsedIsConfused[];
extern const u8 BattleScript_MoveUsedIsConfusedNoMore[];
extern const u8 BattleScript_PrintPayDayMoneyString[];
extern const u8 BattleScript_WrapTurnDmg[];
extern const u8 BattleScript_WrapEnds[];
extern const u8 BattleScript_MoveUsedIsInLove[];
extern const u8 BattleScript_MoveUsedIsInLoveCantAttack[];
extern const u8 BattleScript_NightmareTurnDmg[];
extern const u8 BattleScript_CurseTurnDmg[];
extern const u8 BattleScript_TargetPRLZHeal[];
extern const u8 BattleScript_MoveEffectSleep[];
extern const u8 BattleScript_YawnMakesAsleep[];
extern const u8 BattleScript_MoveEffectPoison[];
extern const u8 BattleScript_MoveEffectBurn[];
extern const u8 BattleScript_MoveEffectFreeze[];
extern const u8 BattleScript_MoveEffectParalysis[];
extern const u8 BattleScript_MoveEffectUproar[];
extern const u8 BattleScript_MoveEffectToxic[];
extern const u8 BattleScript_MoveEffectPayDay[];
extern const u8 BattleScript_MoveEffectWrap[];
extern const u8 BattleScript_MoveEffectConfusion[];
extern const u8 BattleScript_MoveEffectRecoil[];
extern const u8 BattleScript_DoRecoil33[];
extern const u8 BattleScript_Recoil33End[];
extern const u8 BattleScript_ItemSteal[];
extern const u8 BattleScript_DrizzleActivates[];
extern const u8 BattleScript_SpeedBoostActivates[];
extern const u8 BattleScript_TraceActivates[];
extern const u8 BattleScript_RainDishActivates[];
extern const u8 BattleScript_SandstreamActivates[];
extern const u8 BattleScript_ShedSkinActivates[];
extern const u8 BattleScript_WeatherFormChanges[];
extern const u8 BattleScript_WeatherFormChangesLoop[];
extern const u8 BattleScript_CastformChange[];
extern const u8 BattleScript_IntimidateActivatesEnd3[];
extern const u8 BattleScript_IntimidateActivates[];
extern const u8 BattleScript_DroughtActivates[];
extern const u8 BattleScript_TookAttack[];
extern const u8 BattleScript_SturdyPreventsOHKO[];
extern const u8 BattleScript_DampStopsExplosion[];
extern const u8 BattleScript_MoveHPDrain_PPLoss[];
extern const u8 BattleScript_MoveHPDrain[];
extern const u8 BattleScript_MonMadeMoveUseless_PPLoss[];
extern const u8 BattleScript_MonMadeMoveUseless[];
extern const u8 BattleScript_FlashFireBoost_PPLoss[];
extern const u8 BattleScript_FlashFireBoost[];
extern const u8 BattleScript_AbilityNoStatLoss[];
extern const u8 BattleScript_BRNPrevention[];
extern const u8 BattleScript_PRLZPrevention[];
extern const u8 BattleScript_PSNPrevention[];
extern const u8 BattleScript_ObliviousPreventsAttraction[];
extern const u8 BattleScript_FlinchPrevention[];
extern const u8 BattleScript_OwnTempoPrevents[];
extern const u8 BattleScript_SoundproofProtected[];
extern const u8 BattleScript_AbilityNoSpecificStatLoss[];
extern const u8 BattleScript_StickyHoldActivates[];
extern const u8 BattleScript_ColorChangeActivates[];
extern const u8 BattleScript_RoughSkinActivates[];
extern const u8 BattleScript_CuteCharmActivates[];
extern const u8 BattleScript_ApplySecondaryEffect[];
extern const u8 BattleScript_SynchronizeActivates[];
extern const u8 BattleScript_NoItemSteal[];
extern const u8 BattleScript_AbilityCuredStatus[];
extern const u8 BattleScript_IgnoresWhileAsleep[];
extern const u8 BattleScript_IgnoresAndUsesRandomMove[];
extern const u8 BattleScript_MoveUsedLoafingAround[];
extern const u8 BattleScript_IgnoresAndFallsAsleep[];
extern const u8 BattleScript_IgnoresAndHitsItself[];
extern const u8 BattleScript_SubstituteFade[];
extern const u8 BattleScript_BerryCurePrlzEnd2[];
extern const u8 BattleScript_BerryCureParRet[];
extern const u8 BattleScript_BerryCurePsnEnd2[];
extern const u8 BattleScript_BerryCurePsnRet[];
extern const u8 BattleScript_BerryCureBrnEnd2[];
extern const u8 BattleScript_BerryCureBrnRet[];
extern const u8 BattleScript_BerryCureFrzEnd2[];
extern const u8 BattleScript_BerryCureFrzRet[];
extern const u8 BattleScript_BerryCureSlpEnd2[];
extern const u8 BattleScript_BerryCureSlpRet[];
extern const u8 BattleScript_BerryCureConfusionEnd2[];
extern const u8 BattleScript_BerryCureConfusionRet[];
extern const u8 BattleScript_BerryCureChosenStatusEnd2[];
extern const u8 BattleScript_BerryCureChosenStatusRet[];
extern const u8 BattleScript_WhiteHerbEnd2[];
extern const u8 BattleScript_WhiteHerbRet[];
extern const u8 BattleScript_ItemHealHP_RemoveItem[];
extern const u8 BattleScript_BerryPPHealEnd2[];
extern const u8 BattleScript_ItemHealHP_End2[];
extern const u8 BattleScript_ItemHealHP_Ret[];
extern const u8 BattleScript_SelectingNotAllowedMoveChoiceItem[];
extern const u8 BattleScript_FocusBandActivates[];
extern const u8 BattleScript_BerryConfuseHealEnd2[];
extern const u8 BattleScript_BerryStatRaiseEnd2[];
extern const u8 BattleScript_BerryFocusEnergyEnd2[];
extern const u8 BattleScript_ActionSelectionItemsCantBeUsed[];
extern const u8 BattleScript_ArenaTurnBeginning[];
extern const u8 BattleScript_82DB881[];
extern const u8 BattleScript_ArenaDoJudgment[];
extern const u8 BattleScript_82DAA0B[];
extern const u8 BattleScript_AskIfWantsToForfeitMatch[];
extern const u8 BattleScript_PrintPlayerForfeited[];
extern const u8 BattleScript_PrintPlayerForfeitedLinkBattle[];
extern const u8 BattleScript_BallThrow[];
extern const u8 BattleScript_BallThrowByWally[];
extern const u8 BattleScript_SafariBallThrow[];
extern const u8 BattleScript_SuccessBallThrow[];
extern const u8 BattleScript_WallyBallThrow[];
extern const u8 BattleScript_ShakeBallThrow[];
extern const u8 BattleScript_TrainerBallBlock[];
extern const u8 BattleScript_RunByUsingItem[];
extern const u8 BattleScript_ActionWatchesCarefully[];
extern const u8 BattleScript_ActionGetNear[];
extern const u8 BattleScript_ActionThrowPokeblock[];
# 9 "src/battle_script_commands.c" 2
# 1 "include/constants/moves.h" 1
# 10 "src/battle_script_commands.c" 2
# 1 "include/constants/abilities.h" 1
# 11 "src/battle_script_commands.c" 2
# 1 "include/item.h" 1



# 1 "include/constants/item.h" 1
# 5 "include/item.h" 2

typedef void (*ItemUseFunc)(u8);

struct Item
{
    u8 name[14];
    u16 itemId;
    u16 price;
    u8 holdEffect;
    u8 holdEffectParam;
    const u8 *description;
    u8 importance;
    u8 unk19;
    u8 pocket;
    u8 type;
    ItemUseFunc fieldUseFunc;
    u8 battleUsage;
    ItemUseFunc battleUseFunc;
    u8 secondaryId;
};

struct BagPocket
{
    struct ItemSlot *itemSlots;
    u8 capacity;
};

extern struct BagPocket gBagPockets[];

void ApplyNewEncryptionKeyToBagItems(u32 newKey);
void ApplyNewEncryptionKeyToBagItems_(u32 newKey);
void SetBagItemsPointers(void);
void CopyItemName(u16 itemId, u8 *dst);
void CopyItemNameHandlePlural(u16 itemId, u8 *dst, u32 quantity);
void GetBerryCountString(u8 *dst, const u8 *berryName, u32 quantity);
bool8 IsBagPocketNonEmpty(u8 pocket);
bool8 CheckBagHasItem(u16 itemId, u16 count);
bool8 HasAtLeastOneBerry(void);
bool8 CheckBagHasSpace(u16 itemId, u16 count);
bool8 AddBagItem(u16 itemId, u16 count);
bool8 RemoveBagItem(u16 itemId, u16 count);
u8 GetPocketByItemId(u16 itemId);
void ClearItemSlots(struct ItemSlot *itemSlots, u8 itemCount);
u8 CountUsedPCItemSlots(void);
bool8 CheckPCHasItem(u16 itemId, u16 count);
bool8 AddPCItem(u16 itemId, u16 count);
void RemovePCItem(u8 index, u16 count);
void CompactPCItems(void);
void SwapRegisteredBike(void);
u16 BagGetItemIdByPocketPosition(u8 pocketId, u16 pocketPos);
u16 BagGetQuantityByPocketPosition(u8 pocketId, u16 pocketPos);
void CompactItemsInBagPocket(struct BagPocket *bagPocket);
void SortBerriesOrTMHMs(struct BagPocket *bagPocket);
void MoveItemSlotInList(struct ItemSlot* itemSlots_, u32 from, u32 to_);
void ClearBag(void);
u16 CountTotalItemQuantityInBag(u16 itemId);
bool8 AddPyramidBagItem(u16 itemId, u16 count);
bool8 RemovePyramidBagItem(u16 itemId, u16 count);
const u8 *ItemId_GetName(u16 itemId);
u16 ItemId_GetId(u16 itemId);
u16 ItemId_GetPrice(u16 itemId);
u8 ItemId_GetHoldEffect(u16 itemId);
u8 ItemId_GetHoldEffectParam(u16 itemId);
const u8 *ItemId_GetDescription(u16 itemId);
u8 ItemId_GetImportance(u16 itemId);
u8 ItemId_GetUnknownValue(u16 itemId);
u8 ItemId_GetPocket(u16 itemId);
u8 ItemId_GetType(u16 itemId);
ItemUseFunc ItemId_GetFieldFunc(u16 itemId);
u8 ItemId_GetBattleUsage(u16 itemId);
ItemUseFunc ItemId_GetBattleFunc(u16 itemId);
u8 ItemId_GetSecondaryId(u16 itemId);
# 12 "src/battle_script_commands.c" 2
# 1 "include/constants/items.h" 1
# 13 "src/battle_script_commands.c" 2
# 1 "include/constants/hold_effects.h" 1
# 14 "src/battle_script_commands.c" 2
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
# 15 "src/battle_script_commands.c" 2
# 1 "include/pokemon.h" 1
# 16 "src/battle_script_commands.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 20 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 17 "src/battle_script_commands.c" 2
# 1 "include/battle_controllers.h" 1



enum
{
    REQUEST_ALL_BATTLE,
    REQUEST_SPECIES_BATTLE,
    REQUEST_HELDITEM_BATTLE,
    REQUEST_MOVES_PP_BATTLE,
    REQUEST_MOVE1_BATTLE,
    REQUEST_MOVE2_BATTLE,
    REQUEST_MOVE3_BATTLE,
    REQUEST_MOVE4_BATTLE,
    REQUEST_PP_DATA_BATTLE,
    REQUEST_PPMOVE1_BATTLE,
    REQUEST_PPMOVE2_BATTLE,
    REQUEST_PPMOVE3_BATTLE,
    REQUEST_PPMOVE4_BATTLE,
    REQUEST_UNUSED_13_BATTLE,
    REQUEST_UNUSED_14_BATTLE,
    REQUEST_UNUSED_15_BATTLE,
    REQUEST_UNUSED_16_BATTLE,
    REQUEST_OTID_BATTLE,
    REQUEST_EXP_BATTLE,
    REQUEST_HP_EV_BATTLE,
    REQUEST_ATK_EV_BATTLE,
    REQUEST_DEF_EV_BATTLE,
    REQUEST_SPEED_EV_BATTLE,
    REQUEST_SPATK_EV_BATTLE,
    REQUEST_SPDEF_EV_BATTLE,
    REQUEST_FRIENDSHIP_BATTLE,
    REQUEST_POKERUS_BATTLE,
    REQUEST_MET_LOCATION_BATTLE,
    REQUEST_MET_LEVEL_BATTLE,
    REQUEST_MET_GAME_BATTLE,
    REQUEST_POKEBALL_BATTLE,
    REQUEST_ALL_IVS_BATTLE,
    REQUEST_HP_IV_BATTLE,
    REQUEST_ATK_IV_BATTLE,
    REQUEST_DEF_IV_BATTLE,
    REQUEST_SPEED_IV_BATTLE,
    REQUEST_SPATK_IV_BATTLE,
    REQUEST_SPDEF_IV_BATTLE,
    REQUEST_PERSONALITY_BATTLE,
    REQUEST_CHECKSUM_BATTLE,
    REQUEST_STATUS_BATTLE,
    REQUEST_LEVEL_BATTLE,
    REQUEST_HP_BATTLE,
    REQUEST_MAX_HP_BATTLE,
    REQUEST_ATK_BATTLE,
    REQUEST_DEF_BATTLE,
    REQUEST_SPEED_BATTLE,
    REQUEST_SPATK_BATTLE,
    REQUEST_SPDEF_BATTLE,
    REQUEST_COOL_BATTLE,
    REQUEST_BEAUTY_BATTLE,
    REQUEST_CUTE_BATTLE,
    REQUEST_SMART_BATTLE,
    REQUEST_TOUGH_BATTLE,
    REQUEST_SHEEN_BATTLE,
    REQUEST_COOL_RIBBON_BATTLE,
    REQUEST_BEAUTY_RIBBON_BATTLE,
    REQUEST_CUTE_RIBBON_BATTLE,
    REQUEST_SMART_RIBBON_BATTLE,
    REQUEST_TOUGH_RIBBON_BATTLE,
};
# 86 "include/battle_controllers.h"
struct UnusedControllerStruct
{
    u8 field_0:7;
    u8 flag_x80:1;
};

struct HpAndStatus
{
    u16 hp;
    u32 status;
};

struct MovePpInfo
{
    u16 moves[4];
    u8 pp[4];
    u8 ppBonuses;
};

struct ChooseMoveStruct
{
    u16 moves[4];
    u8 currentPp[4];
    u8 maxPp[4];
    u16 species;
    u8 monType1;
    u8 monType2;
};

enum
{
    CONTROLLER_GETMONDATA,
    CONTROLLER_GETRAWMONDATA,
    CONTROLLER_SETMONDATA,
    CONTROLLER_SETRAWMONDATA,
    CONTROLLER_LOADMONSPRITE,
    CONTROLLER_SWITCHINANIM,
    CONTROLLER_RETURNMONTOBALL,
    CONTROLLER_DRAWTRAINERPIC,
    CONTROLLER_TRAINERSLIDE,
    CONTROLLER_TRAINERSLIDEBACK,
    CONTROLLER_FAINTANIMATION,
    CONTROLLER_PALETTEFADE,
    CONTROLLER_SUCCESSBALLTHROWANIM,
    CONTROLLER_BALLTHROWANIM,
    CONTROLLER_PAUSE,
    CONTROLLER_MOVEANIMATION,
    CONTROLLER_PRINTSTRING,
    CONTROLLER_PRINTSTRINGPLAYERONLY,
    CONTROLLER_CHOOSEACTION,
    CONTROLLER_UNKNOWNYESNOBOX,
    CONTROLLER_CHOOSEMOVE,
    CONTROLLER_OPENBAG,
    CONTROLLER_CHOOSEPOKEMON,
    CONTROLLER_23,
    CONTROLLER_HEALTHBARUPDATE,
    CONTROLLER_EXPUPDATE,
    CONTROLLER_STATUSICONUPDATE,
    CONTROLLER_STATUSANIMATION,
    CONTROLLER_STATUSXOR,
    CONTROLLER_DATATRANSFER,
    CONTROLLER_DMA3TRANSFER,
    CONTROLLER_31,
    CONTROLLER_32,
    CONTROLLER_TWORETURNVALUES,
    CONTROLLER_CHOSENMONRETURNVALUE,
    CONTROLLER_ONERETURNVALUE,
    CONTROLLER_ONERETURNVALUE_DUPLICATE,
    CONTROLLER_37,
    CONTROLLER_38,
    CONTROLLER_39,
    CONTROLLER_40,
    CONTROLLER_HITANIMATION,
    CONTROLLER_42,
    CONTROLLER_EFFECTIVENESSSOUND,
    CONTROLLER_PLAYFANFAREORBGM,
    CONTROLLER_FAINTINGCRY,
    CONTROLLER_INTROSLIDE,
    CONTROLLER_INTROTRAINERBALLTHROW,
    CONTROLLER_DRAWPARTYSTATUSSUMMARY,
    CONTROLLER_HIDEPARTYSTATUSSUMMARY,
    CONTROLLER_ENDBOUNCE,
    CONTROLLER_SPRITEINVISIBILITY,
    CONTROLLER_BATTLEANIMATION,
    CONTROLLER_LINKSTANDBYMSG,
    CONTROLLER_RESETACTIONMOVESELECTION,
    CONTROLLER_55,

    CONTROLLER_TERMINATOR_NOP,
    CONTROLLER_CMDS_COUNT
};

extern struct UnusedControllerStruct gUnknown_02022D0C;


void HandleLinkBattleSetup(void);
void SetUpBattleVarsAndBirchZigzagoon(void);
void sub_8032768(void);
void sub_8033648(void);
void PrepareBufferDataTransferLink(u8 bufferId, u16 size, u8 *data);


void BtlController_EmitGetMonData(u8 bufferId, u8 requestId, u8 monToCheck);
void BtlController_EmitGetRawMonData(u8 bufferId, u8 monId, u8 bytes);
void BtlController_EmitSetMonData(u8 bufferId, u8 requestId, u8 monToCheck, u8 bytes, void *data);
void BtlController_EmitSetRawMonData(u8 bufferId, u8 monId, u8 bytes, void *data);
void BtlController_EmitLoadMonSprite(u8 bufferId);
void BtlController_EmitSwitchInAnim(u8 bufferId, u8 partyId, bool8 dontClearSubstituteBit);
void BtlController_EmitReturnMonToBall(u8 bufferId, u8 arg1);
void BtlController_EmitDrawTrainerPic(u8 bufferId);
void BtlController_EmitTrainerSlide(u8 bufferId);
void BtlController_EmitTrainerSlideBack(u8 bufferId);
void BtlController_EmitFaintAnimation(u8 bufferId);
void BtlController_EmitPaletteFade(u8 bufferId);
void BtlController_EmitSuccessBallThrowAnim(u8 bufferId);
void BtlController_EmitBallThrowAnim(u8 bufferId, u8 caseId);
void BtlController_EmitPause(u8 bufferId, u8 toWait, void *data);
void BtlController_EmitMoveAnimation(u8 bufferId, u16 move, u8 turnOfMove, u16 movePower, s32 dmg, u8 friendship, struct DisableStruct *disableStructPtr, u8 multihit);
void BtlController_EmitPrintString(u8 bufferId, u16 stringId);
void BtlController_EmitPrintSelectionString(u8 bufferId, u16 stringId);
void BtlController_EmitChooseAction(u8 bufferId, u8 arg1, u16 arg2);
void BtlController_EmitUnknownYesNoBox(u8 bufferId);
void BtlController_EmitChooseMove(u8 bufferId, bool8 isDoubleBattle, bool8 NoPpNumber, struct ChooseMoveStruct *movePpData);
void BtlController_EmitChooseItem(u8 bufferId, u8* arg1);
void BtlController_EmitChoosePokemon(u8 bufferId, u8 caseId, u8 arg2, u8 abilityId, u8* arg4);
void BtlController_EmitCmd23(u8 bufferId);
void BtlController_EmitHealthBarUpdate(u8 bufferId, u16 hpValue);
void BtlController_EmitExpUpdate(u8 bufferId, u8 partyId, u16 expPoints);
void BtlController_EmitStatusIconUpdate(u8 bufferId, u32 status1, u32 status2);
void BtlController_EmitStatusAnimation(u8 bufferId, bool8 status2, u32 status);
void BtlController_EmitStatusXor(u8 bufferId, u8 b);
void BtlController_EmitDataTransfer(u8 bufferId, u16 size, void *data);
void BtlController_EmitDMA3Transfer(u8 bufferId, void *dst, u16 size, void *data);
void BtlController_EmitPlayBGM(u8 bufferId, u16 songId, void *unusedDumbDataParameter);
void BtlController_EmitCmd32(u8 bufferId, u16 size, void *c);
void BtlController_EmitTwoReturnValues(u8 bufferId, u8 arg1, u16 arg2);
void BtlController_EmitChosenMonReturnValue(u8 bufferId, u8 b, u8 *c);
void BtlController_EmitOneReturnValue(u8 bufferId, u16 arg1);
void BtlController_EmitOneReturnValue_Duplicate(u8 bufferId, u16 b);
void BtlController_EmitCmd37(u8 bufferId);
void BtlController_EmitCmd38(u8 bufferId, u8 b);
void BtlController_EmitCmd39(u8 bufferId);
void BtlController_EmitCmd40(u8 bufferId);
void BtlController_EmitHitAnimation(u8 bufferId);
void BtlController_EmitCmd42(u8 bufferId);
void BtlController_EmitPlaySE(u8 bufferId, u16 songId);
void BtlController_EmitPlayFanfareOrBGM(u8 bufferId, u16 songId, bool8 playBGM);
void BtlController_EmitFaintingCry(u8 bufferId);
void BtlController_EmitIntroSlide(u8 bufferId, u8 terrainId);
void BtlController_EmitIntroTrainerBallThrow(u8 bufferId);
void BtlController_EmitDrawPartyStatusSummary(u8 bufferId, struct HpAndStatus* hpAndStatus, u8 arg2);
void BtlController_EmitHidePartyStatusSummary(u8 bufferId);
void BtlController_EmitEndBounceEffect(u8 bufferId);
void BtlController_EmitSpriteInvisibility(u8 bufferId, bool8 isInvisible);
void BtlController_EmitBattleAnimation(u8 bufferId, u8 animationId, u16 argument);
void BtlController_EmitLinkStandbyMsg(u8 bufferId, u8 arg1, bool32 arg2);
void BtlController_EmitResetActionMoveSelection(u8 bufferId, u8 caseId);
void BtlController_EmitCmd55(u8 bufferId, u8 battleOutcome);


void SetControllerToPlayer(void);
void nullsub_21(void);
void PlayerHandleGetRawMonData(void);
void sub_80587B0(void);
void sub_805CC00(struct Sprite *sprite);
void CB2_SetUpReshowBattleScreenAfterMenu(void);
void CB2_SetUpReshowBattleScreenAfterMenu2(void);
void c3_0802FDF4(u8 taskId);
void ActionSelectionCreateCursorAt(u8 cursorPos, u8 unused);
void ActionSelectionDestroyCursorAt(u8 cursorPos);
void InitMoveSelectionsVarsAndStrings(void);


void SetControllerToRecordedPlayer(void);


void SetControllerToOpponent(void);


void SetControllerToPlayerPartner(void);


void SetControllerToSafari(void);


void SetControllerToWally(void);


void SetControllerToRecordedOpponent(void);


void SetControllerToLinkOpponent(void);


void SetControllerToLinkPartner(void);
# 18 "src/battle_script_commands.c" 2
# 1 "include/battle_interface.h" 1



# 1 "include/battle_controllers.h" 1
# 5 "include/battle_interface.h" 2

enum
{
    HP_CURRENT,
    HP_MAX
};

enum
{
    HEALTH_BAR,
    EXP_BAR
};

enum
{
    HP_BAR_EMPTY,
    HP_BAR_RED,
    HP_BAR_YELLOW,
    HP_BAR_GREEN,
    HP_BAR_FULL,
};
# 47 "include/battle_interface.h"
enum
{
    HEALTHBOX_ALL,
    HEALTHBOX_CURRENT_HP,
    HEALTHBOX_MAX_HP,
    HEALTHBOX_LEVEL,
    HEALTHBOX_NICK,
    HEALTHBOX_HEALTH_BAR,
    HEALTHBOX_EXP_BAR,
    HEALTHBOX_UNUSED_7,
    HEALTHBOX_UNUSED_8,
    HEALTHBOX_STATUS_ICON,
    HEALTHBOX_SAFARI_ALL_TEXT,
    HEALTHBOX_SAFARI_BALLS_TEXT
};

u8 CreateBattlerHealthboxSprites(u8 battler);
u8 CreateSafariPlayerHealthboxSprites(void);
void SetBattleBarStruct(u8 battler, u8 healthboxSpriteId, s32 maxVal, s32 currVal, s32 receivedValue);
void SetHealthboxSpriteInvisible(u8 healthboxSpriteId);
void SetHealthboxSpriteVisible(u8 healthboxSpriteId);
void DestoryHealthboxSprite(u8 healthboxSpriteId);
void DummyBattleInterfaceFunc(u8 healthboxSpriteId, bool8 isDoubleBattleBankOnly);
void UpdateOamPriorityInAllHealthboxes(u8 priority);
void InitBattlerHealthboxCoords(u8 battler);
void UpdateHpTextInHealthbox(u8 healthboxSpriteId, s16 value, u8 maxOrCurrent);
void SwapHpBarsWithHpText(void);
u8 CreatePartyStatusSummarySprites(u8 battler, struct HpAndStatus *partyInfo, u8 arg2, bool8 isBattleStart);
void Task_HidePartyStatusSummary(u8 taskId);
void UpdateHealthboxAttribute(u8 healthboxSpriteId, struct Pokemon *mon, u8 elementId);
s32 MoveBattleBar(u8 battler, u8 healthboxSpriteId, u8 whichBar, u8 arg3);
u8 GetScaledHPFraction(s16 hp, s16 maxhp, u8 scale);
u8 GetHPBarLevel(s16 hp, s16 maxhp);
# 19 "src/battle_script_commands.c" 2
# 1 "include/constants/species.h" 1
# 20 "src/battle_script_commands.c" 2
# 1 "include/constants/songs.h" 1
# 21 "src/battle_script_commands.c" 2
# 1 "include/constants/trainers.h" 1



# 1 "include/constants/opponents.h" 1
# 5 "include/constants/trainers.h" 2
# 1 "include/constants/battle_frontier_trainers.h" 1
# 6 "include/constants/trainers.h" 2
# 22 "src/battle_script_commands.c" 2
# 1 "include/constants/battle_anim.h" 1
# 23 "src/battle_script_commands.c" 2
# 1 "include/constants/map_types.h" 1
# 24 "src/battle_script_commands.c" 2
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
# 25 "src/battle_script_commands.c" 2
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
# 26 "src/battle_script_commands.c" 2
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
# 27 "src/battle_script_commands.c" 2
# 1 "include/recorded_battle.h" 1



extern u32 gRecordedBattleRngSeed;
extern u32 gBattlePalaceMoveSelectionRngValue;
extern u8 gUnknown_0203C7B4;

void sub_8184DA4(u8 arg0);
void sub_8184E58(void);
void RecordedBattle_SetBattlerAction(u8 battlerId, u8 action);
void RecordedBattle_ClearBattlerAction(u8 battlerId, u8 bytesToClear);
u8 RecordedBattle_GetBattlerAction(u8 battlerId);
u8 sub_81850D0(void);
u8 sub_81850DC(u8 *arg0);
void sub_81851A8(u8 *arg0);
bool32 CanCopyRecordedBattleSaveData(void);
bool32 MoveRecordedBattleToSaveData(void);
void PlayRecordedBattle(void (*CB2_After)(void));
u8 GetRecordedBattleFrontierFacility(void);
u8 GetRecordedBattleFronterBrainSymbol(void);
void RecordedBattle_SaveParties(void);
u8 GetActiveBattlerLinkPlayerGender(void);
void sub_8185F84(void);
void sub_8185F90(u16 arg0);
u8 sub_8185FAC(void);
u8 GetBattleSceneInRecordedBattle(void);
u8 GetTextSpeedInRecordedBattle(void);
void RecordedBattle_CopyBattlerMoves(void);
void sub_818603C(u8 arg0);
u32 GetAiScriptsInRecordedBattle(void);
void sub_8186444(void);
bool8 sub_8186450(void);
void sub_8186468(u8 *dst);
u8 GetRecordedBattleRecordMixFriendClass(void);
u8 GetRecordedBattleApprenticeId(void);
u8 GetRecordedBattleRecordMixFriendLanguage(void);
u8 GetRecordedBattleApprenticeLanguage(void);
void RecordedBattle_SaveBattleOutcome(void);
u16 *GetRecordedBattleEasyChatSpeech(void);
# 28 "src/battle_script_commands.c" 2
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
# 29 "src/battle_script_commands.c" 2
# 1 "include/reshow_battle_screen.h" 1



void nullsub_35(void);
void ReshowBattleScreenAfterMenu(void);
# 30 "src/battle_script_commands.c" 2
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
# 31 "src/battle_script_commands.c" 2
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
# 32 "src/battle_script_commands.c" 2
# 1 "include/money.h" 1



u32 GetMoney(u32* moneyPtr);
void SetMoney(u32* moneyPtr, u32 newValue);
bool8 IsEnoughMoney(u32* moneyPtr, u32 cost);
void AddMoney(u32* moneyPtr, u32 toAdd);
void RemoveMoney(u32* moneyPtr, u32 toSub);
bool8 IsEnoughForCostInVar0x8005(void);
void SubtractMoneyFromVar0x8005(void);
void PrintMoneyAmountInMoneyBox(u8 windowId, int amount, u8 speed);
void PrintMoneyAmount(u8 windowId, u8 x, u8 y, int amount, u8 speed);
void PrintMoneyAmountInMoneyBoxWithBorder(u8 windowId, u16 tileStart, u8 pallete, int amount);
void ChangeAmountInMoneyBox(int amount);
void DrawMoneyBox(int amount, u8 x, u8 y);
void HideMoneyBox(void);
void AddMoneyLabelObject(u16 x, u16 y);
void RemoveMoneyLabelObject(void);
# 33 "src/battle_script_commands.c" 2
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
# 34 "src/battle_script_commands.c" 2
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
# 35 "src/battle_script_commands.c" 2
# 1 "include/pokemon_icon.h" 1



extern const u8 gMonIconPaletteIndices[];

const u8 *GetMonIconTiles(u16 species, bool32);
void sub_80D304C(u16 offset);
u8 GetValidMonIconPalIndex(u16 species);
const u8 *GetMonIconPtr(u16 speciesId, u32 personality, u32 frameNo);
const u16 *GetValidMonIconPalettePtr(u16 speciesId);
u16 GetIconSpecies(u16 species, u32 personality);
u16 GetUnownLetterByPersonality(u32 personality);
u16 sub_80D2E84(u16 speciesId);
void LoadMonIconPalettes(void);
void LoadMonIconPalette(u16 species);
void FreeMonIconPalettes(void);
u8 sub_80D2D78(u16 species, void (*callback)(struct Sprite *), s16 x, s16 y, u8 subpriority, bool32 extra);
void FreeMonIconPalette(u16 species);
void FreeAndDestroyMonIconSprite(struct Sprite *sprite);
u8 CreateMonIcon(u16 species, void (*callback)(struct Sprite *), s16 x, s16 y, u8 subpriority, u32 personality, bool32 extra);
u8 UpdateMonIconFrame(struct Sprite *sprite);
void LoadMonIconPalette(u16 species);
void sub_80D328C(struct Sprite *sprite);
void SpriteCB_MonIcon(struct Sprite *sprite);
void SetPartyHPBarSprite(struct Sprite *sprite, u8 animNum);
u8 GetMonIconPaletteIndexFromSpecies(u16 species);
# 36 "src/battle_script_commands.c" 2
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
# 37 "src/battle_script_commands.c" 2
# 1 "include/mail.h" 1
# 18 "include/mail.h"
void ReadMail(struct MailStruct *mail, void (*callback)(void), bool8 flag);


void ClearMailData(void);
void ClearMailStruct(struct MailStruct *mail);
bool8 MonHasMail(struct Pokemon *mon);
u8 GiveMailToMon(struct Pokemon *mon, u16 itemId);
u16 SpeciesToMailSpecies(u16 species, u32 personality);
u16 MailSpeciesToSpecies(u16 mailSpecies, u16 *buffer);
u8 GiveMailToMon2(struct Pokemon *mon, struct MailStruct *mail);
void TakeMailFromMon(struct Pokemon *mon);
void ClearMailItemId(u8 mailId);
u8 TakeMailFromMon2(struct Pokemon *mon);
bool8 ItemIsMail(u16 itemId);
# 38 "src/battle_script_commands.c" 2
# 1 "include/event_data.h" 1



# 1 "include/constants/flags.h" 1
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
# 39 "src/battle_script_commands.c" 2
# 1 "include/pokemon_storage_system.h" 1
# 18 "include/pokemon_storage_system.h"
struct PokemonStorage
{
               u8 currentBox;
               struct BoxPokemon boxes[14][(6 * 5)];
               u8 boxNames[14][9];
               u8 boxWallpapers[14];
};

extern struct PokemonStorage *gPokemonStoragePtr;

void DrawTextWindowAndBufferTiles(const u8 *string, void *dst, u8 arg2, u8 arg3, s32 bytesToBuffer);
u8 CountMonsInBox(u8 boxId);
s16 GetFirstFreeBoxSpot(u8 boxId);
u8 CountPartyAliveNonEggMonsExcept(u8 slotToIgnore);
u16 CountPartyAliveNonEggMons_IgnoreVar0x8004Slot(void);
u8 CountPartyMons(void);
u8 *StringCopyAndFillWithSpaces(u8 *dst, const u8 *src, u16 n);
void ShowPokemonStorageSystemPC(void);
void ResetPokemonStorageSystem(void);
s16 CompactPartySlots(void);
u8 StorageGetCurrentBox(void);
u32 GetBoxMonDataAt(u8 boxId, u8 boxPosition, s32 request);
void SetBoxMonDataAt(u8 boxId, u8 boxPosition, s32 request, const void *value);
u32 GetCurrentBoxMonData(u8 boxPosition, s32 request);
void SetCurrentBoxMonData(u8 boxPosition, s32 request, const void *value);
void GetBoxMonNickAt(u8 boxId, u8 boxPosition, u8 *dst);
u32 GetBoxMonLevelAt(u8 boxId, u8 boxPosition);
void SetBoxMonNickAt(u8 boxId, u8 boxPosition, const u8 *nick);
u32 GetAndCopyBoxMonDataAt(u8 boxId, u8 boxPosition, s32 request, void *dst);
void SetBoxMonAt(u8 boxId, u8 boxPosition, struct BoxPokemon *src);
void CopyBoxMonAt(u8 boxId, u8 boxPosition, struct BoxPokemon *dst);
void CreateBoxMonAt(u8 boxId, u8 boxPosition, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 personality, u8 otIDType, u32 otID);
void ZeroBoxMonAt(u8 boxId, u8 boxPosition);
void BoxMonAtToMon(u8 boxId, u8 boxPosition, struct Pokemon *dst);
struct BoxPokemon *GetBoxedMonPtr(u8 boxId, u8 boxPosition);
u8 *GetBoxNamePtr(u8 boxId);
u8 GetBoxWallpaper(u8 boxId);
void SetBoxWallpaper(u8 boxId, u8 wallpaperId);
s16 sub_80D214C(struct BoxPokemon *boxMons, u8 currIndex, u8 maxIndex, u8 arg3);
bool8 CheckFreePokemonStorageSpace(void);
bool32 CheckBoxMonSanityAt(u32 boxId, u32 boxPosition);
u32 CountStorageNonEggMons(void);
u32 CountAllStorageMons(void);
bool32 AnyStorageMonWithMove(u16 moveId);
void ResetWaldaWallpaper(void);
void SetWaldaWallpaperLockedOrUnlocked(bool32 unlocked);
bool32 IsWaldaWallpaperUnlocked(void);
u32 GetWaldaWallpaperPatternId(void);
void SetWaldaWallpaperPatternId(u8 id);
u32 GetWaldaWallpaperIconId(void);
void SetWaldaWallpaperIconId(u8 id);
u16 *GetWaldaWallpaperColorsPtr(void);
void SetWaldaWallpaperColors(u16 color1, u16 color2);
u8 *GetWaldaPhrasePtr(void);
void SetWaldaPhrase(const u8 *src);
bool32 IsWaldaPhraseEmpty(void);
# 40 "src/battle_script_commands.c" 2
# 1 "include/task.h" 1
# 41 "src/battle_script_commands.c" 2
# 1 "include/naming_screen.h" 1



# 1 "include/main.h" 1
# 5 "include/naming_screen.h" 2
# 14 "include/naming_screen.h"
enum
{
    KBPAGE_LETTERS_LOWER,
    KBPAGE_LETTERS_UPPER,
    KBPAGE_SYMBOLS,
    KBPAGE_COUNT,
};

enum
{
    NAMING_SCREEN_PLAYER,
    NAMING_SCREEN_BOX,
    NAMING_SCREEN_CAUGHT_MON,
    NAMING_SCREEN_3,
    NAMING_SCREEN_WALDA,
};

struct NamingScreenTemplate
{
    u8 copyExistingString;
    u8 maxChars;
    u8 iconFunction;
    u8 addGenderIcon;
    u8 initialPage;
    u8 unused;
    const u8 *title;
};

struct NamingScreenData {
            u8 tilemapBuffer1[0x800];
            u8 tilemapBuffer2[0x800];
            u8 tilemapBuffer3[0x800];
            u8 textBuffer[0x10];
            u8 tileBuffer[0x600];
            u8 state;
            u8 windows[5];
            u16 inputCharBaseXPos;
            u16 bg1vOffset;
            u16 bg2vOffset;
            u16 bg1Priority;
            u16 bg2Priority;
            u8 bgToReveal;
            u8 bgToHide;
            u8 currentPage;
            u8 cursorSpriteId;
            u8 selectBtnFrameSpriteId;
            u8 keyRepeatStartDelayCopy;
            const struct NamingScreenTemplate *template;
            u8 templateNum;
            u8 *destBuffer;
            u16 monSpecies;
            u16 monGender;
            u32 monPersonality;
            MainCallback returnCallback;
};


enum
{
    MAIN_STATE_BEGIN_FADE_IN,
    MAIN_STATE_WAIT_FADE_IN,
    MAIN_STATE_HANDLE_INPUT,
    MAIN_STATE_MOVE_TO_OK_BUTTON,
    MAIN_STATE_START_PAGE_SWAP,
    MAIN_STATE_WAIT_PAGE_SWAP,
    MAIN_STATE_6,
    MAIN_STATE_UPDATE_SENT_TO_PC_MESSAGE,
    MAIN_STATE_BEGIN_FADE_OUT,
};

enum
{
    INPUT_STATE_DISABLED,
    INPUT_STATE_ENABLED,
    INPUT_STATE_2,
};

void DoNamingScreen(u8 templateNum, u8 *destBuffer, u16 monSpecies, u16 monGender, u32 monPersonality, MainCallback returnCallback);
# 42 "src/battle_script_commands.c" 2
# 1 "include/constants/battle_string_ids.h" 1
# 43 "src/battle_script_commands.c" 2
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
# 44 "src/battle_script_commands.c" 2
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
# 45 "src/battle_script_commands.c" 2
# 1 "include/party_menu.h" 1
# 9 "include/party_menu.h"
struct PartyMenu
{
    MainCallback exitCallback;
    TaskFunc task;
    u8 menuType:4;
    u8 layout:2;
    s8 slotId;
    s8 slotId2;
    u8 action;
    u16 bagItem;
    s16 data1;
    s16 learnMoveState;
};

extern struct PartyMenu gPartyMenu;
extern bool8 gPartyMenuUseExitCallback;
extern u8 gSelectedMonPartyId;
extern MainCallback gPostMenuFieldCallback;
extern u8 gSelectedOrderFromParty[4];
extern u8 gBattlePartyCurrentOrder[6 / 2];

extern void (*gItemUseCB)(u8, TaskFunc);

extern const u16 gTutorMoves[];

void AnimatePartySlot(u8 slot, u8 animNum);
bool8 IsMultiBattle(void);
u8 GetCursorSelectionMonId(void);
u8 GetPartyMenuType(void);
void Task_HandleChooseMonInput(u8 taskId);
u8* GetMonNickname(struct Pokemon *mon, u8 *dest);
u8 DisplayPartyMenuMessage(const u8* str, bool8 keepOpen);
bool8 IsPartyMenuTextPrinterActive(void);
void PartyMenuModifyHP(u8 taskId, u8 slot, s8 hpIncrement, s16 HPDifference, TaskFunc task);
u8 GetAilmentFromStatus(u32 status);
u8 GetMonAilment(struct Pokemon *mon);
void DisplayPartyMenuStdMessage(u32 stringId);
bool8 FieldCallback_PrepareFadeInFromMenu(void);
void CB2_ReturnToPartyMenuFromFlyMap(void);
void LoadHeldItemIcons(void);
void DrawHeldItemIconsForTrade(u8 *partyCounts, u8 *partySpriteIds, u8 whichParty);
void CB2_ShowPartyMenuForItemUse(void);
void ItemUseCB_Medicine(u8 taskId, TaskFunc task);
void ItemUseCB_ReduceEV(u8 taskId, TaskFunc task);
void ItemUseCB_PPRecovery(u8 taskId, TaskFunc task);
void ItemUseCB_PPUp(u8 taskId, TaskFunc task);
u16 ItemIdToBattleMoveId(u16 item);
bool8 IsMoveHm(u16 move);
bool8 MonKnowsMove(struct Pokemon *mon, u16 move);
void ItemUseCB_TMHM(u8 taskId, TaskFunc task);
void ItemUseCB_RareCandy(u8 taskId, TaskFunc task);
void ItemUseCB_SacredAsh(u8 taskId, TaskFunc task);
void ItemUseCB_EvolutionStone(u8 taskId, TaskFunc task);
u8 GetItemEffectType(u16 item);
void CB2_PartyMenuFromStartMenu(void);
void CB2_ChooseMonToGiveItem(void);
void ChooseMonToGiveMailFromMailbox(void);
void InitChooseHalfPartyForBattle(u8 unused);
void ClearSelectedPartyOrder(void);
void ChooseMonForTradingBoard(u8 menuType, MainCallback callback);
void ChooseMonForMoveTutor(void);
void ChooseMonForWirelessMinigame(void);
void OpenPartyMenuInBattle(u8 partyAction);
void ChooseMonForInBattleItem(void);
void BufferBattlePartyCurrentOrder(void);
void BufferBattlePartyCurrentOrderBySide(u8 battlerId, u8 flankId);
void SwitchPartyOrderLinkMulti(u8 battlerId, u8 slot, u8 arrayIndex);
void SwitchPartyMonSlots(u8 slot, u8 slot2);
u8 GetPartyIdFromBattlePartyId(u8 slot);
void ShowPartyMenuToShowcaseMultiBattleParty(void);
void ChooseMonForDaycare(void);
bool8 CB2_FadeFromPartyMenu(void);
void ChooseContestMon(void);
void ChoosePartyMon(void);
void ChooseMonForMoveRelearner(void);
void BattlePyramidChooseMonHeldItems(void);
void DoBattlePyramidMonsHaveHeldItem(void);
void IsSelectedMonEgg(void);
void IsLastMonThatKnowsSurf(void);
void MoveDeleterForgetMove(void);
void BufferMoveDeleterNicknameAndMove(void);
void GetNumMovesSelectedMonHas(void);
void MoveDeleterChooseMoveToForget(void);
# 46 "src/battle_script_commands.c" 2
# 1 "include/battle_arena.h" 1



void CallBattleArenaFunction(void);
u8 BattleArena_ShowJudgmentWindow(u8 *state);
void BattleArena_InitPoints(void);
void BattleArena_AddMindPoints(u8 battler);
void BattleArena_AddSkillPoints(u8 battler);
void BattleArena_DeductMindPoints(u8 battler, u16 stringId);
void sub_81A586C(u8 battler);
void DrawArenaRefereeTextBox(void);
void RemoveArenaRefereeTextBox(void);
# 47 "src/battle_script_commands.c" 2
# 1 "include/battle_pike.h" 1



void CallBattlePikeFunction(void);
u8 GetBattlePikeWildMonHeaderId(void);
bool32 TryGenerateBattlePikeWildMon(bool8 checkKeenEyeIntimidate);
bool8 InBattlePike(void);
# 48 "src/battle_script_commands.c" 2
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
# 49 "src/battle_script_commands.c" 2
# 1 "include/field_specials.h" 1



extern bool8 gBikeCyclingChallenge;
extern u8 gBikeCollisions;

u8 GetLeadMonIndex(void);
u8 IsDestinationBoxFull(void);
u16 GetPCBoxToSendMon(void);
bool8 InMultiPartnerRoom(void);
void UpdateTrainerFansAfterLinkBattle(void);
void IncrementBirthIslandRockStepCount(void);
bool8 AbnormalWeatherHasExpired(void);
bool8 ShouldDoBrailleRegicePuzzle(void);
bool32 ShouldDoWallyCall(void);
bool32 ShouldDoScottFortreeCall(void);
bool32 ShouldDoScottBattleFrontierCall(void);
bool32 ShouldDoRoxanneCall(void);
bool32 ShouldDoRivalRayquazaCall(void);
bool32 CountSSTidalStep(u16 delta);
u8 GetSSTidalLocation(s8 *mapGroup, s8 *mapNum, s16 *x, s16 *y);
void ShowScrollableMultichoice(void);
void FrontierGamblerSetWonOrLost(bool8 won);
u8 TryGainNewFanFromCounter(u8 incrementId);
bool8 InPokemonCenter(void);
void SetShoalItemFlag(u16 unused);
void UpdateFrontierManiac(u16 daysSince);
void UpdateFrontierGambler(u16 daysSince);
void ResetCyclingRoadChallengeData(void);
bool8 UsedPokemonCenterWarp(void);
void ResetFanClub(void);
bool8 ShouldShowBoxWasFullMessage(void);
void SetPCBoxToSendMon(u8 boxId);
# 50 "src/battle_script_commands.c" 2
# 1 "include/pokemon_summary_screen.h" 1





extern u8 gLastViewedMonIndex;

extern const u8 *const gMoveDescriptionPointers[];
extern const u8 *const gNatureNamePointers[];

void ShowPokemonSummaryScreen(u8 mode, void *mons, u8 monIndex, u8 maxMonIndex, void (*callback)(void));
void ShowSelectMovePokemonSummaryScreen(struct Pokemon *mons, u8 monIndex, u8 maxMonIndex, void (*callback)(void), u16 newMove);
void ShowPokemonSummaryScreenSet40EF(u8 mode, struct BoxPokemon *mons, u8 monIndex, u8 maxMonIndex, void (*callback)(void));
u8 GetMoveSlotToReplace(void);
void SummaryScreen_SetUnknownTaskId(u8 taskId);
void SummaryScreen_DestroyUnknownTask(void);



enum PokemonSummaryScreenMode
{
    PSS_MODE_NORMAL,
    PSS_MODE_LOCK_MOVES,
    PSS_MODE_BOX,
    PSS_MODE_SELECT_MOVE,
};

enum PokemonSummaryScreenPage
{
    PSS_PAGE_INFO,
    PSS_PAGE_SKILLS,
    PSS_PAGE_BATTLE_MOVES,
    PSS_PAGE_CONTEST_MOVES,
    PSS_PAGE_COUNT,
};
# 51 "src/battle_script_commands.c" 2
# 1 "include/pokenav.h" 1





# 1 "include/pokemon_storage_system.h" 1
# 7 "include/pokenav.h" 2

typedef u32 (*LoopedTask)(s32 state);

struct PokenavMonList
{
    u8 boxId;
    u8 monId;
    u16 data;
};

struct PokenavMatchCallEntries
{
    bool8 isSpecialTrainer;
    u8 mapSec;
    u16 headerId;
};

struct PokenavListTemplate
{
    union {
        struct PokenavMonList *monList;
        struct PokenavMatchCallEntries *matchCallEntries;
    } list;
    u16 unk4;
    u16 unk6;
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    union {
        void (*unk10_1)(struct PokenavMonList *, u8 *a1);
        void (*unk10_2)(struct PokenavMatchCallEntries *, u8 *a1);
    } listFunc;
    void (*unk14)(u16 a0, u32 a1, u32 a2);
};

struct PokenavSub18
{
    u16 unk0;
    u16 unk2;
    struct PokenavMonList unk4[14 * (6 * 5) + 6];
};
# 61 "include/pokenav.h"
enum
{
    POKENAV_MODE_NORMAL,
    POKENAV_MODE_FORCE_CALL_READY,
    POKENAV_MODE_FORCE_CALL_EXIT,
};

enum
{
    POKENAV_GFX_MAIN_MENU,
    POKENAV_GFX_CONDITION_MENU,
    POKENAV_GFX_RIBBONS_MENU,
    POKENAV_GFX_MATCH_CALL_MENU,
    POKENAV_GFX_MAP_MENU_ZOOMED_OUT,
    POKENAV_GFX_MAP_MENU_ZOOMED_IN,
    POKENAV_GFX_PARTY_MENU,
    POKENAV_GFX_SEARCH_MENU,
    POKENAV_GFX_COOL_MENU,
    POKENAV_GFX_BEAUTY_MENU,
    POKENAV_GFX_CUTE_MENU,
    POKENAV_GFX_SMART_MENU,
    POKENAV_GFX_TOUGH_MENU,
    POKENAV_GFX_MENUS_END,
};




enum
{
 POKENAV_MAIN_MENU = 100000,
 POKENAV_MAIN_MENU_CURSOR_ON_MAP,
 POKENAV_CONDITION_MENU,
 POKENAV_CONDITION_SEARCH_MENU,
 POKENAV_MAIN_MENU_CURSOR_ON_MATCH_CALL,
 POKENAV_MAIN_MENU_CURSOR_ON_RIBBONS,
 POKENAV_REGION_MAP,
 POKENAV_CONDITION_PARTY,
 POKENAV_CONDITION_SEARCH_RESULTS,
 POKENAV_MENU_9,
 POKENAV_MENU_A,
 POKENAV_MATCH_CALL,
 POKENAV_RIBBONS_MON_LIST,
 POKENAV_MENU_D,
 POKENAV_MENU_E,
};

enum
{
    POKENAV_MENU_TYPE_DEFAULT,
    POKENAV_MENU_TYPE_UNLOCK_MC,
    POKENAV_MENU_TYPE_UNLOCK_MC_RIBBONS,
    POKENAV_MENU_TYPE_CONDITION,
    POKENAV_MENU_TYPE_CONDITION_SEARCH,
    POKENAV_MENU_TYPE_COUNT
};



enum
{
    POKENAV_MENUITEM_MAP,
    POKENAV_MENUITEM_CONDITION,
    POKENAV_MENUITEM_MATCH_CALL,
    POKENAV_MENUITEM_RIBBONS,
    POKENAV_MENUITEM_SWITCH_OFF,
    POKENAV_MENUITEM_CONDITION_PARTY,
    POKENAV_MENUITEM_CONDITION_SEARCH,
    POKENAV_MENUITEM_CONDITION_CANCEL,
    POKENAV_MENUITEM_CONDITION_SEARCH_COOL,
    POKENAV_MENUITEM_CONDITION_SEARCH_BEAUTY,
    POKENAV_MENUITEM_CONDITION_SEARCH_CUTE,
    POKENAV_MENUITEM_CONDITION_SEARCH_SMART,
    POKENAV_MENUITEM_CONDITION_SEARCH_TOUGH,
    POKENAV_MENUITEM_CONDITION_SEARCH_CANCEL,
};




enum
{
    HELPBAR_NONE,
    HELPBAR_MAP_ZOOMED_OUT,
    HELPBAR_MAP_ZOOMED_IN,
    HELPBAR_CONDITION_MON_LIST,
    HELPBAR_CONDITION_MON_STATUS,
    HELPBAR_CONDITION_MARKINGS,
    HELPBAR_MC_TRAINER_LIST,
    HELPBAR_MC_CALL_MENU,
    HELPBAR_MC_CHECK_PAGE,
    HELPBAR_RIBBONS_MON_LIST,
    HELPBAR_RIBBONS_LIST,
    HELPBAR_RIBBONS_CHECK,
    HELPBAR_COUNT
};

enum
{
 MC_HEADER_MR_STONE,
 MC_HEADER_PROF_BIRCH,
 MC_HEADER_BRENDAN,
 MC_HEADER_MAY,
 MC_HEADER_WALLY,
 MC_HEADER_NORMAN,
 MC_HEADER_MOM,
 MC_HEADER_STEVEN,
 MC_HEADER_SCOTT,
 MC_HEADER_ROXANNE,
 MC_HEADER_BRAWLY,
 MC_HEADER_WATTSON,
 MC_HEADER_FLANNERY,
 MC_HEADER_WINONA,
 MC_HEADER_TATE_LIZA,
 MC_HEADER_JUAN,
 MC_HEADER_SIDNEY,
 MC_HEADER_PHOEBE,
 MC_HEADER_GLACIA,
 MC_HEADER_DRAKE,
 MC_HEADER_WALLACE,
 MC_HEADER_COUNT
};

enum
{
    MATCH_CALL_OPTION_CALL,
    MATCH_CALL_OPTION_CHECK,
    MATCH_CALL_OPTION_CANCEL,
    MATCH_CALL_OPTION_COUNT
};

enum
{
    CHECK_PAGE_STRATEGY,
    CHECK_PAGE_POKEMON,
    CHECK_PAGE_INTRO_1,
    CHECK_PAGE_INTRO_2,
    CHECK_PAGE_ENTRY_COUNT
};
# 210 "include/pokenav.h"
enum
{
    POKENAV_MENU_FUNC_NONE,
    POKENAV_MENU_FUNC_MOVE_CURSOR,
    POKENAV_MENU_FUNC_OPEN_CONDITION,
    POKENAV_MENU_FUNC_RETURN_TO_MAIN,
    POKENAV_MENU_FUNC_OPEN_CONDITION_SEARCH,
    POKENAV_MENU_FUNC_RETURN_TO_CONDITION,
    POKENAV_MENU_FUNC_NO_RIBBON_WINNERS,
    POKENAV_MENU_FUNC_RESHOW_DESCRIPTION,
    POKENAV_MENU_FUNC_OPEN_FEATURE,
};

enum
{
    POKENAV_MC_FUNC_NONE,
    POKENAV_MC_FUNC_DOWN,
    POKENAV_MC_FUNC_UP,
    POKENAV_MC_FUNC_PG_DOWN,
    POKENAV_MC_FUNC_PG_UP,
    POKENAV_MC_FUNC_SELECT,
    POKENAV_MC_FUNC_MOVE_OPTIONS_CURSOR,
    POKENAV_MC_FUNC_CANCEL,
    POKENAV_MC_FUNC_CALL_MSG,
    POKENAV_MC_FUNC_NEARBY_MSG,
    POKENAV_MC_FUNC_10,
    POKENAV_MC_FUNC_SHOW_CHECK_PAGE,
    POKENAV_MC_FUNC_CHECK_PAGE_UP,
    POKENAV_MC_FUNC_CHECK_PAGE_DOWN,
    POKENAV_MC_FUNC_EXIT_CHECK_PAGE,
    POKENAV_MC_FUNC_EXIT
};

enum
{
    POKENAV_MAP_FUNC_NONE,
    POKENAV_MAP_FUNC_CURSOR_MOVED,
    POKENAV_MAP_FUNC_ZOOM_OUT,
    POKENAV_MAP_FUNC_ZOOM_IN,
    POKENAV_MAP_FUNC_EXIT,
};


void SetSelectedConditionSearch(u32);
u32 GetSelectedConditionSearch(void);

void CB2_InitPokeNav(void);
u32 CreateLoopedTask(LoopedTask loopedTask, u32 priority);
bool32 FuncIsActiveLoopedTask(LoopedTask func);
void *GetSubstructPtr(u32 index);
void FreePokenavSubstruct(u32 index);
void *AllocSubstruct(u32 index, u32 size);
void Pokenav_AllocAndLoadPalettes(const struct SpritePalette *palettes);
bool32 IsLoopedTaskActive(u32 taskId);
void SetPokenavMode(u16 mode);
u32 GetPokenavMode(void);
bool32 CanViewRibbonsMenu(void);
void SetPokenavVBlankCallback(void);
void SetVBlankCallback_(IntrCallback callback);


u32 GetSelectedMatchCall(void);
bool32 sub_81C8224(void);
int MatchCall_MoveCursorUp(void);
int MatchCall_MoveCursorDown(void);
int MatchCall_PageDown(void);
int MatchCall_PageUp(void);
bool32 sub_81C8630(void);
void ToggleMatchCallVerticalArrows(bool32 shouldHide);
void sub_81C8838(void);
void sub_81C877C(void);
bool32 sub_81C8820(void);
void PrintCheckPageInfo(s16 a0);
u32 GetMatchCallListTopIndex(void);
void sub_81C87F0(void);
bool32 sub_81C81D4(const struct BgTemplate *arg0, struct PokenavListTemplate *arg1, s32 arg2);
void sub_81C8234(void);


bool32 MatchCall_HasCheckPage(u32 idx);
u8 MatchCall_GetMapSec(u32 idx);
bool32 MatchCall_HasRematchId(u32 idx);
bool32 MatchCall_GetEnabled(u32 idx);
u32 MatchCall_GetRematchTableIdx(u32 idx);
u32 GetTrainerIdxByRematchIdx(u32 rematchIdx);
int MatchCall_GetOverrideFacilityClass(u32 idx);
void MatchCall_GetMessage(u32 idx, u8 *dest);
const u8 *MatchCall_GetOverrideFlavorText(u32 idx, u32 offset);
void MatchCall_GetNameAndDesc(u32 idx, const u8 **desc, const u8 **name);


bool32 InitPokenavMainMenu(void);
void CopyPaletteIntoBufferUnfaded(const u16 *palette, u32 bufferOffset, u32 size);
void sub_81C7850(u32 a0);
u32 sub_81C786C(void);
void LoadLeftHeaderGfxForIndex(u32 arg0);
void sub_81C7FA0(u32 arg0, bool32 arg1, bool32 arg2);
void PokenavFadeScreen(s32 fadeType);
bool32 sub_81C8010(void);
void InitBgTemplates(const struct BgTemplate *templates, int count);
bool32 IsPaletteFadeActive(void);
void PrintHelpBarText(u32 textId);
bool32 WaitForHelpBar(void);
void sub_81C78A0(void);
bool32 MainMenuLoopedTaskIsBusy(void);
void sub_81C7FDC(void);
void sub_81C79BC(const u16 *a0, const u16 *a1, u32 a2, u32 a3, u32 a4, u16 *a5);
void sub_81C7B40(void);
struct Sprite *PauseSpinningPokenavSprite(void);
void ResumeSpinningPokenavSprite(void);
void sub_81C7E14(u32 arg0);
void sub_81C7FC4(u32 arg0, bool32 arg1);
void sub_81C7880(void);
void sub_81C7990(u32 a0, u16 a1);
u32 PokenavMainMenuLoopedTaskIsActive(void);
bool32 WaitForPokenavShutdownFade(void);
void sub_81C7834(void *func1, void *func2);
void ShutdownPokenav(void);


bool32 PokenavCallback_Init_MainMenuCursorOnMap(void);
bool32 PokenavCallback_Init_MainMenuCursorOnMatchCall(void);
bool32 PokenavCallback_Init_MainMenuCursorOnRibbons(void);
bool32 PokenavCallback_Init_ConditionMenu(void);
bool32 PokenavCallback_Init_ConditionSearchMenu(void);
u32 GetMenuHandlerCallback(void);
void FreeMenuHandlerSubstruct1(void);
int GetPokenavMenuType(void);
int GetPokenavCursorPos(void);
int GetCurrentMenuItemId(void);
u16 GetHelpBarTextId(void);


bool32 OpenPokenavMenuInitial(void);
bool32 OpenPokenavMenuNotInitial(void);
void CreateMenuHandlerLoopedTask(s32 ltIdx);
bool32 IsMenuHandlerLoopedTaskActive(void);
void FreeMenuHandlerSubstruct2(void);
void sub_81CAADC(void);


bool32 PokenavCallback_Init_MatchCall(void);
u32 GetMatchCallCallback(void);
void FreeMatchCallSubstruct1(void);
int sub_81CAE28(void);
int GetNumberRegistered(void);
int sub_81CAE48(void);
struct PokenavMatchCallEntries *sub_81CAE94(void);
u16 GetMatchCallMapSec(int);
bool32 ShouldDrawRematchPokeballIcon(int index);
void ClearRematchPokeballIcon(u16 windowId, u32 a1);
int GetMatchCallTrainerPic(int index);
const u8 *GetMatchCallFlavorText(int index, int textType);
const u8 *GetMatchCallMessageText(int index, u8 *arg1);
u16 GetMatchCallOptionCursorPos(void);
u16 GetMatchCallOptionId(int arg0);
void BufferMatchCallNameAndDesc(struct PokenavMatchCallEntries * arg0, u8 *str);
u8 sub_81CB0C8(int rematchIndex);
int GetIndexDeltaOfNextCheckPageDown(int index);
int GetIndexDeltaOfNextCheckPageUp(int index);
bool32 IsRematchEntryRegistered(int index);


bool32 OpenMatchCall(void);
void CreateMatchCallLoopedTask(s32 index);
bool32 IsMatchCallLoopedTaskActive(void);
void FreeMatchCallSubstruct2(void);


u32 PokenavCallback_Init_RegionMap(void);
u32 GetRegionMapCallback(void);
bool32 OpenPokenavRegionMap(void);
void CreateRegionMapLoopedTask(s32);
bool32 IsRegionMapLoopedTaskActive(void);
void FreeRegionMapSubstruct1(void);
void FreeRegionMapSubstruct2(void);


u32 PokenavCallback_Init_7(void);
u32 PokenavCallback_Init_9(void);
u32 sub_81CD070(void);
void sub_81CD1C0(void);
bool32 sub_81CD3C4(void);
bool32 sub_81CDD5C(void);
struct UnknownStruct_81D1ED4 *sub_81CDC70(void);
u16 sub_81CDC60(void);
u16 sub_81CDC50(void);
u8 sub_81CDDB0(void);
bool32 sub_81CD548(u8 arg0);
u8 sub_81CDD7C(void);
u8 *sub_81CDD04(u8 id);
u8 *sub_81CDD24(u8 id);
u16 sub_81CDD48(void);
void *sub_81CDCB4(u8 id);
void *sub_81CDCD4(u8 id);


bool32 sub_81CDDD4(void);
void sub_81CDE2C(s32);
u32 sub_81CDE64(void);
void sub_81CECA0(void);
u8 sub_81CEF14(void);


u32 PokenavCallback_Init_8(void);
u32 PokenavCallback_Init_10(void);
u32 sub_81CEFDC(void);
void sub_81CEFF0(void);
bool32 sub_81CF330(void);
bool32 sub_81CF368(void);
void sub_81CF3A0(s32);
u32 sub_81CF3D0(void);
void sub_81CF3F8(void);


u32 PokenavCallback_Init_12(void);
u32 PokenavCallback_Init_14(void);
u32 sub_81CFA34(void);
void sub_81CFA48(void);
bool32 sub_81CFDD0(void);
bool32 sub_81CFE08(void);
void sub_81CFE40(s32);
u32 sub_81CFE70(void);
void sub_81CFE98(void);


u32 PokenavCallback_Init_13(void);
u32 sub_81D04A0(void);
void sub_81D04B8(void);
bool32 sub_81D0978(void);
void sub_81D09B0(s32);
u32 sub_81D09E0(void);
void sub_81D09F4(void);
# 52 "src/battle_script_commands.c" 2
# 1 "include/menu_specialized.h" 1




# 1 "include/player_pc.h" 1



# 1 "include/menu.h" 1
# 11 "include/menu.h"
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
# 5 "include/player_pc.h" 2
# 22 "include/player_pc.h"
enum
{
    PC_ITEM_ID,
    PC_QUANTITY
};


enum
{
    PLAYERPC_MENU_ITEMSTORAGE,
    PLAYERPC_MENU_MAILBOX,
    PLAYERPC_MENU_DECORATION,
    PLAYERPC_MENU_TURNOFF
};


enum
{
    ITEMPC_MENU_WITHDRAW,
    ITEMPC_MENU_DEPOSIT,
    ITEMPC_MENU_TOSS,
    ITEMPC_MENU_EXIT
};


enum
{
    MAILBOX_READ,
    MAILBOX_MOVE_TO_BAG,
    MAILBOX_GIVE,
    MAILBOX_CANCEL,
};


enum
{
    ITEMPC_SWITCH_WHICH_ITEM = 0xFFF7,
    ITEMPC_OKAY_TO_THROW_AWAY,
    ITEMPC_TOO_IMPORTANT,
    ITEMPC_NO_MORE_ROOM,
    ITEMPC_THREW_AWAY_ITEM,
    ITEMPC_HOW_MANY_TO_TOSS,
    ITEMPC_WITHDREW_THING,
    ITEMPC_HOW_MANY_TO_WITHDRAW,
    ITEMPC_GO_BACK_TO_PREV
};

struct PlayerPCItemPageStruct
{
    u16 cursorPos;
    u16 itemsAbove;
    u8 pageItems;
    u8 count;
    u8 filler[3];
    u8 scrollIndicatorId;
};




extern struct PlayerPCItemPageStruct playerPCItemPageInfo;


extern const struct MenuAction gMailboxMailOptions[];

void ReshowPlayerPC(u8 taskId);
void sub_816B31C(void);
void Mailbox_ReturnToMailListAfterDeposit(void);
void NewGameInitPCItems(void);
# 6 "include/menu_specialized.h" 2
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
# 7 "include/menu_specialized.h" 2


struct UnknownSubStruct_81D1ED4
{
    u16 unk0;
    u16 unk2;
};

struct UnknownStruct_81D1ED4
{
              u8 unk0[4][5];
              struct UnknownSubStruct_81D1ED4 unk14[4][5];
              struct UnknownSubStruct_81D1ED4 unk64[10][5];
              struct UnknownSubStruct_81D1ED4 unk12C[5];
              u16 unk140[66][2];
              u16 unk248[66][2];
              u16 unk350;
              u16 unk352;
              u8 unk354;
              u8 unk355;
};

bool8 sub_81D1C44(u8 count);
u8 sub_81D1C84(u8 a0);
u8 sub_81D1DC0(struct PlayerPCItemPageStruct *page);
void sub_81D1E90(struct PlayerPCItemPageStruct *page);
void sub_81D1EC0(void);
void sub_81D1D04(u8 a0);
void sub_81D1ED4(struct UnknownStruct_81D1ED4 *a0);
void sub_81D2108(struct UnknownStruct_81D1ED4 *arg0);
void sub_81D21DC(u8 bg);
void sub_81D20AC(struct UnknownStruct_81D1ED4 *arg0);
void sub_81D2230(struct UnknownStruct_81D1ED4 *arg0);
bool8 sub_81D20BC(struct UnknownStruct_81D1ED4 *arg0);
bool32 sub_81D2074(struct UnknownStruct_81D1ED4 *a0);
void sub_81D2754(u8 *arg0, struct UnknownSubStruct_81D1ED4 *arg1);
void sub_81D1F84(struct UnknownStruct_81D1ED4 *arg0, struct UnknownSubStruct_81D1ED4 *arg1, struct UnknownSubStruct_81D1ED4 *arg2);
void MoveRelearnerPrintText(u8 *str);
bool16 MoveRelearnerRunTextPrinters(void);
void MoveRelearnerCreateYesNoMenu(void);
u8 LoadMoveRelearnerMovesList(const struct ListMenuItem *items, u16 numChoices);
void InitMoveRelearnerWindows(bool8 useContextWindow);
s32 GetBoxOrPartyMonData(u16 boxId, u16 monId, s32 request, u8 *dst);
void sub_81D2ED4(u8 *dst, u8 *nameDst, u16 boxId, u16 monId, u16 arg5, u16 arg6, bool8 arg7);
void sub_81D2F78(struct UnknownStruct_81D1ED4 *arg0, u8 *sheen, u16 boxId, u16 monId, u16 arg5, u16 id, u16 arg7, bool8 arg8);
void sub_81D3094(void *tilesDst, void *palDst, u16 boxId, u16 monId, u16 arg5, u16 arg6, bool8 arg7);
bool8 sub_81D312C(s16 *var);
bool8 sub_81D3150(s16 *var);
bool8 sub_81D3178(struct UnknownStruct_81D1ED4 *arg0, s16 *arg1);
bool8 sub_81D31A4(struct UnknownStruct_81D1ED4 *arg0, s16 *arg1);
void sub_81D31D0(struct SpriteSheet *sheet, struct SpriteTemplate *template, struct SpritePalette *pal);
void sub_81D321C(struct SpriteSheet *sheets, struct SpriteTemplate * template, struct SpritePalette *pals);
void sub_81D32B0(struct SpriteSheet *sheet, struct SpritePalette *pal);
void sub_81D3464(struct Sprite **sprites);
void sub_81D3480(struct Sprite **sprites, u8 arg1, u8 arg2);
void sub_81D3520(struct Sprite **sprites);
void sub_81D354C(struct Sprite **sprites);
void DrawLevelUpWindowPg1(u16 windowId, u16 *statsBefore, u16 *statsAfter, u8 bgClr, u8 fgClr, u8 shadowClr);
void DrawLevelUpWindowPg2(u16 windowId, u16 *currStats, u8 bgClr, u8 fgClr, u8 shadowClr);
void GetMonLevelUpWindowStats(struct Pokemon *mon, u16 *currStats);
# 53 "src/battle_script_commands.c" 2
# 1 "include/constants/rgb.h" 1
# 54 "src/battle_script_commands.c" 2
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
# 55 "src/battle_script_commands.c" 2
# 1 "include/constants/party_menu.h" 1
# 56 "src/battle_script_commands.c" 2

extern struct MusicPlayerInfo gMPlayInfo_BGM;

extern const u8* const gBattleScriptsForMoveEffects[];




static bool8 IsTwoTurnsMove(u16 move);
static void TrySetDestinyBondToHappen(void);
static u8 AttacksThisTurn(u8 battlerId, u16 move);
static void CheckWonderGuardAndLevitate(void);
static u8 ChangeStatBuffs(s8 statValue, u8 statId, u8, const u8* BS_ptr);
static bool32 IsMonGettingExpSentOut(void);
static void sub_804F17C(void);
static bool8 sub_804F1CC(void);
static void DrawLevelUpWindow1(void);
static void DrawLevelUpWindow2(void);
static bool8 sub_804F344(void);
static void PutMonIconOnLvlUpBox(void);
static void PutLevelAndGenderOnLvlUpBox(void);

static void SpriteCB_MonIconOnLvlUpBox(struct Sprite* sprite);

static void Cmd_attackcanceler(void);
static void Cmd_accuracycheck(void);
static void Cmd_attackstring(void);
static void Cmd_ppreduce(void);
static void Cmd_critcalc(void);
static void Cmd_damagecalc(void);
static void Cmd_typecalc(void);
static void Cmd_adjustnormaldamage(void);
static void Cmd_adjustnormaldamage2(void);
static void Cmd_attackanimation(void);
static void Cmd_waitanimation(void);
static void Cmd_healthbarupdate(void);
static void Cmd_datahpupdate(void);
static void Cmd_critmessage(void);
static void Cmd_effectivenesssound(void);
static void Cmd_resultmessage(void);
static void Cmd_printstring(void);
static void Cmd_printselectionstring(void);
static void Cmd_waitmessage(void);
static void Cmd_printfromtable(void);
static void Cmd_printselectionstringfromtable(void);
static void Cmd_seteffectwithchance(void);
static void Cmd_seteffectprimary(void);
static void Cmd_seteffectsecondary(void);
static void Cmd_clearstatusfromeffect(void);
static void Cmd_tryfaintmon(void);
static void Cmd_dofaintanimation(void);
static void Cmd_cleareffectsonfaint(void);
static void Cmd_jumpifstatus(void);
static void Cmd_jumpifstatus2(void);
static void Cmd_jumpifability(void);
static void Cmd_jumpifsideaffecting(void);
static void Cmd_jumpifstat(void);
static void Cmd_jumpifstatus3condition(void);
static void Cmd_jumpiftype(void);
static void Cmd_getexp(void);
static void Cmd_unknown_24(void);
static void Cmd_movevaluescleanup(void);
static void Cmd_setmultihit(void);
static void Cmd_decrementmultihit(void);
static void Cmd_goto(void);
static void Cmd_jumpifbyte(void);
static void Cmd_jumpifhalfword(void);
static void Cmd_jumpifword(void);
static void Cmd_jumpifarrayequal(void);
static void Cmd_jumpifarraynotequal(void);
static void Cmd_setbyte(void);
static void Cmd_addbyte(void);
static void Cmd_subbyte(void);
static void Cmd_copyarray(void);
static void Cmd_copyarraywithindex(void);
static void Cmd_orbyte(void);
static void Cmd_orhalfword(void);
static void Cmd_orword(void);
static void Cmd_bicbyte(void);
static void Cmd_bichalfword(void);
static void Cmd_bicword(void);
static void Cmd_pause(void);
static void Cmd_waitstate(void);
static void Cmd_healthbar_update(void);
static void Cmd_return(void);
static void Cmd_end(void);
static void Cmd_end2(void);
static void Cmd_end3(void);
static void Cmd_jumpifaffectedbyprotect(void);
static void Cmd_call(void);
static void Cmd_jumpiftype2(void);
static void Cmd_jumpifabilitypresent(void);
static void Cmd_endselectionscript(void);
static void Cmd_playanimation(void);
static void Cmd_playanimation2(void);
static void Cmd_setgraphicalstatchangevalues(void);
static void Cmd_playstatchangeanimation(void);
static void Cmd_moveend(void);
static void Cmd_typecalc2(void);
static void Cmd_returnatktoball(void);
static void Cmd_getswitchedmondata(void);
static void Cmd_switchindataupdate(void);
static void Cmd_switchinanim(void);
static void Cmd_jumpifcantswitch(void);
static void Cmd_openpartyscreen(void);
static void Cmd_switchhandleorder(void);
static void Cmd_switchineffects(void);
static void Cmd_trainerslidein(void);
static void Cmd_playse(void);
static void Cmd_fanfare(void);
static void Cmd_playfaintcry(void);
static void Cmd_unknown_57(void);
static void Cmd_returntoball(void);
static void Cmd_handlelearnnewmove(void);
static void Cmd_yesnoboxlearnmove(void);
static void Cmd_yesnoboxstoplearningmove(void);
static void Cmd_hitanimation(void);
static void Cmd_getmoneyreward(void);
static void Cmd_unknown_5E(void);
static void Cmd_swapattackerwithtarget(void);
static void Cmd_incrementgamestat(void);
static void Cmd_drawpartystatussummary(void);
static void Cmd_hidepartystatussummary(void);
static void Cmd_jumptocalledmove(void);
static void Cmd_statusanimation(void);
static void Cmd_status2animation(void);
static void Cmd_chosenstatusanimation(void);
static void Cmd_yesnobox(void);
static void Cmd_cancelallactions(void);
static void Cmd_adjustsetdamage(void);
static void Cmd_removeitem(void);
static void Cmd_atknameinbuff1(void);
static void Cmd_drawlvlupbox(void);
static void Cmd_resetsentmonsvalue(void);
static void Cmd_setatktoplayer0(void);
static void Cmd_makevisible(void);
static void Cmd_recordlastability(void);
static void Cmd_buffermovetolearn(void);
static void Cmd_jumpifplayerran(void);
static void Cmd_hpthresholds(void);
static void Cmd_hpthresholds2(void);
static void Cmd_useitemonopponent(void);
static void Cmd_various(void);
static void Cmd_setprotectlike(void);
static void Cmd_faintifabilitynotdamp(void);
static void Cmd_setatkhptozero(void);
static void Cmd_jumpifnexttargetvalid(void);
static void Cmd_tryhealhalfhealth(void);
static void Cmd_trymirrormove(void);
static void Cmd_setrain(void);
static void Cmd_setreflect(void);
static void Cmd_setseeded(void);
static void Cmd_manipulatedamage(void);
static void Cmd_trysetrest(void);
static void Cmd_jumpifnotfirstturn(void);
static void Cmd_nop(void);
static void Cmd_jumpifcantmakeasleep(void);
static void Cmd_stockpile(void);
static void Cmd_stockpiletobasedamage(void);
static void Cmd_stockpiletohpheal(void);
static void Cmd_negativedamage(void);
static void Cmd_statbuffchange(void);
static void Cmd_normalisebuffs(void);
static void Cmd_setbide(void);
static void Cmd_confuseifrepeatingattackends(void);
static void Cmd_setmultihitcounter(void);
static void Cmd_initmultihitstring(void);
static void Cmd_forcerandomswitch(void);
static void Cmd_tryconversiontypechange(void);
static void Cmd_givepaydaymoney(void);
static void Cmd_setlightscreen(void);
static void Cmd_tryKO(void);
static void Cmd_damagetohalftargethp(void);
static void Cmd_setsandstorm(void);
static void Cmd_weatherdamage(void);
static void Cmd_tryinfatuating(void);
static void Cmd_updatestatusicon(void);
static void Cmd_setmist(void);
static void Cmd_setfocusenergy(void);
static void Cmd_transformdataexecution(void);
static void Cmd_setsubstitute(void);
static void Cmd_mimicattackcopy(void);
static void Cmd_metronome(void);
static void Cmd_dmgtolevel(void);
static void Cmd_psywavedamageeffect(void);
static void Cmd_counterdamagecalculator(void);
static void Cmd_mirrorcoatdamagecalculator(void);
static void Cmd_disablelastusedattack(void);
static void Cmd_trysetencore(void);
static void Cmd_painsplitdmgcalc(void);
static void Cmd_settypetorandomresistance(void);
static void Cmd_setalwayshitflag(void);
static void Cmd_copymovepermanently(void);
static void Cmd_trychoosesleeptalkmove(void);
static void Cmd_setdestinybond(void);
static void Cmd_trysetdestinybondtohappen(void);
static void Cmd_remaininghptopower(void);
static void Cmd_tryspiteppreduce(void);
static void Cmd_healpartystatus(void);
static void Cmd_cursetarget(void);
static void Cmd_trysetspikes(void);
static void Cmd_setforesight(void);
static void Cmd_trysetperishsong(void);
static void Cmd_rolloutdamagecalculation(void);
static void Cmd_jumpifconfusedandstatmaxed(void);
static void Cmd_furycuttercalc(void);
static void Cmd_happinesstodamagecalculation(void);
static void Cmd_presentdamagecalculation(void);
static void Cmd_setsafeguard(void);
static void Cmd_magnitudedamagecalculation(void);
static void Cmd_jumpifnopursuitswitchdmg(void);
static void Cmd_setsunny(void);
static void Cmd_maxattackhalvehp(void);
static void Cmd_copyfoestats(void);
static void Cmd_rapidspinfree(void);
static void Cmd_setdefensecurlbit(void);
static void Cmd_recoverbasedonsunlight(void);
static void Cmd_hiddenpowercalc(void);
static void Cmd_selectfirstvalidtarget(void);
static void Cmd_trysetfutureattack(void);
static void Cmd_trydobeatup(void);
static void Cmd_setsemiinvulnerablebit(void);
static void Cmd_clearsemiinvulnerablebit(void);
static void Cmd_setminimize(void);
static void Cmd_sethail(void);
static void Cmd_jumpifattackandspecialattackcannotfall(void);
static void Cmd_setforcedtarget(void);
static void Cmd_setcharge(void);
static void Cmd_callterrainattack(void);
static void Cmd_cureifburnedparalysedorpoisoned(void);
static void Cmd_settorment(void);
static void Cmd_jumpifnodamage(void);
static void Cmd_settaunt(void);
static void Cmd_trysethelpinghand(void);
static void Cmd_tryswapitems(void);
static void Cmd_trycopyability(void);
static void Cmd_trywish(void);
static void Cmd_trysetroots(void);
static void Cmd_doubledamagedealtifdamaged(void);
static void Cmd_setyawn(void);
static void Cmd_setdamagetohealthdifference(void);
static void Cmd_scaledamagebyhealthratio(void);
static void Cmd_tryswapabilities(void);
static void Cmd_tryimprison(void);
static void Cmd_trysetgrudge(void);
static void Cmd_weightdamagecalculation(void);
static void Cmd_assistattackselect(void);
static void Cmd_trysetmagiccoat(void);
static void Cmd_trysetsnatch(void);
static void Cmd_trygetintimidatetarget(void);
static void Cmd_switchoutabilities(void);
static void Cmd_jumpifhasnohp(void);
static void Cmd_getsecretpowereffect(void);
static void Cmd_pickup(void);
static void Cmd_docastformchangeanimation(void);
static void Cmd_trycastformdatachange(void);
static void Cmd_settypebasedhalvers(void);
static void Cmd_setweatherballtype(void);
static void Cmd_tryrecycleitem(void);
static void Cmd_settypetoterrain(void);
static void Cmd_pursuitrelated(void);
static void Cmd_snatchsetbattlers(void);
static void Cmd_removelightscreenreflect(void);
static void Cmd_handleballthrow(void);
static void Cmd_givecaughtmon(void);
static void Cmd_trysetcaughtmondexflags(void);
static void Cmd_displaydexinfo(void);
static void Cmd_trygivecaughtmonnick(void);
static void Cmd_subattackerhpbydmg(void);
static void Cmd_removeattackerstatus1(void);
static void Cmd_finishaction(void);
static void Cmd_finishturn(void);
static void Cmd_trainerslideout(void);

void (* const gBattleScriptingCommandsTable[])(void) =
{
    Cmd_attackcanceler,
    Cmd_accuracycheck,
    Cmd_attackstring,
    Cmd_ppreduce,
    Cmd_critcalc,
    Cmd_damagecalc,
    Cmd_typecalc,
    Cmd_adjustnormaldamage,
    Cmd_adjustnormaldamage2,
    Cmd_attackanimation,
    Cmd_waitanimation,
    Cmd_healthbarupdate,
    Cmd_datahpupdate,
    Cmd_critmessage,
    Cmd_effectivenesssound,
    Cmd_resultmessage,
    Cmd_printstring,
    Cmd_printselectionstring,
    Cmd_waitmessage,
    Cmd_printfromtable,
    Cmd_printselectionstringfromtable,
    Cmd_seteffectwithchance,
    Cmd_seteffectprimary,
    Cmd_seteffectsecondary,
    Cmd_clearstatusfromeffect,
    Cmd_tryfaintmon,
    Cmd_dofaintanimation,
    Cmd_cleareffectsonfaint,
    Cmd_jumpifstatus,
    Cmd_jumpifstatus2,
    Cmd_jumpifability,
    Cmd_jumpifsideaffecting,
    Cmd_jumpifstat,
    Cmd_jumpifstatus3condition,
    Cmd_jumpiftype,
    Cmd_getexp,
    Cmd_unknown_24,
    Cmd_movevaluescleanup,
    Cmd_setmultihit,
    Cmd_decrementmultihit,
    Cmd_goto,
    Cmd_jumpifbyte,
    Cmd_jumpifhalfword,
    Cmd_jumpifword,
    Cmd_jumpifarrayequal,
    Cmd_jumpifarraynotequal,
    Cmd_setbyte,
    Cmd_addbyte,
    Cmd_subbyte,
    Cmd_copyarray,
    Cmd_copyarraywithindex,
    Cmd_orbyte,
    Cmd_orhalfword,
    Cmd_orword,
    Cmd_bicbyte,
    Cmd_bichalfword,
    Cmd_bicword,
    Cmd_pause,
    Cmd_waitstate,
    Cmd_healthbar_update,
    Cmd_return,
    Cmd_end,
    Cmd_end2,
    Cmd_end3,
    Cmd_jumpifaffectedbyprotect,
    Cmd_call,
    Cmd_jumpiftype2,
    Cmd_jumpifabilitypresent,
    Cmd_endselectionscript,
    Cmd_playanimation,
    Cmd_playanimation2,
    Cmd_setgraphicalstatchangevalues,
    Cmd_playstatchangeanimation,
    Cmd_moveend,
    Cmd_typecalc2,
    Cmd_returnatktoball,
    Cmd_getswitchedmondata,
    Cmd_switchindataupdate,
    Cmd_switchinanim,
    Cmd_jumpifcantswitch,
    Cmd_openpartyscreen,
    Cmd_switchhandleorder,
    Cmd_switchineffects,
    Cmd_trainerslidein,
    Cmd_playse,
    Cmd_fanfare,
    Cmd_playfaintcry,
    Cmd_unknown_57,
    Cmd_returntoball,
    Cmd_handlelearnnewmove,
    Cmd_yesnoboxlearnmove,
    Cmd_yesnoboxstoplearningmove,
    Cmd_hitanimation,
    Cmd_getmoneyreward,
    Cmd_unknown_5E,
    Cmd_swapattackerwithtarget,
    Cmd_incrementgamestat,
    Cmd_drawpartystatussummary,
    Cmd_hidepartystatussummary,
    Cmd_jumptocalledmove,
    Cmd_statusanimation,
    Cmd_status2animation,
    Cmd_chosenstatusanimation,
    Cmd_yesnobox,
    Cmd_cancelallactions,
    Cmd_adjustsetdamage,
    Cmd_removeitem,
    Cmd_atknameinbuff1,
    Cmd_drawlvlupbox,
    Cmd_resetsentmonsvalue,
    Cmd_setatktoplayer0,
    Cmd_makevisible,
    Cmd_recordlastability,
    Cmd_buffermovetolearn,
    Cmd_jumpifplayerran,
    Cmd_hpthresholds,
    Cmd_hpthresholds2,
    Cmd_useitemonopponent,
    Cmd_various,
    Cmd_setprotectlike,
    Cmd_faintifabilitynotdamp,
    Cmd_setatkhptozero,
    Cmd_jumpifnexttargetvalid,
    Cmd_tryhealhalfhealth,
    Cmd_trymirrormove,
    Cmd_setrain,
    Cmd_setreflect,
    Cmd_setseeded,
    Cmd_manipulatedamage,
    Cmd_trysetrest,
    Cmd_jumpifnotfirstturn,
    Cmd_nop,
    Cmd_jumpifcantmakeasleep,
    Cmd_stockpile,
    Cmd_stockpiletobasedamage,
    Cmd_stockpiletohpheal,
    Cmd_negativedamage,
    Cmd_statbuffchange,
    Cmd_normalisebuffs,
    Cmd_setbide,
    Cmd_confuseifrepeatingattackends,
    Cmd_setmultihitcounter,
    Cmd_initmultihitstring,
    Cmd_forcerandomswitch,
    Cmd_tryconversiontypechange,
    Cmd_givepaydaymoney,
    Cmd_setlightscreen,
    Cmd_tryKO,
    Cmd_damagetohalftargethp,
    Cmd_setsandstorm,
    Cmd_weatherdamage,
    Cmd_tryinfatuating,
    Cmd_updatestatusicon,
    Cmd_setmist,
    Cmd_setfocusenergy,
    Cmd_transformdataexecution,
    Cmd_setsubstitute,
    Cmd_mimicattackcopy,
    Cmd_metronome,
    Cmd_dmgtolevel,
    Cmd_psywavedamageeffect,
    Cmd_counterdamagecalculator,
    Cmd_mirrorcoatdamagecalculator,
    Cmd_disablelastusedattack,
    Cmd_trysetencore,
    Cmd_painsplitdmgcalc,
    Cmd_settypetorandomresistance,
    Cmd_setalwayshitflag,
    Cmd_copymovepermanently,
    Cmd_trychoosesleeptalkmove,
    Cmd_setdestinybond,
    Cmd_trysetdestinybondtohappen,
    Cmd_remaininghptopower,
    Cmd_tryspiteppreduce,
    Cmd_healpartystatus,
    Cmd_cursetarget,
    Cmd_trysetspikes,
    Cmd_setforesight,
    Cmd_trysetperishsong,
    Cmd_rolloutdamagecalculation,
    Cmd_jumpifconfusedandstatmaxed,
    Cmd_furycuttercalc,
    Cmd_happinesstodamagecalculation,
    Cmd_presentdamagecalculation,
    Cmd_setsafeguard,
    Cmd_magnitudedamagecalculation,
    Cmd_jumpifnopursuitswitchdmg,
    Cmd_setsunny,
    Cmd_maxattackhalvehp,
    Cmd_copyfoestats,
    Cmd_rapidspinfree,
    Cmd_setdefensecurlbit,
    Cmd_recoverbasedonsunlight,
    Cmd_hiddenpowercalc,
    Cmd_selectfirstvalidtarget,
    Cmd_trysetfutureattack,
    Cmd_trydobeatup,
    Cmd_setsemiinvulnerablebit,
    Cmd_clearsemiinvulnerablebit,
    Cmd_setminimize,
    Cmd_sethail,
    Cmd_jumpifattackandspecialattackcannotfall,
    Cmd_setforcedtarget,
    Cmd_setcharge,
    Cmd_callterrainattack,
    Cmd_cureifburnedparalysedorpoisoned,
    Cmd_settorment,
    Cmd_jumpifnodamage,
    Cmd_settaunt,
    Cmd_trysethelpinghand,
    Cmd_tryswapitems,
    Cmd_trycopyability,
    Cmd_trywish,
    Cmd_trysetroots,
    Cmd_doubledamagedealtifdamaged,
    Cmd_setyawn,
    Cmd_setdamagetohealthdifference,
    Cmd_scaledamagebyhealthratio,
    Cmd_tryswapabilities,
    Cmd_tryimprison,
    Cmd_trysetgrudge,
    Cmd_weightdamagecalculation,
    Cmd_assistattackselect,
    Cmd_trysetmagiccoat,
    Cmd_trysetsnatch,
    Cmd_trygetintimidatetarget,
    Cmd_switchoutabilities,
    Cmd_jumpifhasnohp,
    Cmd_getsecretpowereffect,
    Cmd_pickup,
    Cmd_docastformchangeanimation,
    Cmd_trycastformdatachange,
    Cmd_settypebasedhalvers,
    Cmd_setweatherballtype,
    Cmd_tryrecycleitem,
    Cmd_settypetoterrain,
    Cmd_pursuitrelated,
    Cmd_snatchsetbattlers,
    Cmd_removelightscreenreflect,
    Cmd_handleballthrow,
    Cmd_givecaughtmon,
    Cmd_trysetcaughtmondexflags,
    Cmd_displaydexinfo,
    Cmd_trygivecaughtmonnick,
    Cmd_subattackerhpbydmg,
    Cmd_removeattackerstatus1,
    Cmd_finishaction,
    Cmd_finishturn,
    Cmd_trainerslideout
};

struct StatFractions
{
    u8 dividend;
    u8 divisor;
};

static const struct StatFractions sAccuracyStageRatios[] =
{
    { 33, 100},
    { 36, 100},
    { 43, 100},
    { 50, 100},
    { 60, 100},
    { 75, 100},
    { 1, 1},
    {133, 100},
    {166, 100},
    { 2, 1},
    {233, 100},
    {133, 50},
    { 3, 1},
};


static const u16 sCriticalHitChance[] = {16, 8, 4, 3, 2};

static const u32 sStatusFlagsForMoveEffects[] =
{
    0x00000000,
    0x7,
    0x8,
    0x10,
    0x20,
    0x40,
    0x80,
    0x00000007,
    0x00000008,
    0x00000000,
    0x00000070,
    0x00000000,
    0x00001000,
    0x0000E000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00400000,
    0x00000000,
    0x00000000,
    0x04000000,
    0x08000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000C00,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000
};

static const u8* const sMoveEffectBS_Ptrs[] =
{
    [0] = BattleScript_MoveEffectSleep,
    [0x1] = BattleScript_MoveEffectSleep,
    [0x2] = BattleScript_MoveEffectPoison,
    [0x3] = BattleScript_MoveEffectBurn,
    [0x4] = BattleScript_MoveEffectFreeze,
    [0x5] = BattleScript_MoveEffectParalysis,
    [0x6] = BattleScript_MoveEffectToxic,
    [0x7] = BattleScript_MoveEffectConfusion,
    [0x8] = BattleScript_MoveEffectSleep,
    [0x9] = BattleScript_MoveEffectSleep,
    [0xA] = BattleScript_MoveEffectUproar,
    [0xB] = BattleScript_MoveEffectPayDay,
    [0xC] = BattleScript_MoveEffectSleep,
    [0xD] = BattleScript_MoveEffectWrap,
    [0xE] = BattleScript_MoveEffectRecoil,
    [0xF] = BattleScript_MoveEffectSleep,
    [0x10] = BattleScript_MoveEffectSleep,
    [0x11] = BattleScript_MoveEffectSleep,
    [0x12] = BattleScript_MoveEffectSleep,
    [0x13] = BattleScript_MoveEffectSleep,
    [0x14] = BattleScript_MoveEffectSleep,
    [0x15] = BattleScript_MoveEffectSleep,
    [0x16] = BattleScript_MoveEffectSleep,
    [0x17] = BattleScript_MoveEffectSleep,
    [0x18] = BattleScript_MoveEffectSleep,
    [0x19] = BattleScript_MoveEffectSleep,
    [0x1A] = BattleScript_MoveEffectSleep,
    [0x1B] = BattleScript_MoveEffectSleep,
    [0x1C] = BattleScript_MoveEffectSleep,
    [0x1D] = BattleScript_MoveEffectSleep,
    [0x1E] = BattleScript_MoveEffectSleep,
    [0x1F] = BattleScript_MoveEffectSleep,
    [0x20] = BattleScript_MoveEffectSleep,
    [0x21] = BattleScript_MoveEffectSleep,
    [0x22] = BattleScript_MoveEffectSleep,
    [0x23] = BattleScript_MoveEffectSleep,
    [0x24] = BattleScript_MoveEffectSleep,
    [0x25] = BattleScript_MoveEffectSleep,
    [0x26] = BattleScript_MoveEffectRecoil,
};

static const struct WindowTemplate sUnusedWinTemplate = {0, 1, 3, 7, 0xF, 0x1F, 0x3F};

static const u16 sUnknown_0831C2C8[] = INCBIN_U16("graphics/battle_interface/unk_battlebox.gbapal");
static const u32 sUnknown_0831C2E8[] = INCBIN_U32("graphics/battle_interface/unk_battlebox.4bpp.lz");


static const u8 sRubyLevelUpStatBoxStats[] =
{
    58, 62, 59,
    63, 60, 61
};



static const struct OamData sOamData_MonIconOnLvlUpBox =
{
    .y = 0,
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

static const struct SpriteTemplate sSpriteTemplate_MonIconOnLvlUpBox =
{
    .tileTag = 0xD75A,
    .paletteTag = 0xD75A,
    .oam = &sOamData_MonIconOnLvlUpBox,
    .anims = gDummySpriteAnimTable,
    .images = ((void *)0),
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_MonIconOnLvlUpBox
};

static const u16 sProtectSuccessRates[] = {65535, 65535 / 2, 65535 / 4, 65535 / 8};





static const u16 sMovesForbiddenToCopy[] =
{
    118,
    165,
    166,
    102,
    0xFFFE,
    68,
    243,
    182,
    197,
    203,
    194,
    214,
    168,
    266,
    289,
    270,
    343,
    271,
    264,
    0xFFFF
};

static const u8 sFlailHpScaleToPowerTable[] =
{
    1, 200,
    4, 150,
    9, 100,
    16, 80,
    32, 40,
    48, 20
};

static const u16 sNaturePowerMoves[] =
{
    78,
    75,
    89,
    56,
    57,
    61,
    157,
    247,
    129,
    129
};


static const u16 sWeightToDamageTable[] =
{
    100, 20,
    250, 40,
    500, 60,
    1000, 80,
    2000, 100,
    0xFFFF, 0xFFFF
};

static const u16 sPickupItems[] =
{
    13,
    14,
    22,
    3,
    86,
    85,
    75,
    23,
    2,
    21,
    68,
    64,
    24,
    63,
    19,
    25,
    69,
    37,
};

static const u16 sRarePickupItems[] =
{
    21,
    110,
    187,
    19,
    34,
    180,
    332,
    36,
    289,
    200,
    314,
};

static const u8 sPickupProbabilities[] =
{
    30, 40, 50, 60, 70, 80, 90, 94, 98
};

static const u8 sTerrainToType[] =
{
    12,
    12,
    4,
    11,
    11,
    11,
    5,
    5,
    0,
    0,
};

static const u8 sBallCatchBonuses[] =
{
    20, 15, 10, 15
};

const __attribute__((aligned(4))) u8 gUnknown_0831C494[][4] =
{
    {0x3d, 0x44, 0x3d, 0x44},
    {0x14, 0x2d, 0x54, 0x5c},
    {0x46, 0x55, 0x20, 0x5c},
    {0x26, 0x45, 0x46, 0x55},
    {0x14, 0x5a, 0x46, 0x5c},
    {0x1e, 0x32, 0x20, 0x5a},
    {0x38, 0x4e, 0x38, 0x4e},
    {0x19, 0x28, 0x4b, 0x5a},
    {0x45, 0x4b, 0x1c, 0x53},
    {0x23, 0x2d, 0x1d, 0x23},
    {0x3e, 0x48, 0x1e, 0x32},
    {0x3a, 0x5f, 0x58, 0x5e},
    {0x22, 0x2d, 0x1d, 0x28},
    {0x23, 0x28, 0x23, 0x5f},
    {0x38, 0x4e, 0x38, 0x4e},
    {0x23, 0x50, 0x22, 0x5e},
    {0x2c, 0x5e, 0x22, 0x28},
    {0x38, 0x4e, 0x38, 0x4e},
    {0x1e, 0x58, 0x1e, 0x58},
    {0x1e, 0x2b, 0x1b, 0x21},
    {0x28, 0x5a, 0x19, 0x57},
    {0x12, 0x58, 0x5a, 0x5f},
    {0x58, 0x5e, 0x16, 0x2a},
    {0x2a, 0x5c, 0x2a, 0x2f},
    {0x38, 0x4e, 0x38, 0x4e}
};

static const u8 sUnknown_0831C4F8[] =
{
    0x03, 0x00, 0x01, 0x00, 0x00, 0x01, 0x03, 0x00,
    0x01, 0x02, 0x02, 0x00, 0x03, 0x01, 0x03, 0x01,
    0x02, 0x03, 0x03, 0x02, 0x01, 0x00, 0x02, 0x02,
    0x03, 0x00, 0x00, 0x00
};

static void Cmd_attackcanceler(void)
{
    s32 i;

    if (gBattleOutcome != 0)
    {
        gCurrentActionFuncId = 12;
        return;
    }
    if (gBattleMons[gBattlerAttacker].hp == 0 && !(gHitMarker & 0x00000200))
    {
        gHitMarker |= 0x00080000;
        gBattlescriptCurrInstr = BattleScript_MoveEnd;
        return;
    }
    if (AtkCanceller_UnableToUseMove())
        return;
    if (AbilityBattleEffects(0x2, gBattlerTarget, 0, 0, 0))
        return;
    if (!gBattleMons[gBattlerAttacker].pp[gCurrMovePos] && gCurrentMove != 165 && !(gHitMarker & (0x00800000 | 0x00000200))
     && !(gBattleMons[gBattlerAttacker].status2 & 0x00001000))
    {
        gBattlescriptCurrInstr = BattleScript_NoPPForMove;
        gMoveResultFlags |= (1 << 0);
        return;
    }

    gHitMarker &= ~(0x00800000);

    if (!(gHitMarker & 0x02000000) && !(gBattleMons[gBattlerAttacker].status2 & 0x00001000))
    {
        i = IsMonDisobedient();
        switch (i)
        {
        case 0:
            break;
        case 2:
            gHitMarker |= 0x02000000;
            return;
        default:
            gMoveResultFlags |= (1 << 0);
            return;
        }
    }

    gHitMarker |= 0x02000000;

    if (gProtectStructs[gBattlerTarget].bounceMove && gBattleMoves[gCurrentMove].flags & 0x4)
    {
        PressurePPLose(gBattlerAttacker, gBattlerTarget, 277);
        gProtectStructs[gBattlerTarget].bounceMove = 0;
        BattleScriptPushCursor();
        gBattlescriptCurrInstr = BattleScript_MagicCoatBounce;
        return;
    }

    for (i = 0; i < gBattlersCount; i++)
    {
        if ((gProtectStructs[gBattlerByTurnOrder[i]].stealMove) && gBattleMoves[gCurrentMove].flags & 0x8)
        {
            PressurePPLose(gBattlerAttacker, gBattlerByTurnOrder[i], 289);
            gProtectStructs[gBattlerByTurnOrder[i]].stealMove = 0;
            gBattleScripting.battler = gBattlerByTurnOrder[i];
            BattleScriptPushCursor();
            gBattlescriptCurrInstr = BattleScript_SnatchedMove;
            return;
        }
    }

    if (gSpecialStatuses[gBattlerTarget].lightningRodRedirected)
    {
        gSpecialStatuses[gBattlerTarget].lightningRodRedirected = 0;
        gLastUsedAbility = 31;
        BattleScriptPushCursor();
        gBattlescriptCurrInstr = BattleScript_TookAttack;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    else if (((gProtectStructs[gBattlerTarget].protected) && (gBattleMoves[gCurrentMove].flags & 0x2))
     && (gCurrentMove != 174 || ((gBattleMons[gBattlerAttacker].type1 == 7 || gBattleMons[gBattlerAttacker].type2 == 7)))
     && ((!IsTwoTurnsMove(gCurrentMove) || (gBattleMons[gBattlerAttacker].status2 & 0x00001000))))
    {
        CancelMultiTurnMoves(gBattlerAttacker);
        gMoveResultFlags |= (1 << 0);
        gLastLandedMoves[gBattlerTarget] = 0;
        gLastHitByType[gBattlerTarget] = 0;
        gBattleCommunication[6] = 1;
        gBattlescriptCurrInstr++;
    }
    else
    {
        gBattlescriptCurrInstr++;
    }
}

static void JumpIfMoveFailed(u8 adder, u16 move)
{
    const u8 *BS_ptr = gBattlescriptCurrInstr + adder;
    if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
    {
        gLastLandedMoves[gBattlerTarget] = 0;
        gLastHitByType[gBattlerTarget] = 0;
        BS_ptr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        TrySetDestinyBondToHappen();
        if (AbilityBattleEffects(0x3, gBattlerTarget, 0, 0, move))
            return;
    }
    gBattlescriptCurrInstr = BS_ptr;
}

static void Cmd_jumpifaffectedbyprotect(void)
{
    if (((gProtectStructs[gBattlerTarget].protected) && (gBattleMoves[gCurrentMove].flags & 0x2)))
    {
        gMoveResultFlags |= (1 << 0);
        JumpIfMoveFailed(5, 0);
        gBattleCommunication[6] = 1;
    }
    else
    {
        gBattlescriptCurrInstr += 5;
    }
}

bool8 JumpIfMoveAffectedByProtect(u16 move)
{
    bool8 affected = 0;
    if (((gProtectStructs[gBattlerTarget].protected) && (gBattleMoves[gCurrentMove].flags & 0x2)))
    {
        gMoveResultFlags |= (1 << 0);
        JumpIfMoveFailed(7, move);
        gBattleCommunication[6] = 1;
        affected = 1;
    }
    return affected;
}

static bool8 AccuracyCalcHelper(u16 move)
{
    if (gStatuses3[gBattlerTarget] & 0x18 && gDisableStructs[gBattlerTarget].battlerWithSureHit == gBattlerAttacker)
    {
        JumpIfMoveFailed(7, move);
        return 1;
    }

    if (!(gHitMarker & 0x00010000) && gStatuses3[gBattlerTarget] & 0x40)
    {
        gMoveResultFlags |= (1 << 0);
        JumpIfMoveFailed(7, move);
        return 1;
    }

    gHitMarker &= ~0x00010000;

    if (!(gHitMarker & 0x00020000) && gStatuses3[gBattlerTarget] & 0x80)
    {
        gMoveResultFlags |= (1 << 0);
        JumpIfMoveFailed(7, move);
        return 1;
    }

    gHitMarker &= ~0x00020000;

    if (!(gHitMarker & 0x00040000) && gStatuses3[gBattlerTarget] & 0x40000)
    {
        gMoveResultFlags |= (1 << 0);
        JumpIfMoveFailed(7, move);
        return 1;
    }

    gHitMarker &= ~0x00040000;

    if ((((!(AbilityBattleEffects(0x13, 0, 13, 0, 0)) && !(AbilityBattleEffects(0x13, 0, 77, 0, 0)))) && (gBattleWeather & ((1 << 0) | (1 << 1) | (1 << 2))) && gBattleMoves[move].effect == 152)
     || (gBattleMoves[move].effect == 17 || gBattleMoves[move].effect == 78))
    {
        JumpIfMoveFailed(7, move);
        return 1;
    }

    return 0;
}

static void Cmd_accuracycheck(void)
{
    u16 move = ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8));

    if (move == 0xFFFE || move == 0xFFFF)
    {
        if (gStatuses3[gBattlerTarget] & 0x18 && move == 0xFFFF && gDisableStructs[gBattlerTarget].battlerWithSureHit == gBattlerAttacker)
            gBattlescriptCurrInstr += 7;
        else if (gStatuses3[gBattlerTarget] & (0x40 | 0x80 | 0x40000))
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        else if (!JumpIfMoveAffectedByProtect(0))
            gBattlescriptCurrInstr += 7;
    }
    else
    {
        u8 type, moveAcc, holdEffect, param;
        s8 buff;
        u16 calc;

        if (move == 0)
            move = gCurrentMove;

        { if (gBattleStruct->dynamicMoveType) type = gBattleStruct->dynamicMoveType & 0x3F; else type = gBattleMoves[move].type; };

        if (JumpIfMoveAffectedByProtect(move))
            return;
        if (AccuracyCalcHelper(move))
            return;

        if (gBattleMons[gBattlerTarget].status2 & 0x20000000)
        {
            u8 acc = gBattleMons[gBattlerAttacker].statStages[6];
            buff = acc;
        }
        else
        {
            u8 acc = gBattleMons[gBattlerAttacker].statStages[6];
            buff = acc + 6 - gBattleMons[gBattlerTarget].statStages[7];
        }

        if (buff < 0)
            buff = 0;
        if (buff > 0xC)
            buff = 0xC;

        moveAcc = gBattleMoves[move].accuracy;

        if (((!(AbilityBattleEffects(0x13, 0, 13, 0, 0)) && !(AbilityBattleEffects(0x13, 0, 77, 0, 0)))) && gBattleWeather & ((1 << 5) | (1 << 6)) && gBattleMoves[move].effect == 152)
            moveAcc = 50;

        calc = sAccuracyStageRatios[buff].dividend * moveAcc;
        calc /= sAccuracyStageRatios[buff].divisor;

        if (gBattleMons[gBattlerAttacker].ability == 14)
            calc = (calc * 130) / 100;
        if (((!(AbilityBattleEffects(0x13, 0, 13, 0, 0)) && !(AbilityBattleEffects(0x13, 0, 77, 0, 0)))) && gBattleMons[gBattlerTarget].ability == 8 && gBattleWeather & ((1 << 3) | (1 << 4)))
            calc = (calc * 80) / 100;
        if (gBattleMons[gBattlerAttacker].ability == 55 && (type < 9))
            calc = (calc * 80) / 100;

        if (gBattleMons[gBattlerTarget].item == 175)
        {
            holdEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
            param = gEnigmaBerries[gBattlerTarget].holdEffectParam;
        }
        else
        {
            holdEffect = ItemId_GetHoldEffect(gBattleMons[gBattlerTarget].item);
            param = ItemId_GetHoldEffectParam(gBattleMons[gBattlerTarget].item);
        }

        gPotentialItemEffectBattler = gBattlerTarget;

        if (holdEffect == 22)
            calc = (calc * (100 - param)) / 100;


        if ((Random() % 100 + 1) > calc)
        {
            gMoveResultFlags |= (1 << 0);
            if (gBattleTypeFlags & 0x0001 &&
                (gBattleMoves[move].target == 0x8 || gBattleMoves[move].target == 0x20))
                gBattleCommunication[6] = 2;
            else
                gBattleCommunication[6] = 0;

            CheckWonderGuardAndLevitate();
        }
        JumpIfMoveFailed(7, move);
    }
}

static void Cmd_attackstring(void)
{
    if (gBattleControllerExecFlags)
         return;
    if (!(gHitMarker & (0x00000200 | 0x00000400)))
    {
        PrepareStringBattle(4, gBattlerAttacker);
        gHitMarker |= 0x00000400;
    }
    gBattlescriptCurrInstr++;
    gBattleCommunication[0x7] = 0;
}

static void Cmd_ppreduce(void)
{
    s32 ppToDeduct = 1;

    if (gBattleControllerExecFlags)
        return;

    if (!gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure)
    {
        switch (gBattleMoves[gCurrentMove].target)
        {
        case 0x20:
            ppToDeduct += AbilityBattleEffects(0x12, gBattlerAttacker, 46, 0, 0);
            break;
        case 0x8:
        case 0x40:
            ppToDeduct += AbilityBattleEffects(0x10, gBattlerAttacker, 46, 0, 0);
            break;
        default:
            if (gBattlerAttacker != gBattlerTarget && gBattleMons[gBattlerTarget].ability == 46)
                ppToDeduct++;
            break;
        }
    }

    if (!(gHitMarker & (0x00000800 | 0x00000200)) && gBattleMons[gBattlerAttacker].pp[gCurrMovePos])
    {
        gProtectStructs[gBattlerAttacker].notFirstStrike = 1;

        if (gBattleMons[gBattlerAttacker].pp[gCurrMovePos] > ppToDeduct)
            gBattleMons[gBattlerAttacker].pp[gCurrMovePos] -= ppToDeduct;
        else
            gBattleMons[gBattlerAttacker].pp[gCurrMovePos] = 0;

        if (!(gBattleMons[gBattlerAttacker].status2 & 0x00200000)
            && !((gDisableStructs[gBattlerAttacker].mimickedMoves) & gBitTable[gCurrMovePos]))
        {
            gActiveBattler = gBattlerAttacker;
            BtlController_EmitSetMonData(0, REQUEST_PPMOVE1_BATTLE + gCurrMovePos, 0, 1, &gBattleMons[gBattlerAttacker].pp[gCurrMovePos]);
            MarkBattlerForControllerExec(gBattlerAttacker);
        }
    }

    gHitMarker &= ~(0x00000800);
    gBattlescriptCurrInstr++;
}

static void Cmd_critcalc(void)
{
    u8 holdEffect;
    u16 item, critChance;

    item = gBattleMons[gBattlerAttacker].item;

    if (item == 175)
        holdEffect = gEnigmaBerries[gBattlerAttacker].holdEffect;
    else
        holdEffect = ItemId_GetHoldEffect(item);

    gPotentialItemEffectBattler = gBattlerAttacker;

    critChance = 2 * ((gBattleMons[gBattlerAttacker].status2 & 0x00100000) != 0)
                + (gBattleMoves[gCurrentMove].effect == 43)
                + (gBattleMoves[gCurrentMove].effect == 75)
                + (gBattleMoves[gCurrentMove].effect == 200)
                + (gBattleMoves[gCurrentMove].effect == 209)
                + (holdEffect == 41)
                + 2 * (holdEffect == 63 && gBattleMons[gBattlerAttacker].species == 113)
                + 2 * (holdEffect == 66 && gBattleMons[gBattlerAttacker].species == 83);

    if (critChance >= (size_t)(sizeof(sCriticalHitChance) / sizeof((sCriticalHitChance)[0])))
        critChance = (size_t)(sizeof(sCriticalHitChance) / sizeof((sCriticalHitChance)[0])) - 1;

    if ((gBattleMons[gBattlerTarget].ability != 4 && gBattleMons[gBattlerTarget].ability != 75)
     && !(gStatuses3[gBattlerAttacker] & 0x8000)
     && !(gBattleTypeFlags & (0x0200 | 0x0010))
     && !(Random() % sCriticalHitChance[critChance]))
        gCritMultiplier = 2;
    else
        gCritMultiplier = 1;

    gBattlescriptCurrInstr++;
}

static void Cmd_damagecalc(void)
{
    u16 sideStatus = gSideStatuses[(GetBattlerPosition(gBattlerTarget) & 1)];
    gBattleMoveDamage = CalculateBaseDamage(&gBattleMons[gBattlerAttacker], &gBattleMons[gBattlerTarget], gCurrentMove,
                                            sideStatus, gDynamicBasePower,
                                            gBattleStruct->dynamicMoveType, gBattlerAttacker, gBattlerTarget);
    gBattleMoveDamage = gBattleMoveDamage * gCritMultiplier * gBattleScripting.dmgMultiplier;

    if (gStatuses3[gBattlerAttacker] & 0x200 && gBattleMoves[gCurrentMove].type == 13)
        gBattleMoveDamage *= 2;
    if (gProtectStructs[gBattlerAttacker].helpingHand)
        gBattleMoveDamage = gBattleMoveDamage * 15 / 10;

    gBattlescriptCurrInstr++;
}

void AI_CalcDmg(u8 attacker, u8 defender)
{
    u16 sideStatus = gSideStatuses[(GetBattlerPosition(defender) & 1)];
    gBattleMoveDamage = CalculateBaseDamage(&gBattleMons[attacker], &gBattleMons[defender], gCurrentMove,
                                            sideStatus, gDynamicBasePower,
                                            gBattleStruct->dynamicMoveType, attacker, defender);
    gDynamicBasePower = 0;
    gBattleMoveDamage = gBattleMoveDamage * gCritMultiplier * gBattleScripting.dmgMultiplier;

    if (gStatuses3[attacker] & 0x200 && gBattleMoves[gCurrentMove].type == 13)
        gBattleMoveDamage *= 2;
    if (gProtectStructs[attacker].helpingHand)
        gBattleMoveDamage = gBattleMoveDamage * 15 / 10;
}

static void ModulateDmgByType(u8 multiplier)
{
    gBattleMoveDamage = gBattleMoveDamage * multiplier / 10;
    if (gBattleMoveDamage == 0 && multiplier != 0)
        gBattleMoveDamage = 1;

    switch (multiplier)
    {
    case 0:
        gMoveResultFlags |= (1 << 3);
        gMoveResultFlags &= ~(1 << 2);
        gMoveResultFlags &= ~(1 << 1);
        break;
    case 5:
        if (gBattleMoves[gCurrentMove].power && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            if (gMoveResultFlags & (1 << 1))
                gMoveResultFlags &= ~(1 << 1);
            else
                gMoveResultFlags |= (1 << 2);
        }
        break;
    case 20:
        if (gBattleMoves[gCurrentMove].power && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            if (gMoveResultFlags & (1 << 2))
                gMoveResultFlags &= ~(1 << 2);
            else
                gMoveResultFlags |= (1 << 1);
        }
        break;
    }
}

static void Cmd_typecalc(void)
{
    s32 i = 0;
    u8 moveType;

    if (gCurrentMove == 165)
    {
        gBattlescriptCurrInstr++;
        return;
    }

    { if (gBattleStruct->dynamicMoveType) moveType = gBattleStruct->dynamicMoveType & 0x3F; else moveType = gBattleMoves[gCurrentMove].type; };


    if (((gBattleMons[gBattlerAttacker].type1 == moveType || gBattleMons[gBattlerAttacker].type2 == moveType)))
    {
        gBattleMoveDamage = gBattleMoveDamage * 15;
        gBattleMoveDamage = gBattleMoveDamage / 10;
    }

    if (gBattleMons[gBattlerTarget].ability == 26 && moveType == 4)
    {
        gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
        gMoveResultFlags |= ((1 << 0) | (1 << 3));
        gLastLandedMoves[gBattlerTarget] = 0;
        gLastHitByType[gBattlerTarget] = 0;
        gBattleCommunication[6] = moveType;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    else
    {
        while (((gTypeEffectiveness[i + 0])) != 0xFF)
        {
            if (((gTypeEffectiveness[i + 0])) == 0xFE)
            {
                if (gBattleMons[gBattlerTarget].status2 & 0x20000000)
                    break;
                i += 3;
                continue;
            }
            else if (((gTypeEffectiveness[i + 0])) == moveType)
            {

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type1)
                    ModulateDmgByType(((gTypeEffectiveness[i + 2])));

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2 &&
                    gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2)
                    ModulateDmgByType(((gTypeEffectiveness[i + 2])));
            }
            i += 3;
        }
    }

    if (gBattleMons[gBattlerTarget].ability == 25 && AttacksThisTurn(gBattlerAttacker, gCurrentMove) == 2
     && (!(gMoveResultFlags & (1 << 1)) || ((gMoveResultFlags & ((1 << 1) | (1 << 2))) == ((1 << 1) | (1 << 2))))
     && gBattleMoves[gCurrentMove].power)
    {
        gLastUsedAbility = 25;
        gMoveResultFlags |= (1 << 0);
        gLastLandedMoves[gBattlerTarget] = 0;
        gLastHitByType[gBattlerTarget] = 0;
        gBattleCommunication[6] = 3;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    if (gMoveResultFlags & (1 << 3))
        gProtectStructs[gBattlerAttacker].targetNotAffected = 1;

    gBattlescriptCurrInstr++;
}

static void CheckWonderGuardAndLevitate(void)
{
    u8 flags = 0;
    s32 i = 0;
    u8 moveType;

    if (gCurrentMove == 165 || !gBattleMoves[gCurrentMove].power)
        return;

    { if (gBattleStruct->dynamicMoveType) moveType = gBattleStruct->dynamicMoveType & 0x3F; else moveType = gBattleMoves[gCurrentMove].type; };

    if (gBattleMons[gBattlerTarget].ability == 26 && moveType == 4)
    {
        gLastUsedAbility = 26;
        gBattleCommunication[6] = moveType;
        RecordAbilityBattle(gBattlerTarget, 26);
        return;
    }

    while (((gTypeEffectiveness[i + 0])) != 0xFF)
    {
        if (((gTypeEffectiveness[i + 0])) == 0xFE)
        {
            if (gBattleMons[gBattlerTarget].status2 & 0x20000000)
                break;
            i += 3;
            continue;
        }
        if (((gTypeEffectiveness[i + 0])) == moveType)
        {

            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type1
                && ((gTypeEffectiveness[i + 2])) == 0)
            {
                gMoveResultFlags |= (1 << 3);
                gProtectStructs[gBattlerAttacker].targetNotAffected = 1;
            }
            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2 &&
                gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2 &&
                ((gTypeEffectiveness[i + 2])) == 0)
            {
                gMoveResultFlags |= (1 << 3);
                gProtectStructs[gBattlerAttacker].targetNotAffected = 1;
            }


            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type1 && ((gTypeEffectiveness[i + 2])) == 20)
                flags |= 1;
            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2
             && gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2
             && ((gTypeEffectiveness[i + 2])) == 20)
                flags |= 1;


            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type1 && ((gTypeEffectiveness[i + 2])) == 5)
                flags |= 2;
            if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2
             && gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2
             && ((gTypeEffectiveness[i + 2])) == 5)
                flags |= 2;
        }
        i += 3;
    }

    if (gBattleMons[gBattlerTarget].ability == 25 && AttacksThisTurn(gBattlerAttacker, gCurrentMove) == 2)
    {
        if (((flags & 2) || !(flags & 1)) && gBattleMoves[gCurrentMove].power)
        {
            gLastUsedAbility = 25;
            gBattleCommunication[6] = 3;
            RecordAbilityBattle(gBattlerTarget, 25);
        }
    }
}

static void ModulateDmgByType2(u8 multiplier, u16 move, u8* flags)
{
    gBattleMoveDamage = gBattleMoveDamage * multiplier / 10;
    if (gBattleMoveDamage == 0 && multiplier != 0)
        gBattleMoveDamage = 1;

    switch (multiplier)
    {
    case 0:
        *flags |= (1 << 3);
        *flags &= ~(1 << 2);
        *flags &= ~(1 << 1);
        break;
    case 5:
        if (gBattleMoves[move].power && !(*flags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            if (*flags & (1 << 1))
                *flags &= ~(1 << 1);
            else
                *flags |= (1 << 2);
        }
        break;
    case 20:
        if (gBattleMoves[move].power && !(*flags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            if (*flags & (1 << 2))
                *flags &= ~(1 << 2);
            else
                *flags |= (1 << 1);
        }
        break;
    }
}

u8 TypeCalc(u16 move, u8 attacker, u8 defender)
{
    s32 i = 0;
    u8 flags = 0;
    u8 moveType;

    if (move == 165)
        return 0;

    moveType = gBattleMoves[move].type;


    if (((gBattleMons[attacker].type1 == moveType || gBattleMons[attacker].type2 == moveType)))
    {
        gBattleMoveDamage = gBattleMoveDamage * 15;
        gBattleMoveDamage = gBattleMoveDamage / 10;
    }

    if (gBattleMons[defender].ability == 26 && moveType == 4)
    {
        flags |= ((1 << 0) | (1 << 3));
    }
    else
    {
        while (((gTypeEffectiveness[i + 0])) != 0xFF)
        {
            if (((gTypeEffectiveness[i + 0])) == 0xFE)
            {
                if (gBattleMons[defender].status2 & 0x20000000)
                    break;
                i += 3;
                continue;
            }

            else if (((gTypeEffectiveness[i + 0])) == moveType)
            {

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[defender].type1)
                    ModulateDmgByType2(((gTypeEffectiveness[i + 2])), move, &flags);

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[defender].type2 &&
                    gBattleMons[defender].type1 != gBattleMons[defender].type2)
                    ModulateDmgByType2(((gTypeEffectiveness[i + 2])), move, &flags);
            }
            i += 3;
        }
    }

    if (gBattleMons[defender].ability == 25 && !(flags & (1 << 0))
        && AttacksThisTurn(attacker, move) == 2
        && (!(flags & (1 << 1)) || ((flags & ((1 << 1) | (1 << 2))) == ((1 << 1) | (1 << 2))))
        && gBattleMoves[move].power)
    {
        flags |= (1 << 0);
    }
    return flags;
}

u8 AI_TypeCalc(u16 move, u16 targetSpecies, u8 targetAbility)
{
    s32 i = 0;
    u8 flags = 0;
    u8 type1 = gBaseStats[targetSpecies].type1, type2 = gBaseStats[targetSpecies].type2;
    u8 moveType;

    if (move == 165)
        return 0;

    moveType = gBattleMoves[move].type;

    if (targetAbility == 26 && moveType == 4)
    {
        flags = (1 << 0) | (1 << 3);
    }
    else
    {
        while (((gTypeEffectiveness[i + 0])) != 0xFF)
        {
            if (((gTypeEffectiveness[i + 0])) == 0xFE)
            {
                i += 3;
                continue;
            }
            if (((gTypeEffectiveness[i + 0])) == moveType)
            {

                if (((gTypeEffectiveness[i + 1])) == type1)
                    ModulateDmgByType2(((gTypeEffectiveness[i + 2])), move, &flags);

                if (((gTypeEffectiveness[i + 1])) == type2 && type1 != type2)
                    ModulateDmgByType2(((gTypeEffectiveness[i + 2])), move, &flags);
            }
            i += 3;
        }
    }
    if (targetAbility == 25
     && (!(flags & (1 << 1)) || ((flags & ((1 << 1) | (1 << 2))) == ((1 << 1) | (1 << 2))))
     && gBattleMoves[move].power)
        flags |= (1 << 3);
    return flags;
}


static inline void ApplyRandomDmgMultiplier(void)
{
    u16 rand = Random();
    u16 randPercent = 100 - (rand % 16);

    if (gBattleMoveDamage != 0)
    {
        gBattleMoveDamage *= randPercent;
        gBattleMoveDamage /= 100;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
    }
}

static void Unused_ApplyRandomDmgMultiplier(void)
{
    ApplyRandomDmgMultiplier();
}

static void Cmd_adjustnormaldamage(void)
{
    u8 holdEffect, param;

    ApplyRandomDmgMultiplier();

    if (gBattleMons[gBattlerTarget].item == 175)
    {
        holdEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
        param = gEnigmaBerries[gBattlerTarget].holdEffectParam;
    }
    else
    {
        holdEffect = ItemId_GetHoldEffect(gBattleMons[gBattlerTarget].item);
        param = ItemId_GetHoldEffectParam(gBattleMons[gBattlerTarget].item);
    }

    gPotentialItemEffectBattler = gBattlerTarget;

    if (holdEffect == 39 && (Random() % 100) < param)
    {
        RecordItemEffectBattle(gBattlerTarget, holdEffect);
        gSpecialStatuses[gBattlerTarget].focusBanded = 1;
    }
    if (!(gBattleMons[gBattlerTarget].status2 & 0x01000000)
     && (gBattleMoves[gCurrentMove].effect == 101 || gProtectStructs[gBattlerTarget].endured || gSpecialStatuses[gBattlerTarget].focusBanded)
     && gBattleMons[gBattlerTarget].hp <= gBattleMoveDamage)
    {
        gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - 1;
        if (gProtectStructs[gBattlerTarget].endured)
        {
            gMoveResultFlags |= (1 << 6);
        }
        else if (gSpecialStatuses[gBattlerTarget].focusBanded)
        {
            gMoveResultFlags |= (1 << 7);
            gLastUsedItem = gBattleMons[gBattlerTarget].item;
        }
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_adjustnormaldamage2(void)
{
    u8 holdEffect, param;

    ApplyRandomDmgMultiplier();

    if (gBattleMons[gBattlerTarget].item == 175)
    {
        holdEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
        param = gEnigmaBerries[gBattlerTarget].holdEffectParam;
    }
    else
    {
        holdEffect = ItemId_GetHoldEffect(gBattleMons[gBattlerTarget].item);
        param = ItemId_GetHoldEffectParam(gBattleMons[gBattlerTarget].item);
    }

    gPotentialItemEffectBattler = gBattlerTarget;

    if (holdEffect == 39 && (Random() % 100) < param)
    {
        RecordItemEffectBattle(gBattlerTarget, holdEffect);
        gSpecialStatuses[gBattlerTarget].focusBanded = 1;
    }
    if (!(gBattleMons[gBattlerTarget].status2 & 0x01000000)
     && (gProtectStructs[gBattlerTarget].endured || gSpecialStatuses[gBattlerTarget].focusBanded)
     && gBattleMons[gBattlerTarget].hp <= gBattleMoveDamage)
    {
        gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - 1;
        if (gProtectStructs[gBattlerTarget].endured)
        {
            gMoveResultFlags |= (1 << 6);
        }
        else if (gSpecialStatuses[gBattlerTarget].focusBanded)
        {
            gMoveResultFlags |= (1 << 7);
            gLastUsedItem = gBattleMons[gBattlerTarget].item;
        }
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_attackanimation(void)
{
    if (gBattleControllerExecFlags)
        return;

    if ((gHitMarker & 0x00000080) && (gCurrentMove != 144 && gCurrentMove != 164))
    {
        BattleScriptPush(gBattlescriptCurrInstr + 1);
        gBattlescriptCurrInstr = BattleScript_Pausex20;
        gBattleScripting.animTurn++;
        gBattleScripting.animTargetsHit++;
    }
    else
    {
        if ((gBattleMoves[gCurrentMove].target & 0x8
             || gBattleMoves[gCurrentMove].target & 0x20
             || gBattleMoves[gCurrentMove].target & 0x1)
            && gBattleScripting.animTargetsHit)
        {
            gBattlescriptCurrInstr++;
            return;
        }
        if (!(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            u8 multihit;

            gActiveBattler = gBattlerAttacker;

            if (gBattleMons[gBattlerTarget].status2 & 0x01000000)
                multihit = gMultiHitCounter;
            else if (gMultiHitCounter != 0 && gMultiHitCounter != 1)
            {
                if (gBattleMons[gBattlerTarget].hp <= gBattleMoveDamage)
                    multihit = 1;
                else
                    multihit = gMultiHitCounter;
            }
            else
                multihit = gMultiHitCounter;

            BtlController_EmitMoveAnimation(0, gCurrentMove, gBattleScripting.animTurn, gBattleMovePower, gBattleMoveDamage, gBattleMons[gBattlerAttacker].friendship, &gDisableStructs[gBattlerAttacker], multihit);
            gBattleScripting.animTurn += 1;
            gBattleScripting.animTargetsHit += 1;
            MarkBattlerForControllerExec(gBattlerAttacker);
            gBattlescriptCurrInstr++;
        }
        else
        {
            BattleScriptPush(gBattlescriptCurrInstr + 1);
            gBattlescriptCurrInstr = BattleScript_Pausex20;
        }
    }
}

static void Cmd_waitanimation(void)
{
    if (gBattleControllerExecFlags == 0)
        gBattlescriptCurrInstr++;
}

static void Cmd_healthbarupdate(void)
{
    if (gBattleControllerExecFlags)
        return;

    if (!(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

        if (gBattleMons[gActiveBattler].status2 & 0x01000000 && gDisableStructs[gActiveBattler].substituteHP && !(gHitMarker & 0x00000100))
        {
            PrepareStringBattle(128, gActiveBattler);
        }
        else
        {
            s16 healthValue;

            s32 currDmg = gBattleMoveDamage;
            s32 maxPossibleDmgValue = 10000;

            if (currDmg <= maxPossibleDmgValue)
                healthValue = currDmg;
            else
                healthValue = maxPossibleDmgValue;

            BtlController_EmitHealthBarUpdate(0, healthValue);
            MarkBattlerForControllerExec(gActiveBattler);

            if (GetBattlerSide(gActiveBattler) == 0 && gBattleMoveDamage > 0)
                gBattleResults.playerMonWasDamaged = 1;
        }
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_datahpupdate(void)
{
    u32 moveType;

    if (gBattleControllerExecFlags)
        return;

    if (gBattleStruct->dynamicMoveType == 0)
        moveType = gBattleMoves[gCurrentMove].type;
    else if (!(gBattleStruct->dynamicMoveType & 0x40))
        moveType = gBattleStruct->dynamicMoveType & 0x3F;
    else
        moveType = gBattleMoves[gCurrentMove].type;

    if (!(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        if (gBattleMons[gActiveBattler].status2 & 0x01000000 && gDisableStructs[gActiveBattler].substituteHP && !(gHitMarker & 0x00000100))
        {
            if (gDisableStructs[gActiveBattler].substituteHP >= gBattleMoveDamage)
            {
                if (gSpecialStatuses[gActiveBattler].dmg == 0)
                    gSpecialStatuses[gActiveBattler].dmg = gBattleMoveDamage;
                gDisableStructs[gActiveBattler].substituteHP -= gBattleMoveDamage;
                gHpDealt = gBattleMoveDamage;
            }
            else
            {
                if (gSpecialStatuses[gActiveBattler].dmg == 0)
                    gSpecialStatuses[gActiveBattler].dmg = gDisableStructs[gActiveBattler].substituteHP;
                gHpDealt = gDisableStructs[gActiveBattler].substituteHP;
                gDisableStructs[gActiveBattler].substituteHP = 0;
            }

            if (gDisableStructs[gActiveBattler].substituteHP == 0)
            {
                gBattlescriptCurrInstr += 2;
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_SubstituteFade;
                return;
            }
        }
        else
        {
            gHitMarker &= ~(0x00000100);
            if (gBattleMoveDamage < 0)
            {
                gBattleMons[gActiveBattler].hp -= gBattleMoveDamage;
                if (gBattleMons[gActiveBattler].hp > gBattleMons[gActiveBattler].maxHP)
                    gBattleMons[gActiveBattler].hp = gBattleMons[gActiveBattler].maxHP;

            }
            else
            {
                if (gHitMarker & 0x00000020)
                {
                    gHitMarker &= ~(0x00000020);
                }
                else
                {
                    gTakenDmg[gActiveBattler] += gBattleMoveDamage;
                    if (gBattlescriptCurrInstr[1] == 0)
                        gTakenDmgByBattler[gActiveBattler] = gBattlerAttacker;
                    else
                        gTakenDmgByBattler[gActiveBattler] = gBattlerTarget;
                }

                if (gBattleMons[gActiveBattler].hp > gBattleMoveDamage)
                {
                    gBattleMons[gActiveBattler].hp -= gBattleMoveDamage;
                    gHpDealt = gBattleMoveDamage;
                }
                else
                {
                    gHpDealt = gBattleMons[gActiveBattler].hp;
                    gBattleMons[gActiveBattler].hp = 0;
                }

                if (!gSpecialStatuses[gActiveBattler].dmg && !(gHitMarker & 0x00100000))
                    gSpecialStatuses[gActiveBattler].dmg = gHpDealt;

                if ((moveType < 9) && !(gHitMarker & 0x00100000) && gCurrentMove != 220)
                {
                    gProtectStructs[gActiveBattler].physicalDmg = gHpDealt;
                    gSpecialStatuses[gActiveBattler].physicalDmg = gHpDealt;
                    if (gBattlescriptCurrInstr[1] == 0)
                    {
                        gProtectStructs[gActiveBattler].physicalBattlerId = gBattlerAttacker;
                        gSpecialStatuses[gActiveBattler].physicalBattlerId = gBattlerAttacker;
                    }
                    else
                    {
                        gProtectStructs[gActiveBattler].physicalBattlerId = gBattlerTarget;
                        gSpecialStatuses[gActiveBattler].physicalBattlerId = gBattlerTarget;
                    }
                }
                else if (!(moveType < 9) && !(gHitMarker & 0x00100000))
                {
                    gProtectStructs[gActiveBattler].specialDmg = gHpDealt;
                    gSpecialStatuses[gActiveBattler].specialDmg = gHpDealt;
                    if (gBattlescriptCurrInstr[1] == 0)
                    {
                        gProtectStructs[gActiveBattler].specialBattlerId = gBattlerAttacker;
                        gSpecialStatuses[gActiveBattler].specialBattlerId = gBattlerAttacker;
                    }
                    else
                    {
                        gProtectStructs[gActiveBattler].specialBattlerId = gBattlerTarget;
                        gSpecialStatuses[gActiveBattler].specialBattlerId = gBattlerTarget;
                    }
                }
            }
            gHitMarker &= ~(0x00100000);
            BtlController_EmitSetMonData(0, REQUEST_HP_BATTLE, 0, 2, &gBattleMons[gActiveBattler].hp);
            MarkBattlerForControllerExec(gActiveBattler);
        }
    }
    else
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        if (gSpecialStatuses[gActiveBattler].dmg == 0)
            gSpecialStatuses[gActiveBattler].dmg = 0xFFFF;
    }
    gBattlescriptCurrInstr += 2;
}

static void Cmd_critmessage(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        if (gCritMultiplier == 2 && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
        {
            PrepareStringBattle(217, gBattlerAttacker);
            gBattleCommunication[0x7] = 1;
        }
        gBattlescriptCurrInstr++;
    }
}

static void Cmd_effectivenesssound(void)
{
    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = gBattlerTarget;
    if (!(gMoveResultFlags & (1 << 0)))
    {
        switch (gMoveResultFlags & (u8)(~((1 << 0))))
        {
        case (1 << 1):
            BtlController_EmitPlaySE(0, 14);
            MarkBattlerForControllerExec(gActiveBattler);
            break;
        case (1 << 2):
            BtlController_EmitPlaySE(0, 12);
            MarkBattlerForControllerExec(gActiveBattler);
            break;
        case (1 << 3):
        case (1 << 5):

            break;
        case (1 << 6):
        case (1 << 4):
        case (1 << 7):
        default:
            if (gMoveResultFlags & (1 << 1))
            {
                BtlController_EmitPlaySE(0, 14);
                MarkBattlerForControllerExec(gActiveBattler);
            }
            else if (gMoveResultFlags & (1 << 2))
            {
                BtlController_EmitPlaySE(0, 12);
                MarkBattlerForControllerExec(gActiveBattler);
            }
            else if (!(gMoveResultFlags & ((1 << 3) | (1 << 5))))
            {
                BtlController_EmitPlaySE(0, 13);
                MarkBattlerForControllerExec(gActiveBattler);
            }
            break;
        }
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_resultmessage(void)
{
    u32 stringId = 0;

    if (gBattleControllerExecFlags)
        return;

    if (gMoveResultFlags & (1 << 0) && (!(gMoveResultFlags & (1 << 3)) || gBattleCommunication[6] > 2))
    {
        stringId = gMissStringIds[gBattleCommunication[6]];
        gBattleCommunication[0x7] = 1;
    }
    else
    {
        gBattleCommunication[0x7] = 1;
        switch (gMoveResultFlags & (u8)(~((1 << 0))))
        {
        case (1 << 1):
            stringId = 222;
            break;
        case (1 << 2):
            stringId = 221;
            break;
        case (1 << 4):
            stringId = 218;
            break;
        case (1 << 6):
            stringId = 153;
            break;
        case (1 << 5):
            stringId = 229;
            break;
        case (1 << 3):
            stringId = 27;
            break;
        case (1 << 7):
            gLastUsedItem = gBattleMons[gBattlerTarget].item;
            gPotentialItemEffectBattler = gBattlerTarget;
            gMoveResultFlags &= ~((1 << 6) | (1 << 7));
            BattleScriptPushCursor();
            gBattlescriptCurrInstr = BattleScript_FocusBandActivates;
            return;
        default:
            if (gMoveResultFlags & (1 << 3))
            {
                stringId = 27;
            }
            else if (gMoveResultFlags & (1 << 4))
            {
                gMoveResultFlags &= ~((1 << 4));
                gMoveResultFlags &= ~((1 << 1));
                gMoveResultFlags &= ~((1 << 2));
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_OneHitKOMsg;
                return;
            }
            else if (gMoveResultFlags & (1 << 6))
            {
                gMoveResultFlags &= ~((1 << 6) | (1 << 7));
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_EnduredMsg;
                return;
            }
            else if (gMoveResultFlags & (1 << 7))
            {
                gLastUsedItem = gBattleMons[gBattlerTarget].item;
                gPotentialItemEffectBattler = gBattlerTarget;
                gMoveResultFlags &= ~((1 << 6) | (1 << 7));
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_FocusBandActivates;
                return;
            }
            else if (gMoveResultFlags & (1 << 5))
            {
                stringId = 229;
            }
            else
            {
                gBattleCommunication[0x7] = 0;
            }
        }
    }

    if (stringId)
        PrepareStringBattle(stringId, gBattlerAttacker);

    gBattlescriptCurrInstr++;
}

static void Cmd_printstring(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        u16 var = ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8));
        PrepareStringBattle(var, gBattlerAttacker);
        gBattlescriptCurrInstr += 3;
        gBattleCommunication[0x7] = 1;
    }
}

static void Cmd_printselectionstring(void)
{
    gActiveBattler = gBattlerAttacker;

    BtlController_EmitPrintSelectionString(0, ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8)));
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 3;
    gBattleCommunication[0x7] = 1;
}

static void Cmd_waitmessage(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        if (!gBattleCommunication[0x7])
        {
            gBattlescriptCurrInstr += 3;
        }
        else
        {
            u16 toWait = ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8));
            if (++gPauseCounterBattle >= toWait)
            {
                gPauseCounterBattle = 0;
                gBattlescriptCurrInstr += 3;
                gBattleCommunication[0x7] = 0;
            }
        }
    }
}

static void Cmd_printfromtable(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        const u16 *ptr = (const u16*) (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        ptr += gBattleCommunication[0x5];

        PrepareStringBattle(*ptr, gBattlerAttacker);

        gBattlescriptCurrInstr += 5;
        gBattleCommunication[0x7] = 1;
    }
}

static void Cmd_printselectionstringfromtable(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        const u16 *ptr = (const u16*) (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        ptr += gBattleCommunication[0x5];

        gActiveBattler = gBattlerAttacker;
        BtlController_EmitPrintSelectionString(0, *ptr);
        MarkBattlerForControllerExec(gActiveBattler);

        gBattlescriptCurrInstr += 5;
        gBattleCommunication[0x7] = 1;
    }
}

u8 GetBattlerTurnOrderNum(u8 battlerId)
{
    s32 i;
    for (i = 0; i < gBattlersCount; i++)
    {
        if (gBattlerByTurnOrder[i] == battlerId)
            break;
    }
    return i;
}
# 2213 "src/battle_script_commands.c"
void SetMoveEffect(bool8 primary, u8 certain)
{
    bool32 statusChanged = 0;
    u8 affectsUser = 0;
    bool32 noSunCanFreeze = 1;

    if (gBattleCommunication[0x3] & 0x40)
    {
        gEffectBattler = gBattlerAttacker;
        gBattleCommunication[0x3] &= ~(0x40);
        affectsUser = 0x40;
        gBattleScripting.battler = gBattlerTarget;
    }
    else
    {
        gEffectBattler = gBattlerTarget;
        gBattleScripting.battler = gBattlerAttacker;
    }

    if (gBattleMons[gEffectBattler].ability == 19 && !(gHitMarker & 0x00002000)
        && !primary && gBattleCommunication[0x3] <= 9)
        { gBattlescriptCurrInstr++; gBattleCommunication[0x3] = 0; return; }

    if (gSideStatuses[(GetBattlerPosition(gEffectBattler) & 1)] & (1 << 5) && !(gHitMarker & 0x00002000)
        && !primary && gBattleCommunication[0x3] <= 7)
        { gBattlescriptCurrInstr++; gBattleCommunication[0x3] = 0; return; }

    if (gBattleMons[gEffectBattler].hp == 0
        && gBattleCommunication[0x3] != 0xB
        && gBattleCommunication[0x3] != 0x1F)
        { gBattlescriptCurrInstr++; gBattleCommunication[0x3] = 0; return; }

    if (gBattleMons[gEffectBattler].status2 & 0x01000000 && affectsUser != 0x40)
        { gBattlescriptCurrInstr++; gBattleCommunication[0x3] = 0; return; }

    if (gBattleCommunication[0x3] <= 6)
    {
        switch (sStatusFlagsForMoveEffects[gBattleCommunication[0x3]])
        {
        case 0x7:

            if (gBattleMons[gEffectBattler].ability != 43)
            {
                for (gActiveBattler = 0;
                    gActiveBattler < gBattlersCount && !(gBattleMons[gActiveBattler].status2 & 0x00000070);
                    gActiveBattler++)
                {}
            }
            else
                gActiveBattler = gBattlersCount;

            if (gBattleMons[gEffectBattler].status1)
                break;
            if (gActiveBattler != gBattlersCount)
                break;
            if (gBattleMons[gEffectBattler].ability == 72)
                break;
            if (gBattleMons[gEffectBattler].ability == 15)
                break;

            CancelMultiTurnMoves(gEffectBattler);
            statusChanged = 1;
            break;
        case 0x8:
            if (gBattleMons[gEffectBattler].ability == 17
                && (primary == 1 || certain == 0x80))
            {
                gLastUsedAbility = 17;
                RecordAbilityBattle(gEffectBattler, 17);

                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_PSNPrevention;

                if (gHitMarker & 0x00002000)
                {
                    gBattleCommunication[0x5] = 1;
                    gHitMarker &= ~(0x00002000);
                }
                else
                {
                    gBattleCommunication[0x5] = 0;
                }
                { gBattleCommunication[0x3] = 0; return; }
            }
            if ((((gBattleMons[gEffectBattler].type1 == 3 || gBattleMons[gEffectBattler].type2 == 3)) || ((gBattleMons[gEffectBattler].type1 == 8 || gBattleMons[gEffectBattler].type2 == 8)))
                && (gHitMarker & 0x00002000)
                && (primary == 1 || certain == 0x80))
            {
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_PSNPrevention;

                gBattleCommunication[0x5] = 2;
                { gBattleCommunication[0x3] = 0; return; }
            }
            if (((gBattleMons[gEffectBattler].type1 == 3 || gBattleMons[gEffectBattler].type2 == 3)))
                break;
            if (((gBattleMons[gEffectBattler].type1 == 8 || gBattleMons[gEffectBattler].type2 == 8)))
                break;
            if (gBattleMons[gEffectBattler].status1)
                break;
            if (gBattleMons[gEffectBattler].ability == 17)
                break;

            statusChanged = 1;
            break;
        case 0x10:
            if (gBattleMons[gEffectBattler].ability == 41
                && (primary == 1 || certain == 0x80))
            {
                gLastUsedAbility = 41;
                RecordAbilityBattle(gEffectBattler, 41);

                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_BRNPrevention;
                if (gHitMarker & 0x00002000)
                {
                    gBattleCommunication[0x5] = 1;
                    gHitMarker &= ~(0x00002000);
                }
                else
                {
                    gBattleCommunication[0x5] = 0;
                }
                { gBattleCommunication[0x3] = 0; return; }
            }
            if (((gBattleMons[gEffectBattler].type1 == 10 || gBattleMons[gEffectBattler].type2 == 10))
                && (gHitMarker & 0x00002000)
                && (primary == 1 || certain == 0x80))
            {
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_BRNPrevention;

                gBattleCommunication[0x5] = 2;
                { gBattleCommunication[0x3] = 0; return; }
            }
            if (((gBattleMons[gEffectBattler].type1 == 10 || gBattleMons[gEffectBattler].type2 == 10)))
                break;
            if (gBattleMons[gEffectBattler].ability == 41)
                break;
            if (gBattleMons[gEffectBattler].status1)
                break;

            statusChanged = 1;
            break;
        case 0x20:
            if (((!(AbilityBattleEffects(0x13, 0, 13, 0, 0)) && !(AbilityBattleEffects(0x13, 0, 77, 0, 0)))) && gBattleWeather & ((1 << 5) | (1 << 6)))
                noSunCanFreeze = 0;
            if (((gBattleMons[gEffectBattler].type1 == 15 || gBattleMons[gEffectBattler].type2 == 15)))
                break;
            if (gBattleMons[gEffectBattler].status1)
                break;
            if (noSunCanFreeze == 0)
                break;
            if (gBattleMons[gEffectBattler].ability == 40)
                break;

            CancelMultiTurnMoves(gEffectBattler);
            statusChanged = 1;
            break;
        case 0x40:
            if (gBattleMons[gEffectBattler].ability == 7)
            {
                if (primary == 1 || certain == 0x80)
                {
                    gLastUsedAbility = 7;
                    RecordAbilityBattle(gEffectBattler, 7);

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_PRLZPrevention;

                    if (gHitMarker & 0x00002000)
                    {
                        gBattleCommunication[0x5] = 1;
                        gHitMarker &= ~(0x00002000);
                    }
                    else
                    {
                        gBattleCommunication[0x5] = 0;
                    }
                    { gBattleCommunication[0x3] = 0; return; }
                }
                else
                    break;
            }
            if (gBattleMons[gEffectBattler].status1)
                break;

            statusChanged = 1;
            break;
        case 0x80:
            if (gBattleMons[gEffectBattler].ability == 17 && (primary == 1 || certain == 0x80))
            {
                gLastUsedAbility = 17;
                RecordAbilityBattle(gEffectBattler, 17);

                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_PSNPrevention;

                if (gHitMarker & 0x00002000)
                {
                    gBattleCommunication[0x5] = 1;
                    gHitMarker &= ~(0x00002000);
                }
                else
                {
                    gBattleCommunication[0x5] = 0;
                }
                { gBattleCommunication[0x3] = 0; return; }
            }
            if ((((gBattleMons[gEffectBattler].type1 == 3 || gBattleMons[gEffectBattler].type2 == 3)) || ((gBattleMons[gEffectBattler].type1 == 8 || gBattleMons[gEffectBattler].type2 == 8)))
                && (gHitMarker & 0x00002000)
                && (primary == 1 || certain == 0x80))
            {
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_PSNPrevention;

                gBattleCommunication[0x5] = 2;
                { gBattleCommunication[0x3] = 0; return; }
            }
            if (gBattleMons[gEffectBattler].status1)
                break;
            if (!((gBattleMons[gEffectBattler].type1 == 3 || gBattleMons[gEffectBattler].type2 == 3)) && !((gBattleMons[gEffectBattler].type1 == 8 || gBattleMons[gEffectBattler].type2 == 8)))
            {
                if (gBattleMons[gEffectBattler].ability == 17)
                    break;


                gBattleMons[gEffectBattler].status1 &= ~(0x80);
                gBattleMons[gEffectBattler].status1 &= ~(0x8);
                statusChanged = 1;
                break;
            }
            else
            {
                gMoveResultFlags |= (1 << 3);
            }
            break;
        }
        if (statusChanged == 1)
        {
            BattleScriptPush(gBattlescriptCurrInstr + 1);

            if (sStatusFlagsForMoveEffects[gBattleCommunication[0x3]] == 0x7)
                gBattleMons[gEffectBattler].status1 |= ((Random() & 3) + 2);
            else
                gBattleMons[gEffectBattler].status1 |= sStatusFlagsForMoveEffects[gBattleCommunication[0x3]];

            gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[0x3]];

            gActiveBattler = gEffectBattler;
            BtlController_EmitSetMonData(0, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[gEffectBattler].status1);
            MarkBattlerForControllerExec(gActiveBattler);

            if (gHitMarker & 0x00002000)
            {
                gBattleCommunication[0x5] = 1;
                gHitMarker &= ~(0x00002000);
            }
            else
            {
                gBattleCommunication[0x5] = 0;
            }



            if (gBattleCommunication[0x3] == 0x2
             || gBattleCommunication[0x3] == 0x6
             || gBattleCommunication[0x3] == 0x5
             || gBattleCommunication[0x3] == 0x3)
             {
                u8* synchronizeEffect = &gBattleStruct->synchronizeMoveEffect;
                *synchronizeEffect = gBattleCommunication[0x3];
                gHitMarker |= 0x00004000;
             }
            return;
        }
        else if (statusChanged == 0)
        {
            gBattleCommunication[0x3] = 0;
            gBattlescriptCurrInstr++;
            return;
        }
        return;
    }
    else
    {
        if (gBattleMons[gEffectBattler].status2 & sStatusFlagsForMoveEffects[gBattleCommunication[0x3]])
        {
            gBattlescriptCurrInstr++;
        }
        else
        {
            u8 side;
            switch (gBattleCommunication[0x3])
            {
            case 0x7:
                if (gBattleMons[gEffectBattler].ability == 20
                    || gBattleMons[gEffectBattler].status2 & 0x00000007)
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleMons[gEffectBattler].status2 |= (((Random()) % 0x4)) + 2;

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[0x3]];
                }
                break;
            case 0x8:
                if (gBattleMons[gEffectBattler].ability == 39)
                {
                    if (primary == 1 || certain == 0x80)
                    {
                        gLastUsedAbility = 39;
                        RecordAbilityBattle(gEffectBattler, 39);
                        gBattlescriptCurrInstr = BattleScript_FlinchPrevention;
                    }
                    else
                    {
                        gBattlescriptCurrInstr++;
                    }
                }
                else
                {
                    if (GetBattlerTurnOrderNum(gEffectBattler) > gCurrentTurnActionNumber)
                        gBattleMons[gEffectBattler].status2 |= sStatusFlagsForMoveEffects[gBattleCommunication[0x3]];
                    gBattlescriptCurrInstr++;
                }
                break;
            case 0xA:
                if (!(gBattleMons[gEffectBattler].status2 & 0x00000070))
                {

                    gBattleMons[gEffectBattler].status2 |= 0x00001000;
                    gLockedMoves[gEffectBattler] = gCurrentMove;
                    gBattleMons[gEffectBattler].status2 |= ((Random() & 3) + 2) << 4;

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[0x3]];
                }
                else
                {
                    gBattlescriptCurrInstr++;
                }
                break;
            case 0xB:
                if ((GetBattlerPosition(gBattlerAttacker) & 1) == 0)
                {
                    u16 PayDay = gPaydayMoney;
                    gPaydayMoney += (gBattleMons[gBattlerAttacker].level * 5);
                    if (PayDay > gPaydayMoney)
                        gPaydayMoney = 0xFFFF;
                }
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[0x3]];
                break;
            case 0x9:
                if (gBattleMons[gEffectBattler].status1)
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleCommunication[0x3] = Random() % 3 + 3;
                    SetMoveEffect(0, 0);
                }
                break;
            case 0xC:
                gBattleMons[gEffectBattler].status2 |= 0x00001000;
                gLockedMoves[gEffectBattler] = gCurrentMove;
                gProtectStructs[gEffectBattler].chargingTurn = 1;
                gBattlescriptCurrInstr++;
                break;
            case 0xD:
                if (gBattleMons[gEffectBattler].status2 & 0x0000E000)
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleMons[gEffectBattler].status2 |= ((Random() & 3) + 3) << 0xD;

                    *(gBattleStruct->wrappedMove + gEffectBattler * 2 + 0) = gCurrentMove;
                    *(gBattleStruct->wrappedMove + gEffectBattler * 2 + 1) = gCurrentMove >> 8;
                    *(gBattleStruct->wrappedBy + gEffectBattler) = gBattlerAttacker;

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[0x3]];

                    for (gBattleCommunication[0x5] = 0; ; gBattleCommunication[0x5]++)
                    {
                        if (gBattleCommunication[0x5] > 4)
                            break;
                        if (gTrappingMoves[gBattleCommunication[0x5]] == gCurrentMove)
                            break;
                    }
                }
                break;
            case 0xE:
                gBattleMoveDamage = (gHpDealt) / 4;
                if (gBattleMoveDamage == 0)
                    gBattleMoveDamage = 1;

                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[0x3]];
                break;
            case 0xF:
            case 0x10:
            case 0x11:
            case 0x12:
            case 0x13:
            case 0x14:
            case 0x15:
                if (ChangeStatBuffs(((((1) << 4) & 0xF0)),
                                    gBattleCommunication[0x3] - 0xF + 1,
                                    affectsUser, 0))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleScripting.animArg1 = gBattleCommunication[0x3] & ~(0x40 | 0x80);
                    gBattleScripting.animArg2 = 0;
                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_StatUp;
                }
                break;
            case 0x16:
            case 0x17:
            case 0x18:
            case 0x19:
            case 0x1A:
            case 0x1B:
            case 0x1C:
                if (ChangeStatBuffs(((((1) << 4) & 0xF0)) | 0x80,
                                    gBattleCommunication[0x3] - 0x16 + 1,
                                     affectsUser, 0))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleScripting.animArg1 = gBattleCommunication[0x3] & ~(0x40 | 0x80);
                    gBattleScripting.animArg2 = 0;
                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_StatDown;
                }
                break;
            case 0x27:
            case 0x28:
            case 0x29:
            case 0x2A:
            case 0x2B:
            case 0x2C:
            case 0x2D:
                if (ChangeStatBuffs(((((2) << 4) & 0xF0)),
                                    gBattleCommunication[0x3] - 0x27 + 1,
                                    affectsUser, 0))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleScripting.animArg1 = gBattleCommunication[0x3] & ~(0x40 | 0x80);
                    gBattleScripting.animArg2 = 0;
                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_StatUp;
                }
                break;
            case 0x2E:
            case 0x2F:
            case 0x30:
            case 0x31:
            case 0x32:
            case 0x33:
            case 0x34:
                if (ChangeStatBuffs(((((2) << 4) & 0xF0)) | 0x80,
                                    gBattleCommunication[0x3] - 0x2E + 1,
                                    affectsUser, 0))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleScripting.animArg1 = gBattleCommunication[0x3] & ~(0x40 | 0x80);
                    gBattleScripting.animArg2 = 0;
                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_StatDown;
                }
                break;
            case 0x1D:
                gBattleMons[gEffectBattler].status2 |= 0x00400000;
                gDisableStructs[gEffectBattler].rechargeTimer = 2;
                gLockedMoves[gEffectBattler] = gCurrentMove;
                gBattlescriptCurrInstr++;
                break;
            case 0x1E:
                gBattleMons[gBattlerAttacker].status2 |= 0x00800000;
                gBattlescriptCurrInstr++;
                break;
            case 0x1F:
                {
                    if (gBattleTypeFlags & 0x4000000)
                    {
                        gBattlescriptCurrInstr++;
                        break;
                    }

                    side = GetBattlerSide(gBattlerAttacker);
                    if (GetBattlerSide(gBattlerAttacker) == 1
                        && !(gBattleTypeFlags &
                             (0x0800
                              | (0x0100 | 0x10000 | 0x20000 | 0x40000 | 0x80000 | 0x100000 | 0x200000)
                              | 0x0002
                              | 0x2000000
                              | 0x8000000)))
                    {
                        gBattlescriptCurrInstr++;
                    }
                    else if (!(gBattleTypeFlags &
                          (0x0800
                           | (0x0100 | 0x10000 | 0x20000 | 0x40000 | 0x80000 | 0x100000 | 0x200000)
                           | 0x0002
                           | 0x2000000
                           | 0x8000000))
                        && (gWishFutureKnock.knockedOffMons[side] & gBitTable[gBattlerPartyIndexes[gBattlerAttacker]]))
                    {
                        gBattlescriptCurrInstr++;
                    }
                    else if (gBattleMons[gBattlerTarget].item
                        && gBattleMons[gBattlerTarget].ability == 60)
                    {
                        BattleScriptPushCursor();
                        gBattlescriptCurrInstr = BattleScript_NoItemSteal;

                        gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
                        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
                    }
                    else if (gBattleMons[gBattlerAttacker].item != 0
                        || gBattleMons[gBattlerTarget].item == 175
                        || ((gBattleMons[gBattlerTarget].item == 121 || gBattleMons[gBattlerTarget].item == 122 || gBattleMons[gBattlerTarget].item == 123 || gBattleMons[gBattlerTarget].item == 124 || gBattleMons[gBattlerTarget].item == 125 || gBattleMons[gBattlerTarget].item == 126 || gBattleMons[gBattlerTarget].item == 127 || gBattleMons[gBattlerTarget].item == 128 || gBattleMons[gBattlerTarget].item == 129 || gBattleMons[gBattlerTarget].item == 130 || gBattleMons[gBattlerTarget].item == 131 || gBattleMons[gBattlerTarget].item == 132))
                        || gBattleMons[gBattlerTarget].item == 0)
                    {
                        gBattlescriptCurrInstr++;
                    }
                    else
                    {
                        u16* changedItem = &gBattleStruct->changedItems[gBattlerAttacker];
                        gLastUsedItem = *changedItem = gBattleMons[gBattlerTarget].item;
                        gBattleMons[gBattlerTarget].item = 0;

                        gActiveBattler = gBattlerAttacker;
                        BtlController_EmitSetMonData(0, REQUEST_HELDITEM_BATTLE, 0, 2, &gLastUsedItem);
                        MarkBattlerForControllerExec(gBattlerAttacker);

                        gActiveBattler = gBattlerTarget;
                        BtlController_EmitSetMonData(0, REQUEST_HELDITEM_BATTLE, 0, 2, &gBattleMons[gBattlerTarget].item);
                        MarkBattlerForControllerExec(gBattlerTarget);

                        BattleScriptPush(gBattlescriptCurrInstr + 1);
                        gBattlescriptCurrInstr = BattleScript_ItemSteal;

                        *(u8*)((u8*)(&gBattleStruct->choicedMove[gBattlerTarget]) + 0) = 0;
                        *(u8*)((u8*)(&gBattleStruct->choicedMove[gBattlerTarget]) + 1) = 0;
                    }

                }
                break;
            case 0x20:
                gBattleMons[gBattlerTarget].status2 |= 0x04000000;
                gDisableStructs[gBattlerTarget].battlerPreventingEscape = gBattlerAttacker;
                gBattlescriptCurrInstr++;
                break;
            case 0x21:
                gBattleMons[gBattlerTarget].status2 |= 0x08000000;
                gBattlescriptCurrInstr++;
                break;
            case 0x22:
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_AllStatsUp;
                break;
            case 0x23:
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_RapidSpinAway;
                break;
            case 0x24:
                if (!(gBattleMons[gBattlerTarget].status1 & 0x40))
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleMons[gBattlerTarget].status1 &= ~(0x40);

                    gActiveBattler = gBattlerTarget;
                    BtlController_EmitSetMonData(0, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[gActiveBattler].status1);
                    MarkBattlerForControllerExec(gActiveBattler);

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_TargetPRLZHeal;
                }
                break;
            case 0x25:
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_AtkDefDown;
                break;
            case 0x26:
                gBattleMoveDamage = gHpDealt / 3;
                if (gBattleMoveDamage == 0)
                    gBattleMoveDamage = 1;

                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = sMoveEffectBS_Ptrs[gBattleCommunication[0x3]];
                break;
            case 0x35:
                if (gBattleMons[gEffectBattler].status2 & 0x00000C00)
                {
                    gBattlescriptCurrInstr++;
                }
                else
                {
                    gBattleMons[gEffectBattler].status2 |= 0x00001000;
                    gLockedMoves[gEffectBattler] = gCurrentMove;
                    gBattleMons[gEffectBattler].status2 |= (((Random() & 1) + 2) << 0xA);
                }
                break;
            case 0x36:
                if (gBattleMons[gEffectBattler].ability == 60)
                {
                    if (gBattleMons[gEffectBattler].item == 0)
                    {
                        gBattlescriptCurrInstr++;
                    }
                    else
                    {
                        gLastUsedAbility = 60;
                        gBattlescriptCurrInstr = BattleScript_StickyHoldActivates;
                        RecordAbilityBattle(gEffectBattler, 60);
                    }
                    break;
                }
                if (gBattleMons[gEffectBattler].item)
                {
                    side = GetBattlerSide(gEffectBattler);

                    gLastUsedItem = gBattleMons[gEffectBattler].item;
                    gBattleMons[gEffectBattler].item = 0;
                    gWishFutureKnock.knockedOffMons[side] |= gBitTable[gBattlerPartyIndexes[gEffectBattler]];

                    BattleScriptPush(gBattlescriptCurrInstr + 1);
                    gBattlescriptCurrInstr = BattleScript_KnockedOff;

                    *(u8*)((u8*)(&gBattleStruct->choicedMove[gEffectBattler]) + 0) = 0;
                    *(u8*)((u8*)(&gBattleStruct->choicedMove[gEffectBattler]) + 1) = 0;
                }
                else
                {
                    gBattlescriptCurrInstr++;
                }
                break;
            case 0x3B:
                BattleScriptPush(gBattlescriptCurrInstr + 1);
                gBattlescriptCurrInstr = BattleScript_SAtkDown2;
                break;
            }
        }
    }

    gBattleCommunication[0x3] = 0;
}

static void Cmd_seteffectwithchance(void)
{
    u32 percentChance;

    if (gBattleMons[gBattlerAttacker].ability == 32)
        percentChance = gBattleMoves[gCurrentMove].secondaryEffectChance * 2;
    else
        percentChance = gBattleMoves[gCurrentMove].secondaryEffectChance;

    if (gBattleCommunication[0x3] & 0x80
        && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
    {
        gBattleCommunication[0x3] &= ~(0x80);
        SetMoveEffect(0, 0x80);
    }
    else if (Random() % 100 < percentChance
             && gBattleCommunication[0x3]
             && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
    {
        if (percentChance >= 100)
            SetMoveEffect(0, 0x80);
        else
            SetMoveEffect(0, 0);
    }
    else
    {
        gBattlescriptCurrInstr++;
    }

    gBattleCommunication[0x3] = 0;
    gBattleScripting.multihitMoveEffect = 0;
}

static void Cmd_seteffectprimary(void)
{
    SetMoveEffect(1, 0);
}

static void Cmd_seteffectsecondary(void)
{
    SetMoveEffect(0, 0);
}

static void Cmd_clearstatusfromeffect(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (gBattleCommunication[0x3] <= 0x6)
        gBattleMons[gActiveBattler].status1 &= (~sStatusFlagsForMoveEffects[gBattleCommunication[0x3]]);
    else
        gBattleMons[gActiveBattler].status2 &= (~sStatusFlagsForMoveEffects[gBattleCommunication[0x3]]);

    gBattleCommunication[0x3] = 0;
    gBattlescriptCurrInstr += 2;
    gBattleScripting.multihitMoveEffect = 0;
}

static void Cmd_tryfaintmon(void)
{
    const u8 *BS_ptr;

    if (gBattlescriptCurrInstr[2] != 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        if (gHitMarker & (gBitTable[gActiveBattler] << 0x1C))
        {
            BS_ptr = (u8*) ((gBattlescriptCurrInstr + 3)[0] | ((gBattlescriptCurrInstr + 3)[1] << 8) | ((gBattlescriptCurrInstr + 3)[2] << 16) | ((gBattlescriptCurrInstr + 3)[3] << 24));

            BattleScriptPop();
            gBattlescriptCurrInstr = BS_ptr;
            gSideStatuses[GetBattlerSide(gActiveBattler)] &= ~((1 << 9));
        }
        else
        {
            gBattlescriptCurrInstr += 7;
        }
    }
    else
    {
        u8 battlerId;

        if (gBattlescriptCurrInstr[1] == 1)
        {
            gActiveBattler = gBattlerAttacker;
            battlerId = gBattlerTarget;
            BS_ptr = BattleScript_FaintAttacker;
        }
        else
        {
            gActiveBattler = gBattlerTarget;
            battlerId = gBattlerAttacker;
            BS_ptr = BattleScript_FaintTarget;
        }
        if (!(gAbsentBattlerFlags & gBitTable[gActiveBattler])
         && gBattleMons[gActiveBattler].hp == 0)
        {
            gHitMarker |= (gBitTable[gActiveBattler] << 0x1C);
            BattleScriptPush(gBattlescriptCurrInstr + 7);
            gBattlescriptCurrInstr = BS_ptr;
            if (GetBattlerSide(gActiveBattler) == 0)
            {
                gHitMarker |= 0x00400000;
                if (gBattleResults.playerFaintCounter < 0xFF)
                    gBattleResults.playerFaintCounter++;
                AdjustFriendshipOnBattleFaint(gActiveBattler);
            }
            else
            {
                if (gBattleResults.opponentFaintCounter < 0xFF)
                    gBattleResults.opponentFaintCounter++;
                gBattleResults.lastOpponentSpecies = GetMonData(&gEnemyParty[gBattlerPartyIndexes[gActiveBattler]], 11, ((void *)0));
            }
            if ((gHitMarker & 0x00000040) && gBattleMons[gBattlerAttacker].hp != 0)
            {
                gHitMarker &= ~(0x00000040);
                BattleScriptPush(gBattlescriptCurrInstr);
                gBattleMoveDamage = gBattleMons[battlerId].hp;
                gBattlescriptCurrInstr = BattleScript_DestinyBondTakesLife;
            }
            if ((gStatuses3[gBattlerTarget] & 0x4000)
             && !(gHitMarker & 0x01000000)
             && GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gBattlerTarget)
             && gBattleMons[gBattlerAttacker].hp != 0
             && gCurrentMove != 165)
            {
                u8 moveIndex = *(gBattleStruct->chosenMovePositions + gBattlerAttacker);

                gBattleMons[gBattlerAttacker].pp[moveIndex] = 0;
                BattleScriptPush(gBattlescriptCurrInstr);
                gBattlescriptCurrInstr = BattleScript_GrudgeTakesPp;
                gActiveBattler = gBattlerAttacker;
                BtlController_EmitSetMonData(0, moveIndex + REQUEST_PPMOVE1_BATTLE, 0, 1, &gBattleMons[gActiveBattler].pp[moveIndex]);
                MarkBattlerForControllerExec(gActiveBattler);

                { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 2; gBattleTextBuff1[2] = (gBattleMons[gBattlerAttacker].moves[moveIndex] & 0xFF); gBattleTextBuff1[3] = (gBattleMons[gBattlerAttacker].moves[moveIndex] & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }
            }
        }
        else
        {
            gBattlescriptCurrInstr += 7;
        }
    }
}

static void Cmd_dofaintanimation(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        BtlController_EmitFaintAnimation(0);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 2;
    }
}

static void Cmd_cleareffectsonfaint(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

        if (!(gBattleTypeFlags & 0x40000) || gBattleMons[gActiveBattler].hp == 0)
        {
            gBattleMons[gActiveBattler].status1 = 0;
            BtlController_EmitSetMonData(0, REQUEST_STATUS_BATTLE, 0, 0x4, &gBattleMons[gActiveBattler].status1);
            MarkBattlerForControllerExec(gActiveBattler);
        }

        FaintClearSetData();
        gBattlescriptCurrInstr += 2;
    }
}

static void Cmd_jumpifstatus(void)
{
    u8 battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    u32 flags = ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    const u8* jumpPtr = (void*) ((gBattlescriptCurrInstr + 6)[0] + ((gBattlescriptCurrInstr + 6)[1] << 8) + ((gBattlescriptCurrInstr + 6)[2] << 16) + ((gBattlescriptCurrInstr + 6)[3] << 24));

    if (gBattleMons[battlerId].status1 & flags && gBattleMons[battlerId].hp)
        gBattlescriptCurrInstr = jumpPtr;
    else
        gBattlescriptCurrInstr += 10;
}

static void Cmd_jumpifstatus2(void)
{
    u8 battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    u32 flags = ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    const u8* jumpPtr = (void*) ((gBattlescriptCurrInstr + 6)[0] + ((gBattlescriptCurrInstr + 6)[1] << 8) + ((gBattlescriptCurrInstr + 6)[2] << 16) + ((gBattlescriptCurrInstr + 6)[3] << 24));

    if (gBattleMons[battlerId].status2 & flags && gBattleMons[battlerId].hp)
        gBattlescriptCurrInstr = jumpPtr;
    else
        gBattlescriptCurrInstr += 10;
}

static void Cmd_jumpifability(void)
{
    u8 battlerId;
    u8 ability = gBattlescriptCurrInstr[2];
    const u8* jumpPtr = (void*) ((gBattlescriptCurrInstr + 3)[0] + ((gBattlescriptCurrInstr + 3)[1] << 8) + ((gBattlescriptCurrInstr + 3)[2] << 16) + ((gBattlescriptCurrInstr + 3)[3] << 24));

    if (gBattlescriptCurrInstr[1] == 8)
    {
        battlerId = AbilityBattleEffects(0xD, gBattlerAttacker, ability, 0, 0);
        if (battlerId)
        {
            gLastUsedAbility = ability;
            gBattlescriptCurrInstr = jumpPtr;
            RecordAbilityBattle(battlerId - 1, gLastUsedAbility);
            gBattleScripting.battlerWithAbility = battlerId - 1;
        }
        else
            gBattlescriptCurrInstr += 7;
    }
    else if (gBattlescriptCurrInstr[1] == 9)
    {
        battlerId = AbilityBattleEffects(0xC, gBattlerAttacker, ability, 0, 0);
        if (battlerId)
        {
            gLastUsedAbility = ability;
            gBattlescriptCurrInstr = jumpPtr;
            RecordAbilityBattle(battlerId - 1, gLastUsedAbility);
            gBattleScripting.battlerWithAbility = battlerId - 1;
        }
        else
            gBattlescriptCurrInstr += 7;
    }
    else
    {
        battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        if (gBattleMons[battlerId].ability == ability)
        {
            gLastUsedAbility = ability;
            gBattlescriptCurrInstr = jumpPtr;
            RecordAbilityBattle(battlerId, gLastUsedAbility);
            gBattleScripting.battlerWithAbility = battlerId;
        }
        else
            gBattlescriptCurrInstr += 7;
    }
}

static void Cmd_jumpifsideaffecting(void)
{
    u8 side;
    u16 flags;
    const u8* jumpPtr;

    if (gBattlescriptCurrInstr[1] == 1)
        side = (GetBattlerPosition(gBattlerAttacker) & 1);
    else
        side = (GetBattlerPosition(gBattlerTarget) & 1);

    flags = ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8));
    jumpPtr = (void*) ((gBattlescriptCurrInstr + 4)[0] + ((gBattlescriptCurrInstr + 4)[1] << 8) + ((gBattlescriptCurrInstr + 4)[2] << 16) + ((gBattlescriptCurrInstr + 4)[3] << 24));

    if (gSideStatuses[side] & flags)
        gBattlescriptCurrInstr = jumpPtr;
    else
        gBattlescriptCurrInstr += 8;
}

static void Cmd_jumpifstat(void)
{
    u8 ret = 0;
    u8 battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    u8 value = gBattleMons[battlerId].statStages[gBattlescriptCurrInstr[3]];

    switch (gBattlescriptCurrInstr[2])
    {
    case 0x0:
        if (value == gBattlescriptCurrInstr[4])
            ret++;
        break;
    case 0x1:
        if (value != gBattlescriptCurrInstr[4])
            ret++;
        break;
    case 0x2:
        if (value > gBattlescriptCurrInstr[4])
            ret++;
        break;
    case 0x3:
        if (value < gBattlescriptCurrInstr[4])
            ret++;
        break;
    case 0x4:
        if (value & gBattlescriptCurrInstr[4])
            ret++;
        break;
    case 0x5:
        if (!(value & gBattlescriptCurrInstr[4]))
            ret++;
        break;
    }

    if (ret)
        gBattlescriptCurrInstr = (void*) ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));
    else
        gBattlescriptCurrInstr += 9;
}

static void Cmd_jumpifstatus3condition(void)
{
    u32 flags;
    const u8 *jumpPtr;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    flags = ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    jumpPtr = (void*) ((gBattlescriptCurrInstr + 7)[0] + ((gBattlescriptCurrInstr + 7)[1] << 8) + ((gBattlescriptCurrInstr + 7)[2] << 16) + ((gBattlescriptCurrInstr + 7)[3] << 24));

    if (gBattlescriptCurrInstr[6])
    {
        if ((gStatuses3[gActiveBattler] & flags) != 0)
            gBattlescriptCurrInstr += 11;
        else
            gBattlescriptCurrInstr = jumpPtr;
    }
    else
    {
        if ((gStatuses3[gActiveBattler] & flags) != 0)
            gBattlescriptCurrInstr = jumpPtr;
        else
            gBattlescriptCurrInstr += 11;
    }
}

static void Cmd_jumpiftype(void)
{
    u8 battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    u8 type = gBattlescriptCurrInstr[2];
    const u8* jumpPtr = (void*) ((gBattlescriptCurrInstr + 3)[0] + ((gBattlescriptCurrInstr + 3)[1] << 8) + ((gBattlescriptCurrInstr + 3)[2] << 16) + ((gBattlescriptCurrInstr + 3)[3] << 24));

    if (((gBattleMons[battlerId].type1 == type || gBattleMons[battlerId].type2 == type)))
        gBattlescriptCurrInstr = jumpPtr;
    else
        gBattlescriptCurrInstr += 7;
}

static void Cmd_getexp(void)
{
    u16 item;
    s32 i;
    u8 holdEffect;
    s32 sentIn;
    s32 viaExpShare = 0;
    u16 *exp = &gBattleStruct->expValue;

    gBattlerFainted = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    sentIn = gSentPokesToOpponent[(gBattlerFainted & 2) >> 1];

    switch (gBattleScripting.getexpState)
    {
    case 0:
        if (GetBattlerSide(gBattlerFainted) != 1 || (gBattleTypeFlags &
             (0x0002
              | 0x2000000
              | 0x4000000
              | (0x0100 | 0x10000 | 0x20000 | 0x40000 | 0x80000 | 0x100000 | 0x200000)
              | 0x0080
              | 0x0100
              | 0x0800)))
        {
            gBattleScripting.getexpState = 6;
        }
        else
        {
            gBattleScripting.getexpState++;
            gBattleStruct->givenExpMons |= gBitTable[gBattlerPartyIndexes[gBattlerFainted]];
        }
        break;
    case 1:
        {
            u16 calculatedExp;
            s32 viaSentIn;

            for (viaSentIn = 0, i = 0; i < 6; i++)
            {
                if (GetMonData(&gPlayerParty[i], 11) == 0 || GetMonData(&gPlayerParty[i], 57) == 0)
                    continue;
                if (gBitTable[i] & sentIn)
                    viaSentIn++;

                item = GetMonData(&gPlayerParty[i], 12);

                if (item == 175)
                    holdEffect = gSaveBlock1Ptr->enigmaBerry.holdEffect;
                else
                    holdEffect = ItemId_GetHoldEffect(item);

                if (holdEffect == 25)
                    viaExpShare++;
            }

            calculatedExp = gBaseStats[gBattleMons[gBattlerFainted].species].expYield * gBattleMons[gBattlerFainted].level / 7;

            if (viaExpShare)
            {
                *exp = calculatedExp / 2 / viaSentIn;
                if (*exp == 0)
                    *exp = 1;

                gExpShareExp = calculatedExp / 2 / viaExpShare;
                if (gExpShareExp == 0)
                    gExpShareExp = 1;
            }
            else
            {
                *exp = calculatedExp / viaSentIn;
                if (*exp == 0)
                    *exp = 1;
                gExpShareExp = 0;
            }

            gBattleScripting.getexpState++;
            gBattleStruct->expGetterMonId = 0;
            gBattleStruct->sentInPokes = sentIn;
        }

    case 2:
        if (gBattleControllerExecFlags == 0)
        {
            item = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 12);

            if (item == 175)
                holdEffect = gSaveBlock1Ptr->enigmaBerry.holdEffect;
            else
                holdEffect = ItemId_GetHoldEffect(item);

            if (holdEffect != 25 && !(gBattleStruct->sentInPokes & 1))
            {
                *(&gBattleStruct->sentInPokes) >>= 1;
                gBattleScripting.getexpState = 5;
                gBattleMoveDamage = 0;
            }
            else if (GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56) == 100)
            {
                *(&gBattleStruct->sentInPokes) >>= 1;
                gBattleScripting.getexpState = 5;
                gBattleMoveDamage = 0;
            }
            else
            {

                if (!(gBattleTypeFlags & 0x0008) && gBattleMons[0].hp && !gBattleStruct->wildVictorySong)
                {
                    BattleStopLowHpSound();
                    PlayBGM(353);
                    gBattleStruct->wildVictorySong++;
                }

                if (GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 57))
                {
                    if (gBattleStruct->sentInPokes & 1)
                        gBattleMoveDamage = *exp;
                    else
                        gBattleMoveDamage = 0;

                    if (holdEffect == 25)
                        gBattleMoveDamage += gExpShareExp;
                    if (holdEffect == 40)
                        gBattleMoveDamage = (gBattleMoveDamage * 150) / 100;
                    if (gBattleTypeFlags & 0x0008)
                        gBattleMoveDamage = (gBattleMoveDamage * 150) / 100;

                    if (IsTradedMon(&gPlayerParty[gBattleStruct->expGetterMonId]))
                    {

                        if (gBattleTypeFlags & 0x400000 && gBattleStruct->expGetterMonId >= 3)
                        {
                            i = 329;
                        }
                        else
                        {
                            gBattleMoveDamage = (gBattleMoveDamage * 150) / 100;
                            i = 330;
                        }
                    }
                    else
                    {
                        i = 329;
                    }


                    if (gBattleTypeFlags & 0x0001)
                    {
                        if (!(gBattlerPartyIndexes[2] != gBattleStruct->expGetterMonId) && !(gAbsentBattlerFlags & gBitTable[2]))
                            gBattleStruct->expGetterBattlerId = 2;
                        else
                        {
                            if (!(gAbsentBattlerFlags & gBitTable[0]))
                                gBattleStruct->expGetterBattlerId = 0;
                            else
                                gBattleStruct->expGetterBattlerId = 2;
                        }
                    }
                    else
                    {
                        gBattleStruct->expGetterBattlerId = 0;
                    }

                    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 4; gBattleTextBuff1[2] = gBattleStruct->expGetterBattlerId; gBattleTextBuff1[3] = gBattleStruct->expGetterMonId; gBattleTextBuff1[4] = 0xFF; };

                    { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 0; gBattleTextBuff2[2] = i; gBattleTextBuff2[3] = (i & 0xFF00) >> 8; gBattleTextBuff2[4] = 0xFF; };
                    { gBattleTextBuff3[0] = 0xFD; gBattleTextBuff3[1] = 1; gBattleTextBuff3[2] = 4; gBattleTextBuff3[3] = 5; gBattleTextBuff3[4] = (gBattleMoveDamage); gBattleTextBuff3[5] = (gBattleMoveDamage & 0x0000FF00) >> 8; gBattleTextBuff3[6] = (gBattleMoveDamage & 0x00FF0000) >> 16; gBattleTextBuff3[7] = (gBattleMoveDamage & 0xFF000000) >> 24; gBattleTextBuff3[8] = 0xFF; };

                    PrepareStringBattle(13, gBattleStruct->expGetterBattlerId);
                    MonGainEVs(&gPlayerParty[gBattleStruct->expGetterMonId], gBattleMons[gBattlerFainted].species);
                }
                gBattleStruct->sentInPokes >>= 1;
                gBattleScripting.getexpState++;
            }
        }
        break;
    case 3:
        if (gBattleControllerExecFlags == 0)
        {
            gBattleBufferB[gBattleStruct->expGetterBattlerId][0] = 0;
            if (GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 57) && GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56) != 100)
            {
                gBattleResources->beforeLvlUp->stats[0] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 58);
                gBattleResources->beforeLvlUp->stats[1] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 59);
                gBattleResources->beforeLvlUp->stats[2] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 60);
                gBattleResources->beforeLvlUp->stats[3] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 61);
                gBattleResources->beforeLvlUp->stats[4] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 62);
                gBattleResources->beforeLvlUp->stats[5] = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 63);

                gActiveBattler = gBattleStruct->expGetterBattlerId;
                BtlController_EmitExpUpdate(0, gBattleStruct->expGetterMonId, gBattleMoveDamage);
                MarkBattlerForControllerExec(gActiveBattler);
            }
            gBattleScripting.getexpState++;
        }
        break;
    case 4:
        if (gBattleControllerExecFlags == 0)
        {
            gActiveBattler = gBattleStruct->expGetterBattlerId;
            if (gBattleBufferB[gActiveBattler][0] == CONTROLLER_TWORETURNVALUES && gBattleBufferB[gActiveBattler][1] == 11)
            {
                if (gBattleTypeFlags & 0x0008 && gBattlerPartyIndexes[gActiveBattler] == gBattleStruct->expGetterMonId)
                    HandleLowHpMusicChange(&gPlayerParty[gBattlerPartyIndexes[gActiveBattler]], gActiveBattler);

                { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 4; gBattleTextBuff1[2] = gActiveBattler; gBattleTextBuff1[3] = gBattleStruct->expGetterMonId; gBattleTextBuff1[4] = 0xFF; };
                { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 1; gBattleTextBuff2[2] = 1; gBattleTextBuff2[3] = 3; gBattleTextBuff2[4] = (GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56)); gBattleTextBuff2[5] = 0xFF; };

                BattleScriptPushCursor();
                gLeveledUpInBattle |= gBitTable[gBattleStruct->expGetterMonId];
                gBattlescriptCurrInstr = BattleScript_LevelUp;
                gBattleMoveDamage = (gBattleBufferB[gActiveBattler][2] | (gBattleBufferB[gActiveBattler][3] << 8));
                AdjustFriendship(&gPlayerParty[gBattleStruct->expGetterMonId], 0);


                if (gBattlerPartyIndexes[0] == gBattleStruct->expGetterMonId && gBattleMons[0].hp)
                {
                    gBattleMons[0].level = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56);
                    gBattleMons[0].hp = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 57);
                    gBattleMons[0].maxHP = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 58);
                    gBattleMons[0].attack = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 59);
                    gBattleMons[0].defense = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 60);

                    gBattleMons[0].speed = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 61);
                    gBattleMons[0].speed = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 61);

                    gBattleMons[0].spAttack = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 62);
                    gBattleMons[0].spDefense = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 63);
                }

                if (gBattlerPartyIndexes[2] == gBattleStruct->expGetterMonId && gBattleMons[2].hp && (gBattleTypeFlags & 0x0001))
                {
                    gBattleMons[2].level = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56);
                    gBattleMons[2].hp = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 57);
                    gBattleMons[2].maxHP = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 58);
                    gBattleMons[2].attack = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 59);
                    gBattleMons[2].defense = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 60);

                    gBattleMons[2].speed = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 61);
                    gBattleMons[2].speed = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 61);

                    gBattleMons[2].spAttack = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 62);
                }
                gBattleScripting.getexpState = 5;
            }
            else
            {
                gBattleMoveDamage = 0;
                gBattleScripting.getexpState = 5;
            }
        }
        break;
    case 5:
        if (gBattleMoveDamage)
        {
            gBattleScripting.getexpState = 3;
        }
        else
        {
            gBattleStruct->expGetterMonId++;
            if (gBattleStruct->expGetterMonId <= 5)
                gBattleScripting.getexpState = 2;
            else
                gBattleScripting.getexpState = 6;
        }
        break;
    case 6:
        if (gBattleControllerExecFlags == 0)
        {

            gBattleMons[gBattlerFainted].item = 0;
            gBattleMons[gBattlerFainted].ability = 0;
            gBattlescriptCurrInstr += 2;
        }
        break;
    }
}
# 3586 "src/battle_script_commands.c"
__attribute__((naked))
static void Cmd_unknown_24(void)
{
    asm("\n        .syntax unified\n        push {r4-r7,lr}\n        mov r7, r8\n        push {r7}\n        movs r6, 0\n        ldr r0, =gBattleControllerExecFlags\n        ldr r0, [r0]\n        cmp r0, 0\n        beq _0804ACE2\n        b _0804AF22\n    _0804ACE2:\n        ldr r0, =gBattleTypeFlags\n        ldr r0, [r0]\n        movs r1, 0x80\n        lsls r1, 15\n        ands r0, r1\n        cmp r0, 0\n        beq _0804AD48\n        ldr r0, =gPartnerTrainerId\n        ldrh r1, [r0]\n        ldr r0, =0x00000c03\n        cmp r1, r0\n        bne _0804AD48\n        movs r5, 0\n    _0804ACFC:\n        movs r0, 0x64\n        adds r1, r5, 0\n        muls r1, r0\n        ldr r0, =gPlayerParty\n        adds r4, r1, r0\n        adds r0, r4, 0\n        movs r1, 0xB\n        bl GetMonData\n        cmp r0, 0\n        beq _0804AD2C\n        adds r0, r4, 0\n        movs r1, 0x2D\n        bl GetMonData\n        cmp r0, 0\n        bne _0804AD2C\n        adds r0, r4, 0\n        movs r1, 0x39\n        bl GetMonData\n        adds r0, r6, r0\n        lsls r0, 16\n        lsrs r6, r0, 16\n    _0804AD2C:\n        adds r5, 0x1\n        cmp r5, 0x2\n        ble _0804ACFC\n        b _0804ADA8\n        .pool\n    _0804AD48:\n        movs r5, 0\n    _0804AD4A:\n        movs r0, 0x64\n        adds r1, r5, 0\n        muls r1, r0\n        ldr r0, =gPlayerParty\n        adds r4, r1, r0\n        adds r0, r4, 0\n        movs r1, 0xB\n        bl GetMonData\n        cmp r0, 0\n        beq _0804ADA2\n        adds r0, r4, 0\n        movs r1, 0x2D\n        bl GetMonData\n        cmp r0, 0\n        bne _0804ADA2\n        ldr r0, =gBattleTypeFlags\n        ldr r0, [r0]\n        movs r1, 0x80\n        lsls r1, 11\n        ands r0, r1\n        cmp r0, 0\n        beq _0804AD94\n        ldr r0, =gBattleStruct\n        ldr r0, [r0]\n        movs r1, 0xA8\n        lsls r1, 2\n        adds r0, r1\n        ldrb r1, [r0]\n        ldr r2, =gBitTable\n        lsls r0, r5, 2\n        adds r0, r2\n        ldr r0, [r0]\n        ands r1, r0\n        cmp r1, 0\n        bne _0804ADA2\n    _0804AD94:\n        adds r0, r4, 0\n        movs r1, 0x39\n        bl GetMonData\n        adds r0, r6, r0\n        lsls r0, 16\n        lsrs r6, r0, 16\n    _0804ADA2:\n        adds r5, 0x1\n        cmp r5, 0x5\n        ble _0804AD4A\n    _0804ADA8:\n        cmp r6, 0\n        bne _0804ADB6\n        ldr r0, =gBattleOutcome\n        ldrb r1, [r0]\n        movs r2, 0x2\n        orrs r1, r2\n        strb r1, [r0]\n    _0804ADB6:\n        movs r6, 0\n        movs r5, 0\n    _0804ADBA:\n        movs r0, 0x64\n        adds r1, r5, 0\n        muls r1, r0\n        ldr r0, =gEnemyParty\n        adds r4, r1, r0\n        adds r0, r4, 0\n        movs r1, 0xB\n        bl GetMonData\n        cmp r0, 0\n        beq _0804AE10\n        adds r0, r4, 0\n        movs r1, 0x2D\n        bl GetMonData\n        cmp r0, 0\n        bne _0804AE10\n        ldr r0, =gBattleTypeFlags\n        ldr r0, [r0]\n        movs r1, 0x80\n        lsls r1, 11\n        ands r0, r1\n        cmp r0, 0\n        beq _0804AE02\n        ldr r0, =gBattleStruct\n        ldr r0, [r0]\n        ldr r1, =0x000002a1\n        adds r0, r1\n        ldrb r1, [r0]\n        ldr r2, =gBitTable\n        lsls r0, r5, 2\n        adds r0, r2\n        ldr r0, [r0]\n        ands r1, r0\n        cmp r1, 0\n        bne _0804AE10\n    _0804AE02:\n        adds r0, r4, 0\n        movs r1, 0x39\n        bl GetMonData\n        adds r0, r6, r0\n        lsls r0, 16\n        lsrs r6, r0, 16\n    _0804AE10:\n        adds r5, 0x1\n        cmp r5, 0x5\n        ble _0804ADBA\n        ldr r2, =gBattleOutcome\n        cmp r6, 0\n        bne _0804AE24\n        ldrb r0, [r2]\n        movs r1, 0x1\n        orrs r0, r1\n        strb r0, [r2]\n    _0804AE24:\n        ldrb r0, [r2]\n        cmp r0, 0\n        bne _0804AF1A\n        ldr r0, =gBattleTypeFlags\n        ldr r1, [r0]\n        ldr r2, =0x02000002\n        ands r1, r2\n        mov r8, r0\n        cmp r1, 0\n        beq _0804AF1A\n        movs r3, 0\n        movs r5, 0\n        ldr r0, =gBattlersCount\n        ldrb r1, [r0]\n        mov r12, r0\n        ldr r7, =gBattlescriptCurrInstr\n        cmp r3, r1\n        bge _0804AE70\n        ldr r0, =gHitMarker\n        movs r6, 0x80\n        lsls r6, 21\n        ldr r4, [r0]\n        adds r2, r1, 0\n        ldr r1, =gSpecialStatuses\n    _0804AE54:\n        adds r0, r6, 0\n        lsls r0, r5\n        ands r0, r4\n        cmp r0, 0\n        beq _0804AE68\n        ldrb r0, [r1]\n        lsls r0, 25\n        cmp r0, 0\n        blt _0804AE68\n        adds r3, 0x1\n    _0804AE68:\n        adds r1, 0x28\n        adds r5, 0x2\n        cmp r5, r2\n        blt _0804AE54\n    _0804AE70:\n        movs r2, 0\n        movs r5, 0x1\n        mov r4, r12\n        ldrb r1, [r4]\n        cmp r5, r1\n        bge _0804AEAA\n        ldr r0, =gHitMarker\n        movs r4, 0x80\n        lsls r4, 21\n        mov r12, r4\n        ldr r6, [r0]\n        ldr r0, =gSpecialStatuses\n        adds r4, r1, 0\n        adds r1, r0, 0\n        adds r1, 0x14\n    _0804AE8E:\n        mov r0, r12\n        lsls r0, r5\n        ands r0, r6\n        cmp r0, 0\n        beq _0804AEA2\n        ldrb r0, [r1]\n        lsls r0, 25\n        cmp r0, 0\n        blt _0804AEA2\n        adds r2, 0x1\n    _0804AEA2:\n        adds r1, 0x28\n        adds r5, 0x2\n        cmp r5, r4\n        blt _0804AE8E\n    _0804AEAA:\n        mov r1, r8\n        ldr r0, [r1]\n        movs r1, 0x40\n        ands r0, r1\n        cmp r0, 0\n        beq _0804AEF0\n        adds r0, r2, r3\n        cmp r0, 0x1\n        bgt _0804AEF8\n        b _0804AF12\n        .pool\n    _0804AEF0:\n        cmp r2, 0\n        beq _0804AF12\n        cmp r3, 0\n        beq _0804AF12\n    _0804AEF8:\n        ldr r2, [r7]\n        ldrb r1, [r2, 0x1]\n        ldrb r0, [r2, 0x2]\n        lsls r0, 8\n        adds r1, r0\n        ldrb r0, [r2, 0x3]\n        lsls r0, 16\n        adds r1, r0\n        ldrb r0, [r2, 0x4]\n        lsls r0, 24\n        adds r1, r0\n        str r1, [r7]\n        b _0804AF22\n    _0804AF12:\n        ldr r0, [r7]\n        adds r0, 0x5\n        str r0, [r7]\n        b _0804AF22\n    _0804AF1A:\n        ldr r1, =gBattlescriptCurrInstr\n        ldr r0, [r1]\n        adds r0, 0x5\n        str r0, [r1]\n    _0804AF22:\n        pop {r3}\n        mov r8, r3\n        pop {r4-r7}\n        pop {r0}\n        bx r0\n        .pool\n        .syntax divided");
# 3877 "src/battle_script_commands.c"
}



static void MoveValuesCleanUp(void)
{
    gMoveResultFlags = 0;
    gBattleScripting.dmgMultiplier = 1;
    gCritMultiplier = 1;
    gBattleCommunication[0x3] = 0;
    gBattleCommunication[6] = 0;
    gHitMarker &= ~(0x00000040);
    gHitMarker &= ~(0x00004000);
}

static void Cmd_movevaluescleanup(void)
{
    MoveValuesCleanUp();
    gBattlescriptCurrInstr += 1;
}

static void Cmd_setmultihit(void)
{
    gMultiHitCounter = gBattlescriptCurrInstr[1];
    gBattlescriptCurrInstr += 2;
}

static void Cmd_decrementmultihit(void)
{
    if (--gMultiHitCounter == 0)
        gBattlescriptCurrInstr += 5;
    else
        gBattlescriptCurrInstr = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
}

static void Cmd_goto(void)
{
    gBattlescriptCurrInstr = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
}

static void Cmd_jumpifbyte(void)
{
    u8 caseID = gBattlescriptCurrInstr[1];
    const u8* memByte = (void*) ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    u8 value = gBattlescriptCurrInstr[6];
    const u8* jumpPtr = (void*) ((gBattlescriptCurrInstr + 7)[0] + ((gBattlescriptCurrInstr + 7)[1] << 8) + ((gBattlescriptCurrInstr + 7)[2] << 16) + ((gBattlescriptCurrInstr + 7)[3] << 24));

    gBattlescriptCurrInstr += 11;

    switch (caseID)
    {
    case 0x0:
        if (*memByte == value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x1:
        if (*memByte != value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x2:
        if (*memByte > value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x3:
        if (*memByte < value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x4:
        if (*memByte & value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x5:
        if (!(*memByte & value))
            gBattlescriptCurrInstr = jumpPtr;
        break;
    }
}

static void Cmd_jumpifhalfword(void)
{
    u8 caseID = gBattlescriptCurrInstr[1];
    const u16* memHword = (void*) ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    u16 value = ((gBattlescriptCurrInstr + 6)[0] + ((gBattlescriptCurrInstr + 6)[1] << 8));
    const u8* jumpPtr = (void*) ((gBattlescriptCurrInstr + 8)[0] + ((gBattlescriptCurrInstr + 8)[1] << 8) + ((gBattlescriptCurrInstr + 8)[2] << 16) + ((gBattlescriptCurrInstr + 8)[3] << 24));

    gBattlescriptCurrInstr += 12;

    switch (caseID)
    {
    case 0x0:
        if (*memHword == value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x1:
        if (*memHword != value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x2:
        if (*memHword > value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x3:
        if (*memHword < value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x4:
        if (*memHword & value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x5:
        if (!(*memHword & value))
            gBattlescriptCurrInstr = jumpPtr;
        break;
    }
}

static void Cmd_jumpifword(void)
{
    u8 caseID = gBattlescriptCurrInstr[1];
    const u32* memWord = (void*) ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    u32 value = ((gBattlescriptCurrInstr + 6)[0] | ((gBattlescriptCurrInstr + 6)[1] << 8) | ((gBattlescriptCurrInstr + 6)[2] << 16) | ((gBattlescriptCurrInstr + 6)[3] << 24));
    const u8* jumpPtr = (void*) ((gBattlescriptCurrInstr + 10)[0] + ((gBattlescriptCurrInstr + 10)[1] << 8) + ((gBattlescriptCurrInstr + 10)[2] << 16) + ((gBattlescriptCurrInstr + 10)[3] << 24));

    gBattlescriptCurrInstr += 14;

    switch (caseID)
    {
    case 0x0:
        if (*memWord == value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x1:
        if (*memWord != value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x2:
        if (*memWord > value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x3:
        if (*memWord < value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x4:
        if (*memWord & value)
            gBattlescriptCurrInstr = jumpPtr;
        break;
    case 0x5:
        if (!(*memWord & value))
            gBattlescriptCurrInstr = jumpPtr;
        break;
    }
}

static void Cmd_jumpifarrayequal(void)
{
    const u8* mem1 = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    const u8* mem2 = (void*) ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));
    u32 size = gBattlescriptCurrInstr[9];
    const u8* jumpPtr = (void*) ((gBattlescriptCurrInstr + 10)[0] + ((gBattlescriptCurrInstr + 10)[1] << 8) + ((gBattlescriptCurrInstr + 10)[2] << 16) + ((gBattlescriptCurrInstr + 10)[3] << 24));

    u8 i;
    for (i = 0; i < size; i++)
    {
        if (*mem1 != *mem2)
        {
            gBattlescriptCurrInstr += 14;
            break;
        }
        mem1++, mem2++;
    }

    if (i == size)
        gBattlescriptCurrInstr = jumpPtr;
}

static void Cmd_jumpifarraynotequal(void)
{
    u8 equalBytes = 0;
    const u8* mem1 = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    const u8* mem2 = (void*) ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));
    u32 size = gBattlescriptCurrInstr[9];
    const u8* jumpPtr = (void*) ((gBattlescriptCurrInstr + 10)[0] + ((gBattlescriptCurrInstr + 10)[1] << 8) + ((gBattlescriptCurrInstr + 10)[2] << 16) + ((gBattlescriptCurrInstr + 10)[3] << 24));

    u8 i;
    for (i = 0; i < size; i++)
    {
        if (*mem1 == *mem2)
        {
            equalBytes++;
        }
        mem1++, mem2++;
    }

    if (equalBytes != size)
        gBattlescriptCurrInstr = jumpPtr;
    else
        gBattlescriptCurrInstr += 14;
}

static void Cmd_setbyte(void)
{
    u8* memByte = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    *memByte = gBattlescriptCurrInstr[5];

    gBattlescriptCurrInstr += 6;
}

static void Cmd_addbyte(void)
{
    u8* memByte = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    *memByte += gBattlescriptCurrInstr[5];
    gBattlescriptCurrInstr += 6;
}

static void Cmd_subbyte(void)
{
    u8* memByte = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    *memByte -= gBattlescriptCurrInstr[5];
    gBattlescriptCurrInstr += 6;
}

static void Cmd_copyarray(void)
{
    u8* dest = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    const u8* src = (void*) ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));
    s32 size = gBattlescriptCurrInstr[9];

    s32 i;
    for (i = 0; i < size; i++)
    {
        dest[i] = src[i];
    }

    gBattlescriptCurrInstr += 10;
}

static void Cmd_copyarraywithindex(void)
{
    u8* dest = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    const u8* src = (void*) ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));
    const u8* index = (void*) ((gBattlescriptCurrInstr + 9)[0] + ((gBattlescriptCurrInstr + 9)[1] << 8) + ((gBattlescriptCurrInstr + 9)[2] << 16) + ((gBattlescriptCurrInstr + 9)[3] << 24));
    s32 size = gBattlescriptCurrInstr[13];

    s32 i;
    for (i = 0; i < size; i++)
    {
        dest[i] = src[i + *index];
    }

    gBattlescriptCurrInstr += 14;
}

static void Cmd_orbyte(void)
{
    u8* memByte = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    *memByte |= gBattlescriptCurrInstr[5];
    gBattlescriptCurrInstr += 6;
}

static void Cmd_orhalfword(void)
{
    u16* memHword = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    u16 val = ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8));

    *memHword |= val;
    gBattlescriptCurrInstr += 7;
}

static void Cmd_orword(void)
{
    u32* memWord = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    u32 val = ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));

    *memWord |= val;
    gBattlescriptCurrInstr += 9;
}

static void Cmd_bicbyte(void)
{
    u8* memByte = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    *memByte &= ~(gBattlescriptCurrInstr[5]);
    gBattlescriptCurrInstr += 6;
}

static void Cmd_bichalfword(void)
{
    u16* memHword = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    u16 val = ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8));

    *memHword &= ~val;
    gBattlescriptCurrInstr += 7;
}

static void Cmd_bicword(void)
{
    u32* memWord = (void*) ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8) + ((gBattlescriptCurrInstr + 1)[2] << 16) + ((gBattlescriptCurrInstr + 1)[3] << 24));
    u32 val = ((gBattlescriptCurrInstr + 5)[0] + ((gBattlescriptCurrInstr + 5)[1] << 8) + ((gBattlescriptCurrInstr + 5)[2] << 16) + ((gBattlescriptCurrInstr + 5)[3] << 24));

    *memWord &= ~val;
    gBattlescriptCurrInstr += 9;
}

static void Cmd_pause(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        u16 value = ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8));
        if (++gPauseCounterBattle >= value)
        {
            gPauseCounterBattle = 0;
            gBattlescriptCurrInstr += 3;
        }
    }
}

static void Cmd_waitstate(void)
{
    if (gBattleControllerExecFlags == 0)
        gBattlescriptCurrInstr++;
}

static void Cmd_healthbar_update(void)
{
    if (gBattlescriptCurrInstr[1] == 0)
        gActiveBattler = gBattlerTarget;
    else
        gActiveBattler = gBattlerAttacker;

    BtlController_EmitHealthBarUpdate(0, gBattleMoveDamage);
    MarkBattlerForControllerExec(gActiveBattler);
    gBattlescriptCurrInstr += 2;
}

static void Cmd_return(void)
{
    BattleScriptPop();
}

static void Cmd_end(void)
{
    if (gBattleTypeFlags & 0x40000)
        BattleArena_AddSkillPoints(gBattlerAttacker);

    gMoveResultFlags = 0;
    gActiveBattler = 0;
    gCurrentActionFuncId = 11;
}

static void Cmd_end2(void)
{
    gActiveBattler = 0;
    gCurrentActionFuncId = 11;
}

static void Cmd_end3(void)
{
    BattleScriptPop();
    if (gBattleResources->battleCallbackStack->size != 0)
        gBattleResources->battleCallbackStack->size--;
    gBattleMainFunc = gBattleResources->battleCallbackStack->function[gBattleResources->battleCallbackStack->size];
}

static void Cmd_call(void)
{
    BattleScriptPush(gBattlescriptCurrInstr + 5);
    gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
}

static void Cmd_jumpiftype2(void)
{
    u8 battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (gBattlescriptCurrInstr[2] == gBattleMons[battlerId].type1 || gBattlescriptCurrInstr[2] == gBattleMons[battlerId].type2)
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 3)[0] | ((gBattlescriptCurrInstr + 3)[1] << 8) | ((gBattlescriptCurrInstr + 3)[2] << 16) | ((gBattlescriptCurrInstr + 3)[3] << 24));
    else
        gBattlescriptCurrInstr += 7;
}

static void Cmd_jumpifabilitypresent(void)
{
    if (AbilityBattleEffects(0x13, 0, gBattlescriptCurrInstr[1], 0, 0))
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
    else
        gBattlescriptCurrInstr += 6;
}

static void Cmd_endselectionscript(void)
{
    *(gBattlerAttacker + gBattleStruct->selectionScriptFinished) = 1;
}

static void Cmd_playanimation(void)
{
    const u16* argumentPtr;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    argumentPtr = (void*) ((gBattlescriptCurrInstr + 3)[0] + ((gBattlescriptCurrInstr + 3)[1] << 8) + ((gBattlescriptCurrInstr + 3)[2] << 16) + ((gBattlescriptCurrInstr + 3)[3] << 24));

    if (gBattlescriptCurrInstr[2] == 0x1
        || gBattlescriptCurrInstr[2] == 0x11
        || gBattlescriptCurrInstr[2] == 0x2)
    {
        BtlController_EmitBattleAnimation(0, gBattlescriptCurrInstr[2], *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 7;
    }
    else if (gHitMarker & 0x00000080)
    {
        BattleScriptPush(gBattlescriptCurrInstr + 7);
        gBattlescriptCurrInstr = BattleScript_Pausex20;
    }
    else if (gBattlescriptCurrInstr[2] == 0xA
             || gBattlescriptCurrInstr[2] == 0xB
             || gBattlescriptCurrInstr[2] == 0xC
             || gBattlescriptCurrInstr[2] == 0xD)
    {
        BtlController_EmitBattleAnimation(0, gBattlescriptCurrInstr[2], *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 7;
    }
    else if (gStatuses3[gActiveBattler] & (0x80 | 0x40 | 0x40000))
    {
        gBattlescriptCurrInstr += 7;
    }
    else
    {
        BtlController_EmitBattleAnimation(0, gBattlescriptCurrInstr[2], *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 7;
    }
}

static void Cmd_playanimation2(void)
{
    const u16* argumentPtr;
    const u8* animationIdPtr;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    animationIdPtr = (void*) ((gBattlescriptCurrInstr + 2)[0] + ((gBattlescriptCurrInstr + 2)[1] << 8) + ((gBattlescriptCurrInstr + 2)[2] << 16) + ((gBattlescriptCurrInstr + 2)[3] << 24));
    argumentPtr = (void*) ((gBattlescriptCurrInstr + 6)[0] + ((gBattlescriptCurrInstr + 6)[1] << 8) + ((gBattlescriptCurrInstr + 6)[2] << 16) + ((gBattlescriptCurrInstr + 6)[3] << 24));

    if (*animationIdPtr == 0x1
        || *animationIdPtr == 0x11
        || *animationIdPtr == 0x2)
    {
        BtlController_EmitBattleAnimation(0, *animationIdPtr, *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 10;
    }
    else if (gHitMarker & 0x00000080)
    {
        gBattlescriptCurrInstr += 10;
    }
    else if (*animationIdPtr == 0xA
             || *animationIdPtr == 0xB
             || *animationIdPtr == 0xC
             || *animationIdPtr == 0xD)
    {
        BtlController_EmitBattleAnimation(0, *animationIdPtr, *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 10;
    }
    else if (gStatuses3[gActiveBattler] & (0x80 | 0x40 | 0x40000))
    {
        gBattlescriptCurrInstr += 10;
    }
    else
    {
        BtlController_EmitBattleAnimation(0, *animationIdPtr, *argumentPtr);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 10;
    }
}

static void Cmd_setgraphicalstatchangevalues(void)
{
    u8 value = 0;
    switch (((gBattleScripting.statChanger & 0xF0)))
    {
    case ((((1) << 4) & 0xF0)):
        value = 15;
        break;
    case ((((2) << 4) & 0xF0)):
        value = 39;
        break;
    case ((((1) << 4) & 0xF0)) | 0x80:
        value = 22;
        break;
    case ((((2) << 4) & 0xF0)) | 0x80:
        value = 46;
        break;
    }
    gBattleScripting.animArg1 = ((gBattleScripting.statChanger & 0xF)) + value - 1;
    gBattleScripting.animArg2 = 0;
    gBattlescriptCurrInstr++;
}

static void Cmd_playstatchangeanimation(void)
{
    u32 currStat = 0;
    u16 statAnimId = 0;
    s32 changeableStatsCount = 0;
    u8 statsToCheck = 0;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    statsToCheck = gBattlescriptCurrInstr[2];

    if (gBattlescriptCurrInstr[3] & 0x1)
    {
        s16 startingStatAnimId;
        if (gBattlescriptCurrInstr[3] & 0x2)
            startingStatAnimId = 46 - 1;
        else
            startingStatAnimId = 22 - 1;

        while (statsToCheck != 0)
        {
            if (statsToCheck & 1)
            {
                if (gBattlescriptCurrInstr[3] & 0x8)
                {
                    if (gBattleMons[gActiveBattler].statStages[currStat] > 0)
                    {
                        statAnimId = startingStatAnimId + currStat;
                        changeableStatsCount++;
                    }
                }
                else if (!gSideTimers[(GetBattlerPosition(gActiveBattler) & 1)].mistTimer
                        && gBattleMons[gActiveBattler].ability != 29
                        && gBattleMons[gActiveBattler].ability != 73
                        && !(gBattleMons[gActiveBattler].ability == 51 && currStat == 6)
                        && !(gBattleMons[gActiveBattler].ability == 52 && currStat == 1))
                {
                    if (gBattleMons[gActiveBattler].statStages[currStat] > 0)
                    {
                        statAnimId = startingStatAnimId + currStat;
                        changeableStatsCount++;
                    }
                }
            }
            statsToCheck >>= 1, currStat++;
        }

        if (changeableStatsCount > 1)
        {
            if (gBattlescriptCurrInstr[3] & 0x2)
                statAnimId = 58;
            else
                statAnimId = 57;
        }
    }
    else
    {
        s16 startingStatAnimId;
        if (gBattlescriptCurrInstr[3] & 0x2)
            startingStatAnimId = 39 - 1;
        else
            startingStatAnimId = 15 - 1;

        while (statsToCheck != 0)
        {
            if (statsToCheck & 1 && gBattleMons[gActiveBattler].statStages[currStat] < 0xC)
            {
                statAnimId = startingStatAnimId + currStat;
                changeableStatsCount++;
            }
            statsToCheck >>= 1, currStat++;
        }

        if (changeableStatsCount > 1)
        {
            if (gBattlescriptCurrInstr[3] & 0x2)
                statAnimId = 56;
            else
                statAnimId = 55;
        }
    }

    if (gBattlescriptCurrInstr[3] & 0x4 && changeableStatsCount < 2)
    {
        gBattlescriptCurrInstr += 4;
    }
    else if (changeableStatsCount != 0 && !gBattleScripting.statAnimPlayed)
    {
        BtlController_EmitBattleAnimation(0, 0x1, statAnimId);
        MarkBattlerForControllerExec(gActiveBattler);
        if (gBattlescriptCurrInstr[3] & 0x4 && changeableStatsCount > 1)
            gBattleScripting.statAnimPlayed = 1;
        gBattlescriptCurrInstr += 4;
    }
    else
    {
        gBattlescriptCurrInstr += 4;
    }
}

static void Cmd_moveend(void)
{
    s32 i;
    bool32 effect = 0;
    u8 moveType = 0;
    u8 holdEffectAtk = 0;
    u16 *choicedMoveAtk = ((void *)0);
    u8 arg1, arg2;
    u16 originallyUsedMove;

    if (gChosenMove == 0xFFFF)
        originallyUsedMove = 0;
    else
        originallyUsedMove = gChosenMove;

    arg1 = gBattlescriptCurrInstr[1];
    arg2 = gBattlescriptCurrInstr[2];

    if (gBattleMons[gBattlerAttacker].item == 175)
        holdEffectAtk = gEnigmaBerries[gBattlerAttacker].holdEffect;
    else
        holdEffectAtk = ItemId_GetHoldEffect(gBattleMons[gBattlerAttacker].item);

    choicedMoveAtk = &gBattleStruct->choicedMove[gBattlerAttacker];
    { if (gBattleStruct->dynamicMoveType) moveType = gBattleStruct->dynamicMoveType & 0x3F; else moveType = gBattleMoves[gCurrentMove].type; };

    do
    {
        switch (gBattleScripting.moveendState)
        {
        case 0:
            if (gBattleMons[gBattlerTarget].status2 & 0x00800000
                && gBattleMons[gBattlerTarget].hp != 0 && gBattlerAttacker != gBattlerTarget
                && GetBattlerSide(gBattlerAttacker) != GetBattlerSide(gBattlerTarget)
                && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))) && ((gSpecialStatuses[gBattlerTarget].physicalDmg != 0 || gSpecialStatuses[gBattlerTarget].specialDmg != 0))
                && gBattleMoves[gCurrentMove].power && gBattleMons[gBattlerTarget].statStages[1] <= 0xB)
            {
                gBattleMons[gBattlerTarget].statStages[1]++;
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_RageIsBuilding;
                effect = 1;
            }
            gBattleScripting.moveendState++;
            break;
        case 1:
            if (gBattleMons[gBattlerTarget].status1 & 0x20
                && gBattleMons[gBattlerTarget].hp != 0 && gBattlerAttacker != gBattlerTarget
                && gSpecialStatuses[gBattlerTarget].specialDmg
                && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))) && moveType == 10)
            {
                gBattleMons[gBattlerTarget].status1 &= ~(0x20);
                gActiveBattler = gBattlerTarget;
                BtlController_EmitSetMonData(0, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[gBattlerTarget].status1);
                MarkBattlerForControllerExec(gActiveBattler);
                BattleScriptPushCursor();
                gBattlescriptCurrInstr = BattleScript_DefrostedViaFireMove;
                effect = 1;
            }
            gBattleScripting.moveendState++;
            break;
        case 2:
            if (AbilityBattleEffects(0x7, gBattlerTarget, 0, 0, 0))
                effect = 1;
            gBattleScripting.moveendState++;
            break;
        case 3:
            if (AbilityBattleEffects(0x4, gBattlerTarget, 0, 0, 0))
                effect = 1;
            gBattleScripting.moveendState++;
            break;
        case 4:
            if (AbilityBattleEffects(0x5, 0, 0, 0, 0))
                effect = 1;
            else
                gBattleScripting.moveendState++;
            break;
        case 5:
            if (AbilityBattleEffects(0x8, gBattlerAttacker, 0, 0, 0))
                effect = 1;
            gBattleScripting.moveendState++;
            break;
        case 6:
            if (gHitMarker & 0x02000000
             && holdEffectAtk == 29
             && gChosenMove != 165
             && (*choicedMoveAtk == 0 || *choicedMoveAtk == 0xFFFF))
            {
                if (gChosenMove == 226 && !(gMoveResultFlags & (1 << 5)))
                {
                    ++gBattleScripting.moveendState;
                    break;
                }
                *choicedMoveAtk = gChosenMove;
            }
            for (i = 0; i < 4; ++i)
            {
                if (gBattleMons[gBattlerAttacker].moves[i] == *choicedMoveAtk)
                    break;
            }
            if (i == 4)
                *choicedMoveAtk = 0;
            ++gBattleScripting.moveendState;
            break;
        case 7:
            for (i = 0; i < gBattlersCount; i++)
            {
                u16* changedItem = &gBattleStruct->changedItems[i];
                if (*changedItem != 0)
                {
                    gBattleMons[i].item = *changedItem;
                    *changedItem = 0;
                }
            }
            gBattleScripting.moveendState++;
            break;
        case 11:
            if (ItemBattleEffects(0x3, 0, 0))
                effect = 1;
            else
                gBattleScripting.moveendState++;
            break;
        case 12:
            if (ItemBattleEffects(0x4, 0, 0))
                effect = 1;
            gBattleScripting.moveendState++;
            break;
        case 8:
            if (gStatuses3[gBattlerAttacker] & ((0x80 | 0x40 | 0x40000))
                && gHitMarker & 0x00000080)
            {
                gActiveBattler = gBattlerAttacker;
                BtlController_EmitSpriteInvisibility(0, 1);
                MarkBattlerForControllerExec(gActiveBattler);
                gBattleScripting.moveendState++;
                return;
            }
            gBattleScripting.moveendState++;
            break;
        case 9:
            if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))
                || !(gStatuses3[gBattlerAttacker] & ((0x80 | 0x40 | 0x40000)))
                || WasUnableToUseMove(gBattlerAttacker))
            {
                gActiveBattler = gBattlerAttacker;
                BtlController_EmitSpriteInvisibility(0, 0);
                MarkBattlerForControllerExec(gActiveBattler);
                gStatuses3[gBattlerAttacker] &= ~((0x80 | 0x40 | 0x40000));
                gSpecialStatuses[gBattlerAttacker].restoredBattlerSprite = 1;
                gBattleScripting.moveendState++;
                return;
            }
            gBattleScripting.moveendState++;
            break;
        case 10:
            if (!gSpecialStatuses[gBattlerTarget].restoredBattlerSprite && gBattlerTarget < gBattlersCount
                && !(gStatuses3[gBattlerTarget] & (0x80 | 0x40 | 0x40000)))
            {
                gActiveBattler = gBattlerTarget;
                BtlController_EmitSpriteInvisibility(0, 0);
                MarkBattlerForControllerExec(gActiveBattler);
                gStatuses3[gBattlerTarget] &= ~((0x80 | 0x40 | 0x40000));
                gBattleScripting.moveendState++;
                return;
            }
            gBattleScripting.moveendState++;
            break;
        case 13:
            for (i = 0; i < gBattlersCount; i++)
            {
                if (gDisableStructs[i].substituteHP == 0)
                    gBattleMons[i].status2 &= ~(0x01000000);
            }
            gBattleScripting.moveendState++;
            break;
        case 14:
            if (gHitMarker & 0x00001000)
            {
                gActiveBattler = gBattlerAttacker;
                gBattlerAttacker = gBattlerTarget;
                gBattlerTarget = gActiveBattler;
                gHitMarker &= ~(0x00001000);
            }
            if (gHitMarker & 0x00000400)
            {
                gLastPrintedMoves[gBattlerAttacker] = gChosenMove;
            }
            if (!(gAbsentBattlerFlags & gBitTable[gBattlerAttacker])
                && !(gBattleStruct->field_91 & gBitTable[gBattlerAttacker])
                && gBattleMoves[originallyUsedMove].effect != 127)
            {
                if (gHitMarker & 0x02000000)
                {
                    gLastMoves[gBattlerAttacker] = gChosenMove;
                    gLastResultingMoves[gBattlerAttacker] = gCurrentMove;
                }
                else
                {
                    gLastMoves[gBattlerAttacker] = 0xFFFF;
                    gLastResultingMoves[gBattlerAttacker] = 0xFFFF;
                }

                if (!(gHitMarker & (gBitTable[gBattlerTarget] << 0x1C)))
                    gLastHitBy[gBattlerTarget] = gBattlerAttacker;

                if (gHitMarker & 0x02000000 && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
                {
                    if (gChosenMove == 0xFFFF)
                    {
                        gLastLandedMoves[gBattlerTarget] = gChosenMove;
                    }
                    else
                    {
                        gLastLandedMoves[gBattlerTarget] = gCurrentMove;
                        { if (gBattleStruct->dynamicMoveType) gLastHitByType[gBattlerTarget] = gBattleStruct->dynamicMoveType & 0x3F; else gLastHitByType[gBattlerTarget] = gBattleMoves[gCurrentMove].type; };
                    }
                }
                else
                {
                    gLastLandedMoves[gBattlerTarget] = 0xFFFF;
                }
            }
            gBattleScripting.moveendState++;
            break;
        case 15:
            if (!(gAbsentBattlerFlags & gBitTable[gBattlerAttacker]) && !(gBattleStruct->field_91 & gBitTable[gBattlerAttacker])
                && gBattleMoves[originallyUsedMove].flags & 0x10 && gHitMarker & 0x02000000
                && gBattlerAttacker != gBattlerTarget && !(gHitMarker & (gBitTable[gBattlerTarget] << 0x1C))
                && !(gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5))))
            {
                u8 target, attacker;

                *(gBattleStruct->lastTakenMove + gBattlerTarget * 2 + 0) = gChosenMove;
                *(gBattleStruct->lastTakenMove + gBattlerTarget * 2 + 1) = gChosenMove >> 8;

                target = gBattlerTarget;
                attacker = gBattlerAttacker;
                *(attacker * 2 + target * 8 + (u8*)(gBattleStruct->lastTakenMoveFrom) + 0) = gChosenMove;

                target = gBattlerTarget;
                attacker = gBattlerAttacker;
                *(attacker * 2 + target * 8 + (u8*)(gBattleStruct->lastTakenMoveFrom) + 1) = gChosenMove >> 8;
            }
            gBattleScripting.moveendState++;
            break;
        case 16:
            if (!(gHitMarker & 0x00080000) && gBattleTypeFlags & 0x0001
                && !gProtectStructs[gBattlerAttacker].chargingTurn && gBattleMoves[gCurrentMove].target == 0x8
                && !(gHitMarker & 0x00000200))
            {
                u8 battlerId = GetBattlerAtPosition(((GetBattlerPosition(gBattlerTarget)) ^ 2));
                if (gBattleMons[battlerId].hp != 0)
                {
                    gBattlerTarget = battlerId;
                    gHitMarker |= 0x00000200;
                    gBattleScripting.moveendState = 0;
                    MoveValuesCleanUp();
                    BattleScriptPush(gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect]);
                    gBattlescriptCurrInstr = BattleScript_FlushMessageBox;
                    return;
                }
                else
                {
                    gHitMarker |= 0x00000200;
                }
            }
            gBattleScripting.moveendState++;
            break;
        case 17:
            break;
        }

        if (arg1 == 1 && effect == 0)
            gBattleScripting.moveendState = 17;
        if (arg1 == 2 && arg2 == gBattleScripting.moveendState)
            gBattleScripting.moveendState = 17;

    } while (gBattleScripting.moveendState != 17 && effect == 0);

    if (gBattleScripting.moveendState == 17 && effect == 0)
        gBattlescriptCurrInstr += 3;
}

static void Cmd_typecalc2(void)
{
    u8 flags = 0;
    s32 i = 0;
    u8 moveType = gBattleMoves[gCurrentMove].type;

    if (gBattleMons[gBattlerTarget].ability == 26 && moveType == 4)
    {
        gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
        gMoveResultFlags |= ((1 << 0) | (1 << 3));
        gLastLandedMoves[gBattlerTarget] = 0;
        gBattleCommunication[6] = moveType;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    else
    {
        while (((gTypeEffectiveness[i + 0])) != 0xFF)
        {
            if (((gTypeEffectiveness[i + 0])) == 0xFE)
            {
                if (gBattleMons[gBattlerTarget].status2 & 0x20000000)
                {
                    break;
                }
                else
                {
                    i += 3;
                    continue;
                }
            }

            if (((gTypeEffectiveness[i + 0])) == moveType)
            {

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type1)
                {
                    if (((gTypeEffectiveness[i + 2])) == 0)
                    {
                        gMoveResultFlags |= (1 << 3);
                        break;
                    }
                    if (((gTypeEffectiveness[i + 2])) == 5)
                    {
                        flags |= (1 << 2);
                    }
                    if (((gTypeEffectiveness[i + 2])) == 20)
                    {
                        flags |= (1 << 1);
                    }
                }

                if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2)
                {
                    if (gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2
                        && ((gTypeEffectiveness[i + 2])) == 0)
                    {
                        gMoveResultFlags |= (1 << 3);
                        break;
                    }
                    if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2
                        && gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2
                        && ((gTypeEffectiveness[i + 2])) == 5)
                    {
                        flags |= (1 << 2);
                    }
                    if (((gTypeEffectiveness[i + 1])) == gBattleMons[gBattlerTarget].type2
                        && gBattleMons[gBattlerTarget].type1 != gBattleMons[gBattlerTarget].type2
                        && ((gTypeEffectiveness[i + 2])) == 20)
                    {
                        flags |= (1 << 1);
                    }
                }
            }
            i += 3;
        }
    }

    if (gBattleMons[gBattlerTarget].ability == 25
        && !(flags & ((1 << 0) | (1 << 3) | (1 << 5)))
        && AttacksThisTurn(gBattlerAttacker, gCurrentMove) == 2
        && (!(flags & (1 << 1)) || ((flags & ((1 << 1) | (1 << 2))) == ((1 << 1) | (1 << 2))))
        && gBattleMoves[gCurrentMove].power)
    {
        gLastUsedAbility = 25;
        gMoveResultFlags |= (1 << 0);
        gLastLandedMoves[gBattlerTarget] = 0;
        gBattleCommunication[6] = 3;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    if (gMoveResultFlags & (1 << 3))
        gProtectStructs[gBattlerAttacker].targetNotAffected = 1;

    gBattlescriptCurrInstr++;
}

static void Cmd_returnatktoball(void)
{
    gActiveBattler = gBattlerAttacker;
    if (!(gHitMarker & (gBitTable[gActiveBattler] << 0x1C)))
    {
        BtlController_EmitReturnMonToBall(0, 0);
        MarkBattlerForControllerExec(gActiveBattler);
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_getswitchedmondata(void)
{
    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    gBattlerPartyIndexes[gActiveBattler] = *(gBattleStruct->monToSwitchIntoId + gActiveBattler);

    BtlController_EmitGetMonData(0, REQUEST_ALL_BATTLE, gBitTable[gBattlerPartyIndexes[gActiveBattler]]);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_switchindataupdate(void)
{
    struct BattlePokemon oldData;
    s32 i;
    u8 *monData;

    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    oldData = gBattleMons[gActiveBattler];
    monData = (u8*)(&gBattleMons[gActiveBattler]);

    for (i = 0; i < sizeof(struct BattlePokemon); i++)
    {
        monData[i] = gBattleBufferB[gActiveBattler][4 + i];
    }

    gBattleMons[gActiveBattler].type1 = gBaseStats[gBattleMons[gActiveBattler].species].type1;
    gBattleMons[gActiveBattler].type2 = gBaseStats[gBattleMons[gActiveBattler].species].type2;
    gBattleMons[gActiveBattler].ability = GetAbilityBySpecies(gBattleMons[gActiveBattler].species, gBattleMons[gActiveBattler].abilityNum);


    i = GetBattlerSide(gActiveBattler);
    if (gWishFutureKnock.knockedOffMons[i] & gBitTable[gBattlerPartyIndexes[gActiveBattler]])
    {
        gBattleMons[gActiveBattler].item = 0;
    }

    if (gBattleMoves[gCurrentMove].effect == 127)
    {
        for (i = 0; i < 6 + 2; i++)
        {
            gBattleMons[gActiveBattler].statStages[i] = oldData.statStages[i];
        }
        gBattleMons[gActiveBattler].status2 = oldData.status2;
    }

    SwitchInClearSetData();

    if (gBattleTypeFlags & 0x20000 && gBattleMons[gActiveBattler].maxHP / 2 >= gBattleMons[gActiveBattler].hp
        && gBattleMons[gActiveBattler].hp != 0 && !(gBattleMons[gActiveBattler].status1 & 0x7))
    {
        gBattleStruct->field_92 |= gBitTable[gActiveBattler];
    }

    gBattleScripting.battler = gActiveBattler;

    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 7; gBattleTextBuff1[2] = gActiveBattler; gBattleTextBuff1[3] = gBattlerPartyIndexes[gActiveBattler]; gBattleTextBuff1[4] = 0xFF; };

    gBattlescriptCurrInstr += 2;
}

static void Cmd_switchinanim(void)
{
    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (GetBattlerSide(gActiveBattler) == 1
        && !(gBattleTypeFlags & (0x0002
                                 | 0x0800
                                 | 0x2000000
                                 | 0x4000000
                                 | (0x0100 | 0x10000 | 0x20000 | 0x40000 | 0x80000 | 0x100000 | 0x200000))))
            HandleSetPokedexFlag(SpeciesToNationalPokedexNum(gBattleMons[gActiveBattler].species), FLAG_SET_SEEN, gBattleMons[gActiveBattler].personality);

    gAbsentBattlerFlags &= ~(gBitTable[gActiveBattler]);

    BtlController_EmitSwitchInAnim(0, gBattlerPartyIndexes[gActiveBattler], gBattlescriptCurrInstr[2]);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 3;

    if (gBattleTypeFlags & 0x40000)
        BattleArena_InitPoints();
}

static void Cmd_jumpifcantswitch(void)
{
    s32 i;
    s32 lastMonId;
    struct Pokemon *party;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1] & ~(0x80));

    if (!(gBattlescriptCurrInstr[1] & 0x80)
        && ((gBattleMons[gActiveBattler].status2 & (0x0000E000 | 0x04000000))
            || (gStatuses3[gActiveBattler] & 0x400)))
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
    }
    else if (gBattleTypeFlags & 0x400000)
    {

            asm("":::"r5");

        if (GetBattlerSide(gActiveBattler) == 1)
            party = gEnemyParty;
        else
            party = gPlayerParty;

        i = 0;
        if (gActiveBattler & 2)
            i = 3;

        for (lastMonId = i + 3; i < lastMonId; i++)
        {
            if (GetMonData(&party[i], 11) != 0
             && !GetMonData(&party[i], 45)
             && GetMonData(&party[i], 57) != 0
             && gBattlerPartyIndexes[gActiveBattler] != i)
                break;
        }

        if (i == lastMonId)
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        else
            gBattlescriptCurrInstr += 6;
    }
    else if (gBattleTypeFlags & 0x0040)
    {
        if (gBattleTypeFlags & 0x800000)
        {
            if (GetBattlerSide(gActiveBattler) == 0)
            {
                party = gPlayerParty;

                i = 0;
                if (GetLinkTrainerFlankId(GetBattlerMultiplayerId(gActiveBattler)) == 1)
                    i = 3;
            }
            else
            {
                party = gEnemyParty;

                if (gActiveBattler == 1)
                    i = 0;
                else
                    i = 3;
            }
        }
        else
        {
            if (GetBattlerSide(gActiveBattler) == 1)
                party = gEnemyParty;
            else
                party = gPlayerParty;

            i = 0;
            if (GetLinkTrainerFlankId(GetBattlerMultiplayerId(gActiveBattler)) == 1)
                i = 3;
        }

        for (lastMonId = i + 3; i < lastMonId; i++)
        {
            if (GetMonData(&party[i], 11) != 0
             && !GetMonData(&party[i], 45)
             && GetMonData(&party[i], 57) != 0
             && gBattlerPartyIndexes[gActiveBattler] != i)
                break;
        }

        if (i == lastMonId)
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        else
            gBattlescriptCurrInstr += 6;
    }
    else if (gBattleTypeFlags & 0x8000 && GetBattlerSide(gActiveBattler) == 1)
    {
        party = gEnemyParty;

        i = 0;
        if (gActiveBattler == 3)
            i = 3;

        for (lastMonId = i + 3; i < lastMonId; i++)
        {
            if (GetMonData(&party[i], 11) != 0
             && !GetMonData(&party[i], 45)
             && GetMonData(&party[i], 57) != 0
             && gBattlerPartyIndexes[gActiveBattler] != i)
                break;
        }

        if (i == lastMonId)
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        else
            gBattlescriptCurrInstr += 6;
    }
    else
    {
        u8 battlerIn1, battlerIn2;

        if (GetBattlerSide(gActiveBattler) == 1)
        {
            battlerIn1 = GetBattlerAtPosition(1);

            if (gBattleTypeFlags & 0x0001)
                battlerIn2 = GetBattlerAtPosition(3);
            else
                battlerIn2 = battlerIn1;

            party = gEnemyParty;
        }
        else
        {
            battlerIn1 = GetBattlerAtPosition(0);

            if (gBattleTypeFlags & 0x0001)
                battlerIn2 = GetBattlerAtPosition(2);
            else
                battlerIn2 = battlerIn1;

            party = gPlayerParty;
        }

        for (i = 0; i < 6; i++)
        {
            if (GetMonData(&party[i], 57) != 0
             && GetMonData(&party[i], 11) != 0
             && !GetMonData(&party[i], 45)
             && i != gBattlerPartyIndexes[battlerIn1] && i != gBattlerPartyIndexes[battlerIn2])
                break;
        }

        if (i == 6)
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        else
            gBattlescriptCurrInstr += 6;
    }
}

static void sub_804CF10(u8 slotId)
{
    *(gBattleStruct->field_58 + gActiveBattler) = gBattlerPartyIndexes[gActiveBattler];
    *(gBattleStruct->monToSwitchIntoId + gActiveBattler) = 6;
    gBattleStruct->field_93 &= ~(gBitTable[gActiveBattler]);

    BtlController_EmitChoosePokemon(0, 1, slotId, 0, gBattleStruct->field_60[gActiveBattler]);
    MarkBattlerForControllerExec(gActiveBattler);
}

static void Cmd_openpartyscreen(void)
{
    u32 flags;
    u8 hitmarkerFaintBits;
    u8 battlerId;
    const u8 *jumpPtr;

    battlerId = 0;
    flags = 0;
    jumpPtr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));

    if (gBattlescriptCurrInstr[1] == 5)
    {
        if ((gBattleTypeFlags & (0x0001 | 0x0040)) != 0x0001)
        {
            for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
            {
                if (gHitMarker & (gBitTable[gActiveBattler] << 0x1C))
                {
                    if (HasNoMonsToSwitch(gActiveBattler, 6, 6))
                    {
                        gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                        gHitMarker &= ~((gBitTable[gActiveBattler] << 0x1C));
                        BtlController_EmitLinkStandbyMsg(0, 2, 0);
                        MarkBattlerForControllerExec(gActiveBattler);
                    }
                    else if (!gSpecialStatuses[gActiveBattler].flag40)
                    {
                        sub_804CF10(6);
                        gSpecialStatuses[gActiveBattler].flag40 = 1;
                    }
                }
                else
                {
                    BtlController_EmitLinkStandbyMsg(0, 2, 0);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
            }
        }
        else if (gBattleTypeFlags & 0x0001)
        {
            u8 flag40_0, flag40_1, flag40_2, flag40_3;

            hitmarkerFaintBits = gHitMarker >> 0x1C;

            if (gBitTable[0] & hitmarkerFaintBits)
            {
                gActiveBattler = 0;
                if (HasNoMonsToSwitch(0, 6, 6))
                {
                    gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                    gHitMarker &= ~((gBitTable[gActiveBattler] << 0x1C));
                    BtlController_EmitCmd42(0);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
                else if (!gSpecialStatuses[gActiveBattler].flag40)
                {
                    sub_804CF10(gBattleStruct->monToSwitchIntoId[2]);
                    gSpecialStatuses[gActiveBattler].flag40 = 1;
                }
                else
                {
                    BtlController_EmitLinkStandbyMsg(0, 2, 0);
                    MarkBattlerForControllerExec(gActiveBattler);
                    flags |= 1;
                }
            }
            if (gBitTable[2] & hitmarkerFaintBits && !(gBitTable[0] & hitmarkerFaintBits))
            {
                gActiveBattler = 2;
                if (HasNoMonsToSwitch(2, 6, 6))
                {
                    gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                    gHitMarker &= ~((gBitTable[gActiveBattler] << 0x1C));
                    BtlController_EmitCmd42(0);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
                else if (!gSpecialStatuses[gActiveBattler].flag40)
                {
                    sub_804CF10(gBattleStruct->monToSwitchIntoId[0]);
                    gSpecialStatuses[gActiveBattler].flag40 = 1;
                }
                else if (!(flags & 1))
                {
                    BtlController_EmitLinkStandbyMsg(0, 2, 0);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
            }
            if (gBitTable[1] & hitmarkerFaintBits)
            {
                gActiveBattler = 1;
                if (HasNoMonsToSwitch(1, 6, 6))
                {
                    gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                    gHitMarker &= ~((gBitTable[gActiveBattler] << 0x1C));
                    BtlController_EmitCmd42(0);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
                else if (!gSpecialStatuses[gActiveBattler].flag40)
                {
                    sub_804CF10(gBattleStruct->monToSwitchIntoId[3]);
                    gSpecialStatuses[gActiveBattler].flag40 = 1;
                }
                else
                {
                    BtlController_EmitLinkStandbyMsg(0, 2, 0);
                    MarkBattlerForControllerExec(gActiveBattler);
                    flags |= 2;
                }
            }
            if (gBitTable[3] & hitmarkerFaintBits && !(gBitTable[1] & hitmarkerFaintBits))
            {
                gActiveBattler = 3;
                if (HasNoMonsToSwitch(3, 6, 6))
                {
                    gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                    gHitMarker &= ~((gBitTable[gActiveBattler] << 0x1C));
                    BtlController_EmitCmd42(0);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
                else if (!gSpecialStatuses[gActiveBattler].flag40)
                {
                    sub_804CF10(gBattleStruct->monToSwitchIntoId[1]);
                    gSpecialStatuses[gActiveBattler].flag40 = 1;
                }
                else if (!(flags & 2))
                {
                    BtlController_EmitLinkStandbyMsg(0, 2, 0);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
            }

            flag40_0 = gSpecialStatuses[0].flag40;
            if (!flag40_0)
            {
                flag40_2 = gSpecialStatuses[2].flag40;
                if (!flag40_2 && hitmarkerFaintBits != 0)
                {
                    if (gAbsentBattlerFlags & gBitTable[0])
                        gActiveBattler = 2;
                    else
                        gActiveBattler = 0;

                    BtlController_EmitLinkStandbyMsg(0, 2, 0);
                    MarkBattlerForControllerExec(gActiveBattler);
                }

            }
            flag40_1 = gSpecialStatuses[1].flag40;
            if (!flag40_1)
            {
                flag40_3 = gSpecialStatuses[3].flag40;
                if (!flag40_3 && hitmarkerFaintBits != 0)
                {
                    if (gAbsentBattlerFlags & gBitTable[1])
                        gActiveBattler = 3;
                    else
                        gActiveBattler = 1;

                    BtlController_EmitLinkStandbyMsg(0, 2, 0);
                    MarkBattlerForControllerExec(gActiveBattler);
                }
            }
        }
        gBattlescriptCurrInstr += 6;
    }
    else if (gBattlescriptCurrInstr[1] == 6)
    {
        if (!(gBattleTypeFlags & 0x0040))
        {
            if (gBattleTypeFlags & 0x0001)
            {
                hitmarkerFaintBits = gHitMarker >> 0x1C;
                if (gBitTable[2] & hitmarkerFaintBits && gBitTable[0] & hitmarkerFaintBits)
                {
                    gActiveBattler = 2;
                    if (HasNoMonsToSwitch(2, gBattleBufferB[0][1], 6))
                    {
                        gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                        gHitMarker &= ~((gBitTable[gActiveBattler] << 0x1C));
                        BtlController_EmitCmd42(0);
                        MarkBattlerForControllerExec(gActiveBattler);
                    }
                    else if (!gSpecialStatuses[gActiveBattler].flag40)
                    {
                        sub_804CF10(gBattleStruct->monToSwitchIntoId[0]);
                        gSpecialStatuses[gActiveBattler].flag40 = 1;
                    }
                }
                if (gBitTable[3] & hitmarkerFaintBits && hitmarkerFaintBits & gBitTable[1])
                {
                    gActiveBattler = 3;
                    if (HasNoMonsToSwitch(3, gBattleBufferB[1][1], 6))
                    {
                        gAbsentBattlerFlags |= gBitTable[gActiveBattler];
                        gHitMarker &= ~((gBitTable[gActiveBattler] << 0x1C));
                        BtlController_EmitCmd42(0);
                        MarkBattlerForControllerExec(gActiveBattler);
                    }
                    else if (!gSpecialStatuses[gActiveBattler].flag40)
                    {
                        sub_804CF10(gBattleStruct->monToSwitchIntoId[1]);
                        gSpecialStatuses[gActiveBattler].flag40 = 1;
                    }
                }
                gBattlescriptCurrInstr += 6;
            }
            else
            {
                gBattlescriptCurrInstr += 6;
            }
        }
        else
        {
            gBattlescriptCurrInstr += 6;
        }

        hitmarkerFaintBits = gHitMarker >> 0x1C;

        gBattlerFainted = 0;
        while (1)
        {
            if (gBitTable[gBattlerFainted] & hitmarkerFaintBits)
                break;
            if (gBattlerFainted >= gBattlersCount)
                break;
            gBattlerFainted++;
        }

        if (gBattlerFainted == gBattlersCount)
            gBattlescriptCurrInstr = jumpPtr;
    }
    else
    {
        if (gBattlescriptCurrInstr[1] & 0x80)
            hitmarkerFaintBits = 0;
        else
            hitmarkerFaintBits = 1;

        battlerId = GetBattlerForBattleScript(gBattlescriptCurrInstr[1] & ~(0x80));
        if (gSpecialStatuses[battlerId].flag40)
        {
            gBattlescriptCurrInstr += 6;
        }
        else if (HasNoMonsToSwitch(battlerId, 6, 6))
        {
            gActiveBattler = battlerId;
            gAbsentBattlerFlags |= gBitTable[gActiveBattler];
            gHitMarker &= ~((gBitTable[gActiveBattler] << 0x1C));
            gBattlescriptCurrInstr = jumpPtr;
        }
        else
        {
            gActiveBattler = battlerId;
            *(gBattleStruct->field_58 + gActiveBattler) = gBattlerPartyIndexes[gActiveBattler];
            *(gBattleStruct->monToSwitchIntoId + gActiveBattler) = 6;
            gBattleStruct->field_93 &= ~(gBitTable[gActiveBattler]);

            BtlController_EmitChoosePokemon(0, hitmarkerFaintBits, *(gBattleStruct->monToSwitchIntoId + (gActiveBattler ^ 2)), 0, gBattleStruct->field_60[gActiveBattler]);
            MarkBattlerForControllerExec(gActiveBattler);

            gBattlescriptCurrInstr += 6;

            if (GetBattlerPosition(gActiveBattler) == 0 && gBattleResults.playerSwitchesCounter < 0xFF)
                gBattleResults.playerSwitchesCounter++;

            if (gBattleTypeFlags & 0x0040)
            {
                for (gActiveBattler = 0; gActiveBattler < gBattlersCount; gActiveBattler++)
                {
                    if (gActiveBattler != battlerId)
                    {
                        BtlController_EmitLinkStandbyMsg(0, 2, 0);
                        MarkBattlerForControllerExec(gActiveBattler);
                    }
                }
            }
            else
            {
                gActiveBattler = GetBattlerAtPosition(GetBattlerPosition(battlerId) ^ 1);
                if (gAbsentBattlerFlags & gBitTable[gActiveBattler])
                    gActiveBattler ^= 2;

                BtlController_EmitLinkStandbyMsg(0, 2, 0);
                MarkBattlerForControllerExec(gActiveBattler);
            }
        }
    }
}

static void Cmd_switchhandleorder(void)
{
    s32 i;
    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    switch (gBattlescriptCurrInstr[2])
    {
    case 0:
        for (i = 0; i < gBattlersCount; i++)
        {
            if (gBattleBufferB[i][0] == 0x22)
            {
                *(gBattleStruct->monToSwitchIntoId + i) = gBattleBufferB[i][1];
                if (!(gBattleStruct->field_93 & gBitTable[i]))
                {
                    RecordedBattle_SetBattlerAction(i, gBattleBufferB[i][1]);
                    gBattleStruct->field_93 |= gBitTable[i];
                }
            }
        }
        break;
    case 1:
        if (!(gBattleTypeFlags & 0x0040))
            SwitchPartyOrder(gActiveBattler);
        break;
    case 2:
        if (!(gBattleStruct->field_93 & gBitTable[gActiveBattler]))
        {
            RecordedBattle_SetBattlerAction(gActiveBattler, gBattleBufferB[gActiveBattler][1]);
            gBattleStruct->field_93 |= gBitTable[gActiveBattler];
        }

    case 3:
        gBattleCommunication[0] = gBattleBufferB[gActiveBattler][1];
        *(gBattleStruct->monToSwitchIntoId + gActiveBattler) = gBattleBufferB[gActiveBattler][1];

        if (gBattleTypeFlags & 0x0002 && gBattleTypeFlags & 0x0040)
        {
            *(gActiveBattler * 3 + (u8*)(gBattleStruct->field_60) + 0) &= 0xF;
            *(gActiveBattler * 3 + (u8*)(gBattleStruct->field_60) + 0) |= (gBattleBufferB[gActiveBattler][2] & 0xF0);
            *(gActiveBattler * 3 + (u8*)(gBattleStruct->field_60) + 1) = gBattleBufferB[gActiveBattler][3];

            *((gActiveBattler ^ 2) * 3 + (u8*)(gBattleStruct->field_60) + 0) &= (0xF0);
            *((gActiveBattler ^ 2) * 3 + (u8*)(gBattleStruct->field_60) + 0) |= (gBattleBufferB[gActiveBattler][2] & 0xF0) >> 4;
            *((gActiveBattler ^ 2) * 3 + (u8*)(gBattleStruct->field_60) + 2) = gBattleBufferB[gActiveBattler][3];
        }
        else if (gBattleTypeFlags & 0x400000)
        {
            SwitchPartyOrderInGameMulti(gActiveBattler, *(gBattleStruct->monToSwitchIntoId + gActiveBattler));
        }
        else
        {
            SwitchPartyOrder(gActiveBattler);
        }

        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 6; gBattleTextBuff1[2] = gBattleMons[gBattlerAttacker].species; gBattleTextBuff1[3] = (gBattleMons[gBattlerAttacker].species & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }
        { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 7; gBattleTextBuff2[2] = gActiveBattler; gBattleTextBuff2[3] = gBattleBufferB[gActiveBattler][1]; gBattleTextBuff2[4] = 0xFF; }

        break;
    }

    gBattlescriptCurrInstr += 3;
}

static void Cmd_switchineffects(void)
{
    s32 i;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    sub_803FA70(gActiveBattler);

    gHitMarker &= ~((gBitTable[gActiveBattler] << 0x1C));
    gSpecialStatuses[gActiveBattler].flag40 = 0;

    if (!(gSideStatuses[GetBattlerSide(gActiveBattler)] & (1 << 9))
        && (gSideStatuses[GetBattlerSide(gActiveBattler)] & (1 << 4))
        && !((gBattleMons[gActiveBattler].type1 == 2 || gBattleMons[gActiveBattler].type2 == 2))
        && gBattleMons[gActiveBattler].ability != 26)
    {
        u8 spikesDmg;

        gSideStatuses[GetBattlerSide(gActiveBattler)] |= (1 << 9);

        gBattleMons[gActiveBattler].status2 &= ~(0x02000000);
        gHitMarker &= ~(0x00000040);

        spikesDmg = (5 - gSideTimers[GetBattlerSide(gActiveBattler)].spikesAmount) * 2;
        gBattleMoveDamage = gBattleMons[gActiveBattler].maxHP / (spikesDmg);
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;

        gBattleScripting.battler = gActiveBattler;
        BattleScriptPushCursor();

        if (gBattlescriptCurrInstr[1] == 0)
            gBattlescriptCurrInstr = BattleScript_SpikesOnTarget;
        else if (gBattlescriptCurrInstr[1] == 1)
            gBattlescriptCurrInstr = BattleScript_SpikesOnAttacker;
        else
            gBattlescriptCurrInstr = BattleScript_SpikesOnFaintedBattler;
    }
    else
    {


        if (gBattleMons[gActiveBattler].ability == 54 && !gDisableStructs[gActiveBattler].truantSwitchInHack)
            gDisableStructs[gActiveBattler].truantCounter = 1;

        gDisableStructs[gActiveBattler].truantSwitchInHack = 0;

        if (!AbilityBattleEffects(0x0, gActiveBattler, 0, 0, 0)
            && !ItemBattleEffects(0x0, gActiveBattler, 0))
        {
            gSideStatuses[GetBattlerSide(gActiveBattler)] &= ~((1 << 9));

            for (i = 0; i < gBattlersCount; i++)
            {
                if (gBattlerByTurnOrder[i] == gActiveBattler)
                    gActionsByTurnOrder[i] = 12;
            }

            for (i = 0; i < gBattlersCount; i++)
            {
                u16* hpOnSwitchout = &gBattleStruct->hpOnSwitchout[GetBattlerSide(i)];
                *hpOnSwitchout = gBattleMons[i].hp;
            }

            if (gBattlescriptCurrInstr[1] == 5)
            {
                u32 hitmarkerFaintBits = gHitMarker >> 0x1C;

                gBattlerFainted++;
                while (1)
                {
                    if (hitmarkerFaintBits & gBitTable[gBattlerFainted] && !(gAbsentBattlerFlags & gBitTable[gBattlerFainted]))
                        break;
                    if (gBattlerFainted >= gBattlersCount)
                        break;
                    gBattlerFainted++;
                }
            }
            gBattlescriptCurrInstr += 2;
        }
    }
}

static void Cmd_trainerslidein(void)
{
    gActiveBattler = GetBattlerAtPosition(gBattlescriptCurrInstr[1]);
    BtlController_EmitTrainerSlide(0);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_playse(void)
{
    gActiveBattler = gBattlerAttacker;
    BtlController_EmitPlaySE(0, ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8)));
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 3;
}

static void Cmd_fanfare(void)
{
    gActiveBattler = gBattlerAttacker;
    BtlController_EmitPlayFanfareOrBGM(0, ((gBattlescriptCurrInstr + 1)[0] + ((gBattlescriptCurrInstr + 1)[1] << 8)), 0);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 3;
}

static void Cmd_playfaintcry(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    BtlController_EmitFaintingCry(0);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_unknown_57(void)
{
    gActiveBattler = GetBattlerAtPosition(0);
    BtlController_EmitCmd55(0, gBattleOutcome);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 1;
}

static void Cmd_returntoball(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    BtlController_EmitReturnMonToBall(0, 1);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_handlelearnnewmove(void)
{
    const u8 *jumpPtr1 = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    const u8 *jumpPtr2 = (u8*) ((gBattlescriptCurrInstr + 5)[0] | ((gBattlescriptCurrInstr + 5)[1] << 8) | ((gBattlescriptCurrInstr + 5)[2] << 16) | ((gBattlescriptCurrInstr + 5)[3] << 24));

    u16 learnMove = MonTryLearningNewMove(&gPlayerParty[gBattleStruct->expGetterMonId], gBattlescriptCurrInstr[9]);
    while (learnMove == 0xFFFE)
        learnMove = MonTryLearningNewMove(&gPlayerParty[gBattleStruct->expGetterMonId], 0);

    if (learnMove == 0)
    {
        gBattlescriptCurrInstr = jumpPtr2;
    }
    else if (learnMove == 0xFFFF)
    {
        gBattlescriptCurrInstr += 10;
    }
    else
    {
        gActiveBattler = GetBattlerAtPosition(0);

        if (gBattlerPartyIndexes[gActiveBattler] == gBattleStruct->expGetterMonId
            && !(gBattleMons[gActiveBattler].status2 & 0x00200000))
        {
            GiveMoveToBattleMon(&gBattleMons[gActiveBattler], learnMove);
        }
        if (gBattleTypeFlags & 0x0001)
        {
            gActiveBattler = GetBattlerAtPosition(2);
            if (gBattlerPartyIndexes[gActiveBattler] == gBattleStruct->expGetterMonId
                && !(gBattleMons[gActiveBattler].status2 & 0x00200000))
            {
                GiveMoveToBattleMon(&gBattleMons[gActiveBattler], learnMove);
            }
        }

        gBattlescriptCurrInstr = jumpPtr1;
    }
}

static void Cmd_yesnoboxlearnmove(void)
{
    gActiveBattler = 0;

    switch (gBattleScripting.learnMoveState)
    {
    case 0:
        HandleBattleWindow(0x18, 8, 0x1D, 0xD, 0);
        BattlePutTextOnWindow(gText_BattleYesNoChoice, 0xC);
        gBattleScripting.learnMoveState++;
        gBattleCommunication[0x1] = 0;
        BattleCreateYesNoCursorAt(0);
        break;
    case 1:
        if (gMain.newKeys & 0x0040 && gBattleCommunication[0x1] != 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt(gBattleCommunication[0x1]);
            gBattleCommunication[0x1] = 0;
            BattleCreateYesNoCursorAt(0);
        }
        if (gMain.newKeys & 0x0080 && gBattleCommunication[0x1] == 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt(gBattleCommunication[0x1]);
            gBattleCommunication[0x1] = 1;
            BattleCreateYesNoCursorAt(1);
        }
        if (gMain.newKeys & 0x0001)
        {
            PlaySE(5);
            if (gBattleCommunication[1] == 0)
            {
                HandleBattleWindow(0x18, 0x8, 0x1D, 0xD, 0x1);
                BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 0x10, ((0) | ((0) << 5) | ((0) << 10)));
                gBattleScripting.learnMoveState++;
            }
            else
            {
                gBattleScripting.learnMoveState = 5;
            }
        }
        else if (gMain.newKeys & 0x0002)
        {
            PlaySE(5);
            gBattleScripting.learnMoveState = 5;
        }
        break;
    case 2:
        if (!gPaletteFade.active)
        {
            FreeAllWindowBuffers();
            ShowSelectMovePokemonSummaryScreen(gPlayerParty, gBattleStruct->expGetterMonId, gPlayerPartyCount - 1, ReshowBattleScreenAfterMenu, gMoveToLearn);
            gBattleScripting.learnMoveState++;
        }
        break;
    case 3:
        if (!gPaletteFade.active && gMain.callback2 == BattleMainCB2)
        {
            gBattleScripting.learnMoveState++;
        }
        break;
    case 4:
        if (!gPaletteFade.active && gMain.callback2 == BattleMainCB2)
        {
            u8 movePosition = GetMoveSlotToReplace();
            if (movePosition == 4)
            {
                gBattleScripting.learnMoveState = 5;
            }
            else
            {
                u16 moveId = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 13 + movePosition);
                if (IsHMMove2(moveId))
                {
                    PrepareStringBattle(319, gActiveBattler);
                    gBattleScripting.learnMoveState = 6;
                }
                else
                {
                    gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

                    { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 2; gBattleTextBuff2[2] = (moveId & 0xFF); gBattleTextBuff2[3] = (moveId & 0xFF00) >> 8; gBattleTextBuff2[4] = 0xFF; }

                    RemoveMonPPBonus(&gPlayerParty[gBattleStruct->expGetterMonId], movePosition);
                    SetMonMoveSlot(&gPlayerParty[gBattleStruct->expGetterMonId], gMoveToLearn, movePosition);

                    if (gBattlerPartyIndexes[0] == gBattleStruct->expGetterMonId
                        && !(gBattleMons[0].status2 & 0x00200000)
                        && !(gDisableStructs[0].mimickedMoves & gBitTable[movePosition]))
                    {
                        RemoveBattleMonPPBonus(&gBattleMons[0], movePosition);
                        SetBattleMonMoveSlot(&gBattleMons[0], gMoveToLearn, movePosition);
                    }
                    if (gBattleTypeFlags & 0x0001
                        && gBattlerPartyIndexes[2] == gBattleStruct->expGetterMonId
                        && !(gBattleMons[2].status2 & 0x00200000)
                        && !(gDisableStructs[2].mimickedMoves & gBitTable[movePosition]))
                    {
                        RemoveBattleMonPPBonus(&gBattleMons[2], movePosition);
                        SetBattleMonMoveSlot(&gBattleMons[2], gMoveToLearn, movePosition);
                    }
                }
            }
        }
        break;
    case 5:
        HandleBattleWindow(0x18, 8, 0x1D, 0xD, 0x1);
        gBattlescriptCurrInstr += 5;
        break;
    case 6:
        if (gBattleControllerExecFlags == 0)
        {
            gBattleScripting.learnMoveState = 2;
        }
        break;
    }
}

static void Cmd_yesnoboxstoplearningmove(void)
{
    switch (gBattleScripting.learnMoveState)
    {
    case 0:
        HandleBattleWindow(0x18, 8, 0x1D, 0xD, 0);
        BattlePutTextOnWindow(gText_BattleYesNoChoice, 0xC);
        gBattleScripting.learnMoveState++;
        gBattleCommunication[0x1] = 0;
        BattleCreateYesNoCursorAt(0);
        break;
    case 1:
        if (gMain.newKeys & 0x0040 && gBattleCommunication[0x1] != 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt(gBattleCommunication[0x1]);
            gBattleCommunication[0x1] = 0;
            BattleCreateYesNoCursorAt(0);
        }
        if (gMain.newKeys & 0x0080 && gBattleCommunication[0x1] == 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt(gBattleCommunication[0x1]);
            gBattleCommunication[0x1] = 1;
            BattleCreateYesNoCursorAt(1);
        }
        if (gMain.newKeys & 0x0001)
        {
            PlaySE(5);

            if (gBattleCommunication[1] != 0)
                gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
            else
                gBattlescriptCurrInstr += 5;

            HandleBattleWindow(0x18, 0x8, 0x1D, 0xD, 0x1);
        }
        else if (gMain.newKeys & 0x0002)
        {
            PlaySE(5);
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
            HandleBattleWindow(0x18, 0x8, 0x1D, 0xD, 0x1);
        }
        break;
    }
}

static void Cmd_hitanimation(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
    {
        gBattlescriptCurrInstr += 2;
    }
    else if (!(gHitMarker & 0x00000100) || !(gBattleMons[gActiveBattler].status2 & 0x01000000) || gDisableStructs[gActiveBattler].substituteHP == 0)
    {
        BtlController_EmitHitAnimation(0);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 2;
    }
    else
    {
        gBattlescriptCurrInstr += 2;
    }
}

static u32 GetTrainerMoneyToGive(u16 trainerId)
{
    u32 i = 0;
    u32 lastMonLevel = 0;
    u32 moneyReward = 0;

    if (trainerId == 1024)
    {
        moneyReward = 20 * gBattleResources->secretBase->party.levels[0] * gBattleStruct->moneyMultiplier;
    }
    else
    {
        switch (gTrainers[trainerId].partyFlags)
        {
        case 0:
            {
                const struct TrainerMonNoItemDefaultMoves *party = gTrainers[trainerId].party.NoItemDefaultMoves;
                lastMonLevel = party[gTrainers[trainerId].partySize - 1].lvl;
            }
            break;
        case (1 << 0):
            {
                const struct TrainerMonNoItemCustomMoves *party = gTrainers[trainerId].party.NoItemCustomMoves;
                lastMonLevel = party[gTrainers[trainerId].partySize - 1].lvl;
            }
            break;
        case (1 << 1):
            {
                const struct TrainerMonItemDefaultMoves *party = gTrainers[trainerId].party.ItemDefaultMoves;
                lastMonLevel = party[gTrainers[trainerId].partySize - 1].lvl;
            }
            break;
        case (1 << 0) | (1 << 1):
            {
                const struct TrainerMonItemCustomMoves *party = gTrainers[trainerId].party.ItemCustomMoves;
                lastMonLevel = party[gTrainers[trainerId].partySize - 1].lvl;
            }
            break;
        }

        for (; gTrainerMoneyTable[i].classId != 0xFF; i++)
        {
            if (gTrainerMoneyTable[i].classId == gTrainers[trainerId].trainerClass)
                break;
        }

        if (gBattleTypeFlags & 0x8000)
            moneyReward = 4 * lastMonLevel * gBattleStruct->moneyMultiplier * gTrainerMoneyTable[i].value;
        else if (gBattleTypeFlags & 0x0001)
            moneyReward = 4 * lastMonLevel * gBattleStruct->moneyMultiplier * 2 * gTrainerMoneyTable[i].value;
        else
            moneyReward = 4 * lastMonLevel * gBattleStruct->moneyMultiplier * gTrainerMoneyTable[i].value;
    }

    return moneyReward;
}

static void Cmd_getmoneyreward(void)
{
    u32 moneyReward = GetTrainerMoneyToGive(gTrainerBattleOpponent_A);
    if (gBattleTypeFlags & 0x8000)
        moneyReward += GetTrainerMoneyToGive(gTrainerBattleOpponent_B);

    AddMoney(&gSaveBlock1Ptr->money, moneyReward);
    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 1; gBattleTextBuff1[2] = 4; gBattleTextBuff1[3] = 5; gBattleTextBuff1[4] = (moneyReward); gBattleTextBuff1[5] = (moneyReward & 0x0000FF00) >> 8; gBattleTextBuff1[6] = (moneyReward & 0x00FF0000) >> 16; gBattleTextBuff1[7] = (moneyReward & 0xFF000000) >> 24; gBattleTextBuff1[8] = 0xFF; };

    gBattlescriptCurrInstr++;
}

static void Cmd_unknown_5E(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    switch (gBattleCommunication[0])
    {
    case 0:
        BtlController_EmitGetMonData(0, REQUEST_ALL_BATTLE, 0);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattleCommunication[0]++;
        break;
    case 1:
         if (gBattleControllerExecFlags == 0)
         {
            s32 i;
            struct BattlePokemon *bufferPoke = (struct BattlePokemon*) &gBattleBufferB[gActiveBattler][4];
            for (i = 0; i < 4; i++)
            {
                gBattleMons[gActiveBattler].moves[i] = bufferPoke->moves[i];
                gBattleMons[gActiveBattler].pp[i] = bufferPoke->pp[i];
            }
            gBattlescriptCurrInstr += 2;
         }
         break;
    }
}

static void Cmd_swapattackerwithtarget(void)
{
    gActiveBattler = gBattlerAttacker;
    gBattlerAttacker = gBattlerTarget;
    gBattlerTarget = gActiveBattler;

    if (gHitMarker & 0x00001000)
        gHitMarker &= ~(0x00001000);
    else
        gHitMarker |= 0x00001000;

    gBattlescriptCurrInstr++;
}

static void Cmd_incrementgamestat(void)
{
    if (GetBattlerSide(gBattlerAttacker) == 0)
        IncrementGameStat(gBattlescriptCurrInstr[1]);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_drawpartystatussummary(void)
{
    s32 i;
    struct Pokemon *party;
    struct HpAndStatus hpStatuses[6];

    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (GetBattlerSide(gActiveBattler) == 0)
        party = gPlayerParty;
    else
        party = gEnemyParty;

    for (i = 0; i < 6; i++)
    {
        if (GetMonData(&party[i], 65) == 0
            || GetMonData(&party[i], 65) == 412)
        {
            hpStatuses[i].hp = 0xFFFF;
            hpStatuses[i].status = 0;
        }
        else
        {
            hpStatuses[i].hp = GetMonData(&party[i], 57);
            hpStatuses[i].status = GetMonData(&party[i], 55);
        }
    }

    BtlController_EmitDrawPartyStatusSummary(0, hpStatuses, 1);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_hidepartystatussummary(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    BtlController_EmitHidePartyStatusSummary(0);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_jumptocalledmove(void)
{
    if (gBattlescriptCurrInstr[1])
        gCurrentMove = gCalledMove;
    else
        gChosenMove = gCurrentMove = gCalledMove;

    gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
}

static void Cmd_statusanimation(void)
{
    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        if (!(gStatuses3[gActiveBattler] & (0x80 | 0x40 | 0x40000))
            && gDisableStructs[gActiveBattler].substituteHP == 0
            && !(gHitMarker & 0x00000080))
        {
            BtlController_EmitStatusAnimation(0, 0, gBattleMons[gActiveBattler].status1);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        gBattlescriptCurrInstr += 2;
    }
}

static void Cmd_status2animation(void)
{
    u32 wantedToAnimate;

    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        wantedToAnimate = ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        if (!(gStatuses3[gActiveBattler] & (0x80 | 0x40 | 0x40000))
            && gDisableStructs[gActiveBattler].substituteHP == 0
            && !(gHitMarker & 0x00000080))
        {
            BtlController_EmitStatusAnimation(0, 1, gBattleMons[gActiveBattler].status2 & wantedToAnimate);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        gBattlescriptCurrInstr += 6;
    }
}

static void Cmd_chosenstatusanimation(void)
{
    u32 wantedStatus;

    if (gBattleControllerExecFlags == 0)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        wantedStatus = ((gBattlescriptCurrInstr + 3)[0] | ((gBattlescriptCurrInstr + 3)[1] << 8) | ((gBattlescriptCurrInstr + 3)[2] << 16) | ((gBattlescriptCurrInstr + 3)[3] << 24));
        if (!(gStatuses3[gActiveBattler] & (0x80 | 0x40 | 0x40000))
            && gDisableStructs[gActiveBattler].substituteHP == 0
            && !(gHitMarker & 0x00000080))
        {
            BtlController_EmitStatusAnimation(0, gBattlescriptCurrInstr[2], wantedStatus);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        gBattlescriptCurrInstr += 7;
    }
}

static void Cmd_yesnobox(void)
{
    switch (gBattleCommunication[0])
    {
    case 0:
        HandleBattleWindow(0x18, 8, 0x1D, 0xD, 0);
        BattlePutTextOnWindow(gText_BattleYesNoChoice, 0xC);
        gBattleCommunication[0]++;
        gBattleCommunication[0x1] = 0;
        BattleCreateYesNoCursorAt(0);
        break;
    case 1:
        if (gMain.newKeys & 0x0040 && gBattleCommunication[0x1] != 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt(gBattleCommunication[0x1]);
            gBattleCommunication[0x1] = 0;
            BattleCreateYesNoCursorAt(0);
        }
        if (gMain.newKeys & 0x0080 && gBattleCommunication[0x1] == 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt(gBattleCommunication[0x1]);
            gBattleCommunication[0x1] = 1;
            BattleCreateYesNoCursorAt(1);
        }
        if (gMain.newKeys & 0x0002)
        {
            gBattleCommunication[0x1] = 1;
            PlaySE(5);
            HandleBattleWindow(0x18, 8, 0x1D, 0xD, 0x1);
            gBattlescriptCurrInstr++;
        }
        else if (gMain.newKeys & 0x0001)
        {
            PlaySE(5);
            HandleBattleWindow(0x18, 8, 0x1D, 0xD, 0x1);
            gBattlescriptCurrInstr++;
        }
        break;
    }
}

static void Cmd_cancelallactions(void)
{
    s32 i;

    for (i = 0; i < gBattlersCount; i++)
        gActionsByTurnOrder[i] = 12;

    gBattlescriptCurrInstr++;
}

static void Cmd_adjustsetdamage(void)
{
    u8 holdEffect, param;

    if (gBattleMons[gBattlerTarget].item == 175)
    {
        holdEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
        param = gEnigmaBerries[gBattlerTarget].holdEffectParam;
    }
    else
    {
        holdEffect = ItemId_GetHoldEffect(gBattleMons[gBattlerTarget].item);
        param = ItemId_GetHoldEffectParam(gBattleMons[gBattlerTarget].item);
    }

    gPotentialItemEffectBattler = gBattlerTarget;

    if (holdEffect == 39 && (Random() % 100) < param)
    {
        RecordItemEffectBattle(gBattlerTarget, holdEffect);
        gSpecialStatuses[gBattlerTarget].focusBanded = 1;
    }
    if (!(gBattleMons[gBattlerTarget].status2 & 0x01000000)
     && (gBattleMoves[gCurrentMove].effect == 101 || gProtectStructs[gBattlerTarget].endured || gSpecialStatuses[gBattlerTarget].focusBanded)
     && gBattleMons[gBattlerTarget].hp <= gBattleMoveDamage)
    {
        gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - 1;
        if (gProtectStructs[gBattlerTarget].endured)
        {
            gMoveResultFlags |= (1 << 6);
        }
        else if (gSpecialStatuses[gBattlerTarget].focusBanded)
        {
            gMoveResultFlags |= (1 << 7);
            gLastUsedItem = gBattleMons[gBattlerTarget].item;
        }
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_removeitem(void)
{
    u16* usedHeldItem;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    usedHeldItem = &gBattleStruct->usedHeldItems[gActiveBattler];
    *usedHeldItem = gBattleMons[gActiveBattler].item;
    gBattleMons[gActiveBattler].item = 0;

    BtlController_EmitSetMonData(0, REQUEST_HELDITEM_BATTLE, 0, 2, &gBattleMons[gActiveBattler].item);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_atknameinbuff1(void)
{
    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 7; gBattleTextBuff1[2] = gBattlerAttacker; gBattleTextBuff1[3] = gBattlerPartyIndexes[gBattlerAttacker]; gBattleTextBuff1[4] = 0xFF; }

    gBattlescriptCurrInstr++;
}

static void Cmd_drawlvlupbox(void)
{
    if (gBattleScripting.drawlvlupboxState == 0)
    {
        if (IsMonGettingExpSentOut())
            gBattleScripting.drawlvlupboxState = 3;
        else
            gBattleScripting.drawlvlupboxState = 1;
    }

    switch (gBattleScripting.drawlvlupboxState)
    {
    case 1:
        gBattle_BG2_Y = 0x60;
        SetBgAttribute(2, BG_ATTR_PRIORITY, 0);
        ShowBg(2);
        sub_804F17C();
        gBattleScripting.drawlvlupboxState = 2;
        break;
    case 2:
        if (!sub_804F1CC())
            gBattleScripting.drawlvlupboxState = 3;
        break;
    case 3:
        gBattle_BG1_X = 0;
        gBattle_BG1_Y = 0x100;
        SetBgAttribute(0, BG_ATTR_PRIORITY, 1);
        SetBgAttribute(1, BG_ATTR_PRIORITY, 0);
        ShowBg(0);
        ShowBg(1);
        HandleBattleWindow(0x12, 7, 0x1D, 0x13, 0x80);
        gBattleScripting.drawlvlupboxState = 4;
        break;
    case 4:
        DrawLevelUpWindow1();
        PutWindowTilemap(13);
        CopyWindowToVram(13, 3);
        gBattleScripting.drawlvlupboxState++;
        break;
    case 5:
    case 7:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            gBattle_BG1_Y = 0;
            gBattleScripting.drawlvlupboxState++;
        }
        break;
    case 6:
        if (gMain.newKeys != 0)
        {
            PlaySE(5);
            DrawLevelUpWindow2();
            CopyWindowToVram(13, 2);
            gBattleScripting.drawlvlupboxState++;
        }
        break;
    case 8:
        if (gMain.newKeys != 0)
        {
            PlaySE(5);
            HandleBattleWindow(0x12, 7, 0x1D, 0x13, 0x80 | 0x1);
            gBattleScripting.drawlvlupboxState++;
        }
        break;
    case 9:
        if (!sub_804F344())
        {
            ClearWindowTilemap(14);
            CopyWindowToVram(14, 1);

            ClearWindowTilemap(13);
            CopyWindowToVram(13, 1);

            SetBgAttribute(2, BG_ATTR_PRIORITY, 2);
            ShowBg(2);

            gBattleScripting.drawlvlupboxState = 10;
        }
        break;
    case 10:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            SetBgAttribute(0, BG_ATTR_PRIORITY, 0);
            SetBgAttribute(1, BG_ATTR_PRIORITY, 1);
            ShowBg(0);
            ShowBg(1);
            gBattlescriptCurrInstr++;
        }
        break;
    }
}

static void DrawLevelUpWindow1(void)
{
    u16 currStats[6];

    GetMonLevelUpWindowStats(&gPlayerParty[gBattleStruct->expGetterMonId], currStats);
    DrawLevelUpWindowPg1(0xD, gBattleResources->beforeLvlUp->stats, currStats, 0xE, 0xD, 0xF);
}

static void DrawLevelUpWindow2(void)
{
    u16 currStats[6];

    GetMonLevelUpWindowStats(&gPlayerParty[gBattleStruct->expGetterMonId], currStats);
    DrawLevelUpWindowPg2(0xD, currStats, 0xE, 0xD, 0xF);
}

static void sub_804F17C(void)
{
    gBattle_BG2_Y = 0;
    gBattle_BG2_X = 0x1A0;

    LoadPalette(sUnknown_0831C2C8, 0x60, 0x20);
    CopyToWindowPixelBuffer(14, sUnknown_0831C2E8, 0, 0);
    PutWindowTilemap(14);
    CopyWindowToVram(14, 3);

    PutMonIconOnLvlUpBox();
}

static bool8 sub_804F1CC(void)
{
    if (IsDma3ManagerBusyWithBgCopy())
        return 1;

    if (gBattle_BG2_X == 0x200)
        return 0;

    if (gBattle_BG2_X == 0x1A0)
        PutLevelAndGenderOnLvlUpBox();

    gBattle_BG2_X += 8;
    if (gBattle_BG2_X >= 0x200)
        gBattle_BG2_X = 0x200;

    return (gBattle_BG2_X != 0x200);
}

static void PutLevelAndGenderOnLvlUpBox(void)
{
    u16 monLevel;
    u8 monGender;
    struct TextPrinterTemplate printerTemplate;
    u8 *txtPtr;
    u32 var;

    monLevel = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 56);
    monGender = GetMonGender(&gPlayerParty[gBattleStruct->expGetterMonId]);
    GetMonNickname(&gPlayerParty[gBattleStruct->expGetterMonId], gStringVar4);

    printerTemplate.currentChar = gStringVar4;
    printerTemplate.windowId = 14;
    printerTemplate.fontId = 0;
    printerTemplate.x = 32;
    printerTemplate.y = 0;
    printerTemplate.currentX = 32;
    printerTemplate.currentY = 0;
    printerTemplate.letterSpacing = 0;
    printerTemplate.lineSpacing = 0;
    printerTemplate.unk = 0;
    printerTemplate.fgColor = 0x1;
    printerTemplate.bgColor = 0x0;
    printerTemplate.shadowColor = 0x2;

    AddTextPrinter(&printerTemplate, 0xFF, ((void *)0));

    txtPtr = gStringVar4;
    gStringVar4[0] = 0xF9;
    txtPtr++;
    txtPtr[0] = 0x05;
    txtPtr++;

    var = (u32)(txtPtr);
    txtPtr = ConvertIntToDecimalStringN(txtPtr, monLevel, STR_CONV_MODE_LEFT_ALIGN, 3);
    var = (u32)(txtPtr) - var;
    txtPtr = StringFill(txtPtr, 0x77, 4 - var);

    if (monGender != 0xFF)
    {
        if (monGender == 0x00)
        {
            txtPtr = WriteColorChangeControlCode(txtPtr, 0, 0xC);
            txtPtr = WriteColorChangeControlCode(txtPtr, 1, 0xD);
            *(txtPtr++) = 0xB5;
        }
        else
        {
            txtPtr = WriteColorChangeControlCode(txtPtr, 0, 0xE);
            txtPtr = WriteColorChangeControlCode(txtPtr, 1, 0xF);
            *(txtPtr++) = 0xB6;
        }
        *(txtPtr++) = 0xFF;
    }

    printerTemplate.y = 10;
    printerTemplate.currentY = 10;
    AddTextPrinter(&printerTemplate, 0xFF, ((void *)0));

    CopyWindowToVram(14, 2);
}

static bool8 sub_804F344(void)
{
    if (gBattle_BG2_X == 0x1A0)
        return 0;

    if (gBattle_BG2_X - 16 < 0x1A0)
        gBattle_BG2_X = 0x1A0;
    else
        gBattle_BG2_X -= 16;

    return (gBattle_BG2_X != 0x1A0);
}




static void PutMonIconOnLvlUpBox(void)
{
    u8 spriteId;
    const u16* iconPal;
    struct SpriteSheet iconSheet;
    struct SpritePalette iconPalSheet;

    u16 species = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 11);
    u32 personality = GetMonData(&gPlayerParty[gBattleStruct->expGetterMonId], 0);

    const u8* iconPtr = GetMonIconPtr(species, personality, 1);
    iconSheet.data = iconPtr;
    iconSheet.size = 0x200;
    iconSheet.tag = 0xD75A;

    iconPal = GetValidMonIconPalettePtr(species);
    iconPalSheet.data = iconPal;
    iconPalSheet.tag = 0xD75A;

    LoadSpriteSheet(&iconSheet);
    LoadSpritePalette(&iconPalSheet);

    spriteId = CreateSprite(&sSpriteTemplate_MonIconOnLvlUpBox, 256, 10, 0);
    gSprites[spriteId].data[0] = 0;
    gSprites[spriteId].data[1] = gBattle_BG2_X;
}

static void SpriteCB_MonIconOnLvlUpBox(struct Sprite* sprite)
{
    sprite->pos2.x = sprite->data[1] - gBattle_BG2_X;

    if (sprite->pos2.x != 0)
    {
        sprite->data[0] = 1;
    }
    else if (sprite->data[0])
    {
        DestroySprite(sprite);
        FreeSpriteTilesByTag(0xD75A);
        FreeSpritePaletteByTag(0xD75A);
    }
}




static bool32 IsMonGettingExpSentOut(void)
{
    if (gBattlerPartyIndexes[0] == gBattleStruct->expGetterMonId)
        return 1;
    if (gBattleTypeFlags & 0x0001 && gBattlerPartyIndexes[2] == gBattleStruct->expGetterMonId)
        return 1;

    return 0;
}

static void Cmd_resetsentmonsvalue(void)
{
    ResetSentPokesToOpponentValue();
    gBattlescriptCurrInstr++;
}

static void Cmd_setatktoplayer0(void)
{
    gBattlerAttacker = GetBattlerAtPosition(0);
    gBattlescriptCurrInstr++;
}

static void Cmd_makevisible(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    BtlController_EmitSpriteInvisibility(0, 0);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}

static void Cmd_recordlastability(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
    RecordAbilityBattle(gActiveBattler, gLastUsedAbility);
    gBattlescriptCurrInstr += 1;
}

void BufferMoveToLearnIntoBattleTextBuff2(void)
{
    { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 2; gBattleTextBuff2[2] = (gMoveToLearn & 0xFF); gBattleTextBuff2[3] = (gMoveToLearn & 0xFF00) >> 8; gBattleTextBuff2[4] = 0xFF; };
}

static void Cmd_buffermovetolearn(void)
{
    BufferMoveToLearnIntoBattleTextBuff2();
    gBattlescriptCurrInstr++;
}

static void Cmd_jumpifplayerran(void)
{
    if (TryRunFromBattle(gBattlerFainted))
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    else
        gBattlescriptCurrInstr += 5;
}

static void Cmd_hpthresholds(void)
{
    u8 opposingBank;
    s32 result;

    if (!(gBattleTypeFlags & 0x0001))
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        opposingBank = gActiveBattler ^ 1;

        result = gBattleMons[opposingBank].hp * 100 / gBattleMons[opposingBank].maxHP;
        if (result == 0)
            result = 1;

        if (result > 69 || !gBattleMons[opposingBank].hp)
            gBattleStruct->hpScale = 0;
        else if (result > 39)
            gBattleStruct->hpScale = 1;
        else if (result > 9)
            gBattleStruct->hpScale = 2;
        else
            gBattleStruct->hpScale = 3;
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_hpthresholds2(void)
{
    u8 opposingBank;
    s32 result;
    u8 hpSwitchout;

    if (!(gBattleTypeFlags & 0x0001))
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        opposingBank = gActiveBattler ^ 1;
        hpSwitchout = *(gBattleStruct->hpOnSwitchout + GetBattlerSide(opposingBank));
        result = (hpSwitchout - gBattleMons[opposingBank].hp) * 100 / hpSwitchout;

        if (gBattleMons[opposingBank].hp >= hpSwitchout)
            gBattleStruct->hpScale = 0;
        else if (result <= 29)
            gBattleStruct->hpScale = 1;
        else if (result <= 69)
            gBattleStruct->hpScale = 2;
        else
            gBattleStruct->hpScale = 3;
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_useitemonopponent(void)
{
    gBattlerInMenuId = gBattlerAttacker;
    PokemonUseItemEffects(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker]], gLastUsedItem, gBattlerPartyIndexes[gBattlerAttacker], 0, 1);
    gBattlescriptCurrInstr += 1;
}

static void Cmd_various(void)
{
    u8 side;
    s32 i;

    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    switch (gBattlescriptCurrInstr[2])
    {
    case 0:
        CancelMultiTurnMoves(gActiveBattler);
        break;
    case 1:
        gBattlerAttacker = gBattlerTarget;
        side = GetBattlerSide(gBattlerAttacker) ^ 1;
        if (gSideTimers[side].followmeTimer != 0 && gBattleMons[gSideTimers[side].followmeTarget].hp != 0)
            gBattlerTarget = gSideTimers[side].followmeTarget;
        else
            gBattlerTarget = gActiveBattler;
        break;
    case 2:
        gBattleCommunication[0] = IsRunningFromBattleImpossible();
        break;
    case 3:
        gBattlerTarget = GetMoveTarget(gCurrentMove, 0);
        break;
    case 4:
        if (gHitMarker & (gBitTable[gActiveBattler] << 0x1C))
            gBattleCommunication[0] = 1;
        else
            gBattleCommunication[0] = 0;
        break;
    case 5:
        gSpecialStatuses[gActiveBattler].intimidatedMon = 0;
        gSpecialStatuses[gActiveBattler].traced = 0;
        break;
    case 6:
        if (gBattlerPartyIndexes[0] == gBattleStruct->expGetterMonId || gBattlerPartyIndexes[2] == gBattleStruct->expGetterMonId)
        {
            u16 *choicedMove;

            if (gBattlerPartyIndexes[0] == gBattleStruct->expGetterMonId)
                gActiveBattler = 0;
            else
                gActiveBattler = 2;

            choicedMove = &gBattleStruct->choicedMove[gActiveBattler];

            for (i = 0; i < 4; i++)
            {
                if (gBattleMons[gActiveBattler].moves[i] == *choicedMove)
                    break;
            }
            if (i == 4)
                *choicedMove = 0;
        }
        break;
    case 7:
        if (!(gBattleTypeFlags & (0x0002 | 0x0001))
            && gBattleTypeFlags & 0x0008
            && gBattleMons[0].hp != 0
            && gBattleMons[1].hp != 0)
        {
            gHitMarker &= ~(0x00400000);
        }
        break;
    case 8:
        gBattleCommunication[0] = 0;
        gBattleScripting.battler = gActiveBattler = gBattleCommunication[1];
        if (!(gBattleStruct->field_92 & gBitTable[gActiveBattler])
            && gBattleMons[gActiveBattler].maxHP / 2 >= gBattleMons[gActiveBattler].hp
            && gBattleMons[gActiveBattler].hp != 0
            && !(gBattleMons[gActiveBattler].status1 & 0x7))
        {
            gBattleStruct->field_92 |= gBitTable[gActiveBattler];
            gBattleCommunication[0] = 1;
            gBattleCommunication[0x5] = sUnknown_0831C4F8[GetNatureFromPersonality(gBattleMons[gActiveBattler].personality)];
        }
        break;
    case 9:
        i = BattleArena_ShowJudgmentWindow(&gBattleCommunication[0]);
        if (i == 0)
            return;

        gBattleCommunication[1] = i;
        break;
    case 10:
        gBattleMons[1].hp = 0;
        gHitMarker |= (gBitTable[1] << 0x1C);
        gBattleStruct->arenaLostOpponentMons |= gBitTable[gBattlerPartyIndexes[1]];
        gDisableStructs[1].truantSwitchInHack = 1;
        break;
    case 11:
        gBattleMons[0].hp = 0;
        gHitMarker |= (gBitTable[0] << 0x1C);
        gHitMarker |= 0x00400000;
        gBattleStruct->arenaLostPlayerMons |= gBitTable[gBattlerPartyIndexes[0]];
        gDisableStructs[0].truantSwitchInHack = 1;
        break;
    case 12:
        gBattleMons[0].hp = 0;
        gBattleMons[1].hp = 0;
        gHitMarker |= (gBitTable[0] << 0x1C);
        gHitMarker |= (gBitTable[1] << 0x1C);
        gHitMarker |= 0x00400000;
        gBattleStruct->arenaLostPlayerMons |= gBitTable[gBattlerPartyIndexes[0]];
        gBattleStruct->arenaLostOpponentMons |= gBitTable[gBattlerPartyIndexes[1]];
        gDisableStructs[0].truantSwitchInHack = 1;
        gDisableStructs[1].truantSwitchInHack = 1;
        break;
    case 13:
        BtlController_EmitUnknownYesNoBox(0);
        MarkBattlerForControllerExec(gActiveBattler);
        break;
    case 14:
        DrawArenaRefereeTextBox();
        break;
    case 15:
        RemoveArenaRefereeTextBox();
        break;
    case 16:
        BattleStringExpandPlaceholdersToDisplayedString(gRefereeStringsTable[gBattlescriptCurrInstr[1]]);
        BattlePutTextOnWindow(gDisplayedStringBattle, 0x16);
        break;
    case 17:
        if (IsTextPrinterActive(0x16))
            return;
        break;
    case 18:
        if (!IsCryFinished())
            return;
        break;
    case 19:
        gActiveBattler = 1;
        if (gBattleMons[gActiveBattler].hp != 0)
        {
            BtlController_EmitReturnMonToBall(0, 0);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        break;
    case 20:
        if (gBattlersCount > 3)
        {
            gActiveBattler = 3;
            if (gBattleMons[gActiveBattler].hp != 0)
            {
                BtlController_EmitReturnMonToBall(0, 0);
                MarkBattlerForControllerExec(gActiveBattler);
            }
        }
        break;
    case 21:
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 0x55);
        break;
    case 22:
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xFFFF, 0x100);
        break;
    case 23:
        gBattleStruct->alreadyStatusedMoveAttempt |= gBitTable[gActiveBattler];
        break;
    case 24:
        if (sub_805725C(gActiveBattler))
            return;
        break;
    case 25:
        if (GetBattlerSide(gActiveBattler) == 0)
            gBattleOutcome = 0x5;
        else
            gBattleOutcome = 0xA;
        break;
    case 26:
        BtlController_EmitPlayFanfareOrBGM(0, 412, 1);
        MarkBattlerForControllerExec(gActiveBattler);
        break;
    }

    gBattlescriptCurrInstr += 3;
}

static void Cmd_setprotectlike(void)
{
    bool8 notLastTurn = 1;
    u16 lastMove = gLastResultingMoves[gBattlerAttacker];

    if (lastMove != 182 && lastMove != 197 && lastMove != 203)
        gDisableStructs[gBattlerAttacker].protectUses = 0;

    if (gCurrentTurnActionNumber == (gBattlersCount - 1))
        notLastTurn = 0;

    if (sProtectSuccessRates[gDisableStructs[gBattlerAttacker].protectUses] >= Random() && notLastTurn)
    {
        if (gBattleMoves[gCurrentMove].effect == 111)
        {
            gProtectStructs[gBattlerAttacker].protected = 1;
            gBattleCommunication[0x5] = 0;
        }
        if (gBattleMoves[gCurrentMove].effect == 116)
        {
            gProtectStructs[gBattlerAttacker].endured = 1;
            gBattleCommunication[0x5] = 1;
        }
        gDisableStructs[gBattlerAttacker].protectUses++;
    }
    else
    {
        gDisableStructs[gBattlerAttacker].protectUses = 0;
        gBattleCommunication[0x5] = 2;
        gMoveResultFlags |= (1 << 0);
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_faintifabilitynotdamp(void)
{
    if (gBattleControllerExecFlags)
        return;

    for (gBattlerTarget = 0; gBattlerTarget < gBattlersCount; gBattlerTarget++)
    {
        if (gBattleMons[gBattlerTarget].ability == 6)
            break;
    }

    if (gBattlerTarget == gBattlersCount)
    {
        gActiveBattler = gBattlerAttacker;
        gBattleMoveDamage = gBattleMons[gActiveBattler].hp;
        BtlController_EmitHealthBarUpdate(0, 32767);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr++;

        for (gBattlerTarget = 0; gBattlerTarget < gBattlersCount; gBattlerTarget++)
        {
            if (gBattlerTarget == gBattlerAttacker)
                continue;
            if (!(gAbsentBattlerFlags & gBitTable[gBattlerTarget]))
                break;
        }
    }
    else
    {
        gLastUsedAbility = 6;
        RecordAbilityBattle(gBattlerTarget, gBattleMons[gBattlerTarget].ability);
        gBattlescriptCurrInstr = BattleScript_DampStopsExplosion;
    }
}

static void Cmd_setatkhptozero(void)
{
    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = gBattlerAttacker;
    gBattleMons[gActiveBattler].hp = 0;
    BtlController_EmitSetMonData(0, REQUEST_HP_BATTLE, 0, 2, &gBattleMons[gActiveBattler].hp);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr++;
}

static void Cmd_jumpifnexttargetvalid(void)
{
    const u8 *jumpPtr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

    if (gBattleTypeFlags & 0x0001)
    {
        for (gBattlerTarget++; ; gBattlerTarget++)
        {
            if (gBattlerTarget == gBattlerAttacker)
                continue;
            if (!(gAbsentBattlerFlags & gBitTable[gBattlerTarget]))
                break;
        }

        if (gBattlerTarget >= gBattlersCount)
            gBattlescriptCurrInstr += 5;
        else
            gBattlescriptCurrInstr = jumpPtr;
    }
    else
    {
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_tryhealhalfhealth(void)
{
    const u8* failPtr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

    if (gBattlescriptCurrInstr[5] == 1)
        gBattlerTarget = gBattlerAttacker;

    gBattleMoveDamage = gBattleMons[gBattlerTarget].maxHP / 2;
    if (gBattleMoveDamage == 0)
        gBattleMoveDamage = 1;
    gBattleMoveDamage *= -1;

    if (gBattleMons[gBattlerTarget].hp == gBattleMons[gBattlerTarget].maxHP)
        gBattlescriptCurrInstr = failPtr;
    else
        gBattlescriptCurrInstr += 6;
}

static void Cmd_trymirrormove(void)
{
    s32 validMovesCount;
    s32 i;
    u16 move;
    u16 movesArray[4];

    for (i = 0; i < 3; i++)
        movesArray[i] = 0;

    for (validMovesCount = 0, i = 0; i < gBattlersCount; i++)
    {
        if (i != gBattlerAttacker)
        {
            move = *(i * 2 + gBattlerAttacker * 8 + (u8*)(gBattleStruct->lastTakenMoveFrom) + 0)
                | (*(i * 2 + gBattlerAttacker * 8 + (u8*)(gBattleStruct->lastTakenMoveFrom) + 1) << 8);

            if (move != 0 && move != 0xFFFF)
            {
                movesArray[validMovesCount] = move;
                validMovesCount++;
            }
        }
    }

    move = *(gBattleStruct->lastTakenMove + gBattlerAttacker * 2 + 0)
        | (*(gBattleStruct->lastTakenMove + gBattlerAttacker * 2 + 1) << 8);

    if (move != 0 && move != 0xFFFF)
    {
        gHitMarker &= ~(0x00000400);
        gCurrentMove = move;
        gBattlerTarget = GetMoveTarget(gCurrentMove, 0);
        gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
    }
    else if (validMovesCount)
    {
        gHitMarker &= ~(0x00000400);
        i = Random() % validMovesCount;
        gCurrentMove = movesArray[i];
        gBattlerTarget = GetMoveTarget(gCurrentMove, 0);
        gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
    }
    else
    {
        gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
        gBattlescriptCurrInstr++;
    }
}

static void Cmd_setrain(void)
{
    if (gBattleWeather & ((1 << 0) | (1 << 1) | (1 << 2)))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[0x5] = 2;
    }
    else
    {
        gBattleWeather = (1 << 0);
        gBattleCommunication[0x5] = 0;
        gWishFutureKnock.weatherDuration = 5;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_setreflect(void)
{
    if (gSideStatuses[(GetBattlerPosition(gBattlerAttacker) & 1)] & (1 << 0))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[0x5] = 0;
    }
    else
    {
        gSideStatuses[(GetBattlerPosition(gBattlerAttacker) & 1)] |= (1 << 0);
        gSideTimers[(GetBattlerPosition(gBattlerAttacker) & 1)].reflectTimer = 5;
        gSideTimers[(GetBattlerPosition(gBattlerAttacker) & 1)].reflectBattlerId = gBattlerAttacker;

        if (gBattleTypeFlags & 0x0001 && CountAliveMonsInBattle(1) == 2)
            gBattleCommunication[0x5] = 2;
        else
            gBattleCommunication[0x5] = 1;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_setseeded(void)
{
    if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)) || gStatuses3[gBattlerTarget] & 0x4)
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[0x5] = 1;
    }
    else if (((gBattleMons[gBattlerTarget].type1 == 12 || gBattleMons[gBattlerTarget].type2 == 12)))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[0x5] = 2;
    }
    else
    {
        gStatuses3[gBattlerTarget] |= gBattlerAttacker;
        gStatuses3[gBattlerTarget] |= 0x4;
        gBattleCommunication[0x5] = 0;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_manipulatedamage(void)
{
    switch (gBattlescriptCurrInstr[1])
    {
    case 0:
        gBattleMoveDamage *= -1;
        break;
    case 1:
        gBattleMoveDamage /= 2;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
        if ((gBattleMons[gBattlerTarget].maxHP / 2) < gBattleMoveDamage)
            gBattleMoveDamage = gBattleMons[gBattlerTarget].maxHP / 2;
        break;
    case 2:
        gBattleMoveDamage *= 2;
        break;
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_trysetrest(void)
{
    const u8 *failJump = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    gActiveBattler = gBattlerTarget = gBattlerAttacker;
    gBattleMoveDamage = gBattleMons[gBattlerTarget].maxHP * (-1);

    if (gBattleMons[gBattlerTarget].hp == gBattleMons[gBattlerTarget].maxHP)
    {
        gBattlescriptCurrInstr = failJump;
    }
    else
    {
        if (gBattleMons[gBattlerTarget].status1 & ((u8)(~0x7)))
            gBattleCommunication[0x5] = 1;
        else
            gBattleCommunication[0x5] = 0;

        gBattleMons[gBattlerTarget].status1 = 3;
        BtlController_EmitSetMonData(0, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[gActiveBattler].status1);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_jumpifnotfirstturn(void)
{
    const u8* failJump = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

    if (gDisableStructs[gBattlerAttacker].isFirstTurn)
        gBattlescriptCurrInstr += 5;
    else
        gBattlescriptCurrInstr = failJump;
}

static void Cmd_nop(void)
{
    gBattlescriptCurrInstr++;
}

bool8 UproarWakeUpCheck(u8 battlerId)
{
    s32 i;

    for (i = 0; i < gBattlersCount; i++)
    {
        if (!(gBattleMons[i].status2 & 0x00000070) || gBattleMons[battlerId].ability == 43)
            continue;

        gBattleScripting.battler = i;

        if (gBattlerTarget == 0xFF)
            gBattlerTarget = i;
        else if (gBattlerTarget == i)
            gBattleCommunication[0x5] = 0;
        else
            gBattleCommunication[0x5] = 1;

        break;
    }

    if (i == gBattlersCount)
        return 0;
    else
        return 1;
}

static void Cmd_jumpifcantmakeasleep(void)
{
    const u8 *jumpPtr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

    if (UproarWakeUpCheck(gBattlerTarget))
    {
        gBattlescriptCurrInstr = jumpPtr;
    }
    else if (gBattleMons[gBattlerTarget].ability == 15
            || gBattleMons[gBattlerTarget].ability == 72)
    {
        gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
        gBattleCommunication[0x5] = 2;
        gBattlescriptCurrInstr = jumpPtr;
        RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
    }
    else
    {
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_stockpile(void)
{
    if (gDisableStructs[gBattlerAttacker].stockpileCounter == 3)
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[0x5] = 1;
    }
    else
    {
        gDisableStructs[gBattlerAttacker].stockpileCounter++;

        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 1; gBattleTextBuff1[2] = 1; gBattleTextBuff1[3] = 1; gBattleTextBuff1[4] = (gDisableStructs[gBattlerAttacker].stockpileCounter); gBattleTextBuff1[5] = 0xFF; }

        gBattleCommunication[0x5] = 0;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_stockpiletobasedamage(void)
{
    const u8* jumpPtr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    if (gDisableStructs[gBattlerAttacker].stockpileCounter == 0)
    {
        gBattlescriptCurrInstr = jumpPtr;
    }
    else
    {
        if (gBattleCommunication[6] != 1)
        {
            gBattleMoveDamage = CalculateBaseDamage(&gBattleMons[gBattlerAttacker], &gBattleMons[gBattlerTarget], gCurrentMove,
                                                    gSideStatuses[(GetBattlerPosition(gBattlerTarget) & 1)], 0,
                                                    0, gBattlerAttacker, gBattlerTarget)
                                * gDisableStructs[gBattlerAttacker].stockpileCounter;
            gBattleScripting.animTurn = gDisableStructs[gBattlerAttacker].stockpileCounter;

            if (gProtectStructs[gBattlerAttacker].helpingHand)
                gBattleMoveDamage = gBattleMoveDamage * 15 / 10;
        }

        gDisableStructs[gBattlerAttacker].stockpileCounter = 0;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_stockpiletohpheal(void)
{
    const u8* jumpPtr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));

    if (gDisableStructs[gBattlerAttacker].stockpileCounter == 0)
    {
        gBattlescriptCurrInstr = jumpPtr;
        gBattleCommunication[0x5] = 0;
    }
    else if (gBattleMons[gBattlerAttacker].maxHP == gBattleMons[gBattlerAttacker].hp)
    {
        gDisableStructs[gBattlerAttacker].stockpileCounter = 0;
        gBattlescriptCurrInstr = jumpPtr;
        gBattlerTarget = gBattlerAttacker;
        gBattleCommunication[0x5] = 1;
    }
    else
    {
        gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / (1 << (3 - gDisableStructs[gBattlerAttacker].stockpileCounter));

        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
        gBattleMoveDamage *= -1;

        gBattleScripting.animTurn = gDisableStructs[gBattlerAttacker].stockpileCounter;
        gDisableStructs[gBattlerAttacker].stockpileCounter = 0;
        gBattlescriptCurrInstr += 5;
        gBattlerTarget = gBattlerAttacker;
    }
}

static void Cmd_negativedamage(void)
{
    gBattleMoveDamage = -(gHpDealt / 2);
    if (gBattleMoveDamage == 0)
        gBattleMoveDamage = -1;

    gBattlescriptCurrInstr++;
}




static u8 ChangeStatBuffs(s8 statValue, u8 statId, u8 flags, const u8 *BS_ptr)
{
    bool8 certain = 0;
    bool8 notProtectAffected = 0;
    u32 index;

    if (flags & 0x40)
        gActiveBattler = gBattlerAttacker;
    else
        gActiveBattler = gBattlerTarget;

    flags &= ~(0x40);

    if (flags & 0x80)
        certain++;
    flags &= ~(0x80);

    if (flags & 0x20)
        notProtectAffected++;
    flags &= ~(0x20);

    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 5; gBattleTextBuff1[2] = statId; gBattleTextBuff1[3] = 0xFF; }

    if (statValue <= -1)
    {
        if (gSideTimers[(GetBattlerPosition(gActiveBattler) & 1)].mistTimer
            && !certain && gCurrentMove != 174)
        {
            if (flags == 0x1)
            {
                if (gSpecialStatuses[gActiveBattler].statLowered)
                {
                    gBattlescriptCurrInstr = BS_ptr;
                }
                else
                {
                    BattleScriptPush(BS_ptr);
                    gBattleScripting.battler = gActiveBattler;
                    gBattlescriptCurrInstr = BattleScript_MistProtected;
                    gSpecialStatuses[gActiveBattler].statLowered = 1;
                }
            }
            return 1;
        }
        else if (gCurrentMove != 174
                 && notProtectAffected != 1 && JumpIfMoveAffectedByProtect(0))
        {
            gBattlescriptCurrInstr = BattleScript_ButItFailed;
            return 1;
        }
        else if ((gBattleMons[gActiveBattler].ability == 29
                  || gBattleMons[gActiveBattler].ability == 73)
                 && !certain && gCurrentMove != 174)
        {
            if (flags == 0x1)
            {
                if (gSpecialStatuses[gActiveBattler].statLowered)
                {
                    gBattlescriptCurrInstr = BS_ptr;
                }
                else
                {
                    BattleScriptPush(BS_ptr);
                    gBattleScripting.battler = gActiveBattler;
                    gBattlescriptCurrInstr = BattleScript_AbilityNoStatLoss;
                    gLastUsedAbility = gBattleMons[gActiveBattler].ability;
                    RecordAbilityBattle(gActiveBattler, gLastUsedAbility);
                    gSpecialStatuses[gActiveBattler].statLowered = 1;
                }
            }
            return 1;
        }
        else if (gBattleMons[gActiveBattler].ability == 51
                 && !certain && statId == 6)
        {
            if (flags == 0x1)
            {
                BattleScriptPush(BS_ptr);
                gBattleScripting.battler = gActiveBattler;
                gBattlescriptCurrInstr = BattleScript_AbilityNoSpecificStatLoss;
                gLastUsedAbility = gBattleMons[gActiveBattler].ability;
                RecordAbilityBattle(gActiveBattler, gLastUsedAbility);
            }
            return 1;
        }
        else if (gBattleMons[gActiveBattler].ability == 52
                 && !certain && statId == 1)
        {
            if (flags == 0x1)
            {
                BattleScriptPush(BS_ptr);
                gBattleScripting.battler = gActiveBattler;
                gBattlescriptCurrInstr = BattleScript_AbilityNoSpecificStatLoss;
                gLastUsedAbility = gBattleMons[gActiveBattler].ability;
                RecordAbilityBattle(gActiveBattler, gLastUsedAbility);
            }
            return 1;
        }
        else if (gBattleMons[gActiveBattler].ability == 19 && flags == 0)
        {
            return 1;
        }
        else
        {
            statValue = -(((statValue >> 4) & 7));
            gBattleTextBuff2[0] = 0xFD;
            index = 1;
            if (statValue == -2)
            {
                gBattleTextBuff2[1] = 0;
                gBattleTextBuff2[2] = 211;
                gBattleTextBuff2[3] = 211 >> 8;
                index = 4;
            }
            gBattleTextBuff2[index] = 0;
            index++;
            gBattleTextBuff2[index] = 212;
            index++;
            gBattleTextBuff2[index] = 212 >> 8;
            index++;
            gBattleTextBuff2[index] = 0xFF;

            if (gBattleMons[gActiveBattler].statStages[statId] == 0)
                gBattleCommunication[0x5] = 2;
            else
                gBattleCommunication[0x5] = (gBattlerTarget == gActiveBattler);

        }
    }
    else
    {
        statValue = (((statValue >> 4) & 7));
        gBattleTextBuff2[0] = 0xFD;
        index = 1;
        if (statValue == 2)
        {
            gBattleTextBuff2[1] = 0;
            gBattleTextBuff2[2] = 209;
            gBattleTextBuff2[3] = 209 >> 8;
            index = 4;
        }
        gBattleTextBuff2[index] = 0;
        index++;
        gBattleTextBuff2[index] = 210;
        index++;
        gBattleTextBuff2[index] = 210 >> 8;
        index++;
        gBattleTextBuff2[index] = 0xFF;

        if (gBattleMons[gActiveBattler].statStages[statId] == 0xC)
            gBattleCommunication[0x5] = 2;
        else
            gBattleCommunication[0x5] = (gBattlerTarget == gActiveBattler);
    }

    gBattleMons[gActiveBattler].statStages[statId] += statValue;
    if (gBattleMons[gActiveBattler].statStages[statId] < 0)
        gBattleMons[gActiveBattler].statStages[statId] = 0;
    if (gBattleMons[gActiveBattler].statStages[statId] > 0xC)
        gBattleMons[gActiveBattler].statStages[statId] = 0xC;

    if (gBattleCommunication[0x5] == 2 && flags & 0x1)
        gMoveResultFlags |= (1 << 0);

    if (gBattleCommunication[0x5] == 2 && !(flags & 0x1))
        return 1;

    return 0;
}

static void Cmd_statbuffchange(void)
{
    const u8* jumpPtr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
    if (ChangeStatBuffs(gBattleScripting.statChanger & 0xF0, ((gBattleScripting.statChanger & 0xF)), gBattlescriptCurrInstr[1], jumpPtr) == 0)
        gBattlescriptCurrInstr += 6;
}

static void Cmd_normalisebuffs(void)
{
    s32 i, j;

    for (i = 0; i < gBattlersCount; i++)
    {
        for (j = 0; j < 6 + 2; j++)
            gBattleMons[i].statStages[j] = 6;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_setbide(void)
{
    gBattleMons[gBattlerAttacker].status2 |= 0x00001000;
    gLockedMoves[gBattlerAttacker] = gCurrentMove;
    gTakenDmg[gBattlerAttacker] = 0;
    gBattleMons[gBattlerAttacker].status2 |= (0x00000300 - 0x100);

    gBattlescriptCurrInstr++;
}

static void Cmd_confuseifrepeatingattackends(void)
{
    if (!(gBattleMons[gBattlerAttacker].status2 & 0x00000C00))
        gBattleCommunication[0x3] = (0x35 | 0x40);

    gBattlescriptCurrInstr++;
}

static void Cmd_setmultihitcounter(void)
{
    if (gBattlescriptCurrInstr[1])
    {
        gMultiHitCounter = gBattlescriptCurrInstr[1];
    }
    else
    {
        gMultiHitCounter = Random() & 3;
        if (gMultiHitCounter > 1)
            gMultiHitCounter = (Random() & 3) + 2;
        else
            gMultiHitCounter += 2;
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_initmultihitstring(void)
{
    { gBattleScripting.multihitString[0] = 0xFD; gBattleScripting.multihitString[1] = 1; gBattleScripting.multihitString[2] = 1; gBattleScripting.multihitString[3] = 1; gBattleScripting.multihitString[4] = (0); gBattleScripting.multihitString[5] = 0xFF; }

    gBattlescriptCurrInstr++;
}

static bool8 TryDoForceSwitchOut(void)
{
    if (gBattleMons[gBattlerAttacker].level >= gBattleMons[gBattlerTarget].level)
    {
        *(gBattleStruct->field_58 + gBattlerTarget) = gBattlerPartyIndexes[gBattlerTarget];
    }
    else
    {
        u16 random = Random() & 0xFF;
        if ((u32)((random * (gBattleMons[gBattlerAttacker].level + gBattleMons[gBattlerTarget].level) >> 8) + 1) <= (gBattleMons[gBattlerTarget].level / 4))
        {
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
            return 0;
        }
        *(gBattleStruct->field_58 + gBattlerTarget) = gBattlerPartyIndexes[gBattlerTarget];
    }

    gBattlescriptCurrInstr = BattleScript_SuccessForceOut;
    return 1;
}

static void Cmd_forcerandomswitch(void)
{
    s32 i;
    s32 battler1PartyId = 0;
    s32 battler2PartyId = 0;




        register s32 lastMonId asm("r8") = 0;


    s32 firstMonId = 0;
    s32 monsCount = 0;
    struct Pokemon* party = ((void *)0);
    s32 validMons = 0;
    s32 minNeeded = 0;

    if ((gBattleTypeFlags & 0x0008))
    {
        if (GetBattlerSide(gBattlerTarget) == 0)
            party = gPlayerParty;
        else
            party = gEnemyParty;

        if ((gBattleTypeFlags & 0x0100 && gBattleTypeFlags & 0x0002)
            || (gBattleTypeFlags & 0x0100 && gBattleTypeFlags & 0x2000000)
            || (gBattleTypeFlags & 0x400000))
        {
            if ((gBattlerTarget & 2) != 0)
            {
                firstMonId = 3;
                lastMonId = 6;
            }
            else
            {
                firstMonId = 0;
                lastMonId = 3;
            }
            monsCount = 3;
            minNeeded = 1;
            battler2PartyId = gBattlerPartyIndexes[gBattlerTarget];
            battler1PartyId = gBattlerPartyIndexes[gBattlerTarget ^ 2];
        }
        else if ((gBattleTypeFlags & 0x0040 && gBattleTypeFlags & 0x0002)
                 || (gBattleTypeFlags & 0x0040 && gBattleTypeFlags & 0x2000000))
        {
            if (GetLinkTrainerFlankId(GetBattlerMultiplayerId(gBattlerTarget)) == 1)
            {
                firstMonId = 3;
                lastMonId = 6;
            }
            else
            {
                firstMonId = 0;
                lastMonId = 3;
            }
            monsCount = 3;
            minNeeded = 1;
            battler2PartyId = gBattlerPartyIndexes[gBattlerTarget];
            battler1PartyId = gBattlerPartyIndexes[gBattlerTarget ^ 2];
        }
        else if (gBattleTypeFlags & 0x8000)
        {
            if (GetBattlerSide(gBattlerTarget) == 0)
            {
                firstMonId = 0;
                lastMonId = 6;
                monsCount = 6;
                minNeeded = 2;
            }
            else
            {
                if ((gBattlerTarget & 2) != 0)
                {
                    firstMonId = 3;
                    lastMonId = 6;
                }
                else
                {
                    firstMonId = 0;
                    lastMonId = 3;
                }
                monsCount = 3;
                minNeeded = 1;
            }
            battler2PartyId = gBattlerPartyIndexes[gBattlerTarget];
            battler1PartyId = gBattlerPartyIndexes[gBattlerTarget ^ 2];
        }
        else if (gBattleTypeFlags & 0x0001)
        {
            firstMonId = 0;
            lastMonId = 6;
            monsCount = 6;
            minNeeded = 2;
            battler2PartyId = gBattlerPartyIndexes[gBattlerTarget];
            battler1PartyId = gBattlerPartyIndexes[gBattlerTarget ^ 2];
        }
        else
        {
            firstMonId = 0;
            lastMonId = 6;
            monsCount = 6;
            minNeeded = 1;
            battler2PartyId = gBattlerPartyIndexes[gBattlerTarget];
            battler1PartyId = gBattlerPartyIndexes[gBattlerTarget];
        }

        for (i = firstMonId; i < lastMonId; i++)
        {
            if (GetMonData(&party[i], 11) != 0
             && !GetMonData(&party[i], 45)
             && GetMonData(&party[i], 57) != 0)
             {
                 validMons++;
             }
        }

        if (validMons <= minNeeded)
        {
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
        else
        {
            if (TryDoForceSwitchOut())
            {
                do
                {
                    i = Random() % monsCount;
                    i += firstMonId;
                }
                while (i == battler2PartyId
                       || i == battler1PartyId
                       || GetMonData(&party[i], 11) == 0
                       || GetMonData(&party[i], 45) == 1
                       || GetMonData(&party[i], 57) == 0);
            }
            *(gBattleStruct->monToSwitchIntoId + gBattlerTarget) = i;

            if (!IsMultiBattle())
                SwitchPartyOrder(gBattlerTarget);

            if ((gBattleTypeFlags & 0x0002 && gBattleTypeFlags & 0x0100)
                || (gBattleTypeFlags & 0x0002 && gBattleTypeFlags & 0x0040)
                || (gBattleTypeFlags & 0x2000000 && gBattleTypeFlags & 0x0100)
                || (gBattleTypeFlags & 0x2000000 && gBattleTypeFlags & 0x0040))
            {
                SwitchPartyOrderLinkMulti(gBattlerTarget, i, 0);
                SwitchPartyOrderLinkMulti(gBattlerTarget ^ 2, i, 1);
            }

            if (gBattleTypeFlags & 0x400000)
                SwitchPartyOrderInGameMulti(gBattlerTarget, i);
        }
    }
    else
    {
        TryDoForceSwitchOut();
    }
}

static void Cmd_tryconversiontypechange(void)
{
    u8 validMoves = 0;
    u8 moveChecked;
    u8 moveType;

    while (validMoves < 4)
    {
        if (gBattleMons[gBattlerAttacker].moves[validMoves] == 0)
            break;

        validMoves++;
    }

    for (moveChecked = 0; moveChecked < validMoves; moveChecked++)
    {
        moveType = gBattleMoves[gBattleMons[gBattlerAttacker].moves[moveChecked]].type;

        if (moveType == 9)
        {
            if (((gBattleMons[gBattlerAttacker].type1 == 7 || gBattleMons[gBattlerAttacker].type2 == 7)))
                moveType = 7;
            else
                moveType = 0;
        }
        if (moveType != gBattleMons[gBattlerAttacker].type1
            && moveType != gBattleMons[gBattlerAttacker].type2)
        {
            break;
        }
    }

    if (moveChecked == validMoves)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        do
        {

            while ((moveChecked = Random() & 3) >= validMoves);

            moveType = gBattleMoves[gBattleMons[gBattlerAttacker].moves[moveChecked]].type;

            if (moveType == 9)
            {
                if (((gBattleMons[gBattlerAttacker].type1 == 7 || gBattleMons[gBattlerAttacker].type2 == 7)))
                    moveType = 7;
                else
                    moveType = 0;
            }
        }
        while (moveType == gBattleMons[gBattlerAttacker].type1 || moveType == gBattleMons[gBattlerAttacker].type2);

        { gBattleMons[gBattlerAttacker].type1 = moveType; gBattleMons[gBattlerAttacker].type2 = moveType; };
        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 3; gBattleTextBuff1[2] = moveType; gBattleTextBuff1[3] = 0xFF; };

        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_givepaydaymoney(void)
{
    if (!(gBattleTypeFlags & (0x0002 | 0x2000000)) && gPaydayMoney != 0)
    {
        u32 bonusMoney = gPaydayMoney * gBattleStruct->moneyMultiplier;
        AddMoney(&gSaveBlock1Ptr->money, bonusMoney);

        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 1; gBattleTextBuff1[2] = 2; gBattleTextBuff1[3] = 5; gBattleTextBuff1[4] = (bonusMoney); gBattleTextBuff1[5] = (bonusMoney & 0x0000FF00) >> 8; gBattleTextBuff1[6] = 0xFF; }

        BattleScriptPush(gBattlescriptCurrInstr + 1);
        gBattlescriptCurrInstr = BattleScript_PrintPayDayMoneyString;
    }
    else
    {
        gBattlescriptCurrInstr++;
    }
}

static void Cmd_setlightscreen(void)
{
    if (gSideStatuses[(GetBattlerPosition(gBattlerAttacker) & 1)] & (1 << 1))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[0x5] = 0;
    }
    else
    {
        gSideStatuses[(GetBattlerPosition(gBattlerAttacker) & 1)] |= (1 << 1);
        gSideTimers[(GetBattlerPosition(gBattlerAttacker) & 1)].lightscreenTimer = 5;
        gSideTimers[(GetBattlerPosition(gBattlerAttacker) & 1)].lightscreenBattlerId = gBattlerAttacker;

        if (gBattleTypeFlags & 0x0001 && CountAliveMonsInBattle(1) == 2)
            gBattleCommunication[0x5] = 4;
        else
            gBattleCommunication[0x5] = 3;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_tryKO(void)
{
    u8 holdEffect, param;

    if (gBattleMons[gBattlerTarget].item == 175)
    {
       holdEffect = gEnigmaBerries[gBattlerTarget].holdEffect;
       param = gEnigmaBerries[gBattlerTarget].holdEffectParam;
    }
    else
    {
        holdEffect = ItemId_GetHoldEffect(gBattleMons[gBattlerTarget].item);
        param = ItemId_GetHoldEffectParam(gBattleMons[gBattlerTarget].item);
    }

    gPotentialItemEffectBattler = gBattlerTarget;

    if (holdEffect == 39 && (Random() % 100) < param)
    {
        RecordItemEffectBattle(gBattlerTarget, 39);
        gSpecialStatuses[gBattlerTarget].focusBanded = 1;
    }

    if (gBattleMons[gBattlerTarget].ability == 5)
    {
        gMoveResultFlags |= (1 << 0);
        gLastUsedAbility = 5;
        gBattlescriptCurrInstr = BattleScript_SturdyPreventsOHKO;
        RecordAbilityBattle(gBattlerTarget, 5);
    }
    else
    {
        u16 chance;
        if (!(gStatuses3[gBattlerTarget] & 0x18))
        {
            chance = gBattleMoves[gCurrentMove].accuracy + (gBattleMons[gBattlerAttacker].level - gBattleMons[gBattlerTarget].level);
            if (Random() % 100 + 1 < chance && gBattleMons[gBattlerAttacker].level >= gBattleMons[gBattlerTarget].level)
                chance = 1;
            else
                chance = 0;
        }
        else if (gDisableStructs[gBattlerTarget].battlerWithSureHit == gBattlerAttacker
                 && gBattleMons[gBattlerAttacker].level >= gBattleMons[gBattlerTarget].level)
        {
            chance = 1;
        }
        else
        {
            chance = gBattleMoves[gCurrentMove].accuracy + (gBattleMons[gBattlerAttacker].level - gBattleMons[gBattlerTarget].level);
            if (Random() % 100 + 1 < chance && gBattleMons[gBattlerAttacker].level >= gBattleMons[gBattlerTarget].level)
                chance = 1;
            else
                chance = 0;
        }
        if (chance)
        {
            if (gProtectStructs[gBattlerTarget].endured)
            {
                gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - 1;
                gMoveResultFlags |= (1 << 6);
            }
            else if (gSpecialStatuses[gBattlerTarget].focusBanded)
            {
                gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - 1;
                gMoveResultFlags |= (1 << 7);
                gLastUsedItem = gBattleMons[gBattlerTarget].item;
            }
            else
            {
                gBattleMoveDamage = gBattleMons[gBattlerTarget].hp;
                gMoveResultFlags |= (1 << 4);
            }
            gBattlescriptCurrInstr += 5;
        }
        else
        {
            gMoveResultFlags |= (1 << 0);
            if (gBattleMons[gBattlerAttacker].level >= gBattleMons[gBattlerTarget].level)
                gBattleCommunication[0x5] = 0;
            else
                gBattleCommunication[0x5] = 1;
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
    }
}

static void Cmd_damagetohalftargethp(void)
{
    gBattleMoveDamage = gBattleMons[gBattlerTarget].hp / 2;
    if (gBattleMoveDamage == 0)
        gBattleMoveDamage = 1;

    gBattlescriptCurrInstr++;
}

static void Cmd_setsandstorm(void)
{
    if (gBattleWeather & ((1 << 3) | (1 << 4)))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[0x5] = 2;
    }
    else
    {
        gBattleWeather = (1 << 3);
        gBattleCommunication[0x5] = 3;
        gWishFutureKnock.weatherDuration = 5;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_weatherdamage(void)
{
    if (((!(AbilityBattleEffects(0x13, 0, 13, 0, 0)) && !(AbilityBattleEffects(0x13, 0, 77, 0, 0)))))
    {
        if (gBattleWeather & ((1 << 3) | (1 << 4)))
        {
            if (gBattleMons[gBattlerAttacker].type1 != 5
                && gBattleMons[gBattlerAttacker].type1 != 8
                && gBattleMons[gBattlerAttacker].type1 != 4
                && gBattleMons[gBattlerAttacker].type2 != 5
                && gBattleMons[gBattlerAttacker].type2 != 8
                && gBattleMons[gBattlerAttacker].type2 != 4
                && gBattleMons[gBattlerAttacker].ability != 8
                && !(gStatuses3[gBattlerAttacker] & 0x80)
                && !(gStatuses3[gBattlerAttacker] & 0x40000))
            {
                gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 16;
                if (gBattleMoveDamage == 0)
                    gBattleMoveDamage = 1;
            }
            else
            {
                gBattleMoveDamage = 0;
            }
        }
        if (gBattleWeather & ((1 << 7)))
        {
            if (!((gBattleMons[gBattlerAttacker].type1 == 15 || gBattleMons[gBattlerAttacker].type2 == 15))
                && !(gStatuses3[gBattlerAttacker] & 0x80)
                && !(gStatuses3[gBattlerAttacker] & 0x40000))
            {
                gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 16;
                if (gBattleMoveDamage == 0)
                    gBattleMoveDamage = 1;
            }
            else
            {
                gBattleMoveDamage = 0;
            }
        }
    }
    else
    {
        gBattleMoveDamage = 0;
    }

    if (gAbsentBattlerFlags & gBitTable[gBattlerAttacker])
        gBattleMoveDamage = 0;

    gBattlescriptCurrInstr++;
}

static void Cmd_tryinfatuating(void)
{
    struct Pokemon *monAttacker, *monTarget;
    u16 speciesAttacker, speciesTarget;
    u32 personalityAttacker, personalityTarget;

    if (GetBattlerSide(gBattlerAttacker) == 0)
        monAttacker = &gPlayerParty[gBattlerPartyIndexes[gBattlerAttacker]];
    else
        monAttacker = &gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker]];

    if (GetBattlerSide(gBattlerTarget) == 0)
        monTarget = &gPlayerParty[gBattlerPartyIndexes[gBattlerTarget]];
    else
        monTarget = &gEnemyParty[gBattlerPartyIndexes[gBattlerTarget]];

    speciesAttacker = GetMonData(monAttacker, 11);
    personalityAttacker = GetMonData(monAttacker, 0);

    speciesTarget = GetMonData(monTarget, 11);
    personalityTarget = GetMonData(monTarget, 0);

    if (gBattleMons[gBattlerTarget].ability == 12)
    {
        gBattlescriptCurrInstr = BattleScript_ObliviousPreventsAttraction;
        gLastUsedAbility = 12;
        RecordAbilityBattle(gBattlerTarget, 12);
    }
    else
    {
        if (GetGenderFromSpeciesAndPersonality(speciesAttacker, personalityAttacker) == GetGenderFromSpeciesAndPersonality(speciesTarget, personalityTarget)
            || gBattleMons[gBattlerTarget].status2 & 0x000F0000
            || GetGenderFromSpeciesAndPersonality(speciesAttacker, personalityAttacker) == 0xFF
            || GetGenderFromSpeciesAndPersonality(speciesTarget, personalityTarget) == 0xFF)
        {
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
        else
        {
            gBattleMons[gBattlerTarget].status2 |= (gBitTable[gBattlerAttacker] << 16);
            gBattlescriptCurrInstr += 5;
        }
    }
}

static void Cmd_updatestatusicon(void)
{
    if (gBattleControllerExecFlags)
        return;

    if (gBattlescriptCurrInstr[1] != 4)
    {
        gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);
        BtlController_EmitStatusIconUpdate(0, gBattleMons[gActiveBattler].status1, gBattleMons[gActiveBattler].status2);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 2;
    }
    else
    {
        gActiveBattler = gBattlerAttacker;
        if (!(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
        {
            BtlController_EmitStatusIconUpdate(0, gBattleMons[gActiveBattler].status1, gBattleMons[gActiveBattler].status2);
            MarkBattlerForControllerExec(gActiveBattler);
        }
        if ((gBattleTypeFlags & 0x0001))
        {
            gActiveBattler = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 2);
            if (!(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
            {
                BtlController_EmitStatusIconUpdate(0, gBattleMons[gActiveBattler].status1, gBattleMons[gActiveBattler].status2);
                MarkBattlerForControllerExec(gActiveBattler);
            }
        }
        gBattlescriptCurrInstr += 2;
    }
}

static void Cmd_setmist(void)
{
    if (gSideTimers[(GetBattlerPosition(gBattlerAttacker) & 1)].mistTimer)
    {
        gMoveResultFlags |= (1 << 5);
        gBattleCommunication[0x5] = 1;
    }
    else
    {
        gSideTimers[(GetBattlerPosition(gBattlerAttacker) & 1)].mistTimer = 5;
        gSideTimers[(GetBattlerPosition(gBattlerAttacker) & 1)].mistBattlerId = gBattlerAttacker;
        gSideStatuses[(GetBattlerPosition(gBattlerAttacker) & 1)] |= (1 << 8);
        gBattleCommunication[0x5] = 0;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_setfocusenergy(void)
{
    if (gBattleMons[gBattlerAttacker].status2 & 0x00100000)
    {
        gMoveResultFlags |= (1 << 5);
        gBattleCommunication[0x5] = 1;
    }
    else
    {
        gBattleMons[gBattlerAttacker].status2 |= 0x00100000;
        gBattleCommunication[0x5] = 0;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_transformdataexecution(void)
{
    gChosenMove = 0xFFFF;
    gBattlescriptCurrInstr++;
    if (gBattleMons[gBattlerTarget].status2 & 0x00200000
        || gStatuses3[gBattlerTarget] & (0x80 | 0x40 | 0x40000))
    {
        gMoveResultFlags |= (1 << 5);
        gBattleCommunication[0x5] = 1;
    }
    else
    {
        s32 i;
        u8 *battleMonAttacker, *battleMonTarget;

        gBattleMons[gBattlerAttacker].status2 |= 0x00200000;
        gDisableStructs[gBattlerAttacker].disabledMove = 0;
        gDisableStructs[gBattlerAttacker].disableTimer = 0;
        gDisableStructs[gBattlerAttacker].transformedMonPersonality = gBattleMons[gBattlerTarget].personality;
        gDisableStructs[gBattlerAttacker].mimickedMoves = 0;

        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 6; gBattleTextBuff1[2] = gBattleMons[gBattlerTarget].species; gBattleTextBuff1[3] = (gBattleMons[gBattlerTarget].species & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }

        battleMonAttacker = (u8*)(&gBattleMons[gBattlerAttacker]);
        battleMonTarget = (u8*)(&gBattleMons[gBattlerTarget]);

        for (i = 0; i < ((size_t)&((struct BattlePokemon *)0)->pp); i++)
            battleMonAttacker[i] = battleMonTarget[i];

        for (i = 0; i < 4; i++)
        {
            if (gBattleMoves[gBattleMons[gBattlerAttacker].moves[i]].pp < 5)
                gBattleMons[gBattlerAttacker].pp[i] = gBattleMoves[gBattleMons[gBattlerAttacker].moves[i]].pp;
            else
                gBattleMons[gBattlerAttacker].pp[i] = 5;
        }

        gActiveBattler = gBattlerAttacker;
        BtlController_EmitResetActionMoveSelection(0, 2);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattleCommunication[0x5] = 0;
    }
}

static void Cmd_setsubstitute(void)
{
    u32 hp = gBattleMons[gBattlerAttacker].maxHP / 4;
    if (gBattleMons[gBattlerAttacker].maxHP / 4 == 0)
        hp = 1;

    if (gBattleMons[gBattlerAttacker].hp <= hp)
    {
        gBattleMoveDamage = 0;
        gBattleCommunication[0x5] = 1;
    }
    else
    {
        gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 4;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;

        gBattleMons[gBattlerAttacker].status2 |= 0x01000000;
        gBattleMons[gBattlerAttacker].status2 &= ~(0x0000E000);
        gDisableStructs[gBattlerAttacker].substituteHP = gBattleMoveDamage;
        gBattleCommunication[0x5] = 0;
        gHitMarker |= 0x00000100;
    }

    gBattlescriptCurrInstr++;
}

static bool8 IsMoveUncopyableByMimic(u16 move)
{
    s32 i;
    for (i = 0; sMovesForbiddenToCopy[i] != 0xFFFE
                && sMovesForbiddenToCopy[i] != move; i++);

    return (sMovesForbiddenToCopy[i] != 0xFFFE);
}

static void Cmd_mimicattackcopy(void)
{
    gChosenMove = 0xFFFF;

    if (IsMoveUncopyableByMimic(gLastMoves[gBattlerTarget])
        || gBattleMons[gBattlerAttacker].status2 & 0x00200000
        || gLastMoves[gBattlerTarget] == 0
        || gLastMoves[gBattlerTarget] == 0xFFFF)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        int i;

        for (i = 0; i < 4; i++)
        {
            if (gBattleMons[gBattlerAttacker].moves[i] == gLastMoves[gBattlerTarget])
                break;
        }

        if (i == 4)
        {
            gBattleMons[gBattlerAttacker].moves[gCurrMovePos] = gLastMoves[gBattlerTarget];
            if (gBattleMoves[gLastMoves[gBattlerTarget]].pp < 5)
                gBattleMons[gBattlerAttacker].pp[gCurrMovePos] = gBattleMoves[gLastMoves[gBattlerTarget]].pp;
            else
                gBattleMons[gBattlerAttacker].pp[gCurrMovePos] = 5;


            { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 2; gBattleTextBuff1[2] = (gLastMoves[gBattlerTarget] & 0xFF); gBattleTextBuff1[3] = (gLastMoves[gBattlerTarget] & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }

            gDisableStructs[gBattlerAttacker].mimickedMoves |= gBitTable[gCurrMovePos];
            gBattlescriptCurrInstr += 5;
        }
        else
        {
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
    }
}

static void Cmd_metronome(void)
{
    while (1)
    {
        s32 i;

        gCurrentMove = (Random() & 0x1FF) + 1;
        if (gCurrentMove >= 355)
            continue;

        for (i = 0; i < 4; i++);

        i = -1;
        while (1)
        {
            i++;
            if (sMovesForbiddenToCopy[i] == gCurrentMove)
                break;
            if (sMovesForbiddenToCopy[i] == 0xFFFF)
                break;
        }

        if (sMovesForbiddenToCopy[i] == 0xFFFF)
        {
            gHitMarker &= ~(0x00000400);
            gBattlescriptCurrInstr = gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect];
            gBattlerTarget = GetMoveTarget(gCurrentMove, 0);
            return;
        }
    }
}

static void Cmd_dmgtolevel(void)
{
    gBattleMoveDamage = gBattleMons[gBattlerAttacker].level;
    gBattlescriptCurrInstr++;
}

static void Cmd_psywavedamageeffect(void)
{
    s32 randDamage;

    while ((randDamage = (Random() & 0xF)) > 10);

    randDamage *= 10;
    gBattleMoveDamage = gBattleMons[gBattlerAttacker].level * (randDamage + 50) / 100;
    gBattlescriptCurrInstr++;
}

static void Cmd_counterdamagecalculator(void)
{
    u8 sideAttacker = GetBattlerSide(gBattlerAttacker);
    u8 sideTarget = GetBattlerSide(gProtectStructs[gBattlerAttacker].physicalBattlerId);

    if (gProtectStructs[gBattlerAttacker].physicalDmg
        && sideAttacker != sideTarget
        && gBattleMons[gProtectStructs[gBattlerAttacker].physicalBattlerId].hp)
    {
        gBattleMoveDamage = gProtectStructs[gBattlerAttacker].physicalDmg * 2;

        if (gSideTimers[sideTarget].followmeTimer && gBattleMons[gSideTimers[sideTarget].followmeTarget].hp)
            gBattlerTarget = gSideTimers[sideTarget].followmeTarget;
        else
            gBattlerTarget = gProtectStructs[gBattlerAttacker].physicalBattlerId;

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_mirrorcoatdamagecalculator(void)
{
    u8 sideAttacker = GetBattlerSide(gBattlerAttacker);
    u8 sideTarget = GetBattlerSide(gProtectStructs[gBattlerAttacker].specialBattlerId);

    if (gProtectStructs[gBattlerAttacker].specialDmg && sideAttacker != sideTarget && gBattleMons[gProtectStructs[gBattlerAttacker].specialBattlerId].hp)
    {
        gBattleMoveDamage = gProtectStructs[gBattlerAttacker].specialDmg * 2;

        if (gSideTimers[sideTarget].followmeTimer && gBattleMons[gSideTimers[sideTarget].followmeTarget].hp)
            gBattlerTarget = gSideTimers[sideTarget].followmeTarget;
        else
            gBattlerTarget = gProtectStructs[gBattlerAttacker].specialBattlerId;

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_disablelastusedattack(void)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if (gBattleMons[gBattlerTarget].moves[i] == gLastMoves[gBattlerTarget])
            break;
    }
    if (gDisableStructs[gBattlerTarget].disabledMove == 0
        && i != 4 && gBattleMons[gBattlerTarget].pp[i] != 0)
    {
        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 2; gBattleTextBuff1[2] = (gBattleMons[gBattlerTarget].moves[i] & 0xFF); gBattleTextBuff1[3] = (gBattleMons[gBattlerTarget].moves[i] & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }

        gDisableStructs[gBattlerTarget].disabledMove = gBattleMons[gBattlerTarget].moves[i];
        gDisableStructs[gBattlerTarget].disableTimer = (Random() & 3) + 2;
        gDisableStructs[gBattlerTarget].disableTimerStartValue = gDisableStructs[gBattlerTarget].disableTimer;
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_trysetencore(void)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if (gBattleMons[gBattlerTarget].moves[i] == gLastMoves[gBattlerTarget])
            break;
    }

    if (gLastMoves[gBattlerTarget] == 165
        || gLastMoves[gBattlerTarget] == 227
        || gLastMoves[gBattlerTarget] == 119)
    {
        i = 4;
    }

    if (gDisableStructs[gBattlerTarget].encoredMove == 0
        && i != 4 && gBattleMons[gBattlerTarget].pp[i] != 0)
    {
        gDisableStructs[gBattlerTarget].encoredMove = gBattleMons[gBattlerTarget].moves[i];
        gDisableStructs[gBattlerTarget].encoredMovePos = i;
        gDisableStructs[gBattlerTarget].encoreTimer = (Random() & 3) + 3;
        gDisableStructs[gBattlerTarget].encoreTimerStartValue = gDisableStructs[gBattlerTarget].encoreTimer;
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_painsplitdmgcalc(void)
{
    if (!(gBattleMons[gBattlerTarget].status2 & 0x01000000))
    {
        s32 hpDiff = (gBattleMons[gBattlerAttacker].hp + gBattleMons[gBattlerTarget].hp) / 2;
        s32 painSplitHp = gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - hpDiff;
        u8* storeLoc = (void*)(&gBattleScripting.painSplitHp);

        storeLoc[0] = (painSplitHp);
        storeLoc[1] = (painSplitHp & 0x0000FF00) >> 8;
        storeLoc[2] = (painSplitHp & 0x00FF0000) >> 16;
        storeLoc[3] = (painSplitHp & 0xFF000000) >> 24;

        gBattleMoveDamage = gBattleMons[gBattlerAttacker].hp - hpDiff;
        gSpecialStatuses[gBattlerTarget].dmg = 0xFFFF;

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_settypetorandomresistance(void)
{
    if (gLastLandedMoves[gBattlerAttacker] == 0
        || gLastLandedMoves[gBattlerAttacker] == 0xFFFF)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else if (IsTwoTurnsMove(gLastLandedMoves[gBattlerAttacker])
            && gBattleMons[gLastHitBy[gBattlerAttacker]].status2 & 0x00001000)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        s32 i, j, rands;

        for (rands = 0; rands < 1000; rands++)
        {
            while (((i = (Random() & 0x7F)) > sizeof(gTypeEffectiveness) / 3));

            i *= 3;

            if (((gTypeEffectiveness[i + 0])) == gLastHitByType[gBattlerAttacker]
                && ((gTypeEffectiveness[i + 2])) <= 5
                && !((gBattleMons[gBattlerAttacker].type1 == ((gTypeEffectiveness[i + 1])) || gBattleMons[gBattlerAttacker].type2 == ((gTypeEffectiveness[i + 1])))))
            {
                { gBattleMons[gBattlerAttacker].type1 = ((gTypeEffectiveness[i + 1])); gBattleMons[gBattlerAttacker].type2 = ((gTypeEffectiveness[i + 1])); };
                { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 3; gBattleTextBuff1[2] = ((gTypeEffectiveness[i + 1])); gBattleTextBuff1[3] = 0xFF; };

                gBattlescriptCurrInstr += 5;
                return;
            }
        }

        for (j = 0, rands = 0; rands < sizeof(gTypeEffectiveness); j += 3, rands += 3)
        {
            switch (((gTypeEffectiveness[j + 0])))
            {
            case 0xFF:
            case 0xFE:
                break;
            default:
                if (((gTypeEffectiveness[j + 0])) == gLastHitByType[gBattlerAttacker]
                 && ((gTypeEffectiveness[j + 2])) <= 5
                 && !((gBattleMons[gBattlerAttacker].type1 == ((gTypeEffectiveness[i + 1])) || gBattleMons[gBattlerAttacker].type2 == ((gTypeEffectiveness[i + 1])))))
                {
                    { gBattleMons[gBattlerAttacker].type1 = ((gTypeEffectiveness[rands + 1])); gBattleMons[gBattlerAttacker].type2 = ((gTypeEffectiveness[rands + 1])); };
                    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 3; gBattleTextBuff1[2] = ((gTypeEffectiveness[rands + 1])); gBattleTextBuff1[3] = 0xFF; }

                    gBattlescriptCurrInstr += 5;
                    return;
                }
                break;
            }
        }

        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_setalwayshitflag(void)
{
    gStatuses3[gBattlerTarget] &= ~(0x18);
    gStatuses3[gBattlerTarget] |= 0x10;
    gDisableStructs[gBattlerTarget].battlerWithSureHit = gBattlerAttacker;
    gBattlescriptCurrInstr++;
}

static void Cmd_copymovepermanently(void)
{
    gChosenMove = 0xFFFF;

    if (!(gBattleMons[gBattlerAttacker].status2 & 0x00200000)
        && gLastPrintedMoves[gBattlerTarget] != 165
        && gLastPrintedMoves[gBattlerTarget] != 0
        && gLastPrintedMoves[gBattlerTarget] != 0xFFFF
        && gLastPrintedMoves[gBattlerTarget] != 166)
    {
        s32 i;

        for (i = 0; i < 4; i++)
        {
            if (gBattleMons[gBattlerAttacker].moves[i] == 166)
                continue;
            if (gBattleMons[gBattlerAttacker].moves[i] == gLastPrintedMoves[gBattlerTarget])
                break;
        }

        if (i != 4)
        {
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
        else
        {
            struct MovePpInfo movePpData;

            gBattleMons[gBattlerAttacker].moves[gCurrMovePos] = gLastPrintedMoves[gBattlerTarget];
            gBattleMons[gBattlerAttacker].pp[gCurrMovePos] = gBattleMoves[gLastPrintedMoves[gBattlerTarget]].pp;
            gActiveBattler = gBattlerAttacker;

            for (i = 0; i < 4; i++)
            {
                movePpData.moves[i] = gBattleMons[gBattlerAttacker].moves[i];
                movePpData.pp[i] = gBattleMons[gBattlerAttacker].pp[i];
            }
            movePpData.ppBonuses = gBattleMons[gBattlerAttacker].ppBonuses;

            BtlController_EmitSetMonData(0, REQUEST_MOVES_PP_BATTLE, 0, sizeof(struct MovePpInfo), &movePpData);
            MarkBattlerForControllerExec(gActiveBattler);

            { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 2; gBattleTextBuff1[2] = (gLastPrintedMoves[gBattlerTarget] & 0xFF); gBattleTextBuff1[3] = (gLastPrintedMoves[gBattlerTarget] & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }

            gBattlescriptCurrInstr += 5;
        }
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static bool8 IsTwoTurnsMove(u16 move)
{
    if (gBattleMoves[move].effect == 145
        || gBattleMoves[move].effect == 39
        || gBattleMoves[move].effect == 75
        || gBattleMoves[move].effect == 151
        || gBattleMoves[move].effect == 155
        || gBattleMoves[move].effect == 26)
        return 1;
    else
        return 0;
}

static bool8 IsInvalidForSleepTalkOrAssist(u16 move)
{
    if (move == 0 || move == 214 || move == 274
        || move == 119 || move == 118)
        return 1;
    else
        return 0;
}

static u8 AttacksThisTurn(u8 battlerId, u16 move)
{

    if (gBattleMoves[move].effect == 151
        && (gBattleWeather & ((1 << 5) | (1 << 6))))
        return 2;

    if (gBattleMoves[move].effect == 145
        || gBattleMoves[move].effect == 39
        || gBattleMoves[move].effect == 75
        || gBattleMoves[move].effect == 151
        || gBattleMoves[move].effect == 155
        || gBattleMoves[move].effect == 26)
    {
        if ((gHitMarker & 0x08000000))
            return 1;
    }
    return 2;
}

static void Cmd_trychoosesleeptalkmove(void)
{
    s32 i;
    u8 unusableMovesBits = 0;

    for (i = 0; i < 4; i++)
    {
        if (IsInvalidForSleepTalkOrAssist(gBattleMons[gBattlerAttacker].moves[i])
            || gBattleMons[gBattlerAttacker].moves[i] == 264
            || gBattleMons[gBattlerAttacker].moves[i] == 253
            || IsTwoTurnsMove(gBattleMons[gBattlerAttacker].moves[i]))
        {
            unusableMovesBits |= gBitTable[i];
        }

    }

    unusableMovesBits = CheckMoveLimitations(gBattlerAttacker, unusableMovesBits, ~((1 << 1)));
    if (unusableMovesBits == 0xF)
    {
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        u32 movePosition;

        do
        {
            movePosition = Random() & 3;
        } while ((gBitTable[movePosition] & unusableMovesBits));

        gCalledMove = gBattleMons[gBattlerAttacker].moves[movePosition];
        gCurrMovePos = movePosition;
        gHitMarker &= ~(0x00000400);
        gBattlerTarget = GetMoveTarget(gCalledMove, 0);
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_setdestinybond(void)
{
    gBattleMons[gBattlerAttacker].status2 |= 0x02000000;
    gBattlescriptCurrInstr++;
}

static void TrySetDestinyBondToHappen(void)
{
    u8 sideAttacker = GetBattlerSide(gBattlerAttacker);
    u8 sideTarget = GetBattlerSide(gBattlerTarget);
    if (gBattleMons[gBattlerTarget].status2 & 0x02000000
        && sideAttacker != sideTarget
        && !(gHitMarker & 0x01000000))
    {
        gHitMarker |= 0x00000040;
    }
}

static void Cmd_trysetdestinybondtohappen(void)
{
    TrySetDestinyBondToHappen();
    gBattlescriptCurrInstr++;
}

static void Cmd_remaininghptopower(void)
{
    s32 i;
    s32 hpFraction = GetScaledHPFraction(gBattleMons[gBattlerAttacker].hp, gBattleMons[gBattlerAttacker].maxHP, 48);

    for (i = 0; i < (s32) sizeof(sFlailHpScaleToPowerTable); i += 2)
    {
        if (hpFraction <= sFlailHpScaleToPowerTable[i])
            break;
    }

    gDynamicBasePower = sFlailHpScaleToPowerTable[i + 1];
    gBattlescriptCurrInstr++;
}

static void Cmd_tryspiteppreduce(void)
{
    if (gLastMoves[gBattlerTarget] != 0
        && gLastMoves[gBattlerTarget] != 0xFFFF)
    {
        s32 i;

        for (i = 0; i < 4; i++)
        {
            if (gLastMoves[gBattlerTarget] == gBattleMons[gBattlerTarget].moves[i])
                break;
        }

        if (i != 4 && gBattleMons[gBattlerTarget].pp[i] > 1)
        {
            s32 ppToDeduct = (Random() & 3) + 2;
            if (gBattleMons[gBattlerTarget].pp[i] < ppToDeduct)
                ppToDeduct = gBattleMons[gBattlerTarget].pp[i];

            { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 2; gBattleTextBuff1[2] = (gLastMoves[gBattlerTarget] & 0xFF); gBattleTextBuff1[3] = (gLastMoves[gBattlerTarget] & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }

            ConvertIntToDecimalStringN(gBattleTextBuff2, ppToDeduct, STR_CONV_MODE_LEFT_ALIGN, 1);

            { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 1; gBattleTextBuff2[2] = 1; gBattleTextBuff2[3] = 1; gBattleTextBuff2[4] = (ppToDeduct); gBattleTextBuff2[5] = 0xFF; }

            gBattleMons[gBattlerTarget].pp[i] -= ppToDeduct;
            gActiveBattler = gBattlerTarget;

            if (!(gDisableStructs[gActiveBattler].mimickedMoves & gBitTable[i])
                && !(gBattleMons[gActiveBattler].status2 & 0x00200000))
            {
                BtlController_EmitSetMonData(0, REQUEST_PPMOVE1_BATTLE + i, 0, 1, &gBattleMons[gActiveBattler].pp[i]);
                MarkBattlerForControllerExec(gActiveBattler);
            }

            gBattlescriptCurrInstr += 5;

            if (gBattleMons[gBattlerTarget].pp[i] == 0)
                CancelMultiTurnMoves(gBattlerTarget);
        }
        else
        {
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_healpartystatus(void)
{
    u32 zero = 0;
    u8 toHeal = 0;

    if (gCurrentMove == 215)
    {
        struct Pokemon *party;
        s32 i;

        gBattleCommunication[0x5] = 0;

        if (GetBattlerSide(gBattlerAttacker) == 0)
            party = gPlayerParty;
        else
            party = gEnemyParty;

        if (gBattleMons[gBattlerAttacker].ability != 43)
        {
            gBattleMons[gBattlerAttacker].status1 = 0;
            gBattleMons[gBattlerAttacker].status2 &= ~(0x08000000);
        }
        else
        {
            RecordAbilityBattle(gBattlerAttacker, gBattleMons[gBattlerAttacker].ability);
            gBattleCommunication[0x5] |= 1;
        }

        gActiveBattler = gBattleScripting.battler = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 2);

        if (gBattleTypeFlags & 0x0001
            && !(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
        {
            if (gBattleMons[gActiveBattler].ability != 43)
            {
                gBattleMons[gActiveBattler].status1 = 0;
                gBattleMons[gActiveBattler].status2 &= ~(0x08000000);
            }
            else
            {
                RecordAbilityBattle(gActiveBattler, gBattleMons[gActiveBattler].ability);
                gBattleCommunication[0x5] |= 2;
            }
        }

        for (i = 0; i < 6; i++)
        {
            u16 species = GetMonData(&party[i], 65);
            u8 abilityNum = GetMonData(&party[i], 46);

            if (species != 0 && species != 412)
            {
                u8 ability;

                if (gBattlerPartyIndexes[gBattlerAttacker] == i)
                    ability = gBattleMons[gBattlerAttacker].ability;
                else if (gBattleTypeFlags & 0x0001
                         && gBattlerPartyIndexes[gActiveBattler] == i
                         && !(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
                    ability = gBattleMons[gActiveBattler].ability;
                else
                    ability = GetAbilityBySpecies(species, abilityNum);

                if (ability != 43)
                    toHeal |= (1 << i);
            }
        }
    }
    else
    {
        gBattleCommunication[0x5] = 4;
        toHeal = 0x3F;

        gBattleMons[gBattlerAttacker].status1 = 0;
        gBattleMons[gBattlerAttacker].status2 &= ~(0x08000000);

        gActiveBattler = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 2);
        if (gBattleTypeFlags & 0x0001
            && !(gAbsentBattlerFlags & gBitTable[gActiveBattler]))
        {
            gBattleMons[gActiveBattler].status1 = 0;
            gBattleMons[gActiveBattler].status2 &= ~(0x08000000);
        }

    }

    if (toHeal)
    {
        gActiveBattler = gBattlerAttacker;
        BtlController_EmitSetMonData(0, REQUEST_STATUS_BATTLE, toHeal, 4, &zero);
        MarkBattlerForControllerExec(gActiveBattler);
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_cursetarget(void)
{
    if (gBattleMons[gBattlerTarget].status2 & 0x10000000)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gBattleMons[gBattlerTarget].status2 |= 0x10000000;
        gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 2;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;

        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_trysetspikes(void)
{
    u8 targetSide = GetBattlerSide(gBattlerAttacker) ^ 1;

    if (gSideTimers[targetSide].spikesAmount == 3)
    {
        gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gSideStatuses[targetSide] |= (1 << 4);
        gSideTimers[targetSide].spikesAmount++;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_setforesight(void)
{
    gBattleMons[gBattlerTarget].status2 |= 0x20000000;
    gBattlescriptCurrInstr++;
}

static void Cmd_trysetperishsong(void)
{
    s32 i;
    s32 notAffectedCount = 0;

    for (i = 0; i < gBattlersCount; i++)
    {
        if (gStatuses3[i] & 0x20
            || gBattleMons[i].ability == 43)
        {
            notAffectedCount++;
        }
        else
        {
            gStatuses3[i] |= 0x20;
            gDisableStructs[i].perishSongTimer = 3;
            gDisableStructs[i].perishSongTimerStartValue = 3;
        }
    }

    PressurePPLoseOnUsingPerishSong(gBattlerAttacker);

    if (notAffectedCount == gBattlersCount)
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    else
        gBattlescriptCurrInstr += 5;
}

static void Cmd_rolloutdamagecalculation(void)
{
    if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
    {
        CancelMultiTurnMoves(gBattlerAttacker);
        gBattlescriptCurrInstr = BattleScript_MoveMissedPause;
    }
    else
    {
        s32 i;

        if (!(gBattleMons[gBattlerAttacker].status2 & 0x00001000))
        {
            gDisableStructs[gBattlerAttacker].rolloutTimer = 5;
            gDisableStructs[gBattlerAttacker].rolloutTimerStartValue = 5;
            gBattleMons[gBattlerAttacker].status2 |= 0x00001000;
            gLockedMoves[gBattlerAttacker] = gCurrentMove;
        }
        if (--gDisableStructs[gBattlerAttacker].rolloutTimer == 0)
        {
            gBattleMons[gBattlerAttacker].status2 &= ~(0x00001000);
        }

        gDynamicBasePower = gBattleMoves[gCurrentMove].power;

        for (i = 1; i < (5 - gDisableStructs[gBattlerAttacker].rolloutTimer); i++)
            gDynamicBasePower *= 2;

        if (gBattleMons[gBattlerAttacker].status2 & 0x40000000)
            gDynamicBasePower *= 2;

        gBattlescriptCurrInstr++;
    }
}

static void Cmd_jumpifconfusedandstatmaxed(void)
{
    if (gBattleMons[gBattlerTarget].status2 & 0x00000007
        && gBattleMons[gBattlerTarget].statStages[gBattlescriptCurrInstr[1]] == 0xC)
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
    else
        gBattlescriptCurrInstr += 6;
}

static void Cmd_furycuttercalc(void)
{
    if (gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
    {
        gDisableStructs[gBattlerAttacker].furyCutterCounter = 0;
        gBattlescriptCurrInstr = BattleScript_MoveMissedPause;
    }
    else
    {
        s32 i;

        if (gDisableStructs[gBattlerAttacker].furyCutterCounter != 5)
            gDisableStructs[gBattlerAttacker].furyCutterCounter++;

        gDynamicBasePower = gBattleMoves[gCurrentMove].power;

        for (i = 1; i < gDisableStructs[gBattlerAttacker].furyCutterCounter; i++)
            gDynamicBasePower *= 2;

        gBattlescriptCurrInstr++;
    }
}

static void Cmd_happinesstodamagecalculation(void)
{
    if (gBattleMoves[gCurrentMove].effect == 121)
        gDynamicBasePower = 10 * (gBattleMons[gBattlerAttacker].friendship) / 25;
    else
        gDynamicBasePower = 10 * (255 - gBattleMons[gBattlerAttacker].friendship) / 25;

    gBattlescriptCurrInstr++;
}

static void Cmd_presentdamagecalculation(void)
{
    s32 rand = Random() & 0xFF;

    if (rand < 102)
        gDynamicBasePower = 40;
    else if (rand < 178)
        gDynamicBasePower = 80;
    else if (rand < 204)
        gDynamicBasePower = 120;
    else
    {
        gBattleMoveDamage = gBattleMons[gBattlerTarget].maxHP / 4;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
        gBattleMoveDamage *= -1;
    }
    if (rand < 204)
        gBattlescriptCurrInstr = BattleScript_HitFromCritCalc;
    else if (gBattleMons[gBattlerTarget].maxHP == gBattleMons[gBattlerTarget].hp)
        gBattlescriptCurrInstr = BattleScript_AlreadyAtFullHp;
    else
    {
        gMoveResultFlags &= ~((1 << 3));
        gBattlescriptCurrInstr = BattleScript_PresentHealTarget;
    }
}

static void Cmd_setsafeguard(void)
{
    if (gSideStatuses[(GetBattlerPosition(gBattlerAttacker) & 1)] & (1 << 5))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[0x5] = 0;
    }
    else
    {
        gSideStatuses[(GetBattlerPosition(gBattlerAttacker) & 1)] |= (1 << 5);
        gSideTimers[(GetBattlerPosition(gBattlerAttacker) & 1)].safeguardTimer = 5;
        gSideTimers[(GetBattlerPosition(gBattlerAttacker) & 1)].safeguardBattlerId = gBattlerAttacker;
        gBattleCommunication[0x5] = 5;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_magnitudedamagecalculation(void)
{
    s32 magnitude = Random() % 100;

    if (magnitude < 5)
    {
        gDynamicBasePower = 10;
        magnitude = 4;
    }
    else if (magnitude < 15)
    {
        gDynamicBasePower = 30;
        magnitude = 5;
    }
    else if (magnitude < 35)
    {
        gDynamicBasePower = 50;
        magnitude = 6;
    }
    else if (magnitude < 65)
    {
        gDynamicBasePower = 70;
        magnitude = 7;
    }
    else if (magnitude < 85)
    {
        gDynamicBasePower = 90;
        magnitude = 8;
    }
    else if (magnitude < 95)
    {
        gDynamicBasePower = 110;
        magnitude = 9;
    }
    else
    {
        gDynamicBasePower = 150;
        magnitude = 10;
    }


    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 1; gBattleTextBuff1[2] = 1; gBattleTextBuff1[3] = 2; gBattleTextBuff1[4] = (magnitude); gBattleTextBuff1[5] = 0xFF; }

    for (gBattlerTarget = 0; gBattlerTarget < gBattlersCount; gBattlerTarget++)
    {
        if (gBattlerTarget == gBattlerAttacker)
            continue;
        if (!(gAbsentBattlerFlags & gBitTable[gBattlerTarget]))
            break;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_jumpifnopursuitswitchdmg(void)
{
    if (gMultiHitCounter == 1)
    {
        if (GetBattlerSide(gBattlerAttacker) == 0)
            gBattlerTarget = GetBattlerAtPosition(1);
        else
            gBattlerTarget = GetBattlerAtPosition(0);
    }
    else
    {
        if (GetBattlerSide(gBattlerAttacker) == 0)
            gBattlerTarget = GetBattlerAtPosition(3);
        else
            gBattlerTarget = GetBattlerAtPosition(2);
    }

    if (gChosenActionByBattler[gBattlerTarget] == 0
        && gBattlerAttacker == *(gBattleStruct->moveTarget + gBattlerTarget)
        && !(gBattleMons[gBattlerTarget].status1 & (0x7 | 0x20))
        && gBattleMons[gBattlerAttacker].hp
        && !gDisableStructs[gBattlerTarget].truantCounter
        && gChosenMoveByBattler[gBattlerTarget] == 228)
    {
        s32 i;

        for (i = 0; i < gBattlersCount; i++)
        {
            if (gBattlerByTurnOrder[i] == gBattlerTarget)
                gActionsByTurnOrder[i] = 11;
        }

        gCurrentMove = 228;
        gCurrMovePos = gChosenMovePos = *(gBattleStruct->chosenMovePositions + gBattlerTarget);
        gBattlescriptCurrInstr += 5;
        gBattleScripting.animTurn = 1;
        gHitMarker &= ~(0x00000400);
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_setsunny(void)
{
    if (gBattleWeather & ((1 << 5) | (1 << 6)))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[0x5] = 2;
    }
    else
    {
        gBattleWeather = (1 << 5);
        gBattleCommunication[0x5] = 4;
        gWishFutureKnock.weatherDuration = 5;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_maxattackhalvehp(void)
{
    u32 halfHp = gBattleMons[gBattlerAttacker].maxHP / 2;

    if (!(gBattleMons[gBattlerAttacker].maxHP / 2))
        halfHp = 1;

    if (gBattleMons[gBattlerAttacker].statStages[1] < 12
        && gBattleMons[gBattlerAttacker].hp > halfHp)
    {
        gBattleMons[gBattlerAttacker].statStages[1] = 12;
        gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 2;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_copyfoestats(void)
{
    s32 i;

    for (i = 0; i < 6 + 2; i++)
    {
        gBattleMons[gBattlerAttacker].statStages[i] = gBattleMons[gBattlerTarget].statStages[i];
    }

    gBattlescriptCurrInstr += 5;
}

static void Cmd_rapidspinfree(void)
{
    if (gBattleMons[gBattlerAttacker].status2 & 0x0000E000)
    {
        gBattleScripting.battler = gBattlerTarget;
        gBattleMons[gBattlerAttacker].status2 &= ~(0x0000E000);
        gBattlerTarget = *(gBattleStruct->wrappedBy + gBattlerAttacker);

        gBattleTextBuff1[0] = 0xFD;
        gBattleTextBuff1[1] = 2;
        gBattleTextBuff1[2] = *(gBattleStruct->wrappedMove + gBattlerAttacker * 2 + 0);
        gBattleTextBuff1[3] = *(gBattleStruct->wrappedMove + gBattlerAttacker * 2 + 1);
        gBattleTextBuff1[4] = 0xFF;

        BattleScriptPushCursor();
        gBattlescriptCurrInstr = BattleScript_WrapFree;
    }
    else if (gStatuses3[gBattlerAttacker] & 0x4)
    {
        gStatuses3[gBattlerAttacker] &= ~(0x4);
        gStatuses3[gBattlerAttacker] &= ~(0x3);
        BattleScriptPushCursor();
        gBattlescriptCurrInstr = BattleScript_LeechSeedFree;
    }
    else if (gSideStatuses[GetBattlerSide(gBattlerAttacker)] & (1 << 4))
    {
        gSideStatuses[GetBattlerSide(gBattlerAttacker)] &= ~((1 << 4));
        gSideTimers[GetBattlerSide(gBattlerAttacker)].spikesAmount = 0;
        BattleScriptPushCursor();
        gBattlescriptCurrInstr = BattleScript_SpikesFree;
    }
    else
    {
        gBattlescriptCurrInstr++;
    }
}

static void Cmd_setdefensecurlbit(void)
{
    gBattleMons[gBattlerAttacker].status2 |= 0x40000000;
    gBattlescriptCurrInstr++;
}

static void Cmd_recoverbasedonsunlight(void)
{
    gBattlerTarget = gBattlerAttacker;

    if (gBattleMons[gBattlerAttacker].hp != gBattleMons[gBattlerAttacker].maxHP)
    {
        if (gBattleWeather == 0 || !((!(AbilityBattleEffects(0x13, 0, 13, 0, 0)) && !(AbilityBattleEffects(0x13, 0, 77, 0, 0)))))
            gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 2;
        else if (gBattleWeather & ((1 << 5) | (1 << 6)))
            gBattleMoveDamage = 20 * gBattleMons[gBattlerAttacker].maxHP / 30;
        else
            gBattleMoveDamage = gBattleMons[gBattlerAttacker].maxHP / 4;

        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
        gBattleMoveDamage *= -1;

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_hiddenpowercalc(void)
{
    u8 powerBits;
    u8 typeBits;

    powerBits = ((gBattleMons[gBattlerAttacker].hpIV & 2) >> 1)
              | ((gBattleMons[gBattlerAttacker].attackIV & 2) << 0)
              | ((gBattleMons[gBattlerAttacker].defenseIV & 2) << 1)
              | ((gBattleMons[gBattlerAttacker].speedIV & 2) << 2)
              | ((gBattleMons[gBattlerAttacker].spAttackIV & 2) << 3)
              | ((gBattleMons[gBattlerAttacker].spDefenseIV & 2) << 4);

    typeBits = ((gBattleMons[gBattlerAttacker].hpIV & 1) << 0)
              | ((gBattleMons[gBattlerAttacker].attackIV & 1) << 1)
              | ((gBattleMons[gBattlerAttacker].defenseIV & 1) << 2)
              | ((gBattleMons[gBattlerAttacker].speedIV & 1) << 3)
              | ((gBattleMons[gBattlerAttacker].spAttackIV & 1) << 4)
              | ((gBattleMons[gBattlerAttacker].spDefenseIV & 1) << 5);

    gDynamicBasePower = (40 * powerBits) / 63 + 30;

    gBattleStruct->dynamicMoveType = (15 * typeBits) / 63 + 1;
    if (gBattleStruct->dynamicMoveType >= 9)
        gBattleStruct->dynamicMoveType++;
    gBattleStruct->dynamicMoveType |= 0xC0;

    gBattlescriptCurrInstr++;
}

static void Cmd_selectfirstvalidtarget(void)
{
    for (gBattlerTarget = 0; gBattlerTarget < gBattlersCount; gBattlerTarget++)
    {
        if (gBattlerTarget == gBattlerAttacker)
            continue;
        if (!(gAbsentBattlerFlags & gBitTable[gBattlerTarget]))
            break;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_trysetfutureattack(void)
{
    if (gWishFutureKnock.futureSightCounter[gBattlerTarget] != 0)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gSideStatuses[(GetBattlerPosition(gBattlerTarget) & 1)] |= (1 << 6);
        gWishFutureKnock.futureSightMove[gBattlerTarget] = gCurrentMove;
        gWishFutureKnock.futureSightAttacker[gBattlerTarget] = gBattlerAttacker;
        gWishFutureKnock.futureSightCounter[gBattlerTarget] = 3;
        gWishFutureKnock.futureSightDmg[gBattlerTarget] = CalculateBaseDamage(&gBattleMons[gBattlerAttacker], &gBattleMons[gBattlerTarget], gCurrentMove,
                                                    gSideStatuses[(GetBattlerPosition(gBattlerTarget) & 1)], 0,
                                                    0, gBattlerAttacker, gBattlerTarget);

        if (gProtectStructs[gBattlerAttacker].helpingHand)
            gWishFutureKnock.futureSightDmg[gBattlerTarget] = gWishFutureKnock.futureSightDmg[gBattlerTarget] * 15 / 10;

        if (gCurrentMove == 353)
            gBattleCommunication[0x5] = 1;
        else
            gBattleCommunication[0x5] = 0;

        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_trydobeatup(void)
{
    struct Pokemon *party;

    if (GetBattlerSide(gBattlerAttacker) == 0)
        party = gPlayerParty;
    else
        party = gEnemyParty;

    if (gBattleMons[gBattlerTarget].hp == 0)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        u8 beforeLoop = gBattleCommunication[0];
        for (;gBattleCommunication[0] < 6; gBattleCommunication[0]++)
        {
            if (GetMonData(&party[gBattleCommunication[0]], 57)
                && GetMonData(&party[gBattleCommunication[0]], 65)
                && GetMonData(&party[gBattleCommunication[0]], 65) != 412
                && !GetMonData(&party[gBattleCommunication[0]], 55))
                    break;
        }
        if (gBattleCommunication[0] < 6)
        {
            { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 4; gBattleTextBuff1[2] = gBattlerAttacker; gBattleTextBuff1[3] = gBattleCommunication[0]; gBattleTextBuff1[4] = 0xFF; }

            gBattlescriptCurrInstr += 9;

            gBattleMoveDamage = gBaseStats[GetMonData(&party[gBattleCommunication[0]], 11)].baseAttack;
            gBattleMoveDamage *= gBattleMoves[gCurrentMove].power;
            gBattleMoveDamage *= (GetMonData(&party[gBattleCommunication[0]], 56) * 2 / 5 + 2);
            gBattleMoveDamage /= gBaseStats[gBattleMons[gBattlerTarget].species].baseDefense;
            gBattleMoveDamage = (gBattleMoveDamage / 50) + 2;
            if (gProtectStructs[gBattlerAttacker].helpingHand)
                gBattleMoveDamage = gBattleMoveDamage * 15 / 10;

            gBattleCommunication[0]++;
        }
        else if (beforeLoop != 0)
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        else
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 5)[0] | ((gBattlescriptCurrInstr + 5)[1] << 8) | ((gBattlescriptCurrInstr + 5)[2] << 16) | ((gBattlescriptCurrInstr + 5)[3] << 24));
    }
}

static void Cmd_setsemiinvulnerablebit(void)
{
    switch (gCurrentMove)
    {
    case 19:
    case 340:
        gStatuses3[gBattlerAttacker] |= 0x40;
        break;
    case 91:
        gStatuses3[gBattlerAttacker] |= 0x80;
        break;
    case 291:
        gStatuses3[gBattlerAttacker] |= 0x40000;
        break;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_clearsemiinvulnerablebit(void)
{
    switch (gCurrentMove)
    {
    case 19:
    case 340:
        gStatuses3[gBattlerAttacker] &= ~0x40;
        break;
    case 91:
        gStatuses3[gBattlerAttacker] &= ~0x80;
        break;
    case 291:
        gStatuses3[gBattlerAttacker] &= ~0x40000;
        break;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_setminimize(void)
{
    if (gHitMarker & 0x02000000)
        gStatuses3[gBattlerAttacker] |= 0x100;

    gBattlescriptCurrInstr++;
}

static void Cmd_sethail(void)
{
    if (gBattleWeather & ((1 << 7)))
    {
        gMoveResultFlags |= (1 << 0);
        gBattleCommunication[0x5] = 2;
    }
    else
    {
        gBattleWeather = (1 << 7);
        gBattleCommunication[0x5] = 5;
        gWishFutureKnock.weatherDuration = 5;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_jumpifattackandspecialattackcannotfall(void)
{
    if (gBattleMons[gBattlerTarget].statStages[1] == 0
        && gBattleMons[gBattlerTarget].statStages[4] == 0
        && gBattleCommunication[6] != 1)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gActiveBattler = gBattlerAttacker;
        gBattleMoveDamage = gBattleMons[gActiveBattler].hp;
        BtlController_EmitHealthBarUpdate(0, 32767);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_setforcedtarget(void)
{
    gSideTimers[GetBattlerSide(gBattlerAttacker)].followmeTimer = 1;
    gSideTimers[GetBattlerSide(gBattlerAttacker)].followmeTarget = gBattlerAttacker;
    gBattlescriptCurrInstr++;
}

static void Cmd_setcharge(void)
{
    gStatuses3[gBattlerAttacker] |= 0x200;
    gDisableStructs[gBattlerAttacker].chargeTimer = 2;
    gDisableStructs[gBattlerAttacker].chargeTimerStartValue = 2;
    gBattlescriptCurrInstr++;
}

static void Cmd_callterrainattack(void)
{
    gHitMarker &= ~(0x00000400);
    gCurrentMove = sNaturePowerMoves[gBattleTerrain];
    gBattlerTarget = GetMoveTarget(gCurrentMove, 0);
    BattleScriptPush(gBattleScriptsForMoveEffects[gBattleMoves[gCurrentMove].effect]);
    gBattlescriptCurrInstr++;
}

static void Cmd_cureifburnedparalysedorpoisoned(void)
{
    if (gBattleMons[gBattlerAttacker].status1 & (0x8 | 0x10 | 0x40 | 0x80))
    {
        gBattleMons[gBattlerAttacker].status1 = 0;
        gBattlescriptCurrInstr += 5;
        gActiveBattler = gBattlerAttacker;
        BtlController_EmitSetMonData(0, REQUEST_STATUS_BATTLE, 0, 4, &gBattleMons[gActiveBattler].status1);
        MarkBattlerForControllerExec(gActiveBattler);
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_settorment(void)
{
    if (gBattleMons[gBattlerTarget].status2 & 0x80000000)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gBattleMons[gBattlerTarget].status2 |= 0x80000000;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_jumpifnodamage(void)
{
    if (gProtectStructs[gBattlerAttacker].physicalDmg || gProtectStructs[gBattlerAttacker].specialDmg)
        gBattlescriptCurrInstr += 5;
    else
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
}

static void Cmd_settaunt(void)
{
    if (gDisableStructs[gBattlerTarget].tauntTimer == 0)
    {
        gDisableStructs[gBattlerTarget].tauntTimer = 2;
        gDisableStructs[gBattlerTarget].tauntTimer2 = 2;
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_trysethelpinghand(void)
{
    gBattlerTarget = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 2);

    if (gBattleTypeFlags & 0x0001
        && !(gAbsentBattlerFlags & gBitTable[gBattlerTarget])
        && !gProtectStructs[gBattlerAttacker].helpingHand
        && !gProtectStructs[gBattlerTarget].helpingHand)
    {
        gProtectStructs[gBattlerTarget].helpingHand = 1;
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_tryswapitems(void)
{

    if (gBattleTypeFlags & 0x4000000
        || (GetBattlerSide(gBattlerAttacker) == 1
            && !(gBattleTypeFlags & (0x0002
                                  | 0x0800
                                  | (0x0100 | 0x10000 | 0x20000 | 0x40000 | 0x80000 | 0x100000 | 0x200000)
                                  | 0x8000000
                                  | 0x2000000))))
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        u8 sideAttacker = GetBattlerSide(gBattlerAttacker);
        u8 sideTarget = GetBattlerSide(gBattlerTarget);


        if (!(gBattleTypeFlags & (0x0002
                             | 0x0800
                             | (0x0100 | 0x10000 | 0x20000 | 0x40000 | 0x80000 | 0x100000 | 0x200000)
                             | 0x8000000
                             | 0x2000000))
            && (gWishFutureKnock.knockedOffMons[sideAttacker] & gBitTable[gBattlerPartyIndexes[gBattlerAttacker]]
                || gWishFutureKnock.knockedOffMons[sideTarget] & gBitTable[gBattlerPartyIndexes[gBattlerTarget]]))
        {
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }


        else if ((gBattleMons[gBattlerAttacker].item == 0 && gBattleMons[gBattlerTarget].item == 0)
                 || gBattleMons[gBattlerAttacker].item == 175
                 || gBattleMons[gBattlerTarget].item == 175
                 || ((gBattleMons[gBattlerAttacker].item == 121 || gBattleMons[gBattlerAttacker].item == 122 || gBattleMons[gBattlerAttacker].item == 123 || gBattleMons[gBattlerAttacker].item == 124 || gBattleMons[gBattlerAttacker].item == 125 || gBattleMons[gBattlerAttacker].item == 126 || gBattleMons[gBattlerAttacker].item == 127 || gBattleMons[gBattlerAttacker].item == 128 || gBattleMons[gBattlerAttacker].item == 129 || gBattleMons[gBattlerAttacker].item == 130 || gBattleMons[gBattlerAttacker].item == 131 || gBattleMons[gBattlerAttacker].item == 132))
                 || ((gBattleMons[gBattlerTarget].item == 121 || gBattleMons[gBattlerTarget].item == 122 || gBattleMons[gBattlerTarget].item == 123 || gBattleMons[gBattlerTarget].item == 124 || gBattleMons[gBattlerTarget].item == 125 || gBattleMons[gBattlerTarget].item == 126 || gBattleMons[gBattlerTarget].item == 127 || gBattleMons[gBattlerTarget].item == 128 || gBattleMons[gBattlerTarget].item == 129 || gBattleMons[gBattlerTarget].item == 130 || gBattleMons[gBattlerTarget].item == 131 || gBattleMons[gBattlerTarget].item == 132)))
        {
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }

        else if (gBattleMons[gBattlerTarget].ability == 60)
        {
            gBattlescriptCurrInstr = BattleScript_StickyHoldActivates;
            gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
            RecordAbilityBattle(gBattlerTarget, gLastUsedAbility);
        }

        else
        {
            u16 oldItemAtk, *newItemAtk;

            newItemAtk = &gBattleStruct->changedItems[gBattlerAttacker];
            oldItemAtk = gBattleMons[gBattlerAttacker].item;
            *newItemAtk = gBattleMons[gBattlerTarget].item;

            gBattleMons[gBattlerAttacker].item = 0;
            gBattleMons[gBattlerTarget].item = oldItemAtk;

            gActiveBattler = gBattlerAttacker;
            BtlController_EmitSetMonData(0, REQUEST_HELDITEM_BATTLE, 0, 2, newItemAtk);
            MarkBattlerForControllerExec(gBattlerAttacker);

            gActiveBattler = gBattlerTarget;
            BtlController_EmitSetMonData(0, REQUEST_HELDITEM_BATTLE, 0, 2, &gBattleMons[gBattlerTarget].item);
            MarkBattlerForControllerExec(gBattlerTarget);

            *(u8*)((u8*)(&gBattleStruct->choicedMove[gBattlerTarget]) + 0) = 0;
            *(u8*)((u8*)(&gBattleStruct->choicedMove[gBattlerTarget]) + 1) = 0;

            *(u8*)((u8*)(&gBattleStruct->choicedMove[gBattlerAttacker]) + 0) = 0;
            *(u8*)((u8*)(&gBattleStruct->choicedMove[gBattlerAttacker]) + 1) = 0;

            gBattlescriptCurrInstr += 5;

            { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 10; gBattleTextBuff1[2] = *newItemAtk; gBattleTextBuff1[3] = (*newItemAtk & 0xFF00) >> 8; gBattleTextBuff1[4] = 0xFF; }
            { gBattleTextBuff2[0] = 0xFD; gBattleTextBuff2[1] = 10; gBattleTextBuff2[2] = oldItemAtk; gBattleTextBuff2[3] = (oldItemAtk & 0xFF00) >> 8; gBattleTextBuff2[4] = 0xFF; }

            if (oldItemAtk != 0 && *newItemAtk != 0)
                gBattleCommunication[0x5] = 2;
            else if (oldItemAtk == 0 && *newItemAtk != 0)
                gBattleCommunication[0x5] = 0;
            else
                gBattleCommunication[0x5] = 1;
        }
    }
}

static void Cmd_trycopyability(void)
{
    if (gBattleMons[gBattlerTarget].ability != 0
        && gBattleMons[gBattlerTarget].ability != 25)
    {
        gBattleMons[gBattlerAttacker].ability = gBattleMons[gBattlerTarget].ability;
        gLastUsedAbility = gBattleMons[gBattlerTarget].ability;
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_trywish(void)
{
    switch (gBattlescriptCurrInstr[1])
    {
    case 0:
        if (gWishFutureKnock.wishCounter[gBattlerAttacker] == 0)
        {
            gWishFutureKnock.wishCounter[gBattlerAttacker] = 2;
            gWishFutureKnock.wishMonId[gBattlerAttacker] = gBattlerPartyIndexes[gBattlerAttacker];
            gBattlescriptCurrInstr += 6;
        }
        else
        {
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        }
        break;
    case 1:
        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 4; gBattleTextBuff1[2] = gBattlerTarget; gBattleTextBuff1[3] = gWishFutureKnock.wishMonId[gBattlerTarget]; gBattleTextBuff1[4] = 0xFF; }

        gBattleMoveDamage = gBattleMons[gBattlerTarget].maxHP / 2;
        if (gBattleMoveDamage == 0)
            gBattleMoveDamage = 1;
        gBattleMoveDamage *= -1;

        if (gBattleMons[gBattlerTarget].hp == gBattleMons[gBattlerTarget].maxHP)
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
        else
            gBattlescriptCurrInstr += 6;

        break;
    }
}

static void Cmd_trysetroots(void)
{
    if (gStatuses3[gBattlerAttacker] & 0x400)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gStatuses3[gBattlerAttacker] |= 0x400;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_doubledamagedealtifdamaged(void)
{
    if ((gProtectStructs[gBattlerAttacker].physicalDmg
         && gProtectStructs[gBattlerAttacker].physicalBattlerId == gBattlerTarget)
        || (gProtectStructs[gBattlerAttacker].specialDmg
            && gProtectStructs[gBattlerAttacker].specialBattlerId == gBattlerTarget))
    {
        gBattleScripting.dmgMultiplier = 2;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_setyawn(void)
{
    if (gStatuses3[gBattlerTarget] & 0x1800
        || gBattleMons[gBattlerTarget].status1 & (0x7 | 0x8 | 0x10 | 0x20 | 0x40 | 0x80))
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gStatuses3[gBattlerTarget] |= 0x1000;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_setdamagetohealthdifference(void)
{
    if (gBattleMons[gBattlerTarget].hp <= gBattleMons[gBattlerAttacker].hp)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gBattleMoveDamage = gBattleMons[gBattlerTarget].hp - gBattleMons[gBattlerAttacker].hp;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_scaledamagebyhealthratio(void)
{
    if (gDynamicBasePower == 0)
    {
        u8 power = gBattleMoves[gCurrentMove].power;
        gDynamicBasePower = gBattleMons[gBattlerAttacker].hp * power / gBattleMons[gBattlerAttacker].maxHP;
        if (gDynamicBasePower == 0)
            gDynamicBasePower = 1;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_tryswapabilities(void)
{
    if ((gBattleMons[gBattlerAttacker].ability == 0
         && gBattleMons[gBattlerTarget].ability == 0)
     || gBattleMons[gBattlerAttacker].ability == 25
     || gBattleMons[gBattlerTarget].ability == 25
     || gMoveResultFlags & ((1 << 0) | (1 << 3) | (1 << 5)))
     {
         gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
     }
    else
    {
        u8 abilityAtk = gBattleMons[gBattlerAttacker].ability;
        gBattleMons[gBattlerAttacker].ability = gBattleMons[gBattlerTarget].ability;
        gBattleMons[gBattlerTarget].ability = abilityAtk;

            gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_tryimprison(void)
{
    if ((gStatuses3[gBattlerAttacker] & 0x2000))
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        u8 battlerId, sideAttacker;

        sideAttacker = GetBattlerSide(gBattlerAttacker);
        PressurePPLoseOnUsingImprison(gBattlerAttacker);
        for (battlerId = 0; battlerId < gBattlersCount; battlerId++)
        {
            if (sideAttacker != GetBattlerSide(battlerId))
            {
                s32 attackerMoveId;
                for (attackerMoveId = 0; attackerMoveId < 4; attackerMoveId++)
                {
                    s32 i;
                    for (i = 0; i < 4; i++)
                    {
                        if (gBattleMons[gBattlerAttacker].moves[attackerMoveId] == gBattleMons[battlerId].moves[i]
                            && gBattleMons[gBattlerAttacker].moves[attackerMoveId] != 0)
                            break;
                    }
                    if (i != 4)
                        break;
                }
                if (attackerMoveId != 4)
                {
                    gStatuses3[gBattlerAttacker] |= 0x2000;
                    gBattlescriptCurrInstr += 5;
                    break;
                }
            }
        }
        if (battlerId == gBattlersCount)
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_trysetgrudge(void)
{
    if (gStatuses3[gBattlerAttacker] & 0x4000)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gStatuses3[gBattlerAttacker] |= 0x4000;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_weightdamagecalculation(void)
{
    s32 i;
    for (i = 0; sWeightToDamageTable[i] != 0xFFFF; i += 2)
    {
        if (sWeightToDamageTable[i] > GetPokedexHeightWeight(SpeciesToNationalPokedexNum(gBattleMons[gBattlerTarget].species), 1))
            break;
    }

    if (sWeightToDamageTable[i] != 0xFFFF)
        gDynamicBasePower = sWeightToDamageTable[i + 1];
    else
        gDynamicBasePower = 120;

    gBattlescriptCurrInstr++;
}

static void Cmd_assistattackselect(void)
{
    s32 chooseableMovesNo = 0;
    struct Pokemon* party;
    s32 monId, moveId;
    u16* movesArray = gBattleStruct->assistPossibleMoves;

    if ((GetBattlerPosition(gBattlerAttacker) & 1) != 0)
        party = gEnemyParty;
    else
        party = gPlayerParty;

    for (monId = 0; monId < 6; monId++)
    {
        if (monId == gBattlerPartyIndexes[gBattlerAttacker])
            continue;
        if (GetMonData(&party[monId], 65) == 0)
            continue;
        if (GetMonData(&party[monId], 65) == 412)
            continue;

        for (moveId = 0; moveId < 4; moveId++)
        {
            s32 i = 0;
            u16 move = GetMonData(&party[monId], 13 + moveId);

            if (IsInvalidForSleepTalkOrAssist(move))
                continue;

            for (; sMovesForbiddenToCopy[i] != 0xFFFF && move != sMovesForbiddenToCopy[i]; i++);

            if (sMovesForbiddenToCopy[i] != 0xFFFF)
                continue;
            if (move == 0)
                continue;

            movesArray[chooseableMovesNo] = move;
            chooseableMovesNo++;
        }
    }
    if (chooseableMovesNo)
    {
        gHitMarker &= ~(0x00000400);
        gCalledMove = movesArray[((Random() & 0xFF) * chooseableMovesNo) >> 8];
        gBattlerTarget = GetMoveTarget(gCalledMove, 0);
        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_trysetmagiccoat(void)
{
    gBattlerTarget = gBattlerAttacker;
    gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
    if (gCurrentTurnActionNumber == gBattlersCount - 1)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gProtectStructs[gBattlerAttacker].bounceMove = 1;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_trysetsnatch(void)
{
    gSpecialStatuses[gBattlerAttacker].ppNotAffectedByPressure = 1;
    if (gCurrentTurnActionNumber == gBattlersCount - 1)
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        gProtectStructs[gBattlerAttacker].stealMove = 1;
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_trygetintimidatetarget(void)
{
    u8 side;

    gBattleScripting.battler = gBattleStruct->intimidateBattler;
    side = GetBattlerSide(gBattleScripting.battler);

    { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 9; gBattleTextBuff1[2] = gBattleMons[gBattleScripting.battler].ability; gBattleTextBuff1[3] = 0xFF; }

    for (;gBattlerTarget < gBattlersCount; gBattlerTarget++)
    {
        if (GetBattlerSide(gBattlerTarget) == side)
            continue;
        if (!(gAbsentBattlerFlags & gBitTable[gBattlerTarget]))
            break;
    }

    if (gBattlerTarget >= gBattlersCount)
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    else
        gBattlescriptCurrInstr += 5;
}

static void Cmd_switchoutabilities(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    switch (gBattleMons[gActiveBattler].ability)
    {
    case 30:
        gBattleMons[gActiveBattler].status1 = 0;
        BtlController_EmitSetMonData(0, REQUEST_STATUS_BATTLE, gBitTable[*(gBattleStruct->field_58 + gActiveBattler)], 4, &gBattleMons[gActiveBattler].status1);
        MarkBattlerForControllerExec(gActiveBattler);
        break;
    }

    gBattlescriptCurrInstr += 2;
}

static void Cmd_jumpifhasnohp(void)
{
    gActiveBattler = GetBattlerForBattleScript(gBattlescriptCurrInstr[1]);

    if (gBattleMons[gActiveBattler].hp == 0)
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 2)[0] | ((gBattlescriptCurrInstr + 2)[1] << 8) | ((gBattlescriptCurrInstr + 2)[2] << 16) | ((gBattlescriptCurrInstr + 2)[3] << 24));
    else
        gBattlescriptCurrInstr += 6;
}

static void Cmd_getsecretpowereffect(void)
{
    switch (gBattleTerrain)
    {
    case 0:
        gBattleCommunication[0x3] = 0x2;
        break;
    case 1:
        gBattleCommunication[0x3] = 0x1;
        break;
    case 2:
        gBattleCommunication[0x3] = 0x1B;
        break;
    case 3:
        gBattleCommunication[0x3] = 0x17;
        break;
    case 4:
        gBattleCommunication[0x3] = 0x16;
        break;
    case 5:
        gBattleCommunication[0x3] = 0x18;
        break;
    case 6:
        gBattleCommunication[0x3] = 0x7;
        break;
    case 7:
        gBattleCommunication[0x3] = 0x8;
        break;
    default:
        gBattleCommunication[0x3] = 0x5;
        break;
    }
    gBattlescriptCurrInstr++;
}

static void Cmd_pickup(void)
{
    s32 i;
    u16 species, heldItem;
    u8 ability;

    if (InBattlePike())
    {

    }
    else if (InBattlePyramid())
    {
        for (i = 0; i < 6; i++)
        {
            species = GetMonData(&gPlayerParty[i], 65);
            heldItem = GetMonData(&gPlayerParty[i], 12);

            if (GetMonData(&gPlayerParty[i], 46))
                ability = gBaseStats[species].abilities[1];
            else
                ability = gBaseStats[species].abilities[0];

            if (ability == 53
                && species != 0
                && species != 412
                && heldItem == 0
                && (Random() % 10) == 0)
            {
                heldItem = GetBattlePyramidPickupItemId();
                SetMonData(&gPlayerParty[i], 12, &heldItem);
            }
        }
    }
    else
    {
        for (i = 0; i < 6; i++)
        {
            species = GetMonData(&gPlayerParty[i], 65);
            heldItem = GetMonData(&gPlayerParty[i], 12);

            if (GetMonData(&gPlayerParty[i], 46))
                ability = gBaseStats[species].abilities[1];
            else
                ability = gBaseStats[species].abilities[0];

            if (ability == 53
                && species != 0
                && species != 412
                && heldItem == 0
                && (Random() % 10) == 0)
            {
                s32 j;
                s32 rand = Random() % 100;
                u8 lvlDivBy10 = (GetMonData(&gPlayerParty[i], 56) - 1) / 10;
                if (lvlDivBy10 > 9)
                    lvlDivBy10 = 9;

                for (j = 0; j < 9; j++)
                {
                    if (sPickupProbabilities[j] > rand)
                    {
                        SetMonData(&gPlayerParty[i], 12, &sPickupItems[lvlDivBy10 + j]);
                        break;
                    }
                    else if (rand == 99 || rand == 98)
                    {
                        SetMonData(&gPlayerParty[i], 12, &sRarePickupItems[lvlDivBy10 + (99 - rand)]);
                        break;
                    }
                }
            }
        }
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_docastformchangeanimation(void)
{
    gActiveBattler = gBattleScripting.battler;

    if (gBattleMons[gActiveBattler].status2 & 0x01000000)
        *(&gBattleStruct->formToChangeInto) |= 0x80;

    BtlController_EmitBattleAnimation(0, 0x0, gBattleStruct->formToChangeInto);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr++;
}

static void Cmd_trycastformdatachange(void)
{
    u8 form;

    gBattlescriptCurrInstr++;
    form = CastformDataTypeChange(gBattleScripting.battler);
    if (form)
    {
        BattleScriptPushCursorAndCallback(BattleScript_CastformChange);
        *(&gBattleStruct->formToChangeInto) = form - 1;
    }
}

static void Cmd_settypebasedhalvers(void)
{
    bool8 worked = 0;

    if (gBattleMoves[gCurrentMove].effect == 201)
    {
        if (!(gStatuses3[gBattlerAttacker] & 0x10000))
        {
            gStatuses3[gBattlerAttacker] |= 0x10000;
            gBattleCommunication[0x5] = 0;
            worked = 1;
        }
    }
    else
    {
        if (!(gStatuses3[gBattlerAttacker] & 0x20000))
        {
            gStatuses3[gBattlerAttacker] |= 0x20000;
            gBattleCommunication[0x5] = 1;
            worked = 1;
        }
    }

    if (worked)
        gBattlescriptCurrInstr += 5;
    else
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
}

static void Cmd_setweatherballtype(void)
{
    if (((!(AbilityBattleEffects(0x13, 0, 13, 0, 0)) && !(AbilityBattleEffects(0x13, 0, 77, 0, 0)))))
    {
        if (gBattleWeather & (((1 << 0) | (1 << 1) | (1 << 2)) | ((1 << 3) | (1 << 4)) | ((1 << 5) | (1 << 6)) | ((1 << 7))))
            gBattleScripting.dmgMultiplier = 2;
        if (gBattleWeather & ((1 << 0) | (1 << 1) | (1 << 2)))
            *(&gBattleStruct->dynamicMoveType) = 11 | 0x80;
        else if (gBattleWeather & ((1 << 3) | (1 << 4)))
            *(&gBattleStruct->dynamicMoveType) = 5 | 0x80;
        else if (gBattleWeather & ((1 << 5) | (1 << 6)))
            *(&gBattleStruct->dynamicMoveType) = 10 | 0x80;
        else if (gBattleWeather & ((1 << 7)))
            *(&gBattleStruct->dynamicMoveType) = 15 | 0x80;
        else
            *(&gBattleStruct->dynamicMoveType) = 0 | 0x80;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_tryrecycleitem(void)
{
    u16 *usedHeldItem;

    gActiveBattler = gBattlerAttacker;
    usedHeldItem = &gBattleStruct->usedHeldItems[gActiveBattler];
    if (*usedHeldItem != 0 && gBattleMons[gActiveBattler].item == 0)
    {
        gLastUsedItem = *usedHeldItem;
        *usedHeldItem = 0;
        gBattleMons[gActiveBattler].item = gLastUsedItem;

        BtlController_EmitSetMonData(0, REQUEST_HELDITEM_BATTLE, 0, 2, &gBattleMons[gActiveBattler].item);
        MarkBattlerForControllerExec(gActiveBattler);

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_settypetoterrain(void)
{
    if (!((gBattleMons[gBattlerAttacker].type1 == sTerrainToType[gBattleTerrain] || gBattleMons[gBattlerAttacker].type2 == sTerrainToType[gBattleTerrain])))
    {
        { gBattleMons[gBattlerAttacker].type1 = sTerrainToType[gBattleTerrain]; gBattleMons[gBattlerAttacker].type2 = sTerrainToType[gBattleTerrain]; };
        { gBattleTextBuff1[0] = 0xFD; gBattleTextBuff1[1] = 3; gBattleTextBuff1[2] = sTerrainToType[gBattleTerrain]; gBattleTextBuff1[3] = 0xFF; };

        gBattlescriptCurrInstr += 5;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_pursuitrelated(void)
{
    gActiveBattler = GetBattlerAtPosition(GetBattlerPosition(gBattlerAttacker) ^ 2);

    if (gBattleTypeFlags & 0x0001
        && !(gAbsentBattlerFlags & gBitTable[gActiveBattler])
        && gChosenActionByBattler[gActiveBattler] == 0
        && gChosenMoveByBattler[gActiveBattler] == 228)
    {
        gActionsByTurnOrder[gActiveBattler] = 11;
        gCurrentMove = 228;
        gBattlescriptCurrInstr += 5;
        gBattleScripting.animTurn = 1;
        gBattleScripting.field_20 = gBattlerAttacker;
        gBattlerAttacker = gActiveBattler;
    }
    else
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
}

static void Cmd_snatchsetbattlers(void)
{
    gEffectBattler = gBattlerAttacker;

    if (gBattlerAttacker == gBattlerTarget)
        gBattlerAttacker = gBattlerTarget = gBattleScripting.battler;
    else
        gBattlerTarget = gBattleScripting.battler;

    gBattleScripting.battler = gEffectBattler;
    gBattlescriptCurrInstr++;
}

static void Cmd_removelightscreenreflect(void)
{
    u8 opposingSide = GetBattlerSide(gBattlerAttacker) ^ 1;

    if (gSideTimers[opposingSide].reflectTimer || gSideTimers[opposingSide].lightscreenTimer)
    {
        gSideStatuses[opposingSide] &= ~((1 << 0));
        gSideStatuses[opposingSide] &= ~((1 << 1));
        gSideTimers[opposingSide].reflectTimer = 0;
        gSideTimers[opposingSide].lightscreenTimer = 0;
        gBattleScripting.animTurn = 1;
        gBattleScripting.animTargetsHit = 1;
    }
    else
    {
        gBattleScripting.animTurn = 0;
        gBattleScripting.animTargetsHit = 0;
    }

    gBattlescriptCurrInstr++;
}

static void Cmd_handleballthrow(void)
{
    u8 ballMultiplier = 0;

    if (gBattleControllerExecFlags)
        return;

    gActiveBattler = gBattlerAttacker;
    gBattlerTarget = gBattlerAttacker ^ 1;

    if (gBattleTypeFlags & 0x0008)
    {
        BtlController_EmitBallThrowAnim(0, 5);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr = BattleScript_TrainerBallBlock;
    }
    else if (gBattleTypeFlags & 0x0200)
    {
        BtlController_EmitBallThrowAnim(0, 4);
        MarkBattlerForControllerExec(gActiveBattler);
        gBattlescriptCurrInstr = BattleScript_WallyBallThrow;
    }
    else
    {
        u32 odds;
        u8 catchRate;

        if (gLastUsedItem == 5)
            catchRate = gBattleStruct->safariCatchFactor * 1275 / 100;
        else
            catchRate = gBaseStats[gBattleMons[gBattlerTarget].species].catchRate;

        if (gLastUsedItem > 5)
        {
            switch (gLastUsedItem)
            {
            case 6:
                if (((gBattleMons[gBattlerTarget].type1 == 11 || gBattleMons[gBattlerTarget].type2 == 11)) || ((gBattleMons[gBattlerTarget].type1 == 6 || gBattleMons[gBattlerTarget].type2 == 6)))
                    ballMultiplier = 30;
                else
                    ballMultiplier = 10;
                break;
            case 7:
                if (GetCurrentMapType() == 5)
                    ballMultiplier = 35;
                else
                    ballMultiplier = 10;
                break;
            case 8:
                if (gBattleMons[gBattlerTarget].level < 40)
                {
                    ballMultiplier = 40 - gBattleMons[gBattlerTarget].level;
                    if (ballMultiplier <= 9)
                        ballMultiplier = 10;
                }
                else
                {
                    ballMultiplier = 10;
                }
                break;
            case 9:
                if (GetSetPokedexFlag(SpeciesToNationalPokedexNum(gBattleMons[gBattlerTarget].species), FLAG_GET_CAUGHT))
                    ballMultiplier = 30;
                else
                    ballMultiplier = 10;
                break;
            case 10:
                ballMultiplier = gBattleResults.battleTurnCounter + 10;
                if (ballMultiplier > 40)
                    ballMultiplier = 40;
                break;
            case 11:
            case 12:
                ballMultiplier = 10;
                break;
            }
        }
        else
            ballMultiplier = sBallCatchBonuses[gLastUsedItem - 2];

        odds = (catchRate * ballMultiplier / 10)
            * (gBattleMons[gBattlerTarget].maxHP * 3 - gBattleMons[gBattlerTarget].hp * 2)
            / (3 * gBattleMons[gBattlerTarget].maxHP);

        if (gBattleMons[gBattlerTarget].status1 & (0x7 | 0x20))
            odds *= 2;
        if (gBattleMons[gBattlerTarget].status1 & (0x8 | 0x10 | 0x40 | 0x80))
            odds = (odds * 15) / 10;

        if (gLastUsedItem != 5)
        {
            if (gLastUsedItem == 1)
            {
                gBattleResults.usedMasterBall = 1;
            }
            else
            {
                if (gBattleResults.catchAttempts[gLastUsedItem - 2] < 0xFF)
                    gBattleResults.catchAttempts[gLastUsedItem - 2]++;
            }
        }

        if (odds > 254)
        {
            BtlController_EmitBallThrowAnim(0, 4);
            MarkBattlerForControllerExec(gActiveBattler);
            gBattlescriptCurrInstr = BattleScript_SuccessBallThrow;
            SetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerTarget]], 38, &gLastUsedItem);

            if (CalculatePlayerPartyCount() == 6)
                gBattleCommunication[0x5] = 0;
            else
                gBattleCommunication[0x5] = 1;
        }
        else
        {
            u8 shakes;

            odds = Sqrt(Sqrt(16711680 / odds));
            odds = 1048560 / odds;

            for (shakes = 0; shakes < 4 && Random() < odds; shakes++);

            if (gLastUsedItem == 1)
                shakes = 4;

            BtlController_EmitBallThrowAnim(0, shakes);
            MarkBattlerForControllerExec(gActiveBattler);

            if (shakes == 4)
            {
                gBattlescriptCurrInstr = BattleScript_SuccessBallThrow;
                SetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerTarget]], 38, &gLastUsedItem);

                if (CalculatePlayerPartyCount() == 6)
                    gBattleCommunication[0x5] = 0;
                else
                    gBattleCommunication[0x5] = 1;
            }
            else
            {
                gBattleCommunication[0x5] = shakes;
                gBattlescriptCurrInstr = BattleScript_ShakeBallThrow;
            }
        }
    }
}

static void Cmd_givecaughtmon(void)
{
    if (GiveMonToPlayer(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]]) != 0)
    {
        if (!ShouldShowBoxWasFullMessage())
        {
            gBattleCommunication[0x5] = 0;
            StringCopy(gStringVar1, GetBoxNamePtr(VarGet(0x4036)));
            GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 2, gStringVar2);
        }
        else
        {
            StringCopy(gStringVar1, GetBoxNamePtr(VarGet(0x4036)));
            GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 2, gStringVar2);
            StringCopy(gStringVar3, GetBoxNamePtr(GetPCBoxToSendMon()));
            gBattleCommunication[0x5] = 2;
        }

        if (FlagGet((((0x500 + 864 - 1) + 1) + 0x4B)))
            gBattleCommunication[0x5]++;
    }

    gBattleResults.caughtMonSpecies = GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 11, ((void *)0));
    GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 2, gBattleResults.caughtMonNick);
    gBattleResults.caughtMonBall = GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 38, ((void *)0));

    gBattlescriptCurrInstr++;
}

static void Cmd_trysetcaughtmondexflags(void)
{
    u16 species = GetMonData(&gEnemyParty[0], 11, ((void *)0));
    u32 personality = GetMonData(&gEnemyParty[0], 0, ((void *)0));

    if (GetSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_GET_CAUGHT))
    {
        gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
    }
    else
    {
        HandleSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_SET_CAUGHT, personality);
        gBattlescriptCurrInstr += 5;
    }
}

static void Cmd_displaydexinfo(void)
{
    u16 species = GetMonData(&gEnemyParty[0], 11, ((void *)0));

    switch (gBattleCommunication[0])
    {
    case 0:
        BeginNormalPaletteFade(0xFFFFFFFF, 0, 0, 0x10, ((0) | ((0) << 5) | ((0) << 10)));
        gBattleCommunication[0]++;
        break;
    case 1:
        if (!gPaletteFade.active)
        {
            FreeAllWindowBuffers();
            gBattleCommunication[0x1] = DisplayCaughtMonDexPage(SpeciesToNationalPokedexNum(species),
                                                                        gBattleMons[gBattlerTarget].otId,
                                                                        gBattleMons[gBattlerTarget].personality);
            gBattleCommunication[0]++;
        }
        break;
    case 2:
        if (!gPaletteFade.active
            && gMain.callback2 == BattleMainCB2
            && !gTasks[gBattleCommunication[0x1]].isActive)
        {
            SetVBlankCallback(VBlankCB_Battle);
            gBattleCommunication[0]++;
        }
        break;
    case 3:
        InitBattleBgsVideo();
        LoadBattleTextboxAndBackground();
        gBattle_BG3_X = 0x100;
        gBattleCommunication[0]++;
        break;
    case 4:
        if (!IsDma3ManagerBusyWithBgCopy())
        {
            BeginNormalPaletteFade(0xFFFF, 0, 0x10, 0, ((0) | ((0) << 5) | ((0) << 10)));
            ShowBg(0);
            ShowBg(3);
            gBattleCommunication[0]++;
        }
        break;
    case 5:
        if (!gPaletteFade.active)
            gBattlescriptCurrInstr++;
        break;
    }
}

void HandleBattleWindow(u8 xStart, u8 yStart, u8 xEnd, u8 yEnd, u8 flags)
{
    s32 destY, destX;
    u16 var = 0;

    for (destY = yStart; destY <= yEnd; destY++)
    {
        for (destX = xStart; destX <= xEnd; destX++)
        {
            if (destY == yStart)
            {
                if (destX == xStart)
                    var = 0x1022;
                else if (destX == xEnd)
                    var = 0x1024;
                else
                    var = 0x1023;
            }
            else if (destY == yEnd)
            {
                if (destX == xStart)
                    var = 0x1028;
                else if (destX == xEnd)
                    var = 0x102A;
                else
                    var = 0x1029;
            }
            else
            {
                if (destX == xStart)
                    var = 0x1025;
                else if (destX == xEnd)
                    var = 0x1027;
                else
                    var = 0x1026;
            }

            if (flags & 0x1)
                var = 0;

            if (flags & 0x80)
                CopyToBgTilemapBufferRect_ChangePalette(1, &var, destX, destY, 1, 1, 0x11);
            else
                CopyToBgTilemapBufferRect_ChangePalette(0, &var, destX, destY, 1, 1, 0x11);
        }
    }
}

void BattleCreateYesNoCursorAt(u8 cursorPosition)
{
    u16 src[2];
    src[0] = 1;
    src[1] = 2;

    CopyToBgTilemapBufferRect_ChangePalette(0, src, 0x19, 9 + (2 * cursorPosition), 1, 2, 0x11);
    CopyBgTilemapBufferToVram(0);
}

void BattleDestroyYesNoCursorAt(u8 cursorPosition)
{
    u16 src[2];
    src[0] = 0x1016;
    src[1] = 0x1016;

    CopyToBgTilemapBufferRect_ChangePalette(0, src, 0x19, 9 + (2 * cursorPosition), 1, 2, 0x11);
    CopyBgTilemapBufferToVram(0);
}

static void Cmd_trygivecaughtmonnick(void)
{
    switch (gBattleCommunication[0x0])
    {
    case 0:
        HandleBattleWindow(0x18, 8, 0x1D, 0xD, 0);
        BattlePutTextOnWindow(gText_BattleYesNoChoice, 0xC);
        gBattleCommunication[0x0]++;
        gBattleCommunication[0x1] = 0;
        BattleCreateYesNoCursorAt(0);
        break;
    case 1:
        if (gMain.newKeys & 0x0040 && gBattleCommunication[0x1] != 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt(gBattleCommunication[0x1]);
            gBattleCommunication[0x1] = 0;
            BattleCreateYesNoCursorAt(0);
        }
        if (gMain.newKeys & 0x0080 && gBattleCommunication[0x1] == 0)
        {
            PlaySE(5);
            BattleDestroyYesNoCursorAt(gBattleCommunication[0x1]);
            gBattleCommunication[0x1] = 1;
            BattleCreateYesNoCursorAt(1);
        }
        if (gMain.newKeys & 0x0001)
        {
            PlaySE(5);
            if (gBattleCommunication[0x1] == 0)
            {
                gBattleCommunication[0x0]++;
                BeginFastPaletteFade(3);
            }
            else
            {
                gBattleCommunication[0x0] = 4;
            }
        }
        else if (gMain.newKeys & 0x0002)
        {
            PlaySE(5);
            gBattleCommunication[0x0] = 4;
        }
        break;
    case 2:
        if (!gPaletteFade.active)
        {
            GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 2, gBattleStruct->caughtMonNick);
            FreeAllWindowBuffers();

            DoNamingScreen(NAMING_SCREEN_CAUGHT_MON, gBattleStruct->caughtMonNick,
                           GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 11),
                           GetMonGender(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]]),
                           GetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 0, ((void *)0)),
                           BattleMainCB2);

            gBattleCommunication[0x0]++;
        }
        break;
    case 3:
        if (gMain.callback2 == BattleMainCB2 && !gPaletteFade.active )
        {
            SetMonData(&gEnemyParty[gBattlerPartyIndexes[gBattlerAttacker ^ 1]], 2, gBattleStruct->caughtMonNick);
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        }
        break;
    case 4:
        if (CalculatePlayerPartyCount() == 6)
            gBattlescriptCurrInstr += 5;
        else
            gBattlescriptCurrInstr = (u8*) ((gBattlescriptCurrInstr + 1)[0] | ((gBattlescriptCurrInstr + 1)[1] << 8) | ((gBattlescriptCurrInstr + 1)[2] << 16) | ((gBattlescriptCurrInstr + 1)[3] << 24));
        break;
    }
}

static void Cmd_subattackerhpbydmg(void)
{
    gBattleMons[gBattlerAttacker].hp -= gBattleMoveDamage;
    gBattlescriptCurrInstr++;
}

static void Cmd_removeattackerstatus1(void)
{
    gBattleMons[gBattlerAttacker].status1 = 0;
    gBattlescriptCurrInstr++;
}

static void Cmd_finishaction(void)
{
    gCurrentActionFuncId = 12;
}

static void Cmd_finishturn(void)
{
    gCurrentActionFuncId = 12;
    gCurrentTurnActionNumber = gBattlersCount;
}

static void Cmd_trainerslideout(void)
{
    gActiveBattler = GetBattlerAtPosition(gBattlescriptCurrInstr[1]);
    BtlController_EmitTrainerSlideBack(0);
    MarkBattlerForControllerExec(gActiveBattler);

    gBattlescriptCurrInstr += 2;
}
