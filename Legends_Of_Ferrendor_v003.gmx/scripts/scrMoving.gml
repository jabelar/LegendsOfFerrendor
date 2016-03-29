objPlayer.image_speed = 0.25;
if moveDirection != STILL
{
    objPlayer.sprite_index = spritesMoving[moveDirection];
}
    
switch (moveDirection)
{
    case LEFT:
    {
        objPlayer.x -= TILE_SIZE / TWEENS_PER_MOVE;
        if (objPlayer.x <= tweenTargetX)
        {
            state = WAIT_INPUT;
            moveDirection = STILL;
        }
        break;
    }
    case RIGHT:
    {
        objPlayer.x += TILE_SIZE / TWEENS_PER_MOVE;
        if (objPlayer.x >= tweenTargetX)
        {
            state = WAIT_INPUT;
            moveDirection = STILL;
        }
        break;
    }
    case UP:
    {
        objPlayer.y -= TILE_SIZE / TWEENS_PER_MOVE;
        if (objPlayer.y <= tweenTargetY)
        {
            state = WAIT_INPUT;
            moveDirection = STILL;
        }
        break;
    }
    case DOWN:
    {
        objPlayer.y += TILE_SIZE / TWEENS_PER_MOVE;
        if (objPlayer.y >= tweenTargetY)
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

if (objPlayer.x == tweenTargetX and objPlayer.y == tweenTargetY)
{
    state = WAIT_INPUT;
    moveDirection = STILL;
}
 
scrKeepPlayerInRoom();

scrKeepPlayerInView();
