var timePerScreen = 4;

for (var i=0; i<8; i++)
{
   background_visible[i] = false;
}

if (timeInRoom < room_speed * timePerScreen)
{
   // give some time for initial resolution change
}
else if (timeInRoom < room_speed * timePerScreen * 2)
{
   background_visible[0] = true;
}
else if (timeInRoom < room_speed * timePerScreen * 3)
{
   background_visible[1] = true;
}
else
{
   room_goto(roomMainMenu);
}

