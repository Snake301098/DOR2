/// @description CHANGE TABS

instance_destroy(button_side);
instance_destroy(inv_cell);
instance_destroy(button_action);
instance_destroy(shop_cell);
instance_destroy(button_qty);
instance_destroy(skilltree_cell);
with(stats_ships_icon){if clickable=false then instance_destroy()};

//show_message(active_tab)
switch active_tab
{
	
	//KILLS
	#region
	case "PVP":
	{
		//var dd = load_csv("stats.csv")
		//show_message(dd[# 0,0])
	
		//NEW GENS	
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
		var cells_start_x = _PVPx;
		var cells_start_y = _PVPy;
		var spacing_x = 100;
		var spacing_y = 100;
		var rows = 5;
		var columns = 5;
		
		
		var ships_list = ["spearhead","aegis","citadel"];
		var killed = [56,2452,513] 
	
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//position=i + (j-1) * columns;
				position=(j-1)*columns+i;
				if (position-1)<array_length(ships_list) then
				{
					cell=instance_create_depth(0, 0, depth-1, stats_ships_icon);
					cell.x=cells_start_x+(i-1)*spacing_x
					cell.y=cells_start_y+(j-1)*spacing_y
					//cell.position = position;
					cell.ship_name=ships_list[position-1];
					cell.clickable=false;
					cell.owned=1;
					cell.label=get_stats(ships_list[position-1]+"_kills",ship_selected)
				}
			}
		}
		
		
		//GOLIATHS	
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
		var cells_start_x = _PVPx;
		var cells_start_y = _PVPy + 150;
		var spacing_x = 100;
		var spacing_y = 100;
		var rows = 5;
		var columns = 8;
		
		var ships_list = ["goliath","bastion","enforcer","centaur","exalted","goal","kick","referee","saturn","veteran","diminisher","sentinel","solace","spectrum","venom"];
		var killed = [56,2452,513] 
	
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//position=i + (j-1) * columns;
				position=(j-1)*columns+i;
				if (position-1)<array_length(ships_list) then
				{
					cell=instance_create_depth(0, 0, depth-1, stats_ships_icon);
					cell.x=cells_start_x+(i-1)*spacing_x
					cell.y=cells_start_y+(j-1)*spacing_y
					//cell.position = position;
					cell.ship_name=ships_list[position-1];
					cell.clickable=false;
					cell.owned=1;
					cell.label=get_stats(ships_list[position-1]+"_kills",ship_selected)
				}
			}
		}
		
		
		
		//VENGEANCES	
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
		var cells_start_x = _PVPx;
		var cells_start_y = _PVPy +400;
		var spacing_x = 100;
		var spacing_y = 100;
		var rows = 5;
		var columns = 8;
		
		var ships_list = ["vengeance", "adept","avenger","revenge", "corsair","lightning"];
		var killed = [56,2452,513] 
	
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//position=i + (j-1) * columns;
				position=(j-1)*columns+i;
				if (position-1)<array_length(ships_list) then
				{
					cell=instance_create_depth(0, 0, depth-1, stats_ships_icon);
					cell.x=cells_start_x+(i-1)*spacing_x
					cell.y=cells_start_y+(j-1)*spacing_y
					//cell.position = position;
					cell.ship_name=ships_list[position-1];
					cell.clickable=false;
					cell.owned=1;
					cell.label=get_stats(ships_list[position-1]+"_kills",ship_selected)
				}
			}
		}

		//BAD SHIPS	
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
		var cells_start_x = _PVPx;
		var cells_start_y = _PVPy + 550;
		var spacing_x = 100;
		var spacing_y = 100;
		var rows = 5;
		var columns = 5;
		
		var ships_list = ["nostromo", "leonov", "bigboy"];
		var killed = [56,2452,513534] 
	
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//position=i + (j-1) * columns;
				position=(j-1)*columns+i;
				if (position-1)<array_length(ships_list) then
				{
					cell=instance_create_depth(0, 0, depth-1, stats_ships_icon);
					cell.x=cells_start_x+(i-1)*spacing_x
					cell.y=cells_start_y+(j-1)*spacing_y
					//cell.position = position;
					cell.ship_name=ships_list[position-1];
					cell.clickable=false;
					cell.owned=1;
					cell.label=get_stats(ships_list[position-1]+"_kills",ship_selected)
				}
			}
		}
		break;
	}
	#endregion
	
	//PVE
	#region
	case "PVE":
	{
		
		//STATS PVE mobs
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
		var cells_start_x = _PVEx;
		var cells_start_y = _PVEy;
		var spacing_x = 140;
		var spacing_y = 140;
		var rows = 5;
		var columns = 5;
	
		
		var mobs_list = ["streuner","lordakia","saimon","mordon","devolarium","sibelon","sibelonit","lordakium","kristallin","kristallon","streunerR"];
		var killed = [5646344,2452,513,67]; 
		
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//position=i + (j-1) * columns;
				position=(j-1)*columns+i;
				if (position-1)<array_length(mobs_list) then
				{
					cell=instance_create_depth(0, 0, depth-1, stats_ships_icon);
					cell.x=cells_start_x+(i-1)*spacing_x
					cell.y=cells_start_y+(j-1)*spacing_y
					//cell.position = position;
					cell.ship_name=mobs_list[position-1];
					cell.clickable=false;
					cell.owned=1;
					cell.label=get_stats(mobs_list[position-1]+"_kills",ship_selected)//dotString(killed[position-1],true)
				}
			}
		}
		break;
	}
	#endregion
	
	//AMMOS
	#region
	case "AMMOS":
	{
		
		//STATS AMMOS
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
		var cells_start_x = _Ammosx;
		var cells_start_y = _Ammosy;
		var spacing_x = 140;
		var spacing_y = 140;
		var rows = 5;
		var columns = 5;
	
		
		var ammos_list = ["x1", "x2", "x3","x4","x5","x6","warrep","shieldbackup","ish","smb","emp"];
		var label2 = ["x1_dmg","x2_dmg","x3_dmg","x4_dmg","x5_dmg","x6_dmg","warrep_repaired","shieldbackup_shield","ish_avoided","none","none"]; 
	
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//position=i + (j-1) * columns;
				position=(j-1)*columns+i;
				if (position-1)<array_length(ammos_list) then
				{
					cell=instance_create_depth(0, 0, depth-1, stats_ships_icon);
					cell.x=cells_start_x+(i-1)*spacing_x
					cell.y=cells_start_y+(j-1)*spacing_y
					//cell.position = position;
					cell.ship_name=ammos_list[position-1];
					cell.clickable=false;
					cell.owned=1;
					cell.label=dotString(get_stats(ammos_list[position-1]+"_used"),true)
					cell.label2=dotString(get_stats(label2[position-1]),true)
				}
			}
		}
		break;
	}
	#endregion
	
	//GG TDM
	#region
	case "GG & TDM":
	{
		
		//STATS GG TDM
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
		var cells_start_x = _GGx;
		var cells_start_y = _GGy;
		var spacing_x = 140;
		var spacing_y = 140;
		var rows = 5;
		var columns = 5;
	
		
		var gg_list = ["alpha", "beta", "gamma","delta"];
		var used = [5646344,2452,513,67]; 
	
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//position=i + (j-1) * columns;
				position=(j-1)*columns+i;
				if (position-1)<array_length(gg_list) then
				{
					cell=instance_create_depth(0, 0, depth-1, stats_ships_icon);
					cell.x=cells_start_x+(i-1)*spacing_x
					cell.y=cells_start_y+(j-1)*spacing_y
					//cell.position = position;
					cell.ship_name=gg_list[position-1];
					cell.clickable=false;
					cell.owned=1;
					cell.label=444443333344//dotString(used[position-1],true)
				}
			}
		}
		break;
	}
	#endregion
}