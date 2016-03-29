// keep player from leaving room area
if objPlayer.x < 0
{
   objPlayer.x = 0;
   state = WAIT_INPUT;
   moveDirection = STILL;
   tweenTargetX = objPlayer.x;
}
if objPlayer.x + sprite_get_width(objPlayer.sprite_index) -1 >= room_width 
{
   objPlayer.x = room_width - TILE_SIZE;
   state = WAIT_INPUT;
   moveDirection = STILL;
   tweenTargetX = objPlayer.x;
}
if objPlayer.y < 0 
{
   objPlayer.y = 0;
   state = WAIT_INPUT;
   moveDirection = STILL;
   tweenTargetY = objPlayer.y;
}   
if objPlayer.y + sprite_get_height(objPlayer.sprite_index) -1 >= room_height 
{
   objPlayer.y = objPlayer.room_height - TILE_SIZE;
   state = WAIT_INPUT;
   moveDirection = STILL;
   tweenTargetY = objPlayer.y;
}
