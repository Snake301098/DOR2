// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deal_damage(_attacker,_victim,_ammo,_damage,_draw=true,_color=c_white,_comment="")
{
	//Set color
	if _victim = gamer.id then _color = c_purple else _color = c_red
	
	if is_numeric(_damage)
	{	
		if _ammo = "x5"
		{
			_victim.own_shield -= _damage
			_attacker.own_shield += _damage
		}
		else
		{
			var _shield_absorb = _victim.shieldAbsorb;
	
			if _victim.own_shield <= _damage * _shield_absorb
			{
				_victim.own_health -= _damage - _victim.own_shield
				_victim.own_shield = 0
			}
			else
			{
				_victim.own_health -= _damage * (1 - _shield_absorb)
				_victim.own_shield -= _damage * _shield_absorb
			}
		}
	}
	
	//Remove repbot and shield repair
	if _victim = gamer.id then with(gamer){alarm[2] = 3*60} else with(_victim){alarm[4]=3*60}
	with(shield_restore_ctrl){if owner=_victim then instance_destroy();}
	with(repbot){if owner=_victim then instance_destroy();}

	//DRAW LOGIC
	if instance_exists(gamer.target)
	{
		if (_victim = gamer.id or _victim = gamer.target) and (_draw = true) then _draw = true else _draw = false
	}
	else
	{
		if _victim = gamer.id and _draw = true then _draw = true else _draw = false
	}

	if _draw = true
	{
		a=instance_create_depth(round(0),round(0),-5500,damage_drawer)
		a.idship=_victim;
		a.t=_damage; //dmg
		a.color_1=_color;
		
		if _attacker=gamer.id
		{
			if is_real(_damage) then update_stats(_ammo+"_dmg", _damage)
		}
	}
}




