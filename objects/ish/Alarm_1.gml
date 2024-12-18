/// @description END
owner.is_using_ish = false;
var myID = owner
var _cooldown = 10 * room_speed;

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[3] = _cooldown;
	}	
}

if owner = gamer.id then global.ish--
instance_destroy();