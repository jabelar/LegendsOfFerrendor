objPlayer1.image_speed = 0;
objPlayer2.image_speed = 0;

scrUpdatePlayerDirection();

if (keyboard_check_pressed(KEY_LEFT))  
{
    if (keyboard_check(KEY_MELEE))
    {
        moveDirection = MELEE_LEFT;
        willAttack = true;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = RANGED_LEFT;
        willAttack = true;
    }
    else if (keyboard_check(KEY_MAGIC))
    {
        moveDirection = MAGIC_LEFT;
        willAttack = true;
    }
    else
    {
        moveDirection = LEFT;
        // if (place_meeting(objPlayer1.x - TILE_SIZE, objPlayer1.y, objInteractable))
        if (tile_layer_find(999999, objPlayer1.x - TILE_SIZE, objPlayer1.y) != -1)
        {
            scrCollision();
        }
        else
        {
            tweenTargetX = objPlayer1.x - TILE_SIZE;
        }
    }
}
else if (keyboard_check_pressed(KEY_RIGHT)) 
{
    if (keyboard_check(KEY_MELEE))
    {
        moveDirection = MELEE_RIGHT;
        willAttack = true;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = RANGED_RIGHT;
        willAttack = true;
    }
    else if (keyboard_check(KEY_MAGIC))
    {
        moveDirection = MAGIC_RIGHT;
        willAttack = true;
    }
    else
    {
        moveDirection = RIGHT;
        // if (place_meeting(objPlayer1.x + TILE_SIZE, objPlayer1.y, objInteractable))
        if (tile_layer_find(999999, objPlayer1.x + TILE_SIZE, objPlayer1.y) != -1)
        {
            scrCollision();
        }
        else
        {
            tweenTargetX = objPlayer1.x + TILE_SIZE;
        }
    }
}
else if (keyboard_check_pressed(KEY_UP)) 
{
    if (keyboard_check(KEY_MELEE))
    {
        moveDirection = MELEE_UP;
        willAttack = true;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = RANGED_UP;
        willAttack = true;
    }
    else if (keyboard_check(KEY_MAGIC))
    {
        moveDirection = MAGIC_UP;
        willAttack = true;
    }
    else
    {
        moveDirection = UP;
        // if (place_meeting(objPlayer1.x, objPlayer1.y - TILE_SIZE, objInteractable))
        if (tile_layer_find(999999, objPlayer1.x, objPlayer1.y - TILE_SIZE) != -1)
        {
            scrCollision();
        }
        else
        {
            tweenTargetY = objPlayer1.y - TILE_SIZE;
        }
    }
}
else if (keyboard_check_pressed(KEY_DOWN)) 
{
    if (keyboard_check(KEY_MELEE))
    {
        moveDirection = MELEE_DOWN;
        willAttack = true;
    }
    else if (keyboard_check(KEY_RANGED))
    {
        moveDirection = RANGED_DOWN;
        willAttack = true;
    }
    else if (keyboard_check(KEY_MAGIC))
    {
        moveDirection = MAGIC_DOWN;
        willAttack = true;
    }
  else
    {
        moveDirection = DOWN;
        // if (place_meeting(objPlayer1.x, objPlayer1.y + TILE_SIZE, objInteractable))
        if (tile_layer_find(999999, objPlayer1.x, objPlayer1.y + TILE_SIZE) != -1)
        {
            scrCollision();
        }
        else
        {
            tweenTargetY = objPlayer1.y + TILE_SIZE;
        }
    }
}
else
{
}

scrProcessTurnTimer();

scrKeepPlayerInView();
