// create weapon object on first step in attack state
var objInstance;

if willAttack
{
    switch (moveDirection)
    {
        case RANGED_LEFT:
        {
            objInstance = instance_create(objPlayer.x, objPlayer.y + TILE_SIZE / 2, objRanged);
            objInstance.direction = 180;
            objInstance.image_angle = 180;
            break;
        }
        case RANGED_RIGHT:
        {
            objInstance = instance_create(objPlayer.x + TILE_SIZE, objPlayer.y + TILE_SIZE / 2, objRanged);
            objInstance.direction = 0;
            objInstance.image_angle = 0;
            break;
        }
        case RANGED_UP:
        {
            objInstance = instance_create(objPlayer.x + TILE_SIZE / 2, objPlayer.y, objRanged);
            objInstance.direction = 90;
            objInstance.image_angle = 90;
            break;
        }
        case RANGED_DOWN:
        {
            objInstance = instance_create(objPlayer.x + TILE_SIZE / 2, objPlayer.y + TILE_SIZE, objRanged);
            objInstance.direction = 270;
            objInstance.image_angle = 270;
            break;
        }
    }
    
    willAttack = false;
}

actionTimer -=1;
if actionTimer < 0
{
    actionTimer = TWEENS_PER_MOVE;
    state = WAIT_INPUT;
    moveDirection = STILL;
}

scrKeepPlayerInView();
