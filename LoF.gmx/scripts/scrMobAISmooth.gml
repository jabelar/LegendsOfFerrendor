// check if time to make a new decisionn
var rand;

// only make decisions occasionally
if (timeInRoom mod (room_speed * AI_INTERVAL) = 0)
{
    show_debug_message("making AI decision with mobState = "+string(mobState));
    // process the mob state
    switch mobState
    {
       case IDLE:
       {
          // react to seeing player
          if canSeePlayer[currentPlayer]
          {
             show_debug_message("see player");
             if scrInstanceOf(objMob)
             {
                 mobState = ATTACKING_MELEE;
                 mobSpeed = mobMaxSpeed;
                 attackTarget = playerInstance[currentPlayer];
                 scrFindPathToObject(attackTarget);
                 path_start(path, mobSpeed, path_action_stop, false); 
             }    
             else scrInstanceOf(objEntityPassive)
             {
                mobState = FLEEING;
                mobSpeed = mobMaxSpeed;
             }
          }
          else
          {
             show_debug_message("consider wander");
              rand = irandom(100);
        
             if rand < 50
             {
                show_debug_message("start wandering");
                mobState = WANDERING;
                mobSpeed = mobMaxSpeed / 2;
                scrFindPathWander();
                path_start(path, mobSpeed, path_action_stop, false);     
            }
          }
          break;
       }
       case WANDERING:
       {
          if canSeePlayer[currentPlayer]
          {
             show_debug_message("see player");
             mobState = ATTACKING_MELEE;
             mobSpeed = mobMaxSpeed;
             attackTarget = playerInstance[currentPlayer];
             path = mp_grid_path(motionPlanningGrid, path, x + TILE_SIZE / 2, y + TILE_SIZE / 2, playerInstance[currentPlayer].x + TILE_SIZE / 2, playerInstance[currentPlayer].y + TILE_SIZE / 2, false);  
             path_start(path, mobSpeed, path_action_stop, false);     
          }
          break;
       }
       case ATTACKING_RANGED:
       {
          show_debug_message("attacking ranged");
          break;
       }
       case ATTACKING_MELEE:
       {
          show_debug_message("attacking melee");
          break;
       }
       case FLEEING:
       {
          show_debug_message("fleeing");
          break;
       }
       case PATROLLING:
       {
          break;
       }
       case MOB_DYING:
       {
          break;
       }
    }
}
