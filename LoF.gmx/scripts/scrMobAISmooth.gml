// check if time to make a new decisionn
var rand;

// only make decisions occasionally
if (timeInRoom mod (room_speed * AI_INTERVAL) = 0)
{        
   // update sight
   for (var i = 0; i < numPlayers; i++)
   {
      canSeePlayer[i] = scrCanSeeObject(playerInstance[i]);
   }

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
             
             // react according to what type of entity you are
             if scrInstanceOf(objMob)
             {
                 show_debug_message("aggressive so starting attack");
                 mobState = ATTACKING_MELEE;
                 mobSpeed = mobMaxSpeed;
                 attackTarget = playerInstance[clientPlayer];
                 scrFindPathToObject(attackTarget);
                 path_start(path, mobSpeed, path_action_stop, false); 
             }    
             else if scrInstanceOf(objEntityPassive)
             {
                show_debug_message("passive so starting to flee");
                mobState = FLEEING;
                mobSpeed = mobMaxSpeed;
             }
             else
             {
                show_debug_message("WARNING - not aggressive or passive");
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
          // react to seeing player
          if canSeePlayer[currentPlayer]
          {
             show_debug_message("see player");
             if scrInstanceOf(objMob)
             {
                 show_debug_message("aggressive so starting attack");
                 mobState = ATTACKING_MELEE;
                 mobSpeed = mobMaxSpeed;
                 attackTarget = playerInstance[clientPlayer];
                 scrFindPathToObject(attackTarget);
                 path_start(path, mobSpeed, path_action_stop, false); 
             }    
             else if scrInstanceOf(objEntityPassive)
             {
                show_debug_message("passive so starting to flee");
                mobState = FLEEING;
                mobSpeed = mobMaxSpeed;
             }
             else
             {
                show_debug_message("WARNING - not aggressive or passive");
             }
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
