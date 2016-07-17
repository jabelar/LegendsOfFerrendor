playerInstance[currentPlayer].image_speed = 0;

scrUpdatePlayerDirection();

if (currentPlayer == 0)
{
    // if direction key pressed check if attack key already pressed
    if (keyboard_check_pressed(KEY_LEFT))  
    {
        if (keyboard_check(KEY_MELEE))
        {
            moveDirection[currentPlayer] = MELEE_LEFT;
            willAttack[currentPlayer] = true;
        }
        else if (keyboard_check(KEY_RANGED))
        {
            moveDirection[currentPlayer] = RANGED_LEFT;
            willAttack[currentPlayer] = true;
        }
        else if (keyboard_check(KEY_MAGIC))
        {
            moveDirection[currentPlayer] = MAGIC_LEFT;
            willAttack[currentPlayer] = true;
        }
        else
        {
            moveDirection[currentPlayer] = LEFT;
            if (tile_layer_find(999999, playerInstance[currentPlayer].x - TILE_SIZE, playerInstance[currentPlayer].y) != -1)
            {
                scrCollision();
            }
            else
            {
                tweenTargetX[currentPlayer] = playerInstance[currentPlayer].x - TILE_SIZE;
            }
        }
    }
    else if (keyboard_check_pressed(KEY_RIGHT)) 
    {
        if (keyboard_check(KEY_MELEE))
        {
            moveDirection[currentPlayer] = MELEE_RIGHT;
            willAttack[currentPlayer] = true;
        }
        else if (keyboard_check(KEY_RANGED))
        {
            moveDirection[currentPlayer] = RANGED_RIGHT;
            willAttack[currentPlayer] = true;
        }
        else if (keyboard_check(KEY_MAGIC))
        {
            moveDirection[currentPlayer] = MAGIC_RIGHT;
            willAttack[currentPlayer] = true;
        }
        else
        {
            moveDirection = RIGHT;
            if (tile_layer_find(999999, playerInstance[currentPlayer].x + TILE_SIZE, playerInstance[currentPlayer].y) != -1)
            {
                scrCollision();
            }
            else
            {
                tweenTargetX[currentPlayer] = playerInstance[currentPlayer].x + TILE_SIZE;
            }
        }
    }
    else if (keyboard_check_pressed(KEY_UP)) 
    {
        if (keyboard_check(KEY_MELEE))
        {
            moveDirection[currentPlayer] = MELEE_UP;
            willAttack[currentPlayer] = true;
        }
        else if (keyboard_check(KEY_RANGED))
        {
            moveDirection[currentPlayer] = RANGED_UP;
            willAttack[currentPlayer] = true;
        }
        else if (keyboard_check(KEY_MAGIC))
        {
            moveDirection[currentPlayer] = MAGIC_UP;
            willAttack[currentPlayer] = true;
        }
        else
        {
            moveDirection[currentPlayer] = UP;
            if (tile_layer_find(999999, playerInstance[currentPlayer].x, playerInstance[currentPlayer].y - TILE_SIZE) != -1)
            {
                scrCollision();
            }
            else
            {
                tweenTargetY[currentPlayer] = playerInstance[currentPlayer].y - TILE_SIZE;
            }
        }
    }
    else if (keyboard_check_pressed(KEY_DOWN)) 
    {
        if (keyboard_check(KEY_MELEE))
        {
            moveDirection[currentPlayer] = MELEE_DOWN;
            willAttack[currentPlayer] = true;
        }
        else if (keyboard_check(KEY_RANGED))
        {
            moveDirection[currentPlayer] = RANGED_DOWN;
            willAttack[currentPlayer] = true;
        }
        else if (keyboard_check(KEY_MAGIC))
        {
            moveDirection[currentPlayer] = MAGIC_DOWN;
            willAttack[currentPlayer] = true;
        }
      else
        {
            moveDirection[currentPlayer] = DOWN;
            if (tile_layer_find(999999, playerInstance[currentPlayer].x, playerInstance[currentPlayer].y + TILE_SIZE) != -1)
            {
                scrCollision();
            }
            else
            {
                tweenTargetY[currentPlayer] = playerInstance[currentPlayer].y + TILE_SIZE;
            }
        }
    }
    // else // check if want to attack in current direction
    {
        if keyboard_check_pressed(KEY_MELEE)
        {
            lastAttackKey[currentPlayer] = KEY_MELEE;
            willAttack[currentPlayer] = true;
        }
        else if keyboard_check_pressed(KEY_RANGED)
        {
            lastAttackKey[currentPlayer] = KEY_RANGED;
            willAttack[currentPlayer] = true;
        }
        else if keyboard_check_pressed(KEY_MAGIC)
        {
            lastAttackKey[currentPlayer] = KEY_MAGIC;
            willAttack[currentPlayer] = true;
        }
    }
    
scrProcessTurnTimer();

scrKeepPlayerInView();
}

