
switch mobState
{
   case IDLE:
   {
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
            scrFindPathWander();
            path_start(path, mobSpeed, path_action_stop, false);     
        }
      }
      break;
   }
   case WANDERING:
   {
      break;
   }
   case WANDERING_SMOOTH:
   {
      break;
   }
   case ATTACKING_RANGED:
   {
      break;
   }
   case ATTACKING_MELEE:
   {
      break;
   }
   case FLEEING:
   {
      break;
   }
   case FLEEING_SMOOTH:
   {
      break;
   }
   case PATROLLING:
   {
      break;
   }
   case PATROLLIng_SMOOTH:
   {
      break;
   }
   case DYING:
   {
      break;
   }
}
