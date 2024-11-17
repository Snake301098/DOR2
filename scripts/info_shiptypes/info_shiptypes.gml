function info_shiptypes(_shiptype,_info,_level=0)
{

	var goliath_health = 156000;
	var vengeance_health = 128000;
	
	
	if _shiptype = "pheonix"
	{
		if _info = "speed" then return 220;
		else if _info = "health" then return 6000;
	}
	
	else if _shiptype = "nostromo"
	{
		if _info = "speed" then return 220;
		else if _info = "health" then return 64000;
	}
	
	else if _shiptype = "bigboy"
	{
		if _info = "speed" then return 200;
		else if _info = "health" then return 128000;
	}
	
	else if _shiptype = "leonov"
	{
		if _info = "speed" then return 280;
		else if _info = "health" then return 126000;
	}
	
	else if _shiptype = "vengeance"
	{
		if _info = "speed" then return 380;
		else if _info = "health" then return 18000;
	}
	
	else if _shiptype = "goliath"
	{
		if _info = "speed" then return 300;
		else if _info = "health" then return 256000;
	}
	
	else if _shiptype = "citadel"
	{
		if _info = "speed" then return 240;
		else if _info = "health" then return 550000;
	}
	
	else if _shiptype = "spearhead"
	{
		if _info = "speed" then return 350;
		else if _info = "health" then return 126000;
	}
	
	else if _shiptype = "aegis"
	{
		if _info = "speed" then return 300;
		else if _info = "health" then return 275000;
	}
}