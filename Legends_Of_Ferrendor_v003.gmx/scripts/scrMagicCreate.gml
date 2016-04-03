show_debug_message("scrMagic created at "+string(x)+", "+string(y));

// remember id of attacking player to help with processing collisions
attackingPlayer = argument0;

range = 4;
rangedTimer = TWEENS_PER_MOVE; 
speed = 2 * range * TILE_SIZE / TWEENS_PER_MOVE;

