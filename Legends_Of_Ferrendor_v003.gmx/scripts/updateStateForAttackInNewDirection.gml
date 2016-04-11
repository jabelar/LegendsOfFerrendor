if (moveDirection == LEFT || moveDirection == RIGHT || moveDirection == UP || moveDirection = DOWN)
{
    state = MOVING;
}
else if (moveDirection == MELEE_LEFT || moveDirection == MELEE_RIGHT || moveDirection == MELEE_UP || moveDirection = MELEE_DOWN)
{
    state = ATTACK_MELEE;
    lastAttackKey = -1;
}
else if (moveDirection == RANGED_LEFT || moveDirection == RANGED_RIGHT || moveDirection == RANGED_UP || moveDirection = RANGED_DOWN)
{
    state = ATTACK_RANGED;
    lastAttackKey = -1;
}
else if (moveDirection == MAGIC_LEFT || moveDirection == MAGIC_RIGHT || moveDirection == MAGIC_UP || moveDirection = MAGIC_DOWN)
{
    state = ATTACK_MAGIC;
    lastAttackKey = -1;
}

