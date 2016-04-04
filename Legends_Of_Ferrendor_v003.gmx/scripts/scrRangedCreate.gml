// remember id of attacking player to help with processing collisions
attackingPlayer = argument0;

range = 7;
rangedTimer = range * STEPS_PER_TURN ;  
speed = (4 * TILE_SIZE) / STEPS_PER_TURN;  

show_debug_message("scrRanged created at "+string(x)+", "+string(y)+" by instance "+string(attackingPlayer));

