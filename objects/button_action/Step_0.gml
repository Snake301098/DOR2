if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(button_sprite)/2, y - sprite_get_height(button_sprite)/2, x + sprite_get_width(button_sprite)/2, y + sprite_get_height(button_sprite)/2))
{
	image_index=0;
	switch button_id
	{
		case "equip": {hangar_equip(); break;}
		case "buy": {event_user(0);break;}
		case "sell": {with(window_background){event_user(7);};break;}
		case "change_design": {if instance_exists(design_window) then instance_destroy(design_window) else instance_create_depth(0,0,-800,design_window);break;}
		case "upgrade": {with(window_background){event_user(5);};break;}
		case "gg_buy": {with(window_background){event_user(4);};break;}
		case "skilltree": {with(window_background){event_user(6);};break;}
		case "transfer_ores": {if !global.transfer_used then {with(quests_window){event_user(2);}} else {show_message("Transfer already done. Wait next round to transfer again");}break;}
	}
} else image_index=2;


/*
if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(button_sprite)/2, y - sprite_get_height(button_sprite)/2, x + sprite_get_width(button_sprite)/2, y + sprite_get_height(button_sprite)/2) then
{
	image_index=0
} else {image}