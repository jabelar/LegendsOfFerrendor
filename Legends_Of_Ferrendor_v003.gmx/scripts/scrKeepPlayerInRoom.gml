// keep player from leaving room area
if objPlayer1.x < 0
{
   objPlayer1.x = 0;
   state = WAIT_INPUT;
   moveDirection = STILL;
   tweenTargetX = objPlayer1.x;
}
if objPlayer1.x + sprite_get_width(objPlayer1.sprite_index) - 1 >= room_width 
{
   objPlayer1.x = room_width - TILE_SIZE;
   state = WAIT_INPUT;
   moveDirection = STILL;
   tweenTargetX = objPlayer1.x;
}
if objPlayer1.y < 0 
{
   objPlayer1.y = 0;
   state = WAIT_INPUT;
   moveDirection = STILL;
   tweenTargetY = objPlayer1.y;
}   
if objPlayer1.y + sprite_get_height(objPlayer1.sprite_index) - 1 >= room_height 
{
   objPlayer1.y = objPlayer1.room_height - TILE_SIZE;
   state = WAIT_INPUT;
   moveDirection = STILL;
   tweenTargetY = objPlayer1.y;
}
