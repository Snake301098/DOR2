
if (mouse_check_button_pressed(mb_left) and point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x - sprite_get_width(sprite_index)/2, y - sprite_get_height(sprite_index)/2, x + sprite_get_width(sprite_index)/2, y + sprite_get_height(sprite_index)/2))
{
   if clickable
   {
	   if category = "change_design" then
	   {
		   if ownship > 0
		   {
				gamer.ship_name = content;
				instance_destroy(design_window);
				with(window_background){event_user(1);exit}
		   }
		   else exit
	   }
	   var theContent;
	   theContent = content;
		with (inv_cell) {selected=false;}
		with (shop_cell) {selected=false;}
	   selected=true;
	   var _cost_qty, _cost_type, _cost_lot, _description;
	   
	   var lvl=1
		var _costt = "";
		if content = "iris"
		{
			var nbr_iris = 0
			for(var i=1; i<=10;i++)
			{
				if gamer.droid[i,1] = "iris" then nbr_iris++
			}
			lvl = nbr_iris+1
		}

		if content = "flax"
		{
			var nbr_flax = 0
			for(var i=1; i<=10;i++)
			{
				if gamer.droid[i,1] = "flax" then nbr_flax++
			}
			lvl = nbr_flax+1
		}

		if content = "apis"
		{
			_cost_type = "drone_parts"
			_cost_qty = global.apis_cost
			cost_label = string(global.droid_parts) + "/" + string(_cost_qty) + " drone parts";
			exit;
		}

		if content = "zeus"
		{
			_cost_type = "drone_parts"
			_cost_qty = global.zeus_cost
			cost_label = string(global.droid_parts) + "/" + string(_cost_qty) + " drone parts";
			exit;
		}
		_cost_type = info(content,"cost_type")
		_cost_qty = info(content,"cost_qty",lvl)
		_description = info(content,"description")
	   
	   
	   with(window_background)
		{
			item_selected=theContent;
			cost_qty = _cost_qty;
			cost_type = _cost_type;
			item_description = _description;
		}
	   name = theContent;
	   
   }
}