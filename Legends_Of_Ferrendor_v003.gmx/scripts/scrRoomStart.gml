// create players
playerInstance[0] = instance_create(room_width / 2, room_height - TILE_SIZE, objPlayer);
playerInstance[1] = instance_create(room_width / 2, room_height - 2 * TILE_SIZE, objPlayer);
playerInstance[2] = instance_create(room_width / 2, room_height - 3 * TILE_SIZE, objPlayer);
playerInstance[3] = instance_create(room_width / 2, room_height - 4 * TILE_SIZE, objPlayer);

playerInstance[0].playerNumber = 0;
playerInstance[1].playerNumber = 1;
playerInstance[2].playerNumber = 2;
playerInstance[3].playerNumber = 3;




