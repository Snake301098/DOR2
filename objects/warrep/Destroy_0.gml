/// @description Insert description here
// You can write your code in this editor
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