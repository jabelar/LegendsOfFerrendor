// check for entities hit
var entityHit;
entityHit = instance_place(x, y, objEntity)
if entityHit >= 0 and entityHit != attackingPlayer
{
    scrHitEntityRanged(entityHit);
    show_debug_message("objRanged destroyed at "+string(x)+", "+string(y)+" by instance "+string(entityHit));
    instance_destroy();
}

// check for obstacles hit
// note that if you want an "obstacle" that can be damaged, it should really be an entity
if (tile_layer_find(LAYER_OBSTACLES, x, y) != -1)
{
   scrHitObstacleRanged(id)
}


// check if ranged weapon has reached maximum range
rangedTimer -= 1;
if rangedTimer < 0
{
    instance_destroy();
    show_debug_message("objRanged destroyed at "+string(x)+", "+string(y)+" by timeout");
    instance_destroy();
}

show_debug_message("objRanged at position "+string(x)+", "+string(y));
