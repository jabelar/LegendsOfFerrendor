// create weapon object on first step in attack state
var objInstance;

if willAttack
{
    switch (moveDirection)
    {
        case MAGIC_LEFT:
        {
            objInstance = instance_create(objPlayer.x, objPlayer.y + TILE_SIZE / 2, objMagic);
            objInstance.direction = 180;
            objInstance.image_angle = 180;
            break;
        }
        case MAGIC_RIGHT:
        {
            objInstance = instance_create(objPlayer.x + TILE_SIZE, objPlayer.y + TILE_SIZE / 2, objMagic);
            objInstance.direction = 0;
            objInstance.image_angle = 0;
            break;
        }
        case MAGIC_UP:
        {
            objInstance = instance_create(objPlayer.x + TILE_SIZE / 2, objPlayer.y , objMagic);
            objInstance.direction = 90;
            objInstance.image_angle = 90;
            break;
        }
        case MAGIC_DOWN:
        {
            objInstance = instance_create(objPlayer.x + TILE_SIZE / 2, objPlayer.y + TILE_SIZE, objMagic);
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
