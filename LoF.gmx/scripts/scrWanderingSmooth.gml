show_debug_message("wandering smooth with mobMoveDirection = "+string(mobMoveDirection));

show_debug_message("LEFT = "+string(LEFT));

switch mobMoveDirection
{
   case LEFT:
   {
       show_debug_message("should move left if no obstacle");
       if (tile_layer_find(LAYER_OBSTACLES, x - mobSpeed, y + TILE_SIZE / 2) == -1)
       {
          x -= mobSpeed;
       }
       else
       {
          show_debug_message("found obstacle");
          mobState = IDLE;
          mobMoveDirection = STILL;
       }
      break;
   }
   case RIGHT:
   {
       if (tile_layer_find(LAYER_OBSTACLES, x + TILE_SIZE + mobSpeed, y + TILE_SIZE / 2) == -1)
       {
          x += mobSpeed;
       }
       else
       {
          mobState = IDLE;
          mobMoveDirection = STILL;
       }
      break;
   }
   case UP:
   {
       if (tile_layer_find(LAYER_OBSTACLES, x + TILE_SIZE / 2, y - mobSpeed) == -1)
       {
          y -= mobSpeed;
       }
       else
       {
          mobState = IDLE;
          mobMoveDirection = STILL;
       }
      break;
   }
   case DOWN:
   {
       if (tile_layer_find(LAYER_OBSTACLES, x + TILE_SIZE / 2, y + TILE_SIZE + mobSpeed) == -1)
       {
          y += mobSpeed;
       }
       else
       {
          mobState = IDLE;
          mobMoveDirection = STILL;
       }
      break;
   }
} 

// keep in room
if x < 0
{
   x = 0;
   mobMoveDirection = STILL;
   mobState = IDLE;
}
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
   y = room_height - TILE_SIZE;
   mobMoveDirection = STILL;
   mobState = IDLE;
}

