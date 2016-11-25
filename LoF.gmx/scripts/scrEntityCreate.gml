path = path_add(); // this will be updated with motion planning paths in the entity AI

// common
mobState = IDLE;
mobMoveDirection = STILL;
mobMaxSpeed = TILE_SIZE / 32;
mobSpeed = mobMaxSpeed / 2;

// sprite array
spritesMob[UP] = sprite_index;
spritesMob[DOWN] = sprite_index;
spritesMob[RIGHT] = sprite_index;
spritesMob[LEFT] = sprite_index;
spritesMob[MELEE_UP] = sprite_index;
spritesMob[MELEE_DOWN] = sprite_index;
spritesMob[MELEE_RIGHT] = sprite_index;
spritesMob[MELEE_LEFT] = sprite_index;
spritesMob[RANGED_UP] = sprite_index;
spritesMob[RANGED_DOWN] = sprite_index;
spritesMob[RANGED_RIGHT] = sprite_index;
spritesMob[RANGED_LEFT] = sprite_index;
spritesMob[LOOK_UP] = sprite_index;
spritesMob[LOOK_DOWN] = sprite_index;
spritesMob[LOOK_RIGHT] = sprite_index;
spritesMob[LOOK_LEFT] = sprite_index;
