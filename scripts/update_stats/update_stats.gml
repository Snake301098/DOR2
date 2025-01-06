
function update_stats(_stat_name,_nbr=1)
{
	var _ship = gamer.ship_name
		
	var _STATS = ds_grid_create(1,1)
	ds_grid_copy(_STATS,global.stats)

	var _xx = ds_grid_value_x(_STATS,0,0,ds_grid_width(_STATS),0,_ship)
	var _yy = ds_grid_value_y(_STATS,0,0,0,ds_grid_height(_STATS),_stat_name)
	//show_message(_STATS[# _xx, _yy])
	//var _new_nbr = real(_STATS[# _xx, _yy]) + _nbr
	ds_grid_add(_STATS,_xx, _yy, 1);
	global.stats = _STATS;
}



