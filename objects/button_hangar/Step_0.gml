if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(button_sprite)/2, y - sprite_get_height(button_sprite)/2, x + sprite_get_width(button_sprite)/2, y + sprite_get_height(button_sprite)/2))
{
    if image_index=1 then 
	{
		var myText = button_text;
		with (window_background) {active_tab= myText; active_side_tab=""; event_user(1);}
		with (button_hangar) {if button_text != myText then image_index=1 else image_index=0}
		with(inv_cell){selected=false}
		with(shop_cell){selected=false}
		with(window_background)
		{
			cost1_amount=0;
			cost2_amount=0;
			cost3_amount=0;
		}
	}
}