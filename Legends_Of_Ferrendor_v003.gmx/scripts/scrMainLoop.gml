 if (keyboard_check_pressed(vk_escape)) then game_end();
 
  if (keyboard_check_pressed(ord('A'))) then 
 {
    objPlayer.x -= 256;
 }
 if (keyboard_check_pressed(ord('D'))) then
 {
    objPlayer.x += 256;
 }
 if (keyboard_check_pressed(ord('W'))) then
 {
    objPlayer.y -= 256;
 }
 if (keyboard_check_pressed(ord('S'))) then
 {
    objPlayer.y += 256;
 }
 
 // keep player from leaving room area
 if objPlayer.x < 0 then objPlayer.x = 0;
 if objPlayer.x >= room_width then objPlayer.x = room_width - 256;
 if objPlayer.y < 0 then objPlayer.y = 0;
 if objPlayer.y >= room_height then objPlayer.y = objPlayer.room_height - 256;
 
 // update view
 view_xview[0] = objPlayer.x - 7 * 256; 
 view_yview[0] = objPlayer.y - 5 * 256; 

