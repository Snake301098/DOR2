/// @description Insert description here
// You can write your code in this editor
owner.is_using_ish = false;
var myID = owner
var _cooldown = global.ish_cooldown;
if owner.ship_name = "referee" then _cooldown = round(_cooldown*0.9);

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[11] = _cooldown;
	}	
}

if owner = gamer.id then global.smb--