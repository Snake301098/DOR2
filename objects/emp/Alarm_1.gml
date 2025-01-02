/// @description End of EMP
owner.is_using_emp = false;
var myID = owner
var _cooldown = global.emp_cooldown;

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[2] = _cooldown;
	}	
}

if owner = gamer.id then global.emp--
instance_destroy();