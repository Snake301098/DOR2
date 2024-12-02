/// @description AI abilities

//WARREP
if can_use_warrep = true // or ability_2 = "warrep"
{
	if own_health < health_def * random(0.4)
	{
		ability_trigger(id,"warrep")
	}
}

//EMP
if can_use_emp = true // or ability_2 = "warrep"
{
	if own_health < health_def * random(0.5)
	{
		if choose(0,0,1) = 1 then ability_trigger(id,"EMP")
	}
}


//ISH
if can_use_ish = true // or ability_2 = "warrep"
{
	if own_health < health_def * random(0.8)
	{
		if choose(0,0,1) = 1 then ability_trigger(id,"ISH")
	}
}


//SHIELDBACKUP
if can_use_shieldbackup = true // or ability_2 = "warrep"
{
	if own_shield < shield_def * random(0.6)
	{
		if choose(0,1) = 1 then ability_trigger(id,"shieldbackup")
	}
}

//CHANGE CONFIG
if can_change_config = true and own_shield < shield_def * random_range(0,0.2) then change_config(id);

alarm[9] = irandom_range(40,120);