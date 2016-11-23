// keep player from leaving room area
for (i=0; i<numPlayers; i++)
{
    {
        if playerInstance[i].x < 0
        {
           playerInstance[i].x = 0;
           state[i] = WAIT_INPUT;
           moveDirection[i] = STILL;
           tweenTargetX[i] = playerInstance[i].x;
        }
        if playerInstance[i].x + sprite_get_width(playerInstance[i].sprite_index) - 1 >= room_width 
        {
           playerInstance[i].x = room_width - TILE_SIZE;
           state[i] = WAIT_INPUT;
           moveDirection[i] = STILL;
           tweenTargetX[i] = playerInstance[i].x;
        }
        if playerInstance[i].y < 0 
        {
           playerInstance[i].y = 0;
           state[i] = WAIT_INPUT;
           moveDirection[i] = STILL;
           tweenTargetY[i] = playerInstance[i].y;
        }   
        if playerInstance[i].y + sprite_get_height(playerInstance[i].sprite_index) - 1 >= room_height 
        {
           playerInstance[i].y = room_height - TILE_SIZE;
           state[i] = WAIT_INPUT;
           moveDirection[i] = STILL;
           tweenTargetY[i] = playerInstance[i].y;
        }
    }
}
