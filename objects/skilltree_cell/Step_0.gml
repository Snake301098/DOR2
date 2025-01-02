
if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(sprite_index)/2, y - sprite_get_height(sprite_index)/2, x + sprite_get_width(sprite_index)/2, y + sprite_get_height(sprite_index)/2))
{
   if clickable
   {
	   var theContent;
	   theContent = content;
	   with (skilltree_cell) {selected=false;}
	   with (window_background) {skilltree_selected = theContent; skilltree_selected_description = info(theContent,"description");}
	   selected=true;
	   
	   name = theContent;
	   
   }
}