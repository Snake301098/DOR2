/// @description End of warrep
var myID = owner
var _cooldown = global.warrep_cooldown;

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[1] = _cooldown;
	}	
}

if owner = gamer.id then global.warrep--
instance_destroy();


