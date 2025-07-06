/// @description SPAWN SHIPS

var own_ships = 0;
var ennemy_ships = 0;
var own_ships_obj = 15;

with (ships) 
{
    if corporation = info_map(room,"owners") then own_ships++ else ennemy_ships++;
}


//X-1
if (room=lv1_1 or room=lv2_1 or room=lv3_1)   then 
{
	if own_ships < own_ships_obj then
	{
		var to_spawn_nbr = irandom_range(0,own_ships_obj-own_ships);
		if own_ships = 0 then to_spawn_nbr = irandom_range(own_ships_obj-5,own_ships_obj);
		
		for(i=1; i<=to_spawn_nbr; i+=1)
		{
			spawn_ship(,,info_map(room,"owners"),"farming",0)
		}
	}
	
	if ennemy_ships <= 1 then
	{
		var spawn_ennemy_prob = irandom(100);
		var spawn_enemy_nbr = 0;
		if spawn_ennemy_prob >= 95 then spawn_enemy_nbr+=choose(1,1,1,1,1,1,1,2,2,3);
		if spawn_ennemy_prob >= 98 then spawn_enemy_nbr+=choose(1,1,1,1,1,1,1,2,2,3);
		for(var i=0; i<=spawn_enemy_nbr; i+=1)
		{
			var ennemy_corp = get_ennemy_corp(info_map(room,"owners"))
			var _power = choose(3,3,3,3,4,4,4,4,5,5);
			spawn_ship(,,ennemy_corp,"battle",1,,_power)
		}
	}
}

//X-2
if (room=lv1_2 or room=lv2_2 or room=lv3_2)   then 
{
	if own_ships < own_ships_obj then
	{
		var to_spawn_nbr = irandom_range(0,own_ships_obj-own_ships);
		if own_ships = 0 then to_spawn_nbr = irandom_range(own_ships_obj-5,own_ships_obj);
		
		for(i=1; i<=to_spawn_nbr; i+=1)
		{
			spawn_ship(,,info_map(room,"owners"),"farming",0)
		}
	}
	
	if ennemy_ships <= 1 then
	{
		var spawn_ennemy_prob = irandom(100);
		var spawn_enemy_nbr = 0;
		if spawn_ennemy_prob >= 90 then spawn_enemy_nbr+=choose(1,1,1,1,1,1,1,2,2,3);
		if spawn_ennemy_prob >= 95 then spawn_enemy_nbr+=choose(1,1,1,1,1,1,1,2,2,3);
		for(var i=0; i<=spawn_enemy_nbr; i+=1)
		{
			var ennemy_corp = get_ennemy_corp(info_map(room,"owners"))
			var _power = choose(2,2,3,3,3,3,3,4,4,4,4,5,5);
			spawn_ship(,,ennemy_corp,"battle",1,,_power)
		}
	}
}


//X-3,4
if (room=lv1_3 or room=lv2_3 or room=lv3_3 or room=lv1_4 or room=lv2_4 or room=lv3_4)   then 
{	
	if own_ships < own_ships_obj then
	{
		var to_spawn_nbr = irandom_range(0,own_ships_obj-own_ships);
		if own_ships = 0 then to_spawn_nbr = irandom_range(own_ships_obj-5,own_ships_obj);
		
		for(i=1; i<=to_spawn_nbr; i+=1)
		{
			spawn_ship(,,info_map(room,"owners"),"farming",0)
		}
	}
	
	if ennemy_ships <= 1 then
	{
		var spawn_ennemy_prob = irandom(100);
		var spawn_enemy_nbr = 0;
		if spawn_ennemy_prob >= 80 then spawn_enemy_nbr+=choose(1,1,1,1,1,1,1,2,2,3);
		if spawn_ennemy_prob >= 90 then spawn_enemy_nbr+=choose(1,1,1,1,1,1,1,2,2,3);
		for(var i=0; i<=spawn_enemy_nbr; i+=1)
		{
			var ennemy_corp = get_ennemy_corp(info_map(room,"owners"))
			var _power = choose(2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,5,5);
			spawn_ship(,,ennemy_corp,"battle",1,,_power)
		}
	}
}


//4-X
if (room=lv4_1 or room=lv4_2 or room=lv4_3 or room=lv4_4 or room=lv4_5)   then 
{
	if own_ships < own_ships_obj then
	{
		var to_spawn_nbr = irandom_range(0,own_ships_obj-own_ships);
		if own_ships = 0 then to_spawn_nbr = irandom_range(own_ships_obj-5,own_ships_obj);
		
		for(i=1; i<=to_spawn_nbr; i+=1)
		{
			spawn_ship(,,info_map(room,"owners"),"farming",0)
		}
	}
	
	if ennemy_ships <= 2 then
	{
		var spawn_ennemy_prob = irandom(100);
		var spawn_enemy_nbr = 0;
		if spawn_ennemy_prob >= 60 then spawn_enemy_nbr+=choose(1,1,1,1,1,1,1,2,2,3);
		if spawn_ennemy_prob >= 80 then spawn_enemy_nbr+=choose(1,1,1,1,1,1,1,2,2,3);
		for(var i=0; i<=spawn_enemy_nbr; i+=1)
		{
			var ennemy_corp = get_ennemy_corp(info_map(room,"owners"))
			var _power = choose(2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,5,5);
			spawn_ship(,,ennemy_corp,"battle",1,,_power)
		}
	}
}

//X-5,6,7
if (room=lv1_5 or room=lv2_5 or room=lv3_5 or room=lv1_6 or room=lv2_6 or room=lv3_6 or room=lv1_7 or room=lv2_7 or room=lv3_7)   then 
{
	if own_ships < own_ships_obj then
	{
		var to_spawn_nbr = irandom_range(0,own_ships_obj-own_ships);
		if own_ships = 0 then to_spawn_nbr = irandom_range(own_ships_obj-5,own_ships_obj);
		
		for(i=1; i<=to_spawn_nbr; i+=1)
		{
			spawn_ship(,,info_map(room,"owners"),"farming",0)
		}
	}
	
	if ennemy_ships <= 1 then
	{
		var spawn_ennemy_prob = irandom(100);
		var spawn_enemy_nbr = 0;
		if spawn_ennemy_prob >= 75 then spawn_enemy_nbr+=choose(1,1,1,1,1,1,1,2,2,3);
		if spawn_ennemy_prob >= 85 then spawn_enemy_nbr+=choose(1,1,1,1,1,1,1,2,2,3);
		for(var i=0; i<=spawn_enemy_nbr; i+=1)
		{
			var ennemy_corp = get_ennemy_corp(info_map(room,"owners"))
			var _power = choose(2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,5,5);
			spawn_ship(,,ennemy_corp,"battle",1,,_power)
		}
	}
}

alarm[2]  = irandom_range(45,110) * room_speed;    


