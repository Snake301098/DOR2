if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(sprite_index)/2, y - sprite_get_height(sprite_index)/2, x + sprite_get_width(sprite_index)/2, y + sprite_get_height(sprite_index)/2))
{
    //show_message(string(position) + " " + category)
	if content != noone and content != "" and content != "noone" then
	{
		with (inv_cell) {selected=false;}
		selected=true;
		if window_background.active_tab = "UPGRADES"
		{
			hangar_get_upgrades_text();
		}
		else
		{
			window_background.upgrade_text = "";
		}
		
	}
}

switch content
{
	case "LF-4_1": {sprite_index=inv_items_spr; image_index=3; level_index_spr=0; break;}
	case "LF-4_2": {sprite_index=inv_items_spr; image_index=3; level_index_spr=1; break;}
	case "LF-4_3": {sprite_index=inv_items_spr; image_index=3; level_index_spr=2; break;}
	case "LF-4_4": {sprite_index=inv_items_spr; image_index=3; level_index_spr=3; break;}
	case "LF-4_5": {sprite_index=inv_items_spr; image_index=3; level_index_spr=4; break;}
	case "LF-3_1": {sprite_index=inv_items_spr; image_index=0; level_index_spr=0; break;}
	case "LF-3_2": {sprite_index=inv_items_spr; image_index=0; level_index_spr=1; break;}
	case "LF-3_3": {sprite_index=inv_items_spr; image_index=0; level_index_spr=2; break;}
	case "LF-3_4": {sprite_index=inv_items_spr; image_index=0; level_index_spr=3; break;}
	case "LF-3_5": {sprite_index=inv_items_spr; image_index=0; level_index_spr=4; break;}
	case "HST-1_1": {sprite_index=inv_items_spr; image_index=9; level_index_spr=0; break;}
	case "HST-1_2": {sprite_index=inv_items_spr; image_index=9; level_index_spr=1; break;}
	case "HST-1_3": {sprite_index=inv_items_spr; image_index=9; level_index_spr=2; break;}
	case "HST-1_4": {sprite_index=inv_items_spr; image_index=9; level_index_spr=3; break;}
	case "HST-1_5": {sprite_index=inv_items_spr; image_index=9; level_index_spr=4; break;}
	case "HST-2_1": {sprite_index=inv_items_spr; image_index=10; level_index_spr=0; break;}
	case "HST-2_2": {sprite_index=inv_items_spr; image_index=10; level_index_spr=1; break;}
	case "HST-2_3": {sprite_index=inv_items_spr; image_index=10; level_index_spr=2; break;}
	case "HST-2_4": {sprite_index=inv_items_spr; image_index=10; level_index_spr=3; break;}
	case "HST-2_5": {sprite_index=inv_items_spr; image_index=10; level_index_spr=4; break;}
	case "HAVOC": {sprite_index=inv_items_spr; image_index=7; break;}
	default: {sprite_index=inv_cell_spr; image_index=0; break;}
}
