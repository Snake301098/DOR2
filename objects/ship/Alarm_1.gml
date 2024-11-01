/// @description ship movements

isStopped=0;
var _range = irandom_range(250,450)
var _range_cp = irandom_range(800,1000)
var _alarm_reset_time = irandom_range(20,40);

//battle or health
if action[0]="battle" or action[0]="healer" then
{
	//If has target
	if instance_exists(target) then
	{
		if distance_to_object(target) > _range and isFollower = 1 then 
		{
			//target out of range and is follower
			path_end()
			move_towards_point(target.x, target.y, ship_speed)
		}
		else
		{
			//if target is in range
			var path_pos = -1;
		
			var selected_path = choose(fight_1, fight_2, fight_3, large_fight_1);
			//path_position = random(1);
			if isFollower = 1 and target.isFollower = 0
			{
				//is follower and target is leader
				if target.path_index >= 0 then path_pos = target.path_position;
				if path_pos >= 0 then
				{
					//FOLLOW TARGET'S PATH
					selected_path = target.path_index;
					//path_position = path_pos;
				}
			}
		
			if path_index != selected_path then 
			{
				//the path we have to follow is not the current one
				path_start(selected_path,ship_speed,path_action_continue,0)
				path_scale = random_range(1,3);
				if room = global.cproom then path_scale = random_range(2,5)
				path_orientation = irandom_range(0,359);
			}
		
		
		}
	}
	else
	//if no target
	{
		if irandom(30)=1 then
		{
			//stop for a while
			isStopped=1; 
			x2=x //to not triger alarm1 again in step
			y2=y;
		}
		else
		{
			//choose to move
			x2 = irandom_range(100, room_width-100);
			y2 = irandom_range(100, room_height-100);
			move_towards_point(x2,y2,ship_speed);
		}
	}
}
else
{
	//if action[0]="farming"
	//{
		if instance_exists(target)
		{
			if path_index <= 0 then	
			{
				var fight_path = choose(fight_1, fight_2, fight_3, large_fight_1);
				path_start(fight_path,ship_speed,path_action_continue,0)
				path_scale = random_range(1,3);
				path_orientation = irandom_range(0,359);
			}
		}
		else
		{
			if path_index <= 0 and chef = 0 then	
			{
				var walk_path = choose(walk_1,walk_2,walk_3,walk_4);
				path_start(walk_path,ship_speed,path_action_stop,false)
				path_scale = random_range(1,3);
				path_orientation = irandom_range(0,359);
			}
		}
	//}
}


/*
//OUTOFBOUNDARIES
if x < 0 or x > room_width or y < 0 or y > room_height
{
	path_end()
	move_towards_point(controlpoint.x, controlpoint.y, ship_speed)
	_alarm_reset_time = random_range(60,100) * room_speed
}
*/

//GO TO CONTROLPOINT
if instance_exists(controlpoint) and isInvader = 1
{
	if point_distance(x,y,controlpoint.x,controlpoint.y) > _range_cp
	{
		//too far from cp
		path_end()
		move_towards_point(controlpoint.x, controlpoint.y, ship_speed)
		_alarm_reset_time = random_range(60,100)
	}
}


//WAITING AT SPAWN CONTROL POINT
if waiting_cp_spawn = 1
{
	var _base_cp_spawn;
	var _corp = corporation;
	with(base)
	{
		if isCPspawn = true and corp = _corp then _base_cp_spawn = id;
	}
	
	if instance_exists(_base_cp_spawn)
	{
		if point_distance(x,y,_base_cp_spawn.x,_base_cp_spawn.y) > 100
		{
			//too far from cp
			path_end()
			move_towards_point(_base_cp_spawn.x, _base_cp_spawn.y, ship_speed)
			_alarm_reset_time = random_range(60,100) 
		}
	}
}

if isAttacked = 1 and target=noone and action="battle" then select_target(id);

alarm[1]=_alarm_reset_time;
