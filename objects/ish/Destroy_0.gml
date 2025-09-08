/// @description Insert description here
// You can write your code in this editor
owner.is_using_ish = false;
var myID = owner
var _cooldown = global.ish_cooldown;

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[3] = _cooldown;
	}	
}

if owner = gamer.id then global.ish--