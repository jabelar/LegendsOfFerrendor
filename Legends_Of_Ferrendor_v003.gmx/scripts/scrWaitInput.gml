tweenTargetX = objPlayer.x;
tweenTargetY = objPlayer.y;

if (keyboard_check_pressed(ord('A'))) then 
{
    state = MOVING;
    tweenTargetX -= TILE_SIZE;
    moveDirection = LEFT;
}
else if (keyboard_check_pressed(ord('D'))) then
{
    state = MOVING;
    tweenTargetX += TILE_SIZE;
    moveDirection = RIGHT;
}
else if (keyboard_check_pressed(ord('W'))) then
{
    state = MOVING;
    tweenTargetY -= TILE_SIZE;
    moveDirection = UP;
}
else if (keyboard_check_pressed(ord('S'))) then
{
    state = MOVING;
    tweenTargetY += TILE_SIZE;
    moveDirection = DOWN;
}
else
{
    moveDirection = STILL;
}

debugMessage = string(state)+" "+string(tweenTargetX)+" "+string(tweenTargetY);
