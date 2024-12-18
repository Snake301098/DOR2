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

if owner = gamer.id then global.warrep--
instance_destroy();


