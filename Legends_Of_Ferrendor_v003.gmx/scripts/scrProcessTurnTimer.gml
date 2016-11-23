turnTimer -= 1;
if turnTimer < 0 
{
    turnTimer = STEPS_PER_TURN;
    updateStateForAttackInNewDirection();
    updateStateForAttackInExistingDirection();
}
