/// @description move (no target)

if !instance_exists(target)
{
	_x = irandom_range(20, room_width-20);
	_y = irandom_range(20, room_height-20);
	var _way = instance_create_depth(_x,_y,0,way);
	_way.owner = id;
}
alarm[2] = irandom_range(2,15) * room_speed;
alarm[3] = irandom(50)