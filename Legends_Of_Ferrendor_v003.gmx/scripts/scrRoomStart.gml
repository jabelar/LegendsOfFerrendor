// create players
for (i=0; i<numPlayers; i++)
{
    playerInstance[i] = instance_create(room_width / 2, room_height - (1 + i) * TILE_SIZE, objPlayer);    
    playerInstance[i].playerNumber = i;
}




