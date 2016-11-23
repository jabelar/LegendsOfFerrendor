draw_set_font(font0);
draw_set_colour(c_aqua);

switch (room)
{
   case roomOpeningCredits:
   {
       break;
   }
   case roomMainMenu:
   {
      break;
   }
   default:
   {
      draw_text(0, 100, "Time Remaining: "+string(turnTimer));
      draw_text(0, 200, string(objPlayer.x));
      draw_text(0, 300, string(objPlayer.y));
      draw_text(0, 400, debugMessage);
   }
}
