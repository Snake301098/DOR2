/// @description update states
event_inherited();
if instance_exists(target) then hadTarget = 1 else hadTarget = 0;

if chef = gamer.id 
{
	if updated_xy_jump = false
	{
		instance_destroy(way)
		x = gamer.x
		y = gamer.y
		alarm[8] = 30;
	}
}
updated_xy_jump = true