playerInstance[0].image_speed = 0.25;

scrUpdatePlayerDirection();
    
switch (moveDirection)
{
    case LEFT:
    {
        playerInstance[0].x -= TILE_SIZE / TWEENS_PER_MOVE;
        if (playerInstance[0].x <= tweenTargetX)
        {
            state = WAIT_INPUT;
            moveDirection = STILL;
        }
        break;
    }
    case RIGHT:
    {
        playerInstance[0].x += TILE_SIZE / TWEENS_PER_MOVE;
        if (playerInstance[0].x >= tweenTargetX)
        {
            state = WAIT_INPUT;
            moveDirection = STILL;
        }
        break;
    }
    case UP:
    {
        playerInstance[0].y -= TILE_SIZE / TWEENS_PER_MOVE;
        if (playerInstance[0].y <= tweenTargetY)
        {
            state = WAIT_INPUT;
            moveDirection = STILL;
        }
        break;
    }
    case DOWN:
    {
        playerInstance[0].y += TILE_SIZE / TWEENS_PER_MOVE;
        if (playerInstance[0].y >= tweenTargetY)
        {
            state = WAIT_INPUT;
            moveDirection = STILL;
        }
        break;
    }
    case STILL:
    {
        state = WAIT_INPUT;
        break;
    }
}

if (playerInstance[0].x == tweenTargetX and playerInstance[0].y == tweenTargetY)
{
    state = WAIT_INPUT;
    moveDirection = STILL;
}
 
scrKeepPlayerInRoom();

scrKeepPlayerInView();
