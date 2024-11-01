/// @description move ship
if moveship = true
{
	with (way) {if owner=gamer.id then instance_destroy()};
	_way = instance_create_depth(mouse_x,mouse_y,0,way)
	_way.owner = gamer.id	
}