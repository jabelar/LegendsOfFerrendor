if (keyboard_check_pressed(ord('A'))) then 
{
    state = MOVING;
    moveDirection = LEFT;
}
else if (keyboard_check_pressed(ord('D'))) then
{
    state = MOVING;
    moveDirection = RIGHT;
}
else if (keyboard_check_pressed(ord('W'))) then
{
    state = MOVING;
    moveDirection = UP;
}
else if (keyboard_check_pressed(ord('S'))) then
{
    state = MOVING;
    moveDirection = DOWN;
}
else
{
    moveDirection = STILL;
}

debugMessage = string(state);
