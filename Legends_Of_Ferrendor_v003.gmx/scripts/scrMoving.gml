objPlayer1.image_speed = 0.25;

scrUpdatePlayerDirection();
    
switch (moveDirection)
{
    case LEFT:
    {
        objPlayer1.x -= TILE_SIZE / TWEENS_PER_MOVE;
        if (objPlayer1.x <= tweenTargetX)
        {
            state = WAIT_INPUT;
            moveDirection = STILL;
        }
        break;
    }
    case RIGHT:
    {
        objPlayer1.x += TILE_SIZE / TWEENS_PER_MOVE;
        if (objPlayer1.x >= tweenTargetX)
        {
            state = WAIT_INPUT;
            moveDirection = STILL;
        }
        break;
    }
    case UP:
    {
        objPlayer1.y -= TILE_SIZE / TWEENS_PER_MOVE;
        if (objPlayer1.y <= tweenTargetY)
        {
            state = WAIT_INPUT;
            moveDirection = STILL;
        }
        break;
    }
    case DOWN:
    {
        objPlayer1.y += TILE_SIZE / TWEENS_PER_MOVE;
        if (objPlayer1.y >= tweenTargetY)
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

if (objPlayer1.x == tweenTargetX and objPlayer1.y == tweenTargetY)
{
    state = WAIT_INPUT;
    moveDirection = STILL;
}
 
scrKeepPlayerInRoom();

scrKeepPlayerInView();
