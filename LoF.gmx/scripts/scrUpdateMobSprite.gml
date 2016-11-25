mobMoveDirection = STILL;

if direction = 0
{
   mobMoveDirection = RIGHT;
}
else if direction = 180
{
   mobMoveDirection = LEFT;
}


if direction = 270
{
   mobMoveDirection = DOWN;
}
else if direction = 90
{
   mobMoveDirection = UP;
}

show_debug_message("mobMoveDirection = "+string(mobMoveDirection));

if mobMoveDirection != STILL
{
    sprite_index = spritesMob[mobMoveDirection];
}
