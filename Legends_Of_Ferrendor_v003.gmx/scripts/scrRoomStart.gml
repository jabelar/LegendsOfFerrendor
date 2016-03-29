objPlayer.x = room_width / 2;
objPlayer.y = room_height - 256;

// place obstacles over tiles
var tiles = tile_get_ids();
for (var i = 0; i < array_length_1d(tiles); i++;)
{
    instance_create(tile_get_x(tiles[i]), tile_get_y(tiles[i]), objObstacle);
}

tweenTargetX = objPlayer.x;
tweenTargetY = objPlayer.y;

