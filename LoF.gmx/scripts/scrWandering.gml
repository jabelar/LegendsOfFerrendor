show_debug_message("wandering with moobMoveDirection = "+string(mobMoveDirection));

switch mobMoveDirection
{
   case LEFT:
   {
      x -= mobSpeed;
      break;
   }
   case RIGHT:
   {
      x += mobSpeed;
      break;
   }
   case UP:
   {
      y -= mobSpeed;
      break;
   }
   case DOWN:
   {
      y += mobSpeed;
      break;
   }
} 

// keep in room
if x > room_width - TILE_SIZE
{
   x = room_width - TILE_SIZE;
   mobMoveDirection = STILL;
   mobState = IDLE;
}
if y < 0
{
   y = 0;
   mobMoveDirection = STILL;
   mobState = IDLE;
}
if y > room_height - TILE_SIZE
{
   x = room_height - TILE_SIZE;
   mobMoveDirection = STILL;
   mobState = IDLE;
}
if x < 0
{
   x = 0;
   mobMoveDirection = STILL;
   mobState = IDLE;
}  
