var _x,_y;
/*
if x<=50 then _x=irandom_range(50,500)
if y<=50 then  _y=irandom_range(50,400)
if x>=15950 then x=irandom_range(10000,15950)
if y>=9950 then y=irandom_range(5000,9950)
*/

_x = x
_y = y

//if owner=0 then instance_destroy();
with(owner)
{
	move_towards_point(_x,_y,ship_speed)
}



