with (playerInstance[currentPlayer])
{
   var tile, range, center_x, center_y, tile_x, tile_y, tile_dist, range_squared;
   range = TILE_SIZE / TILE_SIZE_FOG * 8;
   center_x = x + TILE_SIZE / 2;
   center_y = y + TILE_SIZE / 2;
   range_squared = power(range * TILE_SIZE_FOG / 2, 2);
    
   for (var i =0; i < range; i++)
   {
      for (var j = 0; j < range; j++)
      {
         tile_x = center_x + (i - range / 2) * TILE_SIZE_FOG;
         tile_y = center_y + (j - range / 2) * TILE_SIZE_FOG;
         tile_dist = power(abs(tile_x-center_x), 2) + power(abs(tile_y-center_y), 2);
         // show_debug_message("tile distance = "+string(tile_dist)); 
          if (tile_dist < range_squared)
         {
            tile = tile_layer_find(LAYER_FOG, tile_x, tile_y);
            if tile_exists(tile) tile_set_alpha(tile, min(tile_get_alpha(tile), power(tile_dist / range_squared, 2)));
         }
      }
   }
}
