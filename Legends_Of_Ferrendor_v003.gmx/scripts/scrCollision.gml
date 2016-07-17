state[currentPlayer] = WAIT_INPUT;

tweenTargetX[currentPlayer] = playerInstance[currentPlayer].x;
tweenTargetY[currentPlayer] = playerInstance[currentPlayer].y;

if (moveDirection[currentPlayer] == LEFT) then moveDirection[currentPlayer] = LOOK_LEFT;
else if (moveDirection[currentPlayer] == RIGHT) then moveDirection[currentPlayer] = LOOK_RIGHT;
else if (moveDirection[currentPlayer] == UP) then moveDirection[currentPlayer] = LOOK_UP;
else if (moveDirection[currentPlayer] == DOWN) then moveDirection[currentPlayer] = LOOK_DOWN;

show_debug_message("Collision");


