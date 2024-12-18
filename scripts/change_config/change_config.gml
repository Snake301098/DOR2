/// @description
function change_config(_id)
{
	if _id.can_change_config = true
	{
		with(_id)
		{
			if config = 1 then
			{
				config = 2
				Gun = GunC2
				Engine = EngineC2
				own_shieldC1 = own_shield
				own_shield = own_shieldC2
				shield_def = shield_defC2
				followShield = own_shieldC2
				ship_speed = ship_speedC2
				droid = droidC2
				MaxDamage = MaxDamageC2
				shieldAbsorb = shieldAbsorbC2
				if _id = gamer.id then {guns = gunsC2; gamer.Inventory = gamer.InventoryC2}
			}
			else 
			{
				config = 1
				Gun = GunC1
				Engine = EngineC1
				own_shieldC2 = own_shield
				own_shield = own_shieldC1
				shield_def = shield_defC1
				followShield = own_shieldC1
				ship_speed = ship_speedC1
				droid = droidC1
				MaxDamage = MaxDamageC1
				shieldAbsorb = shieldAbsorbC1
				if _id = gamer.id then {guns = gunsC1; gamer.Inventory = gamer.InventoryC1}
			}
		}
	
	/*
		for (i=1; i<=Gun[0]; i+=1)
		{
			if Gun[i] != "" and Gun[i] != "noone"
			{
				var _damage = info_weapons(Gun[i],"damage");
				MaxDamage+=_damage; guns+=1; GunDmg[i]=_damage;
			}
		}
		*/
		_id.can_change_config = false;
		var myID = _id;
		with(cooldowns_ctrl)
		{
			if owner = myID then
			{
				alarm[0] = 5*60;
			}	
		}
	}
	else
	{
		if _id = gamer.id then show_HUD_message("Config switch on cooldown")
	}
}

