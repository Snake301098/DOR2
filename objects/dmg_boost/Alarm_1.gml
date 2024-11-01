/// @description End of boost
owner.dmg_boost_activated = false;

var myID = owner
var _ability_number = ability_number;
var _cooldown = 10 * room_speed;

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		if _ability_number = 1 then alarm[1] = _cooldown;
		if _ability_number = 2 then alarm[2] = _cooldown;
		if _ability_number = 3 then alarm[3] = _cooldown;
	}	
}

if ability_number = 1 then owner.is_using_ability_1 = false;
if ability_number = 2 then owner.is_using_ability_2 = false;
if ability_number = 3 then owner.is_using_ability_3 = false;

instance_destroy();