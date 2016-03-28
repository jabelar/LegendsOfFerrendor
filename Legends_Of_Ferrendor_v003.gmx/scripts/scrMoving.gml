switch (moveDirection)
{
    case LEFT:
    {
        objPlayer.x -= TILE_SIZE / TWEENS_PER_MOVE;
        break;
    }
    case RIGHT:
    {
        objPlayer.x += TILE_SIZE / TWEENS_PER_MOVE;
        break;
    }
    case UP:
    {
        objPlayer.y -= TILE_SIZE / TWEENS_PER_MOVE;
        break;
    }
    case DOWN:
    {
        objPlayer.y += TILE_SIZE / TWEENS_PER_MOVE;
        break;
    }
    case STILL:
    {
        // this case shouldn't happen
        break;
    }
}

if (objPlayer.x == tweenTargetX and objPlayer.y == tweenTargetY)
{
    state = WAIT_INPUT;
}
 
// keep player from leaving room area
if objPlayer.x < 0
{
   objPlayer.x = 0;
   state = WAIT_INPUT;
}
if objPlayer.x >= room_width 
{
   objPlayer.x = room_width - TILE_SIZE;
   state = WAIT_INPUT;
}
if objPlayer.y < 0 
{
   objPlayer.y = 0;
   state = WAIT_INPUT;
}   
if objPlayer.y >= room_height 
{
   objPlayer.y = objPlayer.room_height - TILE_SIZE;
   state = WAIT_INPUT;
}
 
// update view
view_xview[0] = objPlayer.x - 7 * TILE_SIZE; 
view_yview[0] = objPlayer.y - 5 * TILE_SIZE; 
