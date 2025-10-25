/// @description END
var myID = owner
var _cooldown = global.shieldbackup_cooldown;
if owner.ship_name = "referee" then _cooldown = round(_cooldown*0.9);

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[4] = _cooldown;
	}	
}

if owner = gamer.id then global.shieldbackup--
instance_destroy();