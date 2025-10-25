/// @description move



if !instance_exists(target)
{
	var _x = irandom_range(20, room_width-20);
	var _y = irandom_range(20, room_height-20);
	var _way = instance_create_depth(_x,_y,0,way);
	_way.owner = id;
	alarm[2] = irandom_range(2,6) * room_speed;
}

if instance_exists(target) then 
{
	if own_health>=health_def*0.15 then //if not running
	{
		if distance_to_object(target) > 50 then
		{
			var _x = target.x + irandom_range(-100,100)
			var _y = target.y + irandom_range(-100,100)
			var _way = instance_create_depth(_x,_y,0,way);
			_way.owner = id;
		}
	}
	alarm[2] = irandom(50);
}


//alarm[3] = irandom(50)
