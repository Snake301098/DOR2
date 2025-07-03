function deal_prefunction(_attacker,_victim,_ammo,_damage,_damage_x,_draw=true,_color=c_white,_comment="")
{	
	var _target = noone;
	with(_attacker){if instance_exists(target) then _target=target}
	var a,b,c,healthAbsord,shieldAbsorb,shieldPen,healthAbsorb;
	if(_ammo="x5" and _attacker = _victim) or (_target=_victim and _ammo != "x5" and _ammo != "kamikaze") or (_ammo = "kamikaze") then
	{
		if _ammo = "x5" and instance_exists(_target) then _victim = _target
		//if _victim = gamer.id and _victim.is_using_ish=true then update_stats("ish_avoided",_damage)
		//if _victim = gamer.id and _victim.is_using_ish=false then update_stats("dmg_taken",_damage)
	    if _victim.is_using_ish=true then {a="MISS"} else
	    {
			var bonus_evasion = 0
			var bonus_electro = 0
			var bonus_dmg = 0
			var obj_att = object_get_name(_attacker.object_index);
			var obj_vic = object_get_name(_victim.object_index);
			
			if obj_att = "ship" or obj_att = "gamer" then bonus_electro = _attacker.electro_optics * 3 else bonus_electro = 0
			if obj_vic = "ship" or obj_vic = "gamer"
			{
				bonus_evasion = _victim.evasive_i * 2 - _victim.evasive_ii * 3
				if obj_att = "ship" or obj_att = "gamer" then bonus_dmg = _attacker.bounty_hunter_i * 0.02 + _attacker.bounty_hunter_ii * 0.03 else bonus_dmg = 0
			}
			else 
			{
				bonus_evasion = 0 
				if obj_att = "ship" or obj_att = "gamer" then bonus_dmg = _attacker.alien_hunter * 0.04 else bonus_dmg = 0
			}
			
			//Hit calculation etc
	        if (irandom_range(0,100) < (80 + bonus_electro - bonus_evasion))
			{
	            if (!is_real(_damage)){ _damage=0;}
	                a=round((_damage*_damage_x*(1+bonus_dmg))-irandom((_damage*_damage_x*(1+bonus_dmg))*0.15))
			}
			else
			{
				a="MISS"
			}
			if _ammo = "kamikaze" then a=_damage
			deal_damage(_attacker,_victim,_ammo,a,_draw,_color)
			if _ammo = "x1" then instance_destroy()
			if _ammo = "x2" then instance_destroy()
			if _ammo = "x3" then instance_destroy()
			if _ammo = "x4" then instance_destroy()
			if _ammo = "x5" then instance_destroy()
			if _ammo = "x6" then instance_destroy()
		}
	}
}