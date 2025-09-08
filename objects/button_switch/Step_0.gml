if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - _width/2, y - sprite_get_height(button_sprite)/2, x + _width/2, y + sprite_get_height(button_sprite)/2))
{
    if button_id = "config1"
	{
		if gamer.config = 2 
		{
			change_config(gamer.id);
		}
	}
	
    if button_id = "config2"
	{
		if gamer.config = 1 
		{
			change_config(gamer.id);
		}
	}
	
    if button_id = "hangar1"
	{
		change_hangar(1);
	}
	
    if button_id = "hangar2"
	{
		change_hangar(2);
	}
	
    if button_id = "hangar3"
	{
		change_hangar(3);
	}
	
    if button_id = "hangar4"
	{
		change_hangar(4);
	}
	
    if button_id = "hangar5"
	{
		change_hangar(5);
	}
}


/*
if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(button_sprite)/2, y - sprite_get_height(button_sprite)/2, x + sprite_get_width(button_sprite)/2, y + sprite_get_height(button_sprite)/2) then
{
	image_index=0
} else {image}