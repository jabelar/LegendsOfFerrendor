if lastAttackKey == KEY_MELEE
{
    if objPlayer1.sprite_index == spritesMoving[LEFT]
    {
        moveDirection = MELEE_LEFT;
        state = ATTACK_MELEE;
        lastAttackKey = -1;
    }
    if objPlayer1.sprite_index == spritesMoving[RIGHT]
    {
        moveDirection = MELEE_RIGHT;
        state = ATTACK_MELEE;
        lastAttackKey = -1;
    }
    if objPlayer1.sprite_index == spritesMoving[UP]
    {
        moveDirection = MELEE_UP;
        state = ATTACK_MELEE;
        lastAttackKey = -1;
    }
    if objPlayer1.sprite_index == spritesMoving[DOWN]
    {
        moveDirection = MELEE_DOWN;
        state = ATTACK_MELEE;
        lastAttackKey = -1;
    }
}    
else if lastAttackKey == KEY_RANGED
{
    if objPlayer1.sprite_index == spritesMoving[LEFT]
    {
        moveDirection = RANGED_LEFT;
        state = ATTACK_RANGED;
        lastAttackKey = -1;
    }
    if objPlayer1.sprite_index == spritesMoving[RIGHT]
    {
        moveDirection = RANGED_RIGHT;
        state = ATTACK_RANGED;
        lastAttackKey = -1;
    }
    if objPlayer1.sprite_index == spritesMoving[UP]
    {
        moveDirection = RANGED_UP;
        state = ATTACK_RANGED;
        lastAttackKey = -1;
    }
    if objPlayer1.sprite_index == spritesMoving[DOWN]
    {
        moveDirection = RANGED_DOWN;
        state = ATTACK_RANGED;
        lastAttackKey = -1;
    }
}  
else if lastAttackKey == KEY_MAGIC
{
    if objPlayer1.sprite_index == spritesMoving[LEFT]
    {
        moveDirection = MAGIC_LEFT;
        state = ATTACK_MAGIC;
        lastAttackKey = -1;
    }
    if objPlayer1.sprite_index == spritesMoving[RIGHT]
    {
        moveDirection = MAGIC_RIGHT;
        state = ATTACK_MAGIC;
        lastAttackKey = -1;
    }
    if objPlayer1.sprite_index == spritesMoving[UP]
    {
        moveDirection = MAGIC_UP;
        state = ATTACK_MAGIC;
        lastAttackKey = -1;
    }
    if objPlayer1.sprite_index == spritesMoving[DOWN]
    {
        moveDirection = MAGIC_DOWN;
        state = ATTACK_MAGIC;
        lastAttackKey = -1;
    }
}  
