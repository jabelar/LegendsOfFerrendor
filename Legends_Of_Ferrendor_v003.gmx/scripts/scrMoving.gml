switch (moveDirection)
{
    case LEFT:
    {
        objPlayer.x -= 256;
        break;
    }
    case RIGHT:
    {
        objPlayer.x += 256;
        break;
    }
    case UP:
    {
        objPlayer.y -= 256;
        break;
    }
    case DOWN:
    {
        objPlayer.y += 256;
        break;
    }
    case STILL:
    {
        // this case shouldn't happen
        break;
    }
}
 
 // keep player from leaving room area
 if objPlayer.x < 0 then objPlayer.x = 0;
 if objPlayer.x >= room_width then objPlayer.x = room_width - 256;
 if objPlayer.y < 0 then objPlayer.y = 0;
 if objPlayer.y >= room_height then objPlayer.y = objPlayer.room_height - 256;
 
 // update view
 view_xview[0] = objPlayer.x - 7 * 256; 
 view_yview[0] = objPlayer.y - 5 * 256; 

 state = WAIT_INPUT;
