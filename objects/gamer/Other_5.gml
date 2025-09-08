/// @description Insert description here
// You can write your code in this editor

//DESTROY STARS

if room != shipload and room != startmenu
{
	part_type_destroy(_ptype1);
	part_emitter_destroy(_ps, _pemit1);
	part_system_destroy(_ps);
}

