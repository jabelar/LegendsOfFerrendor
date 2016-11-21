if (keyboard_check_pressed(vk_escape)) then game_end();

timeInRoom += 1;

// process players
// for (currentPlayer=0; currentPlayer<numPlayers; currentPlayer++)
// {
    switch (state[clientPlayer])
    {
       case OPENING_CREDITS: scrOpeningCredits(); break;
       case MAIN_MENU: scrMainMenu(); break;
       case WAIT_INPUT: scrWaitInput(); break;
       case MOVING: scrMoving(); break;
       case ATTACK_MELEE: scrAttackMelee(); break;
       case ATTACK_RANGED: scrAttackRanged(); break;
       case ATTACK_MAGIC: scrAttackMagic(); break;
    } 
// }

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
