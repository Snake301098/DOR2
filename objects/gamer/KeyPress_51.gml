/// @description X3

//ability_trigger(id,ability_2,2);


if target != noone
{
	if attacking = false
	{
		attacking = true
		ammo_selected = x3_ammo
	}
	else
	{
		if ammo_selected = x3_ammo and just_hit_rsb = 0 then
		{
			attacking = false
		}
		else
		{
			attacking = true
			ammo_selected = x3_ammo
		}
	}
}


just_hit_rsb=0


