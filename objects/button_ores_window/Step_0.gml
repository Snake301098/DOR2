if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(button_sprite)/2, y - sprite_get_height(button_sprite)/2, x + sprite_get_width(button_sprite)/2, y + sprite_get_height(button_sprite)/2))
{
	var cp_x = -5000;
	var cp_y = -5000;
	var cp_firm = global.cpfirm;
	if instance_exists(controlpoint) then {cp_x = controlpoint.x; cp_y = controlpoint.y}
    if image_index=1 then 
	{
		//FOR TRANSFER BUTTON, just don't click if not in range of outpost
		if button_text = "TRANSFER" and (global.cproom != room or cp_firm != gamer.corporation or point_distance(gamer.x,gamer.y,cp_x,cp_y) > global.outpost_transfer_distance) then {show_message("You must be at the Outpost and control it to transfer ores"); exit;};
		
		var myText = button_text;
		with (window_ores) {active_tab= myText; active_side_tab=""; event_user(1);}
		with (button_ores_window) {if button_text != myText then image_index=1 else image_index=0}
	}
}