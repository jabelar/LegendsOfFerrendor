var playerHit;
playerHit = instance_place(x, y, objPlayer)
if playerHit != -1 and playerHit != instance_find(objPlayer1, 1)
{
    scrDamagePlayerMagic(playerHit);
    instance_destroy();
}

rangedTimer -= 1;
if rangedTimer < 0
{
    instance_destroy();
    show_debug_message("objMagic destroyed at "+string(x)+", "+string(y));
}

show_debug_message("objMagic at position "+string(x)+", "+string(y));