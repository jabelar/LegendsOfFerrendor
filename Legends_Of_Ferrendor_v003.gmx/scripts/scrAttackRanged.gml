// create weapon object on first step in attack state
var objInstance;

if willAttack
{
    switch (moveDirection)
    {
        case RANGED_LEFT:
        {
            objInstance = instance_create(objPlayer1.x, objPlayer1.y + TILE_SIZE / 2, objRanged);
            with objInstance
            {
                direction = 180;
                image_angle = 180;
                scrRangedCreate(objPlayer1.id);
            }
            break;
        }
        case RANGED_RIGHT:
        {
            objInstance = instance_create(objPlayer1.x + TILE_SIZE, objPlayer1.y + TILE_SIZE / 2, objRanged);
            with objInstance
            {
                direction = 0;
                image_angle = 0;
                scrRangedCreate(objPlayer1.id);
            }
           break;
        }
        case RANGED_UP:
        {
            objInstance = instance_create(objPlayer1.x + TILE_SIZE / 2, objPlayer1.y, objRanged);
            with objInstance
            {
                direction = 90;
                image_angle = 90;
                scrRangedCreate(objPlayer1.id);
            }
            break;
        }
        case RANGED_DOWN:
        {
            objInstance = instance_create(objPlayer1.x + TILE_SIZE / 2, objPlayer1.y + TILE_SIZE, objRanged);
            with objInstance
            {
                direction = 270;
                image_angle = 270;
                scrRangedCreate(objPlayer1.id);
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
