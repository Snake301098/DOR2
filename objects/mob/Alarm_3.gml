/// @description MOVE (TARGET)

if instance_exists(target) then 
{
	if own_health>=health_def*0.1 then //if not running
	{
		if distance_to_object(target) > 50 then move_towards_point(target.x + irandom_range(-100,100),target.y + irandom_range(-100,100),ship_speed) else move_towards_point(target.x,target.y,0);
	}
}

alarm[3] = irandom(50)