
if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(sprite_index)/2, y - sprite_get_height(sprite_index)/2, x + sprite_get_width(sprite_index)/2, y + sprite_get_height(sprite_index)/2))
{
   if clickable
   {
	   var theContent;
	   theContent = content;
	   with (shop_cell) {selected=false;}
	   selected=true;
	   var cost1, cost2, cost3;
	   
	   //GET COST INFO
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
	   
	   if category = "ammos"
	   {
			cost1=info_ammos(theContent,"cost1");
			cost2=info_ammos(theContent,"cost2");
			cost3=info_ammos(theContent,"cost3");
		    theContent = info_ammos(theContent,"ammo_name")
	   }
	   
	   with(window_background)
		{
			item_selected=theContent;
			cost1_amount=cost1[1];
			cost2_amount=cost1[1];
			cost3_amount=cost1[1];
			cost1_type=cost1[0];
			cost2_type=cost2[0];
			cost3_type=cost3[0];
		}
	   name = theContent;
	   
   }
}