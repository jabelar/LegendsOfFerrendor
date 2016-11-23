if lastAttackKey[currentPlayer] == KEY_MELEE
{
    if playerInstance[0].sprite_index == spritesMoving[LEFT]
    {
        moveDirection[currentPlayer] = MELEE_LEFT;
        state[currentPlayer] = ATTACK_MELEE;
        lastAttackKey[currentPlayer] = -1;
    }
    if playerInstance[0].sprite_index == spritesMoving[RIGHT]
    {
        moveDirection[currentPlayer] = MELEE_RIGHT;
        state[currentPlayer] = ATTACK_MELEE;
        lastAttackKey[currentPlayer] = -1;
    }
    if playerInstance[0].sprite_index == spritesMoving[UP]
    {
        moveDirection[currentPlayer] = MELEE_UP;
        state[currentPlayer] = ATTACK_MELEE;
        lastAttackKey[currentPlayer] = -1;
    }
    if playerInstance[0].sprite_index == spritesMoving[DOWN]
    {
        moveDirection[currentPlayer] = MELEE_DOWN;
        state[currentPlayer] = ATTACK_MELEE;
        lastAttackKey[currentPlayer] = -1;
    }
}    
else if lastAttackKey[currentPlayer] == KEY_RANGED
{
    if playerInstance[0].sprite_index == spritesMoving[LEFT]
    {
        moveDirection[currentPlayer] = RANGED_LEFT;
        state[currentPlayer] = ATTACK_RANGED;
        lastAttackKey[currentPlayer] = -1;
    }
    if playerInstance[0].sprite_index == spritesMoving[RIGHT]
    {
        moveDirection[currentPlayer] = RANGED_RIGHT;
        state[currentPlayer] = ATTACK_RANGED;
        lastAttackKey[currentPlayer] = -1;
    }
    if playerInstance[0].sprite_index == spritesMoving[UP]
    {
        moveDirection[currentPlayer] = RANGED_UP;
        state[currentPlayer] = ATTACK_RANGED;
        lastAttackKey[currentPlayer] = -1;
    }
    if playerInstance[0].sprite_index == spritesMoving[DOWN]
    {
        moveDirection[currentPlayer] = RANGED_DOWN;
        state[currentPlayer] = ATTACK_RANGED;
        lastAttackKey[currentPlayer] = -1;
    }
}  
else if lastAttackKey[currentPlayer] == KEY_MAGIC
{
    if playerInstance[0].sprite_index == spritesMoving[LEFT]
    {
        moveDirection[currentPlayer] = MAGIC_LEFT;
        state[currentPlayer] = ATTACK_MAGIC;
        lastAttackKey[currentPlayer] = -1;
    }
    if playerInstance[0].sprite_index == spritesMoving[RIGHT]
    {
        moveDirection[currentPlayer] = MAGIC_RIGHT;
        state[currentPlayer] = ATTACK_MAGIC;
        lastAttackKey[currentPlayer] = -1;
    }
    if playerInstance[0].sprite_index == spritesMoving[UP]
    {
        moveDirection[currentPlayer] = MAGIC_UP;
        state[currentPlayer] = ATTACK_MAGIC;
        lastAttackKey[currentPlayer] = -1;
    }
    if playerInstance[0].sprite_index == spritesMoving[DOWN]
    {
        moveDirection[currentPlayer] = MAGIC_DOWN;
        state[currentPlayer] = ATTACK_MAGIC;
        lastAttackKey[currentPlayer] = -1;
    }
}  
