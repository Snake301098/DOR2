/// @description spawn voyager ship

if room != GGA and room != GGB and room != GGD and room != GGY and room != arena
{
	var _nbr = 1;
	var is_group = false;
	if irandom(10) = 5
	{
		is_group = true;
		_nbr = choose(2,2,2,2,2,2,2,3,3,3,3,3,4,4,4,4,5,5,6,7);
	}
	var corp = info_map(room,"owners")
	if corp = 3 then corp = choose(0,1,2)
	var _power = choose(1,1,1,2,2,2,2,3,3,3,3,3,3,4,4,4,4,4,4,5,5,5,5);
	spawn_ship(,,corp,"voyager",0,,_power,,_nbr,is_group)
}

alarm[3] = irandom_range(5,100) * room_speed;
