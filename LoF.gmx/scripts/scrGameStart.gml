 // randomiz the random generator seed
randomize();

// initialize the view
view_xport[0] = 0;
view_wport[0] = 1080;

// debug message
globalvar debugMessage;
debugMessage = "";

// graphics constants
globalvar TILE_SIZE, TILE_SIZE_FOG, LAYER_OBSTACLES, LAYER_FOG, FOG_ENABLED;
TILE_SIZE = 256;
TILE_SIZE_FOG = TILE_SIZE / 3;
LAYER_OBSTACLES = 999999;
LAYER_FOG = -10;
FOG_ENABLED = false;

// sound constants
globalvar backgroundMusic;
backgroundMusic = sndOpeningCredits;

//  player state constants
globalvar OPENING_CREDITS, MAIN_MENU, WAIT_INPUT_SMOOTH, WAIT_INPUT, MOVING_SMOOTH, MOVING, ATTACK_MELEE, ATTACK_RANGED, ATTACK_MAGIC;
OPENING_CREDITS = 0;
MAIN_MENU = 1;
WAIT_INPUT_SMOOTH = 2;
WAIT_INPUT = 3;
MOVING_SMOOTH = 4;
MOVING = 5;
ATTACK_MELEE = 6;
ATTACK_RANGED = 7;
ATTACK_MAGIC = 8;
DYING = 9;

// mob state constants
globalvar IDLE, WANDERING, ATTACKING_MELEE, ATTACKING_RANGED, FLEEING;
globalvar PATROLLING, MOB_DYING;
IDLE = 0;
WANDERING = 1;
ATTACKING_MELEE = 2;
ATTACKING_RANGED = 3;
FLEEING = 4;
PATROLLING = 5;
MOB_DYING = 6;

// Mob AI
globalvar AI_INTERVAL, motionPlanningGrid;
AI_INTERVAL = 2;

globalvar state, MAX_NUM_PLAYERS, numPlayers, willAttack, currentPlayer, clientPlayer;
MAX_NUM_PLAYERS = 1;
currentPlayer = 0;
clientPlayer = 0;
numPlayers = MAX_NUM_PLAYERS; // later will change this based on LAN joined players
for (i=0; i<MAX_NUM_PLAYERS; i++)
{
    state[i] = OPENING_CREDITS;
    willAttack[i] = false; // Indicates whether an attack will start on next turn
}

// Detect most recent attack key pressed, using key codes
// -1 = none, otherwise KEY_MELEE, KEY_MAGIC, KEY_RANGED)
// it is cleared to -1 when attack happens at beginning of the turn
globalvar lastAttackKey;
for (i=0; i<MAX_NUM_PLAYERS; i++)
{
    lastAttackKey[i] = -1;
}

// input mapping
globalvar KEY_LEFT, KEY_RIGHT, KEY_UP, KEY_DOWN, KEY_MELEE, KEY_RANGED, KEY_MAGIC;
KEY_LEFT = ord('A');
KEY_RIGHT = ord('D');
KEY_UP = ord('W');
KEY_DOWN = ord('S');
KEY_MELEE = ord('I');
KEY_RANGED = ord('O');
KEY_MAGIC = ord('P');

// movement constants
globalvar UP, DOWN, LEFT, RIGHT, STILL;
globalvar MELEE_UP, MELEE_DOWN, MELEE_LEFT, MELEE_RIGHT;
globalvar RANGED_UP, RANGED_DOWN, RANGED_LEFT, RANGED_RIGHT;
globalvar MAGIC_UP, MAGIC_DOWN, MAGIC_LEFT, MAGIC_RIGHT;
globalvar LOOK_UP, LOOK_DOWN, LOOK_LEFT, LOOK_RIGHT;
UP = 0;
DOWN = 1;
LEFT = 2
RIGHT = 3;
STILL = 4;
MELEE_UP = 5;
MELEE_DOWN = 6;
MELEE_LEFT = 7;
MELEE_RIGHT = 8;
RANGED_UP = 9;
RANGED_DOWN = 10;
RANGED_LEFT = 11;
RANGED_RIGHT = 12;
MAGIC_UP = 13;
MAGIC_DOWN = 14;
MAGIC_LEFT = 15;
MAGIC_RIGHT = 16;
LOOK_UP = 17;
LOOK_DOWN = 18;
LOOK_LEFT = 19;
LOOK_RIGHT = 20;

globalvar moveDirection, tweenTargetX, tweenTargetY;
for (i=0; i<MAX_NUM_PLAYERS; i++)
{
    moveDirection[i] = STILL;
    tweenTargetX[i] = 0;
    tweenTargetY[i] = 0;
}

globalvar MOVES_LEFT, TWEENS_PER_MOVE;
MOVES_LEFT = 3;
TWEENS_PER_MOVE =16;

// timing constants
globalvar STEPS_PER_TURN;
STEPS_PER_TURN = room_speed * 2; // set the length in game steps of a turn to 5 seconds

globalvar timeInRoom, turnTimer, actionTimer;
timeInRoom = -1;
turnTimer = STEPS_PER_TURN;
actionTimer = TWEENS_PER_MOVE;

// player object instances (will be instantiated when room starts)
globalvar playerInstance;
playerInstance[0] = noone;
playerInstance[1] = noone;
playerInstance[2] = noone;
playerInstance[3] = noone;

// player health
globalvar DEFAULT_HEALTH, playerHealth;
DEFAULT_HEALTH = 60;
playerHealth[0]= DEFAULT_HEALTH;
playerHealth[1]= DEFAULT_HEALTH;
playerHealth[2]= DEFAULT_HEALTH;
playerHealth[3]= DEFAULT_HEALTH;

globalvar DEFAULT_MELEE_DAMAGE, DEFAULT_RANGED_DAMAGE, DEFAULT_MAGIC_DAMAGE;
DEFAULT_MELEE_DAMAGE = 30;
DEFAULT_RANGED_DAMAGE = 20;
DEFAULT_MAGIC_DAMAGE = 20; // note magic does more damage but has shorter range

globalvar DEFAULT_RANGED_RANGE, DEFAULT_MAGIC_RANGE;
DEFAULT_RANGED_RANGE = 7;
DEFAULT_MAGIC_RANGE = 4;

// player sprites
globalvar spritesMoving;
spritesMoving[UP] = sprPlayerUp;
spritesMoving[DOWN] = sprPlayerDown;
spritesMoving[RIGHT] = sprPlayerRight;
spritesMoving[LEFT] = sprPlayerLeft;
spritesMoving[MELEE_UP] = sprPlayerUp;
spritesMoving[MELEE_DOWN] = sprPlayerDown;
spritesMoving[MELEE_RIGHT] = sprPlayerRight;
spritesMoving[MELEE_LEFT] = sprPlayerLeft;
spritesMoving[RANGED_UP] = sprPlayerUp;
spritesMoving[RANGED_DOWN] = sprPlayerDown;
spritesMoving[RANGED_RIGHT] = sprPlayerRight;
spritesMoving[RANGED_LEFT] = sprPlayerLeft;
spritesMoving[MAGIC_UP] = sprPlayerUp;
spritesMoving[MAGIC_DOWN] = sprPlayerDown;
spritesMoving[MAGIC_RIGHT] = sprPlayerRight;
spritesMoving[MAGIC_LEFT] = sprPlayerLeft;
spritesMoving[LOOK_UP] = sprPlayerUp;
spritesMoving[LOOK_DOWN] = sprPlayerDown;
spritesMoving[LOOK_RIGHT] = sprPlayerRight;
spritesMoving[LOOK_LEFT] = sprPlayerLeft;

// show_debug_overlay(true);
