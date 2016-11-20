if (timeInRoom < room_speed * 5)
{
   room_set_background(room, 0, true, false, bgOpeningCredits1, 0, 0, false, false, 0, 0, 1);
}
else if (timeInRoom < room_speed * 10)
{
   room_set_background(room, 0, true, false, bgOpeningCredits1, 0, 0, false, false, 0, 0, 1);
}
else
{
   room_goto(roomMainMenu);
   state[currentPlayer] = MAIN_MENU;
}

