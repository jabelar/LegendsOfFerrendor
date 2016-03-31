objPlayer.image_speed = 0;
if moveDirection != STILL
{
    objPlayer.sprite_index = spritesMoving[moveDirection];
}


if (keyboard_check(KEY_LEFT))  
{
    if (keyboard_check(KEY_LOOK))
    {
        moveDirection = LOOK_LEFT;
    }
    else if (keyboard_check(KEY_ATTACK))
    {
        moveDirection = LOOK_LEFT;
        scrAttacking();
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
    if (keyboard_check(KEY_LOOK))
    {
        moveDirection = LOOK_RIGHT;
    }
    else if (keyboard_check(KEY_ATTACK))
    {
        moveDirection = LOOK_RIGHT;
        scrAttacking();
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
    if (keyboard_check(KEY_LOOK))
    {
        moveDirection = LOOK_UP;
    }
    else if (keyboard_check(KEY_ATTACK))
    {
        moveDirection = LOOK_UP;
        scrAttacking();
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
    if (keyboard_check(KEY_LOOK))
    {
        moveDirection = LOOK_DOWN;
    }
    else if (keyboard_check(KEY_ATTACK))
    {
        moveDirection = LOOK_DOWN;
        scrAttacking();
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
    state = MOVING;
    turnTimer = STEPS_PER_TURN;
}

