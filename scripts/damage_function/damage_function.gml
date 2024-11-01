function damage_function(_attacker,_victim,_damage,_attack_type,_critical_hit=false)
{
	if _damage = "MISS"
	{
		draw_damage(_victim,damage_syntax(_damage),c_purple);
	}
	else
	{
		_victim.own_health -= round(_damage);
		if _critical_hit = true
		{
			draw_damage(_victim,damage_syntax(_damage),c_orange);
		}
		else
		{
			if _victim = gamer.id
			{
				draw_damage(_victim,damage_syntax(_damage),make_color_rgb(183,73,191));
			}
			else
			{
				draw_damage(_victim, damage_syntax(_damage),c_red);
			}
		}
	}
	
	//update status 
	with(_victim)
	{
		if _victim.object_index = ship
		{
			alarm[6] = irandom_range(10,20);
			isAttacked=1;
			alarm[4]=room_speed*2;
		}
	}
	with(_attacker){isAttacking=1;alarm[8]=room_speed*2;}
	
	if _victim.own_health <= 0
	{
		//KILLED
		_victim.gotKilledBy = _attacker.id
	}	
}