function hangar_equip(){
	var cell_selected, loaded;
	cell_selected=-1;
	loaded = false;
	var _current_tab = ""
	with window_background {_current_tab = active_side_tab}
	with (inv_cell) {if selected=true then {cell_selected=id;}}
	if cell_selected<0 then show_message("Select an item to equip") else
	{
		//uninstalling from ship guns
		#region
		if cell_selected.category = "ship_guns"
		{
			for (var pos=1; pos<=99; pos+=1)
			{
				if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
				{
					gamer.Inventory[pos]=cell_selected.content; 
					loaded=true; 
					gamer.Gun[cell_selected.position]=""; 
					with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
					break;
				}
			}
		}
		#endregion
		
		//uninstalling from ship engines
		#region
		if cell_selected.category = "ship_engines"
		{
			for (var pos=1; pos<=99; pos+=1)
			{
				if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
				{
					gamer.Inventory[pos]=cell_selected.content; 
					loaded=true; 
					gamer.Engine[cell_selected.position]=""; 
					with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
					break;
				}
			}
		}
		#endregion
		
		//uninstalling from drone item
		#region
		if cell_selected.category = "drone_item"
		{
			for (var pos=1; pos<=99; pos+=1)
			{
				if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
				{
					gamer.Inventory[pos]=cell_selected.content; 
					loaded=true; 
					gamer.droid[cell_selected.position, cell_selected.droneItemNbr+1]=""; 
					with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
					break;
				}
			}
		}
		#endregion
		
		//uninstalling from drone design
		#region
		if cell_selected.category = "drone_design"
		{
			for (var pos=1; pos<=99; pos+=1)
			{
				if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
				{
					gamer.Inventory[pos]=cell_selected.content; 
					loaded=true; 
					gamer.droid[cell_selected.position, 4]=""; 
					with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
					break;
				}
			}
		}
		#endregion
		
		//installing from inventory
		#region
		if cell_selected.category = "inventory"
		{
			if info(cell_selected.content,"type") = "gun"
			{
				if _current_tab = "SHIP"
				{
					for (var pos=1; pos<=gamer.Gun[0]; pos+=1)
					{
						if gamer.Gun[pos] = "" or gamer.Gun[pos]= "noone" then 
						{
							gamer.Gun[pos]=cell_selected.content; 
							loaded=true; 
							gamer.Inventory[cell_selected.position]=""; 
							with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
							break;
						}
					}
				}
				
				if _current_tab = "DRONES"
				{
					for (var pos=1; pos<=10; pos+=1)
					{
						if gamer.droid[pos,0] != "" and gamer.droid[pos,0] != "noone" 
						{
							if gamer.droid[pos,2] = "" or gamer.droid[pos,2]= "noone" then 
							{
								gamer.droid[pos,2]=cell_selected.content; 
								loaded=true; 
								gamer.Inventory[cell_selected.position]=""; 
								with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
								break;
							}
						
							if gamer.droid[pos,3] = "" or gamer.droid[pos,3]= "noone" then 
							{
								gamer.droid[pos,3]=cell_selected.content; 
								loaded=true; 
								gamer.Inventory[cell_selected.position]=""; 
								with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
								break;
							}
						}
					}
				}
			}
			
			if info(cell_selected.content,"type") = "shield"
			{
				if _current_tab = "SHIP"
				{
					for (var pos=1; pos<=gamer.Engine[0]; pos+=1)
					{
						if gamer.Engine[pos] = "" or gamer.Engine[pos]= "noone" then 
						{
							gamer.Engine[pos]=cell_selected.content; 
							loaded=true; 
							gamer.Inventory[cell_selected.position]=""; 
							with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
							break;
						}
					}
				}
				
				if _current_tab = "DRONES"
				{
					for (var pos=1; pos<=10; pos+=1)
					{
						if gamer.droid[pos,0] != "" and gamer.droid[pos,0] != "noone" 
						{
							if gamer.droid[pos,2] = "" or gamer.droid[pos,2]= "noone" then 
							{
								gamer.droid[pos,2]=cell_selected.content; 
								loaded=true; 
								gamer.Inventory[cell_selected.position]=""; 
								with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
								break;
							}
						
							if gamer.droid[pos,3] = "" or gamer.droid[pos,3]= "noone" then 
							{
								gamer.droid[pos,3]=cell_selected.content; 
								loaded=true; 
								gamer.Inventory[cell_selected.position]=""; 
								with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
								break;
							}
						}
					}
				}
			}
			
			if info(cell_selected.content,"type") = "generator"
			{
				if _current_tab = "SHIP"
				{
					for (var pos=1; pos<=gamer.Engine[0]; pos+=1)
					{
						if gamer.Engine[pos] = "" or gamer.Engine[pos]= "noone" then 
						{
							gamer.Engine[pos]=cell_selected.content; 
							loaded=true; 
							gamer.Inventory[cell_selected.position]=""; 
							with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
							break;
						}
					}
				}
			}
			
			if info(cell_selected.content,"type") = "droneDesign"
			{
				if _current_tab = "DRONES"
				{
					for (var pos=1; pos<=10; pos+=1)
					{
						if gamer.droid[pos,0] != "" and gamer.droid[pos,0] != "noone" 
						{
							if gamer.droid[pos,4] = "" or gamer.droid[pos,4]= "noone" then 
							{
								gamer.droid[pos,4]=cell_selected.content; 
								loaded=true; 
								gamer.Inventory[cell_selected.position]=""; 
								with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
								break;
							}
						}
					}
				}
			}
		}
		#endregion
		
		
		if loaded=false then show_message("Not enough room to equip");
		
		
		//save game
		//refresh window background user event
		with (window_background) event_user(1);
		guns_installation(gamer.id)
	}
}