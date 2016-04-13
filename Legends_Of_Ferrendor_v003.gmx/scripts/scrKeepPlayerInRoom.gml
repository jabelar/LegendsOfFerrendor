// keep player from leaving room area
with objPlayer
{
    if x < 0
    {
       x = 0;
       state = WAIT_INPUT;
       moveDirection = STILL;
       tweenTargetX = x;
    }
    if x + sprite_get_width(sprite_index) - 1 >= room_width 
    {
       x = room_width - TILE_SIZE;
       state = WAIT_INPUT;
       moveDirection = STILL;
       tweenTargetX = x;
    }
    if y < 0 
    {
       y = 0;
       state = WAIT_INPUT;
       moveDirection = STILL;
       tweenTargetY = y;
    }   
    if y + sprite_get_height(sprite_index) - 1 >= room_height 
    {
       y = room_height - TILE_SIZE;
       state = WAIT_INPUT;
       moveDirection = STILL;
       tweenTargetY = y;
    }
}
