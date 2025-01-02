/// @description END
var myID = owner
var _cooldown = global.shieldbackup_cooldown;

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[4] = _cooldown;
	}	
}

if owner = gamer.id then global.shieldbackup--
instance_destroy();