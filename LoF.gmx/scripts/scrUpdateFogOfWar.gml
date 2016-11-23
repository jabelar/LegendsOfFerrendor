with (playerInstance[currentPlayer])
{
   var tile, range, center_x, center_y;
   range = TILE_SIZE / TILE_SIZE_FOG * 5;
   center_x = x + TILE_SIZE / 2;
   center_y = y + TILE_SIZE / 2;
    
   for (var i =0; i < range; i++)
   {
      for (var j = 0; j < range; j++)
      {
         tile = tile_layer_find(LAYER_FOG, center_x + (i - range / 2) * TILE_SIZE_FOG, center_y + (j - range / 2) * TILE_SIZE_FOG);
         if tile_exists(tile) tile_delete(tile);
      }
   }
 //        tile = tile_layer_find(LAYER_FOG, center_x, center_y);
 //        if tile_exists(tile) tile_delete(tile);

}
