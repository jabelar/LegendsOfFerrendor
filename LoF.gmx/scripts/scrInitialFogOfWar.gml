show_debug_message("starting fog of war");

for (var i=0; i < room_width / TILE_SIZE_FOG; i++)
{
   for (var j=0; j < room_height / TILE_SIZE_FOG; j++)
   {
      tile_add(bgFogOfWar, 0, 0, TILE_SIZE_FOG, TILE_SIZE_FOG, i*TILE_SIZE_FOG, j*TILE_SIZE_FOG, LAYER_FOG);
   }
}

show_debug_message("finished fog of war");
