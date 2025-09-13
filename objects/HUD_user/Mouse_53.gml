/// @description Insert description here
// You can write your code in this editor

//show_HUD_message(string(window_mouse_get_x() - xx_pet) + " " + string(window_mouse_get_y() - yy_pet))

//PET
//ACTIVATE PET
if (device_mouse_x_to_gui(0) - xx_pet) > 17 and (device_mouse_x_to_gui(0) - xx_pet) < 51 and (device_mouse_y_to_gui(0) - yy_pet) > 130 and (device_mouse_y_to_gui(0) - yy_pet) < 165 
{
	with(gamer){event_user(13)};
}

//KAMIKAZE
if (device_mouse_x_to_gui(0) - xx_pet) > 17 and (device_mouse_x_to_gui(0) - xx_pet) < 51 and (device_mouse_y_to_gui(0) - yy_pet) > 173 and (device_mouse_y_to_gui(0) - yy_pet) < 213 
{
	event_user(0);
}

