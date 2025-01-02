/// @description Insert description here
// You can write your code in this editor

//show_message(string(device_mouse_x_to_gui(0)-x) + " " + string(device_mouse_y_to_gui(0)-y))
//show_message(device_mouse_x_to_gui(0))

if device_mouse_x_to_gui(0) >= x-141 and device_mouse_x_to_gui(0) <= x-131 and device_mouse_y_to_gui(0) >= y-35 and device_mouse_y_to_gui(0) <= y-25
{
	_quest_nbr = 1;
	event_user(0);
}
if device_mouse_x_to_gui(0) >= x-141 and device_mouse_x_to_gui(0) <= x-131 and device_mouse_y_to_gui(0) >= y-5 and device_mouse_y_to_gui(0) <= y+5
{
	_quest_nbr = 2;
	event_user(0);
}
if device_mouse_x_to_gui(0) >= x-141 and device_mouse_x_to_gui(0) <= x-131 and device_mouse_y_to_gui(0) >= y+25 and device_mouse_y_to_gui(0) <= y+35
{
	_quest_nbr = 3;
	event_user(0);
}