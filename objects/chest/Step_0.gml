/// @description 
if clicked 
{
	//set limit time to collect
	if waiting_to_collect = false
	{
		alarm[2] = room_speed*3
	}
	
	//check if gamer is on chest
	if place_meeting(x,y,gamer)
	{
		gamer_is_on = true
	}
	
	//if gamer is on and hasnt started collecting, then start countdown
	if gamer_is_on = true and waiting_to_collect = false then 
	{
		waiting_to_collect = true
		alarm[1] = room_speed;
	}
}

