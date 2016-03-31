objPlayer.image_speed = 0;
if moveDirection != STILL
{
    objPlayer.sprite_index = spritesMoving[moveDirection];
}


if (keyboard_check(KEY_LEFT))  
{
    if (keyboard_check(KEY_MELEE))
    {
        moveDirection = MELEE_LEFT;
        state = ATTACK_MELEE;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = MELEE_LEFT;
        state = ATTACK_RANGED;
    }
    else if (keyboard_check(KEY_MAGIC))
    {
        moveDirection = MELEE_LEFT;
        sstate = ATTACK_MAGIC;
    }
    else
    {
        moveDirection = LEFT;
        // if (place_meeting(objPlayer.x - TILE_SIZE, objPlayer.y, objInteractable))
        if (tile_layer_find(999999, objPlayer.x - TILE_SIZE, objPlayer.y) != -1)
        {
            scrCollision();
        }
        else
        {
            tweenTargetX = objPlayer.x - TILE_SIZE;
        }
    }
}
else if (keyboard_check(KEY_RIGHT)) 
{
    if (keyboard_check(KEY_MELEE))
    {
        moveDirection = MAGIC_RIGHT;
        state = ATTACK_MELEE;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = MAGIC_RIGHT;
        state = ATTACK_RANGED;
    }
    else if (keyboard_check(KEY_MAGIC))
    {
        moveDirection = MAGIC_RIGHT;
        sstate = ATTACK_MAGIC;
    }
    else
    {
        moveDirection = RIGHT;
        // if (place_meeting(objPlayer.x + TILE_SIZE, objPlayer.y, objInteractable))
        if (tile_layer_find(999999, objPlayer.x + TILE_SIZE, objPlayer.y) != -1)
        {
            scrCollision();
        }
        else
        {
            tweenTargetX = objPlayer.x + TILE_SIZE;
        }
    }
}
else if (keyboard_check(KEY_UP)) 
{
    if (keyboard_check(KEY_MELEE))
    {
        moveDirection = RANGED_UP;
        state = ATTACK_MELEE;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = RANGED_UP;
        state = ATTACK_RANGED;
    }
    else if (keyboard_check(KEY_MAGIC))
    {
        moveDirection = RANGED_UP;
        sstate = ATTACK_MAGIC;
    }
    else
    {
        moveDirection = UP;
        // if (place_meeting(objPlayer.x, objPlayer.y - TILE_SIZE, objInteractable))
        if (tile_layer_find(999999, objPlayer.x, objPlayer.y - TILE_SIZE) != -1)
        {
            scrCollision();
        }
        else
        {
            tweenTargetY = objPlayer.y - TILE_SIZE;
        }
    }
}
else if (keyboard_check(KEY_DOWN)) 
{
    if (keyboard_check(KEY_MELEE))
    {
        moveDirection = MAGIC_DOWN;
        state = ATTACK_MELEE;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = MAGIC_DOWN;
        state = ATTACK_RANGED;
    }
    else if (keyboard_check(KEY_MAGIC))
    {
        moveDirection = MAGIC_DOWN;
        sstate = ATTACK_MAGIC;
    }
  else
    {
        moveDirection = DOWN;
        // if (place_meeting(objPlayer.x, objPlayer.y + TILE_SIZE, objInteractable))
        if (tile_layer_find(999999, objPlayer.x, objPlayer.y + TILE_SIZE) != -1)
        {
            scrCollision();
        }
        else
        {
            tweenTargetY = objPlayer.y + TILE_SIZE;
        }
    }
}
else
{
}

turnTimer -= 1;
if turnTimer < 0 
{
    turnTimer = STEPS_PER_TURN;
    if (moveDirection == LEFT || moveDirection == RIGHT || moveDirection == UP || moveDirection = DOWN)
    {
        state = MOVING;
    }
    else if (moveDirection == MELEE_LEFT || moveDirection == MELEE_RIGHT || moveDirection == MELEE_UP || moveDirection = MELEE_DOWN)
    {
        state = ATTACK_MELEE;
    }
    else if (moveDirection == RANGED_LEFT || moveDirection == RANGED_RIGHT || moveDirection == RANGED_UP || moveDirection = RANGED_DOWN)
    {
        state = ATTACK_RANGED;
    }
    else if (moveDirection == MAGIC_LEFT || moveDirection == MAGIC_RIGHT || moveDirection == MAGIC_UP || moveDirection = MAGIC_DOWN)
    {
        state = ATTACK_MAGIC;
    }
}

