/// @description COUNTDOWN



if countdown > 0 
{
	show_protocol_message("Arena starting in " + string(countdown) + "seconds...");
	countdown-=1;
	alarm[3] = room_speed;
}
else
{
	show_protocol_message("Arena starting now!");
	alarm[1]=1;
}
