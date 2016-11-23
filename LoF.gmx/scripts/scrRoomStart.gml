switch (room)
{
   case roomOpeningCredits:
   {
      state[clientPlayer] = OPENING_CREDITS;
      timeInRoom = -1;
      backgroundMusic = audio_play_sound(sndOpeningCredits, 1, true);
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
      audio_stop_sound(backgroundMusic);
      backgroundMusic = audio_play_sound(sndBattlefieldWander, 1, true);
     // create players
     for (i=0; i<numPlayers; i++)
     {
        playerInstance[i] = instance_create(room_width / 2, room_height - (1 + i) * TILE_SIZE, objPlayer);    
        playerInstance[i].playerNumber = i;
     }
     break;
   }
}



