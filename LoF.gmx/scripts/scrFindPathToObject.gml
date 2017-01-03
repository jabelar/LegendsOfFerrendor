var targetObj = argument0;
var foundPath;

// make sure start and end points are aligned to tile grid
var tileX = (x div TILE_SIZE) * TILE_SIZE + TILE_SIZE / 2;
var tileY = (y div TILE_SIZE) * TILE_SIZE + TILE_SIZE / 2;
var endTileX = (targetObj.x div TILE_SIZE) * TILE_SIZE + TILE_SIZE / 2;
var endTileY = (targetObj.y div TILE_SIZE) * TILE_SIZE + TILE_SIZE / 2;

foundPath = mp_grid_path(motionPlanningGrid, path, tileX, tileY, endTileX, endTileY, false);  

show_debug_message("looking for path to target object");

if foundPath
{
   show_debug_message("found path to target object");
}
else
{
   show_debug_message("no path to target object");
}

return foundPath;
