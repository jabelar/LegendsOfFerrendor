// remember id of attacking player to help with processing collisions
attackingPlayer = argument0;

range = 4;
rangedTimer = TWEENS_PER_MOVE; 
speed = 2 * range * TILE_SIZE / TWEENS_PER_MOVE;

show_debug_message("scrRanged created at "+string(x)+", "+string(y)+" by instance "+string(attackingPlayer));

