// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deal_healing(_attacker,_victim,_ammo,_healing,_shield_or_health="health",_draw=true,_color=c_white,_comment="")
{
	if _shield_or_health = "health"
	{
		_victim.own_health += _healing;
		if _victim.own_health > _victim.health_def then _victim.own_health = _victim.health_def 
		_color = c_lime
	}
	else
	{
		_victim.own_shield += _healing;
		if _victim.own_shield > _victim.shield_def then _victim.own_shield = _victim.shield_def 
		_color = c_aqua
	}
	
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
		a.t=_healing; //dmg
		a.color_1=_color;
	}
}




