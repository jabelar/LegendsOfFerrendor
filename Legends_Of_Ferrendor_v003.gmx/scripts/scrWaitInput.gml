tweenTargetX = objPlayer.x;
tweenTargetY = objPlayer.y;

if (keyboard_check(ord('A'))) then 
{
    if (not place_empty(objPlayer.x-TILE_SIZE, y))
    {
        scrCollision();
    }
    else
    {
        state = MOVING;
        tweenTargetX -= TILE_SIZE;
        moveDirection = LEFT;
    }
}
else if (keyboard_check(ord('D'))) then
{
    if (not place_empty(objPlayer.x-TILE_SIZE, y))
    {
        scrCollision();
    }
    else
    {
        state = MOVING;
        tweenTargetX += TILE_SIZE;
        moveDirection = RIGHT;
    }
}
else if (keyboard_check(ord('W'))) then
{
    if (not place_empty(objPlayer.x-TILE_SIZE, y))
    {
        scrCollision();
    }
    else
    {
        state = MOVING;
        tweenTargetY -= TILE_SIZE;
        moveDirection = UP;
    }
}
else if (keyboard_check(ord('S'))) then
{
    if (not place_empty(objPlayer.x-TILE_SIZE, y))
    {
        scrCollision();
    }
    else
    {
        state = MOVING;
        tweenTargetY += TILE_SIZE;
        moveDirection = DOWN;
    }
}
else
{
    moveDirection = STILL;
    objPlayer.image_speed = 0;
}

debugMessage = string(state)+" "+string(tweenTargetX)+" "+string(tweenTargetY);
