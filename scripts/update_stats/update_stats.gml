
function update_stats(_stat_name,_nbr=1)
{
	var _ship = gamer.ship_name
		
	var _STATS = ds_grid_create(1,1)
	ds_grid_copy(_STATS,global.stats)

	var _xx = ds_grid_value_x(_STATS,0,0,ds_grid_width(_STATS),0,_ship)
	var _yy = ds_grid_value_y(_STATS,0,0,0,ds_grid_height(_STATS),_stat_name)
	ds_grid_add(_STATS,_xx, _yy, _nbr);
	global.stats = _STATS;
	
	if _stat_name = "credit" then
	{
		global.credit_reward_green_key += _nbr;
		if global.credit_reward_green_key >= global.credit_reward_green_key_treshold
		{
			global.credit_reward_green_key -= global.credit_reward_green_key_treshold;
			global.chest_green_key++;
			show_HUD_message("You received 1 green chest key!");
		}
	}
	
	if _stat_name = "uridium" then
	{
		global.uridium_reward_gold_key += _nbr;
		if global.uridium_reward_gold_key >= global.uridium_reward_gold_key_treshold
		{
			global.uridium_reward_gold_key -= global.uridium_reward_gold_key_treshold;
			global.chest_gold_key++;
			show_HUD_message("You received 1 gold chest key!");
		}
	}
}



