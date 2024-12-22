/// @description Insert description here
// You can write your code in this editor

if window_mouse_get_x() >= x-150 and window_mouse_get_x() <= x-130 and window_mouse_get_y() >= y-35 and window_mouse_get_y() <= y-25
{
	show_HUD_message("1")
}
if window_mouse_get_x() >= x-150 and window_mouse_get_x() <= x-130 and window_mouse_get_y() >= y-5 and window_mouse_get_y() <= y+5
{
	show_HUD_message("2")
}
if window_mouse_get_x() >= x-150 and window_mouse_get_x() <= x-130 and window_mouse_get_y() >= y+25 and window_mouse_get_y() <= y+35
{
	show_HUD_message("3")
}