switch (room)
{
   case roomOpeningCredits:
   {
      state[clientPlayer] = OPENING_CREDITS;
      timeInRoom = -1;
      scrChangeMusic(sndOpeningCredits);
      break;
   }
   case roomMainMenu:
   {
      state[clientPlayer] = MAIN_MENU;
      timeInRoom = -1;
      break;
   }
   case roomBattlefield:
   {
      state[clientPlayer] = WAIT_INPUT_SMOOTH;
      timeInRoom = -1;
      scrChangeMusic(sndBattlefieldWander);
      
      // populate motion planning grid
      scrPopulateMotionPlanningGrid();
      
      // create players
     for (i=0; i<numPlayers; i++)
     {
        playerInstance[i] = instance_create(room_width / 2, room_height - (1 + i) * TILE_SIZE, objPlayer);    
        playerInstance[i].playerNumber = i;
     }
      // initialize fog of war
      if FOG_ENABLED
      {
         scrInitialFogOfWar();
         scrUpdateFogOfWar();
      }
      
     break;
   }
}




