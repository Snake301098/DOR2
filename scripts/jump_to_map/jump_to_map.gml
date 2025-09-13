// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jump_to_map(_room){
	
	if room != _room
	{
		if global.uridium >= 500 then
		{
			global.uridium -= 500
			room_goto(_room)
			show_protocol_message("Used Jumpmap for 500 uridium");
		}
		else
		{
			show_protocol_message("You need 500 uridium to use jumpmap");
		}
	}
}