/// scrCanSeeObject(parObj)
var objTarget = argument0;
var canSeeObj = true;
var startX = x + TILE_SIZE / 2;
var startY = y + TILE_SIZE / 2;
var endX = objTarget.x + TILE_SIZE / 2;
var endY = objTarget.y + TILE_SIZE / 2;
var distX = abs(endX - startX);
var distY = abs(endY - startY)
var distTiles = distance_to_object(objTarget) / TILE_SIZE;

if distTiles <= maxSightDistance
{
    for (var i = 0; i < distX; i += distX / distTiles)
    {
       for (var j = 0; j < distY; j += distY / distTiles)
       {
           if (tile_layer_find(LAYER_OBSTACLES, x + TILE_SIZE / 2, y + TILE_SIZE + mobSpeed) == -1)
           {
              canSeeObj = false;
              return canSeeObj;
           }
       }
    }
}

return canSeeObj;
