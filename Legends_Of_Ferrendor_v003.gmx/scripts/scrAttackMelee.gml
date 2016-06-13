actionTimer -=1;
if actionTimer < 0
{
    actionTimer = TWEENS_PER_MOVE;
    state[currentPlayer] = WAIT_INPUT;
    moveDirection[currentPlayer] = STILL;
}

scrKeepPlayerInView();
