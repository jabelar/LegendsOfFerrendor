// remember id of attacking player to help with processing collisions
attackingPlayer = argument0;

range = 4;
rangedTimer = 4 * range * TWEENS_PER_MOVE; 
speed = 0.5 * TILE_SIZE / TWEENS_PER_MOVE;

show_debug_message("scrMagic created at "+string(x)+", "+string(y)+" by instance "+string(attackingPlayer));

