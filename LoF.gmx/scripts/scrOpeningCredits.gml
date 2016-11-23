var timePerScreen = 2;

for (var i=0; i<8; i++)
{
   background_visible[i] = false;
}

if (timeInRoom < room_speed * timePerScreen)
{
   background_visible[0] = true;
}
else if (timeInRoom < room_speed * timePerScreen * 2)
{
   background_visible[1] = true;
}
else
{
   room_goto(roomMainMenu);
}

