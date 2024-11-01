if deactivated_clock > 0
{
	deactivated_clock-=1;
	show_protocol_message("Activating ship in " + string(deactivated_clock) + " seconds...");
	alarm[1]=room_speed;
} else
{
	show_protocol_message("Ship activated !")
	global.cloaked=0;
	gamer.v_zone_bz=false;
	instance_destroy(respawn);
}