objPlayer.image_speed = 0;

scrUpdatePlayerDirection();


if (keyboard_check(KEY_LEFT))  
{
    if (keyboard_check(KEY_MELEE))
    {
        moveDirection = MELEE_LEFT;
        state = ATTACK_MELEE;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = RANGED_LEFT;
        state = ATTACK_RANGED;
    }
    else if (keyboard_check(KEY_MAGIC))
    {
        moveDirection = MAGIC_LEFT;
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
        moveDirection = MELEE_RIGHT;
        state = ATTACK_MELEE;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = RANGED_RIGHT;
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
        moveDirection = MELEE_UP;
        state = ATTACK_MELEE;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = RANGED_UP;
        state = ATTACK_RANGED;
    }
    else if (keyboard_check(KEY_MAGIC))
    {
        moveDirection = MAGIC_UP;
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
        moveDirection = MELEE_DOWN;
        state = ATTACK_MELEE;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = RANGED_DOWN;
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

scrProcessTurnTimer();

