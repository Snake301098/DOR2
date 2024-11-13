/// @description AI abilities

//WARREP
if can_use_warrep = 1 // or ability_2 = "warrep"
{
	if own_health < health_def * random_range(0.2,0.4)
	{
		ability_trigger(id,"warrep")
	}
}

alarm[9] = irandom_range(40,120);