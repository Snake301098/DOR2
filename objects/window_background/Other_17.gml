/// @description SELL process
		//SHIPS
		#region
		//if active_side_tab = "SHIPS" then
		//{
			/*
			var selected_id = -1
			with(shop_cell)
			{
				if selected=true then selected_id = id;
			}

			if selected_id > 0 then
			{
				if show_question("Are you sure you want to buy this ship?\nOld ship in the current hangar will be removed\nEquipment will be sent to inventory") then
				{
					if get_stats("ownship",selected_id.content) > 0 then show_message("Ship already owned") else
					
					//check enough money
					if cost_type = "credit"
					{
						if global.credit < cost_qty
						{
							show_message("Not enough credits");
							exit;
						}
						else
						{
							global.credit-=cost_qty
						}
					}
					
					if cost_type = "uridium" 
					{
						if global.uridium < cost_qty
						{
							show_message("Not enough uridium");
							exit;
						}
						else
						{
							global.uridium-=cost_qty
						}
					}
					
					//move Guns to inventory
					for (i=1; i<=gamer.Gun[0]; i+=1)
					{
						for (var pos=1; pos<=100; pos+=1)
						{
							if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
							{
								gamer.Inventory[pos]=gamer.Gun[i];
								gamer.Gun[i]=""; 
								break;
							}
						}
					}
				
					//move engines to inventory
					for (i=1; i<=gamer.Engine[0]; i+=1)
					{
						for (var pos=1; pos<=100; pos+=1)
						{
							if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
							{
								gamer.Inventory[pos]=gamer.Engine[i]; 
								gamer.Engine[i]=""; 
								break;
							}
						}
					}
					
					//change config
					change_config(gamer.id)
					
					//move Guns to inventory
					for (i=1; i<=gamer.Gun[0]; i+=1)
					{
						for (var pos=1; pos<=100; pos+=1)
						{
							if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
							{
								gamer.Inventory[pos]=gamer.Gun[i]; 
								gamer.Gun[i]=""; 
								break;
							}
						}
					}
				
					//move engines to inventory
					for (i=1; i<=gamer.Engine[0]; i+=1)
					{
						for (var pos=1; pos<=100; pos+=1)
						{
							if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
							{
								gamer.Inventory[pos]=gamer.Engine[i]; 
								gamer.Engine[i]=""; 
								break;
							}
						}
					}
					
					//change config
					change_config(gamer.id)
					gamer.ship_name = selected_id.content;
					with(gamer)
					{
						Shiptype = info(ship_name,"ship_type")
						Gun=array_create(info_shiptypes(Shiptype,"gun_slots")+1,"")
						Engine=array_create(info_shiptypes(Shiptype,"engine_slots")+1,"")
						Gun[0]:=info_shiptypes(Shiptype,"gun_slots");
						Engine[0]:=info_shiptypes(Shiptype,"engine_slots");
						GunC1 = []
						GunC2 = []
						EngineC1 = []
						EngineC2 = []
						array_copy(GunC1, 0, Gun, 0, array_length(Gun))
						array_copy(GunC2, 0, Gun, 0, array_length(Gun))
						array_copy(EngineC1, 0, Engine, 0, array_length(Engine))
						array_copy(EngineC2, 0, Engine, 0, array_length(Engine))
					}
					update_stats("ownship")
					guns_installation(gamer.id);
					change_config(gamer.id)
					guns_installation(gamer.id);
					change_config(gamer.id)
					
					show_message("Ship was sucessfully bought!");
					
				} else
				{
					exit
				}
			} else show_message("Select an item to buy");*/
		//}
		#endregion
		
		//EQUIPMENT
		#region
		//if active_side_tab = "EQUIPMENT" then
		//{
			var selected_id = -1
			with(shop_cell)
			{
				if selected=true then selected_id = id;
			}

			if selected_id != -1
			{
				if show_question("Are you sure you want to sell this item?") then
				{
					var _content = selected_id.content;
					var _name = _content
					//IF FOUND DRONE
					var found = false;
					for(var i=1; i<array_length(gamer.droid);i++)
					{
						if gamer.droid[i,1] = _name and found = false then 
						{
							gamer.droid[i,1]=""; 
							found = true;
							//move droid items to inventory
							for (var pos=1; pos<array_length(gamer.Inventory); pos+=1)
							{
								if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
								{
									gamer.Inventory[pos]=gamer.droid[i,2];  
									break;
								}
							}
							
							for (var pos=1; pos<array_length(gamer.Inventory); pos+=1)
							{
								if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
								{
									gamer.Inventory[pos]=gamer.droid[i,3];  
									break;
								}
							}
							
							for (var pos=1; pos<array_length(gamer.Inventory); pos+=1)
							{
								if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
								{
									gamer.Inventory[pos]=gamer.droid[i,4];  
									break;
								}
							}
							gamer.droid[i,2]="";
							gamer.droid[i,3]="";
							gamer.droid[i,4]="";
						}
					}
							
					
					gamer.can_change_config = true
					change_config(gamer.id)
							
							
					var found = false;
					for(var i=1; i<array_length(gamer.droid);i++)
					{
						if gamer.droid[i,1] = _name and found = false then 
						{
							gamer.droid[i,1]=""; 
							found = true;
							//move droid items to inventory
							for (var pos=1; pos<array_length(gamer.Inventory); pos+=1)
							{
								if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
								{
									gamer.Inventory[pos]=gamer.droid[i,2];  
									break;
								}
							}
							
							for (var pos=1; pos<array_length(gamer.Inventory); pos+=1)
							{
								if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
								{
									gamer.Inventory[pos]=gamer.droid[i,3];  
									break;
								}
							}
							
							for (var pos=1; pos<array_length(gamer.Inventory); pos+=1)
							{
								if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
								{
									gamer.Inventory[pos]=gamer.droid[i,4];  
									break;
								}
							}
							gamer.droid[i,2]="";
							gamer.droid[i,3]="";
							gamer.droid[i,4]="";
						}
					}
												
					gamer.can_change_config = true
					change_config(gamer.id)

					
						
					
					show_message("Item successfully sold");
					exit;
				}
					
			}
			
			var selected_id = -1
			with(inv_cell)
			{
				if selected=true then selected_id = id;
			}

			if selected_id > 0 then
			{
				if show_question("Are you sure you want to sell this item?") then
				{
					var _content = selected_id.content;
					var _name = _content
	
					if cost_type = "credit"
					{
							global.credit+=(cost_qty*buy_qty)/5
						
					}
					
					if cost_type = "uridium" 
					{
						global.uridium+=(cost_qty*buy_qty)/5
					}
					
					//CONFIG 1
					//look in INVENTORY
					var found = false;
					for(var i=1; i<array_length(gamer.Inventory);i++)
					{
						if gamer.Inventory[i] = _name then 
						{
							gamer.Inventory[i]=""; 
							found = true;
							break;
						}
					}
					
					//look in Gun
					if found = false 
					{
						for(var i=1; i<array_length(gamer.Gun);i++)
						{
							if gamer.Gun[i] = _name then 
							{
								gamer.Gun[i]=""; 
								found = true;
								break;
							}
						}	
					}
					
					//look in Engine
					if found = false 
					{
						for(var i=1; i<array_length(gamer.Engine);i++)
						{
							if gamer.Engine[i] = _name then 
							{
								gamer.Engine[i]=""; 
								found = true;
								break;
							}
						}	
					}
					
					//look in drones
					if found = false 
					{
						for(var i=1; i<array_length(gamer.droid);i++)
						{
							if gamer.droid[i,2] = _name and found = false then 
							{
								gamer.droid[i,2]=""; 
								found = true;
								break;
							}
							if gamer.droid[i,3] = _name and found = false then 
							{
								gamer.droid[i,3]=""; 
								found = true;
								break;
							}
						}	
					}
					
					gamer.can_change_config = true
					change_config(gamer.id)
					
					//CONFIG 2
					//look in INVENTORY
					var found = false;
					for(var i=1; i<array_length(gamer.Inventory);i++)
					{
						if gamer.Inventory[i] = _name then 
						{
							gamer.Inventory[i]=""; 
							found = true;
							break;
						}
					}
					
					//look in Gun
					if found = false 
					{
						for(var i=1; i<array_length(gamer.Gun);i++)
						{
							if gamer.Gun[i] = _name then 
							{
								gamer.Gun[i]=""; 
								found = true;
								break;
							}
						}	
					}
					
					//look in Engine
					if found = false 
					{
						for(var i=1; i<array_length(gamer.Engine);i++)
						{
							if gamer.Engine[i] = _name then 
							{
								gamer.Engine[i]=""; 
								found = true;
								break;
							}
						}	
					}
					
					//look in drones
					if found = false 
					{
						for(var i=1; i<array_length(gamer.droid);i++)
						{
							if gamer.droid[i,2] = _name and found = false then 
							{
								gamer.droid[i,2]=""; 
								found = true;
								break;
							}
							if gamer.droid[i,3] = _name and found = false then 
							{
								gamer.droid[i,3]=""; 
								found = true;
								break;
							}
						}	
					}
					
					gamer.can_change_config = true
					change_config(gamer.id)
					
					show_message(_name + " was sold sucessfully!");
				}
				else
				{
					exit
				}
			} else show_message("Select an item to sell");
		//}
		#endregion
		
		
		
	
		
		
	/*    if buyunits*price<=global.uridium  then
	        {
	        global.uridium-=(buyunits*price)*global.code1;
	        global.warrepcount+=buyunits;
	        }
	    else
	        {show_message(text.no_money)}*/
    