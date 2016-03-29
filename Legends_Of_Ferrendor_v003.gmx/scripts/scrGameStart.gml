view_xport[0] = 0;
view_wport[0] = 1080;

// debug message
globalvar debugMessage;
debugMessage = "";

// graphics constants
globalvar TILE_SIZE;
TILE_SIZE = 256;

// state constants
globalvar MAIN_MENU, WAIT_INPUT, MOVING, ENCOUNTER_SETUP, ENCOUNTER_PLAY;
MAIN_MENU = 0;
WAIT_INPUT = 1;
MOVING = 2;
ATTACKING = 3;

globalvar state;
state = WAIT_INPUT;

// input mapping
globalvar KEY_LEFT, KEY_RIGHT, KEY_UP, KEY_DOWN, KEY_ATTACK, KEY_LOOK;
KEY_LEFT = ord('A');
KEY_RIGHT = ord('D');
KEY_UP = ord('W');
KEY_DOWN = ord('S');
KEY_ATTACK = vk_control;
KEY_LOOK = vk_shift;

// movement constants
globalvar UP, DOWN, LEFT, RIGHT, STILL;
globalvar LOOK_UP, LOOK_DOWN, LOOK_LEFT, LOOK_RIGHT;
UP = 0;
DOWN = 1;
LEFT = 2
RIGHT = 3;
STILL = 5;
LOOK_UP = 6;
LOOK_DOWN = 7;
LOOK_LEFT = 8;
LOOK_RIGHT = 9;

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

// player sprites
globalvar spritesMoving;
spritesMoving[UP] = sprPlayerUp;
spritesMoving[DOWN] = sprPlayerDown;
spritesMoving[RIGHT] = sprPlayerRight;
spritesMoving[LEFT] = sprPlayerLeft;
spritesMoving[LOOK_UP] = sprPlayerUp;
spritesMoving[LOOK_DOWN] = sprPlayerDown;
spritesMoving[LOOK_RIGHT] = sprPlayerRight;
spritesMoving[LOOK_LEFT] = sprPlayerLeft;
