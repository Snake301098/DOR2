
//GET COMPLEX DATA REQUESTS

function get_stats(_stat_name,_ship="all")
{
	var res = 0
	var _stats = [_stat_name]
	var _ships = [_ship]
	if _ship = "all" then _ships = ["nostromo","leonov","bigboy","vengeance","adept","avenger","lightning","revenge","corsair","goliath","bastion","enforcer","centaur","exalted","goal","kick","referee","saturn","veteran","diminisher","sentinel","solace","spectrum","venom","spearhead","aegis","citadel"]
	
	if _stat_name = "none" then {return("");exit;}
	
	if _stat_name = "mob_kills" then
	{
		var _stats = ["streuner_kills","lordakia_kills","saimon_kills","mordon_kills","sibelon_kills","devolarium_kills","sibelonit_kills","lordakium_kills","kristallin_kills","kristallon_kills","streunerR_kills"]
	}
	
	if _stat_name = "kills" then
	{
		var _stats = ["nostromo_kills","leonov_kills","bigboy_kills","vengeance_kills","adept_kills","avenger_kills","lightning_kills","revenge_kills","corsair_kills","goliath_kills","bastion_kills","enforcer_kills","centaur_kills","exalted_kills","goal_kills","kick_kills","referee_kills","saturn_kills","veteran_kills","diminisher_kills","sentinel_kills","solace_kills","spectrum_kills","venom_kills","spearhead_kills","aegis_kills","citadel_kills"]
	}
	
	if _stat_name = "gogo_kills" then
	{
		var _stats = ["goliath_kills","bastion_kills","enforcer_kills","centaur_kills","exalted_kills","goal_kills","kick_kills","referee_kills","saturn_kills","veteran_kills","diminisher_kills","sentinel_kills","solace_kills","spectrum_kills","venom_kills"]
	}
	
	if _stat_name = "venven_kills" then
	{
		var _stats = ["vengeance_kills","adept_kills","avenger_kills","lightning_kills","revenge_kills","corsair_kills"]
	}
	
	if _stat_name = "newgen_kills" then
	{
		var _stats = ["spearhead_kills","aegis_kills","citadel_kills"]
	}
	
	if _stat_name = "badships_kills" then
	{
		var _stats = ["nostromo_kills","leonov_kills","bigboy_kills"]
	}
	
	if _stat_name = "gg" then
	{
		var _stats = ["GGA","GGB","GGY","GGD"]
	}
	
	
	var _STATS = ds_grid_create(1,1)
	ds_grid_copy(_STATS,global.stats)

	for(var i=0; i<array_length(_stats);i++) 
	{
		for(var j=0; j<array_length(_ships); j++)
		{
			var a = ds_grid_value_x(_STATS,0,0,80,80,_ships[j])
			var b = ds_grid_value_y(_STATS,0,0,80,80,_stats[i])
			var c = _STATS[# ds_grid_value_x(_STATS,0,0,-1,0,_ships[j]), ds_grid_value_y(_STATS,0,0,0,ds_grid_height(_STATS),_stats[i])]
			res += real(_STATS[# ds_grid_value_x(_STATS,0,0,ds_grid_width(_STATS),0,_ships[j]), ds_grid_value_y(_STATS,0,0,0,ds_grid_height(_STATS),_stats[i])])
		}
	}
	
	return(res)
}