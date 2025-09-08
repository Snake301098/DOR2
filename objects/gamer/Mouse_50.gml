/// @description move ship
if instance_exists(window_background)=false and instance_exists(stats_window) = false and destroyed=0 then
{
	if moveship = true
	{
		with (way) {if owner=gamer.id then instance_destroy()};
		_way = instance_create_depth(mouse_x,mouse_y,0,way)
		_way.owner = gamer.id	
	}
}