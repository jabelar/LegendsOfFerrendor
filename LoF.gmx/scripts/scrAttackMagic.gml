// create weapon object on first step in attack state
var objInstance;

if willAttack[currentPlayer]
{
    switch (moveDirection[currentPlayer])
    {
        case MAGIC_LEFT:
        {
            objInstance = instance_create(playerInstance[currentPlayer].x, playerInstance[currentPlayer].y + TILE_SIZE / 2, objMagic);
            with objInstance
            {
                direction = 180;
                image_angle = 180;
                scrMagicCreate(playerInstance[currentPlayer].id);
            }
            break;
        }
        case MAGIC_RIGHT:
        {
            objInstance = instance_create(playerInstance[currentPlayer].x + TILE_SIZE, playerInstance[currentPlayer].y + TILE_SIZE / 2, objMagic);
            with objInstance
            {
                direction = 0;
                image_angle = 0;
                scrMagicCreate(playerInstance[currentPlayer].id);
            }
            break;
        }
        case MAGIC_UP:
        {
            objInstance = instance_create(playerInstance[currentPlayer].x + TILE_SIZE / 2, playerInstance[currentPlayer].y , objMagic);
            with objInstance
            {
                direction = 90;
                image_angle = 90;
                scrMagicCreate(playerInstance[currentPlayer].id);
            }
            break;
        }
        case MAGIC_DOWN:
        {
            objInstance = instance_create(playerInstance[currentPlayer].x + TILE_SIZE / 2, playerInstance[currentPlayer].y + TILE_SIZE, objMagic);
            with objInstance
            {
                direction = 270;
                image_angle = 270;
                scrMagicCreate(playerInstance[currentPlayer].id);
            }
            break;
        }
    }
    
    willAttack[currentPlayer] = false;
}

actionTimer -=1;
if actionTimer < 0
{
    actionTimer = TWEENS_PER_MOVE;
    state[currentPlayer] = WAIT_INPUT;
    moveDirection[currentPlayer] = STILL;
}

scrKeepPlayerInView();
