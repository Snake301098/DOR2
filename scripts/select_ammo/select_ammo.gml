/// @description
function select_ammo(_ammo)
{
	with(gamer)
	{
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