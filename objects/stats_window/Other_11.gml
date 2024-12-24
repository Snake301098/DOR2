/// @description CHANGE TABS

instance_destroy(button_side);
instance_destroy(inv_cell);
instance_destroy(button_action);
instance_destroy(shop_cell);
instance_destroy(button_left_right);
instance_destroy(button_qty);
instance_destroy(skilltree_cell);

//show_message(active_tab)
switch active_tab
{
	
	//PROFILE
	#region
	case "PROFILE":
	{
		
		//STATS SHIPS KILLED
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
		var cells_start_x = 700;
		var cells_start_y = 250;
		var spacing_x = 100;
		var spacing_y = 100;
		var rows = 5;
		var columns = 5;
	
		//SHIPS TO BUY
		var ships_list = ["saturn", "citadel", "lightning"];
		var killed = [56,2452,513] 
	
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//position=i + (j-1) * columns;
				position=(j-1)*columns+i+(page_ships-1)*rows*columns;
				if (position-1)<array_length(ships_list) then
				{
					cell=instance_create_depth(0, 0, depth-1, stats_ships_icon);
					cell.x=cells_start_x+(i-1)*spacing_x
					cell.y=cells_start_y+(j-1)*spacing_y
					//cell.position = position;
					cell.ship_name=ships_list[position-1];
					cell.clickable=false;
					cell.owned=1;
					cell.label=dotString(killed[position-1])
				}
			}
		}
	}
	#endregion
}