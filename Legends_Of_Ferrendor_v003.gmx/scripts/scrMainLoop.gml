 if (keyboard_check_pressed(vk_escape)) then game_end();
 
 switch (state)
 {
    case MAIN_MENU: scrMainMenu(); break;
    case WAIT_INPUT: scrWaitInput(); break;
    case MOVING: scrMoving(); break;
    case ENCOUNTER_SETUP: scrSetup(); break;
    case ENCOUNTER_PLAY: scrPlay(); break;
 }
 
turnTimer -= 1;
if turnTimer < 0 then turnTimer = STEPS_PER_TURN;

 

