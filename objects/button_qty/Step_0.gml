if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(sprite_index)/2, y - sprite_get_height(sprite_index)/2, x + sprite_get_width(sprite_index)/2, y + sprite_get_height(sprite_index)/2))
{
	var buff=0;
	buff = get_integer(text_add(text.rocket_buy,"something","50"),"");
	if buff = noone then exit;
	switch shop_section
	{
		case "shop":
		{
		    if buff<1 then exit;
		    else
		        {
					qty=buff;
					with(window_background){buy_qty=buff;};
		        }
			break;
		}
		
		case "gg":
		{
			
		}
		
		case "ores_transfer":
		{
			var index = ores_transfer_index;
		    if buff<0 then exit;
		    else
		        {
					qty=buff;
					with(window_ores){transfer_qty[index]=buff;};
		        }
			break;
		}
	}
	
}