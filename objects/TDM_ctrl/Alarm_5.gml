/// @description CHECK WIN

if TDM_is_over = false
{
	if gamer.corporation = 0
	{
		if eic_ships = 0 and vru_ships = 0 then event_user(0);
	}


	if gamer.corporation = 1
	{
		if mmo_ships = 0 and vru_ships = 0 then event_user(0);
	}


	if gamer.corporation = 2
	{
		if mmo_ships = 0 and eic_ships = 0 then event_user(0);
	}

	alarm[5] = room_speed * 3;
}