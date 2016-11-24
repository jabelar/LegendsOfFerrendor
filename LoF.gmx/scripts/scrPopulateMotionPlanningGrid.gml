var roomWidthTiles = room_width / TILE_SIZE;
var roomHeightTiles = room_height / TILE_SIZE;

motionPlanningGrid = mp_grid_create(0, 0, roomWidthTiles, roomHeightTiles, TILE_SIZE, TILE_SIZE);

for (var i = 0; i < roomWidthTiles; i++)
{
   for (var j = 0; j < roomHeightTiles; j++)
   {
      if (tile_layer_find(LAYER_OBSTACLES, i * TILE_SIZE + TILE_SIZE /2, j * TILE_SIZE + TILE_SIZE / 2) != -1)
      {
         mp_grid_add_cell(motionPlanningGrid, i, j);
      }
   }
}

