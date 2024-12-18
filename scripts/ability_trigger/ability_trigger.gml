/// @description
function ability_trigger(owner,ability)
{
	//WARREP ----------------------------------------------
	if ability = "warrep"
	{
		if owner.can_use_warrep = true
		{
			var _warrep = instance_create_depth(0,0,0,warrep);
			_warrep.owner = owner.id;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("Warrep still recharging")
		}
	}
	
	//EMP ----------------------------------------------
	if ability = "EMP"
	{
		if owner.can_use_emp = true
		{
			var _emp = instance_create_depth(0,0,0,emp);
			_emp.owner = owner.id;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("EMP still recharging")
		}
	}
	
	//ISH ----------------------------------------------
	if ability = "ISH"
	{
		if owner.can_use_ish = true
		{
			var _ish = instance_create_depth(0,0,0,ish);
			_ish.owner = owner.id;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("ISH still recharging")
		}
	}
	
	//shieldbackup ----------------------------------------------
	if ability = "shieldbackup"
	{
		if owner.can_use_shieldbackup = true
		{
			var _shieldbackup = instance_create_depth(0,0,0,shieldbackup);
			_shieldbackup.owner = owner.id;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("Shield backup still recharging")
		}
	}
	/*
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
	*/
}