if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(image_index)/2, y - sprite_get_height(image_index)/2, x + sprite_get_width(image_index)/2, y + sprite_get_height(image_index)/2))
{
    if image_index=1 then 
	{
		if category = "ships"
		{
			if btn_direction="right" then {with window_background {page_ships+=1; event_user(1);}}
			if btn_direction="left" then {with window_background {page_ships-=1; event_user(1);}}
		}
		
		if category = "droid"
		{
			if btn_direction="right" then {with window_background {page_droid+=1; event_user(1);}}
			if btn_direction="left" then {with window_background {page_droid-=1; event_user(1);}}
		}
		
		if category = "ships_stats"
		{
			if btn_direction="down" then {with stats_window {page_ships1+=1; event_user(0);}}
			if btn_direction="up" then {with stats_window{page_ships1-=1; event_user(0);}}
		}
	}
}


/*
if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(button_sprite)/2, y - sprite_get_height(button_sprite)/2, x + sprite_get_width(button_sprite)/2, y + sprite_get_height(button_sprite)/2) then
{
	image_index=0
} else {image}