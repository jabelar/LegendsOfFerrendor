if (keyboard_check_pressed(vk_escape)) then game_end();
 
switch (state)
{
   case MAIN_MENU: scrMainMenu(); break;
   case WAIT_INPUT: scrWaitInput(); break;
   case MOVING: scrMoving(); break;
   case ATTACKING: scrAttacking(); break;
} 

debugMessage = string(state)+" "+string(tweenTargetX)+" "+string(tweenTargetY)+" "+string(moveDirection);
 

