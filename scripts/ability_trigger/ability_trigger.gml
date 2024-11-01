/// @description
function ability_trigger(owner,ability,ability_number)
{
	//WARREP ----------------------------------------------
	if ability = "warrep"
	{
		if ability_number = 1 and owner.can_use_ability_1 = true or ability_number = 2 and owner.can_use_ability_2 = true or ability_number = 1 and owner.can_use_ability_1 = true
		{
				var _warrep = instance_create_depth(0,0,0,warrep);
				_warrep.owner = owner.id;
				_warrep.ability_number = ability_number;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("Warrep still recharging")
		}
	}
	
	//DMG BOOST ----------------------------------------------
	if ability = "dmg_boost"
	{
		if ability_number = 1 and owner.can_use_ability_1 = true or ability_number = 2 and owner.can_use_ability_2 = true or ability_number = 1 and owner.can_use_ability_1 = true
		{
		dmg_boost_activated = true;
			var _dmg_boost = instance_create_depth(0,0,0,dmg_boost);
				_dmg_boost.owner = owner.id;
				_dmg_boost.ability_number = ability_number;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("Damage boost still recharging")
		}
	}
}