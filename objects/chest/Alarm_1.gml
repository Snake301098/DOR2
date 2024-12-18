/// @description COUNTDOWN

if gamer_is_on = true and waiting_to_collect = true and place_meeting(x,y,gamer)
{
	if countdown > 0
	{
		show_protocol_message("Collecting " + type + " chest in " + string(countdown) + "...")
		countdown--
		alarm[1] = room_speed;
	}
	else
	{
		event_user(0)
		instance_destroy()
	}
}



