x += mobSpeed;
if x > room_width-TILE_SIZE then x =0;

switch mobState
{
   case IDLE:
   {
      scrIdle();
      break;
   }
   case WANDERING:
   {
      scrWanderingSmooth();
      break;
   }
   case ATTACKING_RANGED:
   {
      scrAttackingRanged();
      break;
   }
   case ATTACKING_MELEE:
   {
      scrAttackingMelee();
      break;
   }
   case FLEEING:
   {
      scrFleeingSmooth();
      break;
   }
   case PATROLLING:
   {
      scrPatrollingSmooth();
      break;
   }
   case DYING:
   {
      scrMobDying();
      break;
   }
}
