// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jump_to_map(_room){
	
	if room != _room
	{
		var can_tp = check_map_unlocked(room,_room,room);
		if can_tp[0] = true
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
		else
		{
			show_HUD_message("Map unlocked at level " + string(can_tp[1]));
		}
	}
}