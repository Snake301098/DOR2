/// @description 
var _x = x;
var _y = y;
if abs(owner.x-x) < 5 and abs(owner.y-y) < 5 then 
{
	with(owner){move_towards_point(_x,_y,0);}
	instance_destroy()
}