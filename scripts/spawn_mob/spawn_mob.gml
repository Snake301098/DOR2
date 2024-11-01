/// @description
function spawn_mob(mob_name,xx=-5,yy=-5)
{
	if xx=-5 and yy=-5 then
	{
		xx = irandom_range(50,room_width-50);
		yy = irandom_range(50,room_height-50);
	}
	instance_create_depth(xx,yy,0,mob_name);
}