switch (room)
{
   case roomOpeningCredits:
   {
      state[clientPlayer] = OPENING_CREDITS;
      timeInRoom = -1;
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
      state[clientPlayer] = WAIT_INPUT;
      timeInRoom = -1;
     // create players
     for (i=0; i<numPlayers; i++)
     {
        playerInstance[i] = instance_create(room_width / 2, room_height - (1 + i) * TILE_SIZE, objPlayer);    
        playerInstance[i].playerNumber = i;
     }
     break;
   }
}




