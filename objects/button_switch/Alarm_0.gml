/// @description INIT


if button_id = "config1" or button_id = "config2" then
{
	_width = sprite_get_height(button_sprite);
	_xscale = 29/190;
}
else
{
	_width = sprite_get_height(button_sprite)*4;
	_xscale = 29/190*4;
}
