/// @description 
if instance_exists(owner)
{
	_x1 = owner.x;
	_y1 = owner.y;
}

if instance_exists(origin)
{
	_x2 = origin.x;
	_y2 = origin.y;
}

angle = point_direction(_x1,_y1,_x2,_y2);
image_angle = angle;