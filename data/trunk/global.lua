PLAYER_ACCESS = 1
TEST_SERVER = "OFF"

TRUE = 1
FALSE = 0

LUA_ERROR = -1
LUA_NO_ERROR = 0

NORTH = 0
EAST = 1
SOUTH = 2
WEST = 3
SOUTHWEST = 4
SOUTHEAST = 5
NORTHWEST = 6
NORTHEAST = 7

COMBAT_FORMULA_UNDEFINED = 0
COMBAT_FORMULA_LEVELMAGIC = 1
COMBAT_FORMULA_SKILL = 2

CONDITION_PARAM_OWNER = 1
CONDITION_PARAM_TICKS = 2
CONDITION_PARAM_OUTFIT = 3
CONDITION_PARAM_HEALTHGAIN = 4
CONDITION_PARAM_HEALTHTICKS = 5
CONDITION_PARAM_MANAGAIN = 6
CONDITION_PARAM_MANATICKS = 7
CONDITION_PARAM_DELAYED = 8
CONDITION_PARAM_SPEED = 9
CONDITION_PARAM_LIGHT_LEVEL = 10
CONDITION_PARAM_LIGHT_COLOR = 11
CONDITION_PARAM_SOULGAIN = 12
CONDITION_PARAM_SOULTICKS = 13
CONDITION_PARAM_MINVALUE = 14
CONDITION_PARAM_MAXVALUE = 15
CONDITION_PARAM_STARTVALUE = 16
CONDITION_PARAM_TICKINTERVAL = 17
CONDITION_PARAM_FORCEUPDATE = 18
CONDITION_PARAM_SKILL_MELEE = 19
CONDITION_PARAM_SKILL_FIST = 20
CONDITION_PARAM_SKILL_CLUB = 21
CONDITION_PARAM_SKILL_SWORD = 22
CONDITION_PARAM_SKILL_AXE = 23
CONDITION_PARAM_SKILL_DISTANCE = 24
CONDITION_PARAM_SKILL_SHIELD = 25
CONDITION_PARAM_SKILL_FISHING = 26
CONDITION_PARAM_STAT_MAXHITPOINTS = 27
CONDITION_PARAM_STAT_MAXMANAPOINTS = 28
CONDITION_PARAM_STAT_SOULPOINTS = 29
CONDITION_PARAM_STAT_MAGICPOINTS = 30
CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT = 31
CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT = 32
CONDITION_PARAM_STAT_SOULPOINTSPERCENT = 33
CONDITION_PARAM_STAT_MAGICPOINTSPERCENT = 34

COMBAT_PARAM_TYPE = 1
COMBAT_PARAM_EFFECT = 2
COMBAT_PARAM_DISTANCEEFFECT = 3
COMBAT_PARAM_BLOCKSHIELD = 4
COMBAT_PARAM_BLOCKARMOR = 5
COMBAT_PARAM_TARGETCASTERORTOPMOST = 6
COMBAT_PARAM_CREATEITEM = 7
COMBAT_PARAM_AGGRESSIVE = 8
COMBAT_PARAM_DISPEL = 9

CALLBACK_PARAM_LEVELMAGICVALUE = 1
CALLBACK_PARAM_SKILLVALUE = 2
CALLBACK_PARAM_TARGETTILE = 3
CALLBACK_PARAM_TARGETCREATURE = 4

COMBAT_NONE = 0
COMBAT_PHYSICALDAMAGE = 1
COMBAT_ENERGYDAMAGE = 2
COMBAT_POISONDAMAGE = 4 
COMBAT_FIREDAMAGE = 8
COMBAT_UNDEFINEDDAMAGE = 16
COMBAT_LIFEDRAIN = 32
COMBAT_MANADRAIN = 64
COMBAT_HEALING = 128
COMBAT_DROWNDAMAGE = 256

CONDITION_NONE = 0
CONDITION_POISON = 1
CONDITION_FIRE = 2
CONDITION_ENERGY = 4
CONDITION_LIFEDRAIN = 8
CONDITION_HASTE = 16
CONDITION_PARALYZE = 32
CONDITION_OUTFIT = 64
CONDITION_INVISIBLE = 128
CONDITION_LIGHT = 256
CONDITION_MANASHIELD = 512
CONDITION_INFIGHT = 1024
CONDITION_DRUNK = 2048
CONDITION_EXHAUSTED = 4096
CONDITION_FOOD = 8192
CONDITION_REGENERATION = 8192
CONDITION_SOUL = 16384
CONDITION_DROWN = 32768
CONDITION_MUTED = 65536
CONDITION_ATTRIBUTES = 131072

PLAYERLOSS_EXPERIENCE = 0
PLAYERLOSS_MANA = 1
PLAYERLOSS_SKILL = 2

CONST_SKILL_FIST = 0
CONST_SKILL_CLUB = 1
CONST_SKILL_SWORD = 2
CONST_SKILL_AXE = 3
CONST_SKILL_DISTANCE = 4
CONST_SKILL_SHIELDING = 5
CONST_SKILL_FISHING = 6

CONST_SLOT_HEAD = 1
CONST_SLOT_NECKLACE = 2
CONST_SLOT_BACKPACK = 3
CONST_SLOT_ARMOR = 4
CONST_SLOT_RIGHT = 5
CONST_SLOT_LEFT = 6
CONST_SLOT_LEGS = 7
CONST_SLOT_FEET = 8
CONST_SLOT_RING = 9
CONST_SLOT_AMMO = 10

CONST_ME_DRAWBLOOD = 0
CONST_ME_LOSEENERGY = 1
CONST_ME_POFF = 2
CONST_ME_BLOCKHIT = 3
CONST_ME_EXPLOSIONAREA = 4
CONST_ME_EXPLOSIONHIT = 5
CONST_ME_FIREAREA = 6
CONST_ME_YELLOW_RINGS = 7
CONST_ME_GREEN_RINGS = 8
CONST_ME_HITAREA = 9
CONST_ME_ENERGYAREA = 10
CONST_ME_ENERGYHIT = 11
CONST_ME_MAGIC_BLUE = 12
CONST_ME_MAGIC_RED = 13
CONST_ME_MAGIC_GREEN = 14
CONST_ME_HITBYFIRE = 15
CONST_ME_HITBYPOISON = 16
CONST_ME_MORTAREA = 17
CONST_ME_SOUND_BLUE = 18
CONST_ME_SOUND_RED = 19
CONST_ME_POISONAREA = 20
CONST_ME_SOUND_YELLOW = 21
CONST_ME_SOUND_PURPLE = 22
CONST_ME_SOUND_BLUE = 23
CONST_ME_SOUND_WHITE = 24
CONST_ME_BUBBLES = 25
CONST_ME_CRAPS = 26
CONST_ME_GIFT_WRAPS = 27
CONST_ME_FIREWORK_YELLOW = 28
CONST_ME_FIREWORK_RED = 29
CONST_ME_FIREWORK_BLUE = 30
CONST_ME_STUN = 31
CONST_ME_SLEEP = 32
CONST_ME_WATERCREATURE = 33
CONST_ME_GROUNDSHAKER = 34
CONST_ME_NONE = 255


CONST_ANI_SPEAR = 0
CONST_ANI_BOLT = 1
CONST_ANI_ARROW = 2
CONST_ANI_FIRE = 3
CONST_ANI_ENERGY = 4
CONST_ANI_POISONARROW = 5
CONST_ANI_BURSTARROW = 6
CONST_ANI_THROWINGSTAR = 7
CONST_ANI_THROWINGKNIFE = 8
CONST_ANI_SMALLSTONE = 9
CONST_ANI_SUDDENDEATH = 10
CONST_ANI_LARGEROCK = 11
CONST_ANI_SNOWBALL = 12
CONST_ANI_POWERBOLT = 13
CONST_ANI_POISON = 14
CONST_ANI_INFERNALBOLT = 15
CONST_ANI_HUNTINGSPEAR = 16
CONST_ANI_ENCHANTEDSPEAR = 17
CONST_ANI_ASSASSINSTAR = 18
CONST_ANI_GREENSTAR = 19
CONST_ANI_ROYALSPEAR = 20
CONST_ANI_SNIPERARROW = 21
CONST_ANI_ONYXARROW = 22
CONST_ANI_PIERCINGBOLT = 23
CONST_ANI_WHIRLWINDSWORD = 24
CONST_ANI_WHIRLWINDAXE = 25
CONST_ANI_WHIRLWINDCLUB = 26
CONST_ANI_ETHEREALSPEAR = 27
CONST_ANI_WEAPONTYPE = 254
CONST_ANI_NONE = 255

TALKTYPE_SAY  = 1
TALKTYPE_WHISPER = 2
TALKTYPE_YELL = 3
TALKTYPE_PRIVATE = 4
TALKTYPE_CHANNEL_Y = 5
TALKTYPE_BROADCAST = 9
TALKTYPE_CHANNEL_R1 = 10
TALKTYPE_PRIVATE_RED = 11
TALKTYPE_CHANNEL_O = 12
TALKTYPE_CHANNEL_R2 = 14
TALKTYPE_ORANGE_1 = 16
TALKTYPE_ORANGE_2 = 17

MESSAGE_STATUS_WARNING = 18
MESSAGE_EVENT_ADVANCE = 19
MESSAGE_EVENT_DEFAULT = 20
MESSAGE_STATUS_DEFAULT = 21
MESSAGE_INFO_DESCR = 22
MESSAGE_STATUS_SMALL = 23
MESSAGE_STATUS_CONSOLE_BLUE = 24
MESSAGE_STATUS_CONSOLE_RED  = 25

TEXTCOLOR_BLUE        = 5
TEXTCOLOR_LIGHTBLUE   = 35
TEXTCOLOR_LIGHTGREEN  = 30
TEXTCOLOR_LIGHTGREY   = 129
TEXTCOLOR_RED         = 180
TEXTCOLOR_ORANGE      = 198
TEXTCOLOR_WHITE_EXP   = 215
TEXTCOLOR_NONE        = 255

RETURNVALUE_NOERROR = 1
RETURNVALUE_NOTPOSSIBLE = 2
RETURNVALUE_NOTENOUGHROOM = 3
RETURNVALUE_PLAYERISPZLOCKED = 4
RETURNVALUE_PLAYERISNOTINVITED = 5
RETURNVALUE_CANNOTTHROW = 6
RETURNVALUE_THEREISNOWAY = 7
RETURNVALUE_DESTINATIONOUTOFREACH = 8
RETURNVALUE_CREATUREBLOCK = 9
RETURNVALUE_NOTMOVEABLE = 10
RETURNVALUE_DROPTWOHANDEDITEM = 11
RETURNVALUE_BOTHHANDSNEEDTOBEFREE = 12
RETURNVALUE_CANONLYUSEONEWEAPON = 13
RETURNVALUE_NEEDEXCHANGE = 14
RETURNVALUE_CANNOTBEDRESSED = 15
RETURNVALUE_PUTTHISOBJECTINYOURHAND = 16
RETURNVALUE_PUTTHISOBJECTINBOTHHANDS = 17
RETURNVALUE_TOOFARAWAY = 18
RETURNVALUE_FIRSTGODOWNSTAIRS = 19
RETURNVALUE_FIRSTGOUPSTAIRS = 20
RETURNVALUE_CONTAINERNOTENOUGHROOM = 21
RETURNVALUE_NOTENOUGHCAPACITY = 22
RETURNVALUE_CANNOTPICKUP = 23
RETURNVALUE_THISISIMPOSSIBLE = 24
RETURNVALUE_DEPOTISFULL = 25
RETURNVALUE_CREATUREDOESNOTEXIST = 26
RETURNVALUE_CANNOTUSETHISOBJECT = 27
RETURNVALUE_PLAYERWITHTHISNAMEISNOTONLINE = 28
RETURNVALUE_NOTREQUIREDLEVELTOUSERUNE = 29
RETURNVALUE_YOUAREALREADYTRADING = 30
RETURNVALUE_THISPLAYERISALREADYTRADING = 31
RETURNVALUE_YOUMAYNOTLOGOUTDURINGAFIGHT = 32
RETURNVALUE_DIRECTPLAYERSHOOT = 33
RETURNVALUE_NOTENOUGHLEVEL = 34
RETURNVALUE_NOTENOUGHMAGICLEVEL = 35
RETURNVALUE_NOTENOUGHMANA = 36
RETURNVALUE_NOTENOUGHSOUL = 37
RETURNVALUE_YOUAREEXHAUSTED = 38
RETURNVALUE_PLAYERISNOTREACHABLE = 39
RETURNVALUE_CANONLYUSETHISRUNEONCREATURES = 40
RETURNVALUE_ACTIONNOTPERMITTEDINPROTECTIONZONE = 41
RETURNVALUE_YOUMAYNOTATTACKTHISPLAYER = 42
RETURNVALUE_YOUMAYNOTATTACKAPERSONINPROTECTIONZONE = 43
RETURNVALUE_YOUMAYNOTATTACKAPERSONWHILEINPROTECTIONZONE = 44
RETURNVALUE_YOUMAYNOTATTACKTHISCREATURE = 45
RETURNVALUE_YOUCANONLYUSEITONCREATURES = 46
RETURNVALUE_CREATUREISNOTREACHABLE = 47
