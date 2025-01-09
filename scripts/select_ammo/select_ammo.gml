/// @description
function select_ammo(_ammo)
{
	with(gamer)
	{
		if _ammo = x1_ammo then gamer.ammo_display = "x1"
		if _ammo = x2_ammo then gamer.ammo_display = "x2"
		if _ammo = x3_ammo then gamer.ammo_display = "x3"
		if _ammo = x4_ammo then gamer.ammo_display = "x4"
		if _ammo = sab then gamer.ammo_display = "x5"
		
		if target != noone
		{
			if attacking = false
			{
				attacking = true
				ammo_selected = _ammo
			}
			else
			{
				if ammo_selected = _ammo and just_hit_rsb = 0 then
				{
					attacking = false
				}
				else
				{
					attacking = true
					ammo_selected = _ammo
				}
			}
		}


		just_hit_rsb=0
	}
}