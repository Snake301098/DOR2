/// @description count down
if count_down_step > 0 then
{
	show_protocol_message(string(count_down_step));
	count_down_step--;
	alarm[1] = room_speed;
}
else
{
	show_protocol_message("Wave " + string(wave) + "!")
	event_user(1); //start next wave
}
