view_xport[0] = 0;
view_wport[0] = 1080;

// debug message
globalvar debugMessage;
debugMessage = "";

// graphics constants
globalvar TILE_SIZE;
TILE_SIZE = 256;

// state constants
globalvar MAIN_MENU, WAIT_INPUT, MOVING, ATTACK_MELEE, ATTACK_RANGED, ATTACK_MAGIC;
MAIN_MENU = 0;
WAIT_INPUT = 1;
MOVING = 2;
ATTACK_MELEE = 3;
ATTACK_RANGED = 4;
ATTACK_MAGIC = 5;

globalvar state;
state = WAIT_INPUT;

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

globalvar moveDirection;
moveDirection = STILL;

globalvar MOVES_LEFT, TWEENS_PER_MOVE;
MOVES_LEFT = 3;
TWEENS_PER_MOVE =16;

globalvar tweenTargetX, tweenTargetY;
tweenTargetX = 0;
tweenTargetY = 0;

// timing constants
globalvar STEPS_PER_TURN;
STEPS_PER_TURN = room_speed * 5;

globalvar turnTimer;
turnTimer = STEPS_PER_TURN;
actionTimer = TWEENS_PER_MOVE;

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

