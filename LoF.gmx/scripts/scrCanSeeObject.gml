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

show_debug_message("Check if can see object. startX, endX, startY, endY, distX, distY, distTiles: "+string(startX)+","+string(endX)+","+string(startY)+","+string(endY)+","+string(distX)+","+string(distY)+","+string(distTiles));

if distTiles <= maxSightDistance
{
   if (endX > startX)
   {
        for (var i = 0; i < distX; i += distX / distTiles)
        {
           if (endY > startY)
           {
               for (var j = 0; j < distY; j += distY / distTiles)
               {
                   if (tile_layer_find(LAYER_OBSTACLES, startX + i, startY + j) != -1)
                   {
                      show_debug_message("Obstacle in line of sight at "+string(startX+i)+", "+string(startY+j));
                      canSeeObj = false;
                      return canSeeObj;
                   }
               }
           }
           if (endY < startY)
           {
               for (var j = 0; j < distY; j += distY / distTiles)
               {
                   if (tile_layer_find(LAYER_OBSTACLES, startX + i, startY - j) != -1)
                   {
                      show_debug_message("Obstacle in line of sight at "+string(startX+i)+", "+string(startY-j));
                      canSeeObj = false;
                      return canSeeObj;
                   }
               }
           }
        }
    }
   else if (endX < startX)
   {
        for (var i = 0; i < distX; i += distX / distTiles)
        {
           for (var j = 0; j < distY; j += distY / distTiles)
           {
               if (endY > startY)
               {
                   for (var j = 0; j < distY; j += distY / distTiles)
                   {
                       if (tile_layer_find(LAYER_OBSTACLES, startX - i, startY + j) != -1)
                       {
                          show_debug_message("Obstacle in line of sight at "+string(startX-i)+", "+string(startY+j));
                          canSeeObj = false;
                          return canSeeObj;
                       }
                   }
               }
               if (endY < startY)
               {
                   for (var j = 0; j < distY; j += distY / distTiles)
                   {
                       if (tile_layer_find(LAYER_OBSTACLES, startX - i, startY - j) != -1)
                       {
                          show_debug_message("Obstacle in line of sight at "+string(startX-i)+", "+string(startY-j));
                          canSeeObj = false;
                          return canSeeObj;
                       }
                   }
               }
           }
        }
    }
}

show_debug_message("checking for line of sight, canSeeObj = "+string(canSeeObj));

return canSeeObj;
