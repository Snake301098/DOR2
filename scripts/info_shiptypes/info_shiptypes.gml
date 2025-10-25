function info_shiptypes(_shiptype,_info,_level=0)
{

	var goliath_health = 156000;
	var vengeance_health = 128000;
	
	
	if _shiptype = "phoenix"
	{
		if _info = "speed" then return 320;
		else if _info = "health" then return 6000;
		else if _info = "gun_slots" then return 1;
		else if _info = "engine_slots" then return 1;
	}
	
	else if _shiptype = "nostromo"
	{
		if _info = "speed" then return 340;
		else if _info = "health" then return 64000;
		else if _info = "gun_slots" then return 7;
		else if _info = "engine_slots" then return 10;
	}
	
	else if _shiptype = "bigboy"
	{
		if _info = "speed" then return 260;
		else if _info = "health" then return 128000;
		else if _info = "gun_slots" then return 8;
		else if _info = "engine_slots" then return 15;
	}
	
	else if _shiptype = "leonov"
	{
		if _info = "speed" then return 360;
		else if _info = "health" then return 126000;
		else if _info = "gun_slots" then return 6;
		else if _info = "engine_slots" then return 6;
	}
	
	else if _shiptype = "vengeance"
	{
		if _info = "speed" then return 380;
		else if _info = "health" then return 180000;
		else if _info = "gun_slots" then return 10;
		else if _info = "engine_slots" then return 10;
	}
	
	else if _shiptype = "goliath"
	{
		if _info = "speed" then return 300;
		else if _info = "health" then return 256000;
		else if _info = "gun_slots" then return 15;
		else if _info = "engine_slots" then return 15;
	}
	
	else if _shiptype = "citadel"
	{
		if _info = "speed" then return 240;
		else if _info = "health" then return 550000;
		else if _info = "gun_slots" then return 7;
		else if _info = "engine_slots" then return 20;
	}
	
	else if _shiptype = "spearhead"
	{
		if _info = "speed" then return 370;
		else if _info = "health" then return 126000;
		else if _info = "gun_slots" then return 5;
		else if _info = "engine_slots" then return 12;
	}
	
	else if _shiptype = "aegis"
	{
		if _info = "speed" then return 300;
		else if _info = "health" then return 275000;
		else if _info = "gun_slots" then return 10;
		else if _info = "engine_slots" then return 15;
	}
}