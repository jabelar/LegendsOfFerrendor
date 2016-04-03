if (keyboard_check_pressed(vk_escape)) then game_end();
 
switch (state)
{
   case MAIN_MENU: scrMainMenu(); break;
   case WAIT_INPUT: scrWaitInput(); break;
   case MOVING: scrMoving(); break;
   case ATTACK_MELEE: scrAttackMelee(); break;
   case ATTACK_RANGED: scrAttackRanged(); break;
   case ATTACK_MAGIC: scrAttackMagic(); break;
} 

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

debugMessage = string(state)+" "+string(tweenTargetX)+" "+string(tweenTargetY)+" "+string(moveDirection);
 

