playerInstance[currentPlayer].image_speed = 0.25;

scrUpdatePlayerDirection();
    
switch (moveDirection[currentPlayer])
{
    case LEFT:
    {
        playerInstance[currentPlayer].x -= TILE_SIZE / TWEENS_PER_MOVE;
        if (playerInstance[currentPlayer].x <= tweenTargetX[currentPlayer])
        {
            state[currentPlayer] = WAIT_INPUT;
            moveDirection[currentPlayer] = STILL;
        }
        break;
    }
    case RIGHT:
    {
        playerInstance[currentPlayer].x += TILE_SIZE / TWEENS_PER_MOVE;
        if (playerInstance[currentPlayer].x >= tweenTargetX[currentPlayer])
        {
            state[currentPlayer] = WAIT_INPUT;
            moveDirection[currentPlayer] = STILL;
        }
        break;
    }
    case UP:
    {
        playerInstance[currentPlayer].y -= TILE_SIZE / TWEENS_PER_MOVE;
        if (playerInstance[currentPlayer].y <= tweenTargetY[currentPlayer])
        {
            state[currentPlayer] = WAIT_INPUT;
            moveDirection[currentPlayer] = STILL;
        }
        break;
    }
    case DOWN:
    {
        playerInstance[currentPlayer].y += TILE_SIZE / TWEENS_PER_MOVE;
        if (playerInstance[currentPlayer].y >= tweenTargetY[currentPlayer])
        {
            state[currentPlayer] = WAIT_INPUT;
            moveDirection[currentPlayer] = STILL;
        }
        break;
    }
    case STILL:
    {
        state[currentPlayer] = WAIT_INPUT;
        break;
    }
}

if (playerInstance[currentPlayer].x == tweenTargetX[currentPlayer] and playerInstance[currentPlayer].y == tweenTargetY[currentPlayer])
{
    state[currentPlayer] = WAIT_INPUT;
    moveDirection[currentPlayer] = STILL;
}
 
scrKeepPlayerInRoom();

scrKeepPlayerInView();
