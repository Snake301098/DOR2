/// @description check wave ended
var gamer_corp = gamer.corporation;
var enemy_ships_nbr = 0;

with(ship)
{
	if corporation != gamer_corp then enemy_ships_nbr++;
}

if enemy_ships_nbr = 0 then
{
	event_user(2); //round ended
}
else
{
	alarm[0] = room_speed * 2;
}

