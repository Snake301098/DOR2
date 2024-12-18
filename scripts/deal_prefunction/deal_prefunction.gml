function deal_prefunction(_attacker,_victim,_ammo,_damage,_damage_x,_draw=true,_color=c_white,_comment="")
{
	var a,b,c,healthAbsord,shieldAbsorb,shieldPen,healthAbsorb;
	if _attacker.target=_victim or _ammo = "kamikaze" then
	{
	    if _victim.is_using_ish=1 then {a="MISS"} else
	    {
	        //Hit calculation etc
	        if (irandom_range(0,100) < 80)
			{
	            if (!is_real(_damage)){ _damage=0;}
	                a=round((_damage*_damage_x)-irandom((_damage*_damage_x)*0.15))
			}
			else
			{
				a="MISS"
			}
			if _ammo = "kamikaze" then a=_damage
			deal_damage(_attacker,_victim,_ammo,a,_draw,_color)
			if _ammo = "laser" then instance_destroy()
		}
	}
}