// check if time to make a new decision
var rand;
if (timeInRoom mod (room_speed * AI_INTERVAL) = 0)
{
   show_debug_message("consider wander");
    rand = irandom(100);

   if rand < 50
   {
      show_debug_message("start wandering");
      mobState = WANDERING;
      if rand < 25 // vertical wander
      {
         if rand < 12
         {
            mobMoveDirection = UP;
            show_debug_message("wander up with mobMoveDirection = "+string(mobMoveDirection));
         }
         else
         {
            mobMoveDirection = DOWN;
            show_debug_message("DOWN = "+string(DOWN));
            show_debug_message("wander down with mobMoveDirection = "+string(mobMoveDirection));
         }
      }
      else // horizontal movement
      {
         if rand < 37
         {
            mobMoveDirection = RIGHT;
            show_debug_message("wander right with mobMoveDirection = "+string(mobMoveDirection));
         }
         else
         {
            mobMOveDirection = LEFT;
            show_debug_message("wander left with mobMoveDirection = "+string(mobMoveDirection));
         }
      }      
   }
}
