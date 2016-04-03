var playerHit;
playerHit = instance_place(x, y, objPlayer)
if playerHit >= 0 and playerHit != attackingPlayer
{
    scrDamagePlayerRanged(playerHit);
    show_debug_message("objRanged destroyed at "+string(x)+", "+string(y)+" by instance "+string(playerHit));
    instance_destroy();
}

rangedTimer -= 1;
if rangedTimer < 0
{
    instance_destroy();
    show_debug_message("objRanged destroyed at "+string(x)+", "+string(y)+" by timeout");
    instance_destroy();
}

show_debug_message("objRanged at position "+string(x)+", "+string(y));
