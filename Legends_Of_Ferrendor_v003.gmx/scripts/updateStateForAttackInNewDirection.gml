if (moveDirection[currentPlayer] == LEFT || moveDirection[currentPlayer] == RIGHT || moveDirection[currentPlayer] == UP || moveDirection[currentPlayer] = DOWN)
{
    state[currentPlayer] = MOVING;
}
else if (moveDirection[currentPlayer] == MELEE_LEFT || moveDirection[currentPlayer] == MELEE_RIGHT || moveDirection[currentPlayer] == MELEE_UP || moveDirection[currentPlayer] = MELEE_DOWN)
{
    state[currentPlayer] = ATTACK_MELEE;
    lastAttackKey[currentPlayer] = -1;
}
else if (moveDirection[currentPlayer] == RANGED_LEFT || moveDirection[currentPlayer] == RANGED_RIGHT || moveDirection[currentPlayer] == RANGED_UP || moveDirection[currentPlayer] = RANGED_DOWN)
{
    state[currentPlayer] = ATTACK_RANGED;
    lastAttackKey[currentPlayer] = -1;
}
else if (moveDirection[currentPlayer] == MAGIC_LEFT || moveDirection[currentPlayer] == MAGIC_RIGHT || moveDirection[currentPlayer] == MAGIC_UP || moveDirection[currentPlayer] = MAGIC_DOWN)
{
    state[currentPlayer] = ATTACK_MAGIC;
    lastAttackKey[currentPlayer] = -1;
}

