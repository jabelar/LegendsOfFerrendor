state = WAIT_INPUT;

tweenTargetX = playerInstance[0].x;
tweenTargetY = playerInstance[0].y;

if (moveDirection == LEFT) then moveDirection = LOOK_LEFT;
else if (moveDirection == RIGHT) then moveDirection = LOOK_RIGHT;
else if (moveDirection == UP) then moveDirection = LOOK_UP;
else if (moveDirection == DOWN) then moveDirection = LOOK_DOWN;

show_debug_message("Collision");


