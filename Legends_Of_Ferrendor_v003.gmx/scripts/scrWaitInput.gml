objPlayer.image_speed = 0;
if moveDirection != STILL
{
    objPlayer.sprite_index = spritesMoving[moveDirection];
}


if (keyboard_check(ord('A'))) then 
{
    moveDirection = LEFT;
    if (place_meeting(objPlayer.x - TILE_SIZE, objPlayer.y, objInteractable))
    {
        scrCollision();
    }
    else
    {
        tweenTargetX = objPlayer.x - TILE_SIZE;
    }
}
else if (keyboard_check(ord('D'))) then
{
    moveDirection = RIGHT;
    if (place_meeting(objPlayer.x + TILE_SIZE, objPlayer.y, objInteractable))
    {
        scrCollision();
    }
    else
    {
        tweenTargetX = objPlayer.x + TILE_SIZE;
    }
}
else if (keyboard_check(ord('W'))) then
{
    moveDirection = UP;
    if (place_meeting(objPlayer.x, objPlayer.y - TILE_SIZE, objInteractable))
    {
        scrCollision();
    }
    else
    {
        tweenTargetY = objPlayer.y - TILE_SIZE;
    }
}
else if (keyboard_check(ord('S'))) then
{
    moveDirection = DOWN;
    if (place_meeting(objPlayer.x, objPlayer.y + TILE_SIZE, objInteractable))
    {
        scrCollision();
    }
    else
    {
        tweenTargetY = objPlayer.y + TILE_SIZE;
    }
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

