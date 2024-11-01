function damage_prefunction(_attacker,_damage,_distance,_type)
{
	if (irandom_range(0,100) < 80)
	{ //If not missed
		a=round(_damage*irandom_range(80,120)/100) //random damage
		if _distance < global.ammo_ship_near_range then
		{
			var coef = (global.ammo_ship_near_dmg - global.ammo_ship_nearest_dmg) / (global.ammo_ship_near_range - global.ammo_ship_nearest_range);
			a = a * (coef * _distance + global.ammo_ship_near_dmg - coef * global.ammo_ship_near_range);
		}
		else if _distance > global.ammo_ship_far_range then a = a;
		else
		{
			var coef = (global.ammo_ship_far_dmg - global.ammo_ship_near_dmg) / (global.ammo_ship_far_range - global.ammo_ship_near_range);
			a = a * (coef * _distance + global.ammo_ship_far_dmg - coef * global.ammo_ship_far_range);
		}
		
		if _attacker.dmg_boost_activated = true then a *= 2;
	}
	else
	{
		a = "MISS"
	}
	
	return a;
}

/*
add type laser ship parce qu'en ce moment c'est seulement les ammoship qui 
ont les  dmg en fonction distance
mais  il faut  aussi laser  et mob  ammo 

check aussi les sprites lasers alignées avec ship (scale)