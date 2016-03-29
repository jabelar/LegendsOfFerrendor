objPlayer.image_speed = 0;
if moveDirection != STILL
{
    objPlayer.sprite_index = spritesMoving[moveDirection];
}


if (keyboard_check(ord('A'))) then 
{
    if (place_meeting(objPlayer.x - TILE_SIZE, objPlayer.y, objInteractable))
    {
        scrCollision();
    }
    else
    {
        tweenTargetX = objPlayer.x - TILE_SIZE;
    }
    moveDirection = LEFT;
}
else if (keyboard_check(ord('D'))) then
{
    if (place_meeting(objPlayer.x + TILE_SIZE, objPlayer.y, objInteractable))
    {
        scrCollision();
    }
    else
    {
        tweenTargetX = objPlayer.x + TILE_SIZE;
    }
    moveDirection = RIGHT;
}
else if (keyboard_check(ord('W'))) then
{
    if (place_meeting(objPlayer.x, objPlayer.y - TILE_SIZE, objInteractable))
    {
        scrCollision();
    }
    else
    {
        tweenTargetY = objPlayer.y - TILE_SIZE;
    }
    moveDirection = UP;
}
else if (keyboard_check(ord('S'))) then
{
    if (place_meeting(objPlayer.x, objPlayer.y + TILE_SIZE, objInteractable))
    {
        scrCollision();
    }
    else
    {
        tweenTargetY = objPlayer.y + TILE_SIZE;
    }
    moveDirection = DOWN;
}
else
{
}

turnTimer -= 1;
if turnTimer < 0 
{
    state = MOVING;
    turnTimer = STEPS_PER_TURN;
}

