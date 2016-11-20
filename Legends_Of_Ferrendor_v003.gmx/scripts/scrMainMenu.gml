if (timeInRoom < room_speed * 5)
{
   room_set_background(room, 0, true, false, bgOpeningCredits1, 0, 0, false, false, 0, 0, 1);
}
else
{
   room_goto(roomBattlefield);
   state[currentPlayer] = WAIT_INPUT;
}

