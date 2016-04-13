// create weapon object on first step in attack state
var objInstance;

if willAttack
{
    switch (moveDirection)
    {
        case RANGED_LEFT:
        {
            objInstance = instance_create(playerInstance[0].x, playerInstance[0].y + TILE_SIZE / 2, objRanged);
            with objInstance
            {
                direction = 180;
                image_angle = 180;
                scrRangedCreate(playerInstance[0].id);
            }
            break;
        }
        case RANGED_RIGHT:
        {
            objInstance = instance_create(playerInstance[0].x + TILE_SIZE, playerInstance[0].y + TILE_SIZE / 2, objRanged);
            with objInstance
            {
                direction = 0;
                image_angle = 0;
                scrRangedCreate(playerInstance[0].id);
            }
           break;
        }
        case RANGED_UP:
        {
            objInstance = instance_create(playerInstance[0].x + TILE_SIZE / 2, playerInstance[0].y, objRanged);
            with objInstance
            {
                direction = 90;
                image_angle = 90;
                scrRangedCreate(playerInstance[0].id);
            }
            break;
        }
        case RANGED_DOWN:
        {
            objInstance = instance_create(playerInstance[0].x + TILE_SIZE / 2, playerInstance[0].y + TILE_SIZE, objRanged);
            with objInstance
            {
                direction = 270;
                image_angle = 270;
                scrRangedCreate(playerInstance[0].id);
            }
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
