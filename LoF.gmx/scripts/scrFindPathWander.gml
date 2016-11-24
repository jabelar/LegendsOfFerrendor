var foundPath = false;

var i, j;

while (not foundPath)
{
   i = irandom(8);
   j = irandom(8);
   foundPath = mp_grid_path(motionPlanningGrid, path, x + TILE_SIZE / 2, y + TILE_SIZE / 2, x + TILE_SIZE / 2 + (i - 4) * TILE_SIZE, y + TILE_SIZE / 2 + (j - 4) * TILE_SIZE, false);  
}

show_debug_message("found wander path with endpoint = "+string(i-4)+", "+string(j-4));


