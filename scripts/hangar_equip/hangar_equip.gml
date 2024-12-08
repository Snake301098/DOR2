function hangar_equip(){
	var cell_selected, loaded;
	cell_selected=-1;
	loaded = false;
	with (inv_cell) {if selected=true then {cell_selected=id;}}
	if cell_selected<0 then show_message("Select an item to equip") else
	{
		switch cell_selected.category
		{
			//equiping from ship lasers section
			#region
			case "ship_lasers":
			{
				for (var pos=1; pos<=30; pos+=1)
				{
					if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
					{
						gamer.Inventory[pos]=cell_selected.content; 
						loaded=true; 
						gamer.Laser[cell_selected.position]=""; 
						with (inv_cell) {if (category="inventory" and position=pos) then selected=true else selected=false;}
						break;
					}
				}
				break;
			}
			#endregion
			
			//equiping from ship guns section
			#region
			case "ship_guns":
			{
				for (var pos=1; pos<=30; pos+=1)
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
				break;
			}
			#endregion
			
			//equiping from inventory section
			#region
			case "inventory":
			{
				var type = info(cell_selected.content, "type");
				switch type
				{
					case "Gun":
					{
						for (var pos=1; pos<=15; pos+=1)
						{
							if gamer.Gun[pos] = "" or gamer.Gun[pos]= "noone" then 
							{
								gamer.Gun[pos]=cell_selected.content; 
								loaded=true; 
								gamer.Inventory[cell_selected.position]=""; 
								with (inv_cell) {if (category="ship_guns" and position=pos) then selected=true else selected=false;}
								break;
							}
						}
						break;
					}
					
					case "Laser":
					{
						for (var pos=1; pos<=5; pos+=1)
						{
							if gamer.Laser[pos] = "" or gamer.Laser[pos]= "noone" then 
							{
								gamer.Laser[pos]=cell_selected.content; 
								loaded=true; 
								gamer.Inventory[cell_selected.position]=""; 
								with (inv_cell) {if (category="ship_lasers" and position=pos) then selected=true else selected=false;}
								break;
							}
						}
						break;
					}
					
					case "Drone_item":
					{
						//loop in the drones
						for (var pos=1; pos<=10; pos+=1)
						{
							//check if there is a drone at this position
							if gamer.droid[pos,1] != "" and gamer.droid[pos,1] != "noone" then
							{
								//check if can put item on first spot of drone
								if gamer.droid[pos,2] = "" or gamer.droid[pos,2]= "noone" then 
								{
									gamer.droid[pos,2]=cell_selected.content; 
									loaded=true; 
									gamer.Inventory[cell_selected.position]=""; 
									with (inv_cell) {if (category="drone_item" and position=pos) then selected=true else selected=false;}
									break;
								}
								else
								//check if can put item on first spot of drone if it's not a flax drone
								if (gamer.droid[pos,3] = "" or gamer.droid[pos,3]= "noone") and (gamer.droid[pos,1] != "flax") then 
								{
									gamer.droid[pos,3]=cell_selected.content;
									loaded=true; 
									gamer.Inventory[cell_selected.position]=""; 
									with (inv_cell) {if (category="drone_item" and position=pos) then selected=true else selected=false;}
									break;
								}
							}
						}
						break;
					}
				}
			}
			#endregion
		}
		
		if loaded=false then show_message("Not enough room to equip");
		
		
		//save game
		//refresh window background user event
		with (window_background) event_user(1);
		guns_installation(gamer.id)
	}
}