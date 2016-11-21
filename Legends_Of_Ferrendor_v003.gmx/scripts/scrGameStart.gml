// initialize the view
view_xport[0] = 0;
view_wport[0] = 1080;

// debug message
globalvar debugMessage;
debugMessage = "";

// graphics constants
globalvar TILE_SIZE, LAYER_OBSTACLES;
TILE_SIZE = 256;
LAYER_OBSTACLES = 999999;

// state constants
globalvar OPENING_CREDITS, MAIN_MENU, WAIT_INPUT, MOVING, ATTACK_MELEE, ATTACK_RANGED, ATTACK_MAGIC;
OPENING_CREDITS = 0;
MAIN_MENU = 1;
WAIT_INPUT = 2;
MOVING = 3;
ATTACK_MELEE = 4;
ATTACK_RANGED = 5;
ATTACK_MAGIC = 6;

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
UP = 0;
DOWN = 1;
LEFT = 2
RIGHT = 3;
STILL = 5;
MELEE_UP = 6;
MELEE_DOWN = 7;
MELEE_LEFT = 8;
MELEE_RIGHT = 9;
RANGED_UP = 10;
RANGED_DOWN = 11;
RANGED_LEFT = 12;
RANGED_RIGHT = 13;
MAGIC_UP = 14;
MAGIC_DOWN = 15;
MAGIC_LEFT = 16;
MAGIC_RIGHT = 17;
LOOK_UP = 18;
LOOK_DOWN = 19;
LOOK_LEFT = 20;
LOOK_RIGHT = 21;

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
