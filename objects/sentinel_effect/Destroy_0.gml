/// @description Insert description here
// You can write your code in this editor
var myID = owner
var _cooldown = global.sentinel_effect_cooldown;

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[6] = _cooldown;
	}	
}

owner.is_using_sentinel = false;