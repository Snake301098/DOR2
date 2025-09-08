/// @description ship movements

isStopped=0;
var _range = irandom_range(200,450)
var _range_cp = irandom_range(800,1000)
var _alarm_reset_time = irandom_range(20,40);

if choose(0,1) = 1 then
{
	if isFollower = 1 then isFollower = 0 else isFollower = 1;
}

//battle or health
if action[0]="battle" or action[0]="healer" then
{
	//If has target
	if instance_exists(target) then
	{
		var path_pos = -1;
		var selected_path = choose(fight_1, fight_2, fight_3, large_fight_1);
		var take_new_path = true;
		
		if isFollower = 1
		{
			if target.path_index >= 0 then path_pos = target.path_position;
			if path_pos >= 0 then
			{
				//FOLLOW TARGET'S PATH
				selected_path = target.path_index;
				path_position = path_pos;
			}
		}
		
		if isFollower = 0
		{
			//already has a path active
			if path_index >= 0 then 
			{
				//keep active path
				if choose(1,1,1,0) = 1 then take_new_path = false;
			}
		}
		
		if take_new_path = true
		{
			path_start(selected_path,ship_speed,path_action_continue,0)
			path_scale = random_range(1,3);
			path_orientation = irandom_range(0,359);
		}		
		
		//OUT OF RANGE
		if distance_to_object(target) >= _range
		{
			//if choose(0,1) = 1
			//{
				path_end();
				var _x = irandom_range(target.x-100, target.x+100);
				var _y = irandom_range(target.y-100,target.y+100);
				move_towards_point(_x,_y,ship_speed);
			//}
		}
	}
	else
	//if no target
	{
		if irandom(30)=1 then
		{
			//stop for a while
			path_end();
			isStopped=1; 
			x2=x //to not triger alarm1 again in step
			y2=y;
		}
		else
		{
			var path_pos = -1;
			var selected_path = choose(fight_1, fight_2, fight_3, large_fight_1);
			var take_new_path = true;

			//already has a path active
			if path_index >= 0 then 
			{
				if choose(1,1,1,0) = 1 then
				{
					//keep active path
					take_new_path = false;
				}
			}
			
			if take_new_path
			{
				//Change path, new path
				var selected_path = choose(fight_1, fight_2, fight_3, large_fight_1);
				path_start(selected_path,ship_speed,path_action_continue,0)
				path_scale = random_range(1,3);
				path_orientation = irandom_range(0,359);
			}
		}
	}
}
else if action[0]="voyager"
{
	path_end();
	move_towards_point(voyager_target_x,voyager_target_y,ship_speed);
}
else
{
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
}

alarm[1]=_alarm_reset_time;


//Sometime decide to go somewhere else on the map
if !instance_exists(target) and action[0] != "voyager"
{
	if irandom(100) <= 10
	{
		path_end();
		var _x = irandom_range(100, room_width-100);
		var _y = irandom_range(100,room_height-100);
		move_towards_point(_x,_y,ship_speed);
	}
}

