// create weapon object on first step in attack state
var objInstance;

if willAttack
{
    switch (moveDirection)
    {
        case MAGIC_LEFT:
        {
            objInstance = instance_create(playerInstance[0].x, playerInstance[0].y + TILE_SIZE / 2, objMagic);
            with objInstance
            {
                direction = 180;
                image_angle = 180;
                scrMagicCreate(playerInstance[0].id);
            }
            break;
        }
        case MAGIC_RIGHT:
        {
            objInstance = instance_create(playerInstance[0].x + TILE_SIZE, playerInstance[0].y + TILE_SIZE / 2, objMagic);
            with objInstance
            {
                direction = 0;
                image_angle = 0;
                scrMagicCreate(playerInstance[0].id);
            }
            break;
        }
        case MAGIC_UP:
        {
            objInstance = instance_create(playerInstance[0].x + TILE_SIZE / 2, playerInstance[0].y , objMagic);
            with objInstance
            {
                direction = 90;
                image_angle = 90;
                scrMagicCreate(playerInstance[0].id);
            }
            break;
        }
        case MAGIC_DOWN:
        {
            objInstance = instance_create(playerInstance[0].x + TILE_SIZE / 2, playerInstance[0].y + TILE_SIZE, objMagic);
            with objInstance
            {
                direction = 270;
                image_angle = 270;
                scrMagicCreate(playerInstance[0].id);
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
