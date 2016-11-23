with (playerInstance[currentPlayer])
{
   var tile;
   tile = tile_layer_find(LAYER_FOG, x + TILE_SIZE / 2, y + TILE_SIZE / 2);
   if tile_exists(tile) tile_delete(tile);
}
