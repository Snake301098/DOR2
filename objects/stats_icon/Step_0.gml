/// @description 

if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(sprite_index)*image_xscale/2, y - sprite_get_height(sprite_index)*image_yscale/2, x + sprite_get_width(sprite_index)*image_xscale/2, y + sprite_get_height(sprite_index)*image_yscale/2))
{
   if clickable
   {
	   //var theContent;
	   //theContent = content;
	   with (stats_ships_icon) {selected=false;}
	   selected=true;
	   //var _cost_qty, _cost_type, _cost_lot;
	   
	   //GET COST INFO
	   /*
	   if category = "ships"
	   {
			cost1=info_ships(theContent,"cost1");
			cost2=info_ships(theContent,"cost2");
			cost3=info_ships(theContent,"cost3");
	   }
	   
	   if category = "weapons"
	   {
			cost1=info_weapons(theContent,"cost1");
			cost2=info_weapons(theContent,"cost2");
			cost3=info_weapons(theContent,"cost3");
		    theContent = info_weapons(theContent,"weapon_name")
	   }
	   
	   */
	   
	   
		//_cost_qty = info(theContent,"cost_qty");
		//_cost_type = info(theContent,"cost_type");
		//theContent = info_ammos(theContent,"ammo_name")
	   
	   
	   
	  /* with(window_background)
		{
			item_selected=theContent;
			cost_qty = _cost_qty;
			cost_type = _cost_type;
		}
	   name = theContent;*/
	   
   }
}