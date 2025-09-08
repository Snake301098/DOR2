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
	
	//sentinel effect ----------------------------------------------
	if ability = "sentinel_effect"
	{
		if owner.can_use_sentinel = true
		{
			var _sentinel_effect = instance_create_depth(0,0,0,sentinel_effect);
			_sentinel_effect.owner = owner.id;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("Sentinel skill is still recharging")
		}
	}
	
	//spectrum effect ----------------------------------------------
	if ability = "spectrum_effect"
	{
		if owner.can_use_spectrum = true
		{
			var _spectrum_effect = instance_create_depth(0,0,0,spectrum_effect);
			_spectrum_effect.owner = owner.id;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("Spectrum skill is still recharging")
		}
	}
	
	//Solace effect ----------------------------------------------
	if ability = "solace_effect"
	{
		if owner.can_use_solace = true
		{
			var _solace_effect = instance_create_depth(0,0,0,solace_effect);
			_solace_effect.owner = owner.id;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("Solace skill is still recharging")
		}
	}
	
	//Diminisher effect ----------------------------------------------
	if ability = "diminisher_effect"
	{
		if owner.can_use_diminisher = true
		{
			var _diminisher_effect = instance_create_depth(0,0,0,diminisher_effect);
			_diminisher_effect.owner = owner.id;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("Diminisher skill is still recharging")
		}
	}
	
	//Venom effect ----------------------------------------------
	if ability = "venom_effect"
	{
		if owner.can_use_venom = true
		{
			var _venom_effect = instance_create_depth(0,0,0,venom_effect);
			_venom_effect.owner = owner.id;
		}
		else
		{
			if owner = gamer.id then show_HUD_message("Venom skill is still recharging")
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