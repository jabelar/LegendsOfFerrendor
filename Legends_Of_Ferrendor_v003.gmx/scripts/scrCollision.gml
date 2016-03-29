state = WAIT_INPUT;

tweenTargetX = objPlayer.x;
tweenTargetY = objPlayer.y;

switch (moveDirection)
{
    case LEFT:
    {
        moveDirection = LOOK_LEFT;
        break;
    }
    case RIGHT:
    {   
        moveDirection = LOOK_RIGHT;
        break;
    }
    case UP:
    {
        moveDirection = LOOK_UP;
        break;
    }
    case DOWN:
    {
        moveDirection = LOOK_DOWN;
        break;
    }
 }      

show_debug_message("Collision");


