/// @description move (no target)


alarm[2] = irandom_range(2,15) * room_speed;

if !instance_exists(target)
{
	_x = irandom_range(20, room_width-20);
	_y = irandom_range(20, room_height-20);
	var _way = instance_create_depth(_x,_y,0,way);
	_way.owner = id;
	alarm[2] = irandom_range(2,15) * room_speed;
}

if instance_exists(target) then 
{
	if own_health>=health_def*0.1 then //if not running
	{
		if distance_to_object(target) > 50 then move_towards_point(target.x + irandom_range(-100,100),target.y + irandom_range(-100,100),ship_speed) else move_towards_point(target.x,target.y,0);
	}
	alarm[2] = irandom(50);
}


//alarm[3] = irandom(50)
