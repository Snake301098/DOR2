/// @description X4


if target != noone
{
	if attacking = false
	{
		attacking = true
		ammo_selected = x4_ammo
	}
	else
	{
		if ammo_selected = x4_ammo and just_hit_rsb = 0 then
		{
			attacking = false
		}
		else
		{
			attacking = true
			ammo_selected = x4_ammo
		}
	}
}

just_hit_rsb=0