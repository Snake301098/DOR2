/// @description select target
function select_target(id)
{
	//id = owner id
	var target_found=0;
	var ships_list=ds_list_create();
	var nbr_ships = collision_circle_list(id.x, id.y, irandom_range(500,750), ships, false, true, ships_list, true);
	
	var potential_targets = [];
	//(NON HEALER) BATTLE -------------------------------------------------------------
	for (i=0; i<nbr_ships; i+=1)
	{
		var _ship = ships_list[|i]
		if _ship.corporation = id.corporation then 
		{
			with (_ship)
			{
				if instance_exists(target) then {array_push(potential_targets, _ship.target);array_push(potential_targets, _ship.target);}; //add twice so more chance to coordinate focus
			}
		}
		if _ship.corporation != id.corporation and _ship.cloaked = 0 and _ship.is_using_emp = false then 
		{
			if _ship.cloaked = 1 then //might see cloaked ships sometimes
			{
				if choose(0,0,0,1) == 1 then array_push(potential_targets, _ship);
			}
			array_push(potential_targets, _ship);
			if _ship.own_health / _ship.health_def < 0.5 then array_push(potential_targets, _ship); //focus more the ships with low health
			if _ship.own_health / _ship.health_def < 0.25 then array_push(potential_targets, _ship); //focus more the ships with very low health
		}
	}
		
	if array_length(potential_targets) > 0 then
	{
		var _id = irandom_range(0,array_length(potential_targets)-1);
		id.target = potential_targets[_id];
		target_found = 1;
	}	
	
	
	//RELAX
	if target_found = 0 and isInvader != 1 then 
	{
		if choose(0,0,1) = 1 then
		{
			id.action[0]="farming"
		}
	}
}