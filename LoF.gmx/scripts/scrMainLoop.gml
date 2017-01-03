//Make sure you can always escape the game
if (keyboard_check_pressed(vk_escape)) then game_end();

timeInRoom += 1;

// process players
// for (currentPlayer=0; currentPlayer<numPlayers; currentPlayer++)
// {
    switch (state[clientPlayer])
    {
       case OPENING_CREDITS: scrOpeningCredits(); break;
       case MAIN_MENU: scrMainMenu(); break;
       case WAIT_INPUT_SMOOTH: scrWaitInputSmooth(); break;
       case MOVING_SMOOTH: scrMovingSmooth(); break;
       case WAIT_INPUT: scrWaitInput(); break;
       case MOVING: scrMoving(); break;
       case ATTACK_MELEE: scrAttackMelee(); break;
       case ATTACK_RANGED: scrAttackRanged(); break;
       case ATTACK_MAGIC: scrAttackMagic(); break;
    } 
// }

// process mobs
with objEntity
{
    // players are already handled as a special case
    if not object_is_ancestor(object_index, objPlayer) and object_index != objPlayer
    {
    
        switch (state[clientPlayer])
        {
           case WAIT_INPUT_SMOOTH: scrMobAISmooth(); scrMobMovementSmooth(); break;
           case MOVING_SMOOTH: scrMobAISmooth(); scrMobMovementSmooth(); break;
           case WAIT_INPUT: scrMobAI(); scrMobMovement(); break;
           case MOVING: scrMobMovement(); break;
           case ATTACK_MELEE: scrMobAISmooth(); scrMobMovement(); break;
           case ATTACK_RANGED: scrMobAISmooth(); scrMobMovement(); break;
           case ATTACK_MAGIC: scrMobAISmooth(); scrMobMovement(); break;
        }
    }
}

// process weapons
with objRanged
{
    scrRangedStep();
}
with objMagic
{
    scrMagicStep();
}
with objMelee
{
    scrMeleeStep();
}

debugMessage = string(state[0])+" "+string(tweenTargetX[0])+" "+string(tweenTargetY[0])+" "+string(moveDirection[0]);
