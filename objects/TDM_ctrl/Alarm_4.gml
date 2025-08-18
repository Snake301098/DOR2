/// @description CHECK SHIPS NBR
var _mmo = 0;
var _eic = 0;
var _vru = 0;

with(ships)
{
	if corporation = 0 then _mmo += 1;
	if corporation = 1 then _eic += 1;
	if corporation = 2 then _vru += 1;
}

mmo_ships = _mmo;
eic_ships = _eic;
vru_ships = _vru;

alarm[4] = room_speed/3;