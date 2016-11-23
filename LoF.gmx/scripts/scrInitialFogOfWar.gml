show_debug_message("starting fog of war");

for (var i=0; i < room_width / TILE_SIZE; i++)
{
   for (var j=0; j < room_height / TILE_SIZE; j++)
   {
      tile_add(bgFogOfWar, 0, 0, 256, 256, i*TILE_SIZE, j*TILE_SIZE, LAYER_FOG);
   }
}

show_debug_message("finished fog of war");
