/// @description Insert description here
// You can write your code in this editor
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