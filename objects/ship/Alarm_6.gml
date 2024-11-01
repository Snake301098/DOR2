///@description check other ships

//running or attacking ships nearby
//setting chef as well to follow players

var potentiel_chefs = [];

if action[0] != "running" //it was if is not invader before
{
	var ships_list=ds_list_create();
	var nbr_ships = collision_circle_list(x, y, irandom_range(500,700), ships, false, true, ships_list, true);
	for (i=1; i<=nbr_ships; i+=1)
	{
		
		//RUN ---------------------------
		var _ship = ships_list[|i-1]; 
		if _ship.corporation != corporation
		{
			if _ship.RPOINT >= RPOINT + 20 and distance_to_object(_ship) < irandom_range(300,550) and corporation = info_map(room, "owners") and isInvader = 0 
			{
				path_end();
				action[0] = "running"
				break;
			}
			
			
			//FIGHT SHIP ------------------------------------
			if _ship.RPOINT < RPOINT + 20 and distance_to_object(_ship) < irandom_range(300,550) and isInvader = 0 
			{
				if isAttacking = 0
				{
					action[0] = "battle"
					alarm[0] = 1;
				}
			}
		}
		else
		{
			//POTENTIAL CHEFS LIST ---------------------------
			if _ship.RPOINT > RPOINT - 10
			{
				array_push(potentiel_chefs,_ship);
			}

			if _ship.RPOINT > RPOINT + 25
			{
				array_push(potentiel_chefs,_ship); //more proba to have a strong chef
			}
			
			if corporation != info_map(room, "owners") then 
			{
				if _ship.RPOINT > RPOINT - 35
				{
					array_push(potentiel_chefs,_ship); //more proba on ennemy maps
				}
			}
		}
	}
	
	//CHEF -----------------------
	if isInvader = 0 or (isInvader = 1 and room != global.cproom)
	{
		//UPDATE CHEF ----------------------------------
		var prob = [4,7,7]; //no chef --> have a chef; replace chef; have a chef --> no chef
		if corporation != info_map(room, "owners") then prob = [1,7,12]; //no chef --> have a chef; replace chef; have a chef --> no chef
		if chef = 0
		{
			if array_length(potentiel_chefs) > 0
			{
				if irandom(prob[0]) == 0
				{
					var _index = irandom_range(0,array_length(potentiel_chefs)-1);
					chef = potentiel_chefs[_index]; //Get a new chef (didn't have chef before)
				}
			}
		}
		else
		{
			if array_length(potentiel_chefs) > 0
			{
				if irandom(prob[1]) == 0
				{
					var _index = irandom_range(0,array_length(potentiel_chefs)-1);
					chef = potentiel_chefs[_index]; //Replace chef (had chef before)
				}
				else
				{
					if irandom(prob[2]) == 0
					{
						chef = 0; //No more chef (had chef before)
					}
				}
			}
		}
	
		//CHEF BEHAVIOR --------------------------------------
		if chef > 0 and action[0] != "running" then
		{
			//SETTING TARGET
			if instance_exists(target)
			{
				if point_distance(target.x,target.y,chef.x,chef.y) > 500  then target = noone;
			}
		
			if irandom(2) == 0 then
		    {
		        if chef.target!=noone and chef.action[0] != "healer" and action[0] != "healer" then {target=chef.target} // same target if it's not healer
		    }
		
			//SETTING PATH
			var _direction = point_direction(x,y,chef.x,chef.y)
			var _selected_path = follow_chef_0;
			var _speed = ship_speed;
		
			if distance_to_object(chef) > irandom_range(120,370) then _speed *= 1.3;
		
			if _direction > 360 - 360/16 and _direction < 360/16 then _selected_path = follow_chef_0;
			if _direction > 360/16 + 0*360/8 and _direction < 360/16 + 1*360/8 then _selected_path = follow_chef_1;
			if _direction > 360/16 + 1*360/8 and _direction < 360/16 + 2*360/8 then _selected_path = follow_chef_2;
			if _direction > 360/16 + 2*360/8 and _direction < 360/16 + 3*360/8 then _selected_path = follow_chef_3;
			if _direction > 360/16 + 3*360/8 and _direction < 360/16 + 4*360/8 then _selected_path = follow_chef_4;
			if _direction > 360/16 + 4*360/8 and _direction < 360/16 + 5*360/8 then _selected_path = follow_chef_5;
			if _direction > 360/16 + 5*360/8 and _direction < 360/16 + 6*360/8 then _selected_path = follow_chef_6;
			if _direction > 360/16 + 6*360/8 and _direction < 360/16 + 7*360/8 then _selected_path = follow_chef_7;

			if path_index != _selected_path then {path_end(); path_start(_selected_path,_speed,path_action_continue,0);}
		}
	}
}

//IF HEALER
if action[0]="healer" then
{
	for (i=1; i<=15; i+=1) 
	{
	    var testship = instance_find(ships, irandom(instance_number(ships) - 1));
	    if testship.corporation = corporation and testship.id != id and distance_to_point(testship.x,testship.y) < 1000 then
	    {
			chef = testship;
			break;  
	    }                 
	}
}
	
alarm[6] = irandom_range(40,100);
	
	
	
	