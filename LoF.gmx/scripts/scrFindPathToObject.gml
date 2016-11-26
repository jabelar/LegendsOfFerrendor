var targetObj = argument0;
var foundPath;

foundPath = mp_grid_path(motionPlanningGrid, path, x + TILE_SIZE / 2, y + TILE_SIZE / 2, targetObj.x + TILE_SIZE / 2, targetObj.y + TILE_SIZE / 2, false);  

if foundPath
{
   show_debug_message("found path to target object");
}
else
{
   show_debug_message("no path to target object");
}

return foundPath;
