/// @description AI abilities

//WARREP
if ability_1 = "warrep"// or ability_2 = "warrep"
{
	var _ability_number_ = -1;
	if ability_1 = "warrep" then _ability_number_ = 1
	//if ability_2 = "warrep" then _ability_number_warrep = 2
	if own_health < health_def * random_range(0.2,0.4)
	{
		ability_trigger(id,"warrep",_ability_number_)
	}
}

alarm[9] = irandom_range(40,120);