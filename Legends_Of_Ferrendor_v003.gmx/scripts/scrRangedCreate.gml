// remember id of attacking player to help with processing collisions
attackingPlayer = argument0;

damage = DEFAULT_RANGED_DAMAGE;

range = DEFAULT_RANGED_RANGE; // in tiles
tiles_per_turn = 4; // number of tiles the ranged attack moves in one turn
speed = (tiles_per_turn * TILE_SIZE) / STEPS_PER_TURN;  
rangedTimer = range / tiles_per_turn * STEPS_PER_TURN;

show_debug_message("scrRanged created at "+string(x)+", "+string(y)+" by instance "+string(attackingPlayer));

