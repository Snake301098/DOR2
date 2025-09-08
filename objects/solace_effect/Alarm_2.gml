/// @description End of effect
var myID = owner
var _cooldown = global.solace_effect_cooldown;

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[7] = _cooldown;
	}	
}

owner.is_using_solace = false;

instance_destroy();

