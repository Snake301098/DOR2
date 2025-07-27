/// @description
function check_map_unlocked(map1,map2,current_map)
{
	var lvl = get_level_from_xp();
	
	//Maps infos
	var map = map1;
	if map1 = current_map then map = map2;
	
	var is_own_corp = false;
	if info_map(map,"owners") = gamer.corporation then is_own_corp = true;
	var map_name = info_map(map,"name");
	
	//GGs
	if map = GGA or map = GGB or map = GGD or map = GGY or map = arena or map = TDM then return [true,0];
	

	
	//X-1
	if string_char_at(map_name,3) = "1"
	{
		if is_own_corp
		{
			return [true,0];
		}
		else
		{
			if lvl >= 16 return [true,0] else return [false,16];
		}
	}
	
	//X-2
	if string_char_at(map_name,3) = "2"
	{
		if is_own_corp
		{
			return [true,0];
		}
		else
		{
			if lvl >= 13 return [true,0] else return [false,13];
		}
	}
	
	//X-3
	if string_char_at(map_name,3) = "3"
	{
		if is_own_corp
		{
			if lvl >= 2 return [true,0] else return [false,2];
		}
		else
		{
			if lvl >= 5 return [true,0] else return [false,5];
		}
	}
	
	//X-4
	if string_char_at(map_name,3) = "4"
	{
		if is_own_corp
		{
			if lvl >= 3 return [true,0] else return [false,3];
		}
		else
		{
			if lvl >= 5 return [true,0] else return [false,5];
		}
	}
	
	//X-5
	if string_char_at(map_name,3) = "5"
	{
		if is_own_corp
		{
			if lvl >= 10 return [true,0] else return [false,10];
		}
		else
		{
			if lvl >= 14 return [true,0] else return [false,14];
		}
	}
	
	//X-6 / X-7
	if string_char_at(map_name,3) = "6" or string_char_at(map_name,3) = "7"
	{
		if is_own_corp
		{
			if lvl >= 11 return [true,0] else return [false,11];
		}
		else
		{
			if lvl >= 15 return [true,0] else return [false,15];
		}
	}
	
	//X-8
	if string_char_at(map_name,3) = "8"
	{
		if is_own_corp
		{
			if lvl >= 12 return [true,0] else return [false,12];
		}
		else
		{
			if lvl >= 17 return [true,0] else return [false,17];
		}
	}
	
	//4-1 / 4-2 / 4-3
	if map = lv4_1 or map = lv4_2 or map = lv4_3
	{
		if lvl >= 8 return [true,0] else return [false,8];
	}
	
	//4-4
	if map = lv4_4
	{
		if lvl >= 9 return [true,0] else return [false,9];
	}
	
	//4-5
	if map = lv4_5
	{
		if lvl >= 12 return [true,0] else return [false,12];
	}
}