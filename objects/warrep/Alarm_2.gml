/// @description End of warrep
var myID = owner
var _cooldown = 10 * room_speed;

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[1] = _cooldown;
	}	
}

instance_destroy();