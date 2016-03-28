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
ENCOUNTER_SETUP = 3;
ENCOUNTER_PLAY = 4;

globalvar state;
state = WAIT_INPUT;

// movement constants
globalvar UP, DOWN, LEFT, RIGHT, STILL;
UP = 0;
DOWN = 1;
LEFT = 2
RIGHT = 3;
STILL = 5;

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
