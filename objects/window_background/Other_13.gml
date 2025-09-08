/// @description BUYING process
if buy_qty<1 then exit;
else
    {
		//SHIPS
		#region
		if active_side_tab = "SHIPS" then
		{
			var selected_id = -1
			with(shop_cell)
			{
				if selected=true then selected_id = id;
			}

			if selected_id > 0 then
			{
				if show_question("Are you sure you want to buy this ship?\nOld ship in the current hangar will be removed\nEquipment will be sent to inventory") then
				{	
					//ask which hangar
					var buff = get_integer("Please type hangar number destination","");
					if buff = noone or buff = "" then exit;
					
					//check if hangar is unlocked
					var unlocked = false;
					if buff = 1 then unlocked = true;
					if buff = 2 and global.hangar2_unlocked = 1 then unlocked = true;
					if buff = 3 and global.hangar3_unlocked = 1 then unlocked = true;
					if buff = 4 and global.hangar4_unlocked = 1 then unlocked = true;
					if buff = 5 and global.hangar5_unlocked = 1 then unlocked = true;
					
					if unlocked = false
					{
						show_message("Hangar " + string(buff) + " is locked, please buy it first and try again");
					}
					else
					{
						if get_stats("ownship",selected_id.content) > 0 then {show_message("Ship already owned");exit;} else
					
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
						
						//Change hangar
						save_game();
						global.active_hangar = buff;
						//load_game();
					
						//move Guns to inventory
						for (i=1; i<=gamer.Gun[0]; i+=1)
						{
							for (var pos=1; pos<=99; pos+=1)
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
							for (var pos=1; pos<=99; pos+=1)
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
							for (var pos=1; pos<=99; pos+=1)
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
							for (var pos=1; pos<=99; pos+=1)
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
						guns_installation(gamer.id);
						change_config(gamer.id)
						guns_installation(gamer.id);
						change_config(gamer.id)
						
						save_game();
						update_stats("ownship")
					
						show_message("Ship was sucessfully bought!");
					
					}					
				} else
				{
					exit
				}
			} else show_message("Select an item to buy");
		}
		#endregion
		
		//WEAPONS
		#region
		if active_side_tab = "WEAPONS" then
		{
			var selected_id = -1
			with(shop_cell)
			{
				if selected=true then selected_id = id;
			}

			if selected_id > 0 then
			{
				if show_question("Are you sure you want to buy this weapons?") then
				{
					var _content = selected_id.content;
					var _name = _content
	
					if cost_type = "credit"
					{
						if global.credit < cost_qty*buy_qty
						{
							show_message("Not enough credits");
							exit;
						}
						else
						{
							global.credit-=cost_qty*buy_qty
						}
					}
					
					if cost_type = "uridium" 
					{
						if global.uridium < cost_qty*buy_qty
						{
							show_message("Not enough uridium");
							exit;
						}
						else
						{
							global.uridium-=cost_qty*buy_qty
						}
					}
					
					for(var i=1; i<=buy_qty;i++)
					{
						for (var pos=1; pos<=100; pos+=1)
						{
							if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
							{
								gamer.Inventory[pos]=_content; 
								break;
							}
						}
					}
					
					gamer.can_change_config = true
					change_config(gamer.id)
					
					for(var i=1; i<=buy_qty;i++)
					{
						for (var pos=1; pos<=100; pos+=1)
						{
							if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
							{
								gamer.Inventory[pos]=_content; 
								break;
							}
						}
					}
					
					gamer.can_change_config = true
					change_config(gamer.id)
					
					show_message(_name + " was bought sucessfully!");
				}
				else
				{
					exit
				}
			} else show_message("Select an item to buy");
		}
		#endregion
		
		//DRONES
		#region
		if active_side_tab = "DRONES" then
		{
			var selected_id = -1
			with(shop_cell)
			{
				if selected=true then selected_id = id;
			}

			if selected_id > 0 then
			{
				if show_question("Are you sure you want to buy this item?") then
				{
					var _content = selected_id.content;
					var _name =_content
	
					var _empty_slot = -1
					if _content = "apis"
					{
						if gamer.droid[9,1] != "" and gamer.droid[9,1] != "noone"
						{
							show_message("There is already a drone at 9th slot");
							exit;
						}
						else
						{
							if global.droid_parts >= global.apis_cost
							{
								gamer.droid[9,1] = _content
								gamer.droidC1[9,1] = _content
								gamer.droidC2[9,1] = _content
							    gamer.droid[9,0]=instance_create_depth(x,y,-1,droid_obj);
							    gamer.droid[9,0].pos:=9;
							    gamer.droid[9,0].owner=gamer.id;
							    gamer.droid[9,0].x=id.x;
							    gamer.droid[9,0].y=id.y;
								global.droid_parts -= global.apis_cost;
								guns_installation(gamer.id)
								show_message("Drone Apis was bought successfully");
								active_side_tab = "AMMOS";
								event_user(1);
								active_side_tab = "DRONES";
								event_user(1);
								exit;
							}
							else
							{
								show_message("You do not have enough drones parts to buy this drone");
								exit;
							}
						}
					}
					if _content = "zeus"
					{
						if gamer.droid[10,1] != "" and gamer.droid[10,1] != "noone"
						{
							show_message("There is already a drone at 10th slot");
							exit;
						}
						else
						{
							if global.droid_parts >= global.zeus_cost
							{
								gamer.droid[10,1] = _content
								gamer.droidC1[10,1] = _content
								gamer.droidC2[10,1] = _content
							    gamer.droid[10,0]=instance_create_depth(x,y,-1,droid_obj);
							    gamer.droid[10,0].pos:=10;
							    gamer.droid[10,0].owner=gamer.id;
							    gamer.droid[10,0].x=id.x;
							    gamer.droid[10,0].y=id.y;
								global.droid_parts -= global.zeus_cost;
								guns_installation(gamer.id)
								show_message("Drone Zeus was bought successfully");
								active_side_tab = "AMMOS";
								event_user(1);
								active_side_tab = "DRONES";
								event_user(1);
								exit;
							}	
							else
							{
								show_message("You do not have enough drones parts to buy this drone");
								exit;
							}
						}
					}
					if _content = "iris" or _content = "flax"
					{
						for(var i=1;i<=8;i++)
						{
							if gamer.droid[i,1]="" or gamer.droid[i,1] = "noone" then {_empty_slot = i;break}
						}
					
						if _empty_slot = -1
						{
							show_message("No slot available for drone")
							exit
						}
						else
						{
							gamer.droid[_empty_slot,1] = _content
							gamer.droidC1[_empty_slot,1] = _content
							gamer.droidC2[_empty_slot,1] = _content
					        gamer.droid[_empty_slot,0]=instance_create_depth(x,y,-1,droid_obj);
					        gamer.droid[_empty_slot,0].pos:=i;
					        gamer.droid[_empty_slot,0].owner=gamer.id;
					        gamer.droid[_empty_slot,0].x=id.x;
					        gamer.droid[i,0].y=id.y;
							guns_installation(gamer.id)
						}
					}
	
					if cost_type = "credit"
					{
						if global.credit < cost_qty*buy_qty
						{
							show_message("Not enough credits");
							exit;
						}
						else
						{
							global.credit-=cost_qty*buy_qty
						}
					}
					
					if cost_type = "uridium" 
					{
						if global.uridium < cost_qty*buy_qty
						{
							show_message("Not enough uridium");
							exit;
						}
						else
						{
							global.uridium-=cost_qty*buy_qty
						}
					}
					show_message(_name + " was bought sucessfully!");
					active_side_tab = "AMMOS";
					event_user(1);
					active_side_tab = "DRONES";
					event_user(1);
				}
				else
				{
					exit
				}
			} else show_message("Select an item to buy");
		}
		#endregion
		
		//AMMOS
		#region
		if active_side_tab = "AMMOS" then
		{
			var selected_id = -1
			with(shop_cell)
			{
				if selected=true then selected_id = id;
			}

			if selected_id > 0 then
			{
				if show_question("Are you sure you want to buy this item?") then
				{
					var _content = selected_id.content;
					var _name =_content
	
					if cost_type = "credit"
					{
						if global.credit < cost_qty*buy_qty
						{
							show_message("Not enough credits");
							exit;
						}
						else
						{
							global.credit-=cost_qty*buy_qty
						}
					}
					
					if cost_type = "uridium" 
					{
						if global.uridium < cost_qty*buy_qty
						{
							show_message("Not enough uridium");
							exit;
						}
						else
						{
							global.uridium-=cost_qty*buy_qty
						}
					}
					
					if _content = "x1" then global.x1+=buy_qty
					else if _content = "x2" then global.x2+=buy_qty
					else if _content = "x3" then global.x3+=buy_qty
					else if _content = "x4" then global.x4+=buy_qty
					else if _content = "x5" then global.x5+=buy_qty
					else if _content = "x6" then global.x6+=buy_qty
					else if _content = "emp" then global.emp+=buy_qty
					else if _content = "ish" then global.ish+=buy_qty
					
					show_message(_name + " was bought sucessfully!");
				}
				else
				{
					exit
				}
			} else show_message("Select an item to buy");
		}
		#endregion
		
		//OTHERS
		#region
		if active_side_tab = "OTHERS" then
		{
			var selected_id = -1
			with(shop_cell)
			{
				if selected=true then selected_id = id;
			}

			if selected_id > 0 then
			{
				if show_question("Are you sure you want to buy this item?") then
				{
					var _content = selected_id.content;
					var _name =_content
	
					if cost_type = "credit"
					{
						if global.credit < cost_qty*buy_qty
						{
							show_message("Not enough credits");
							exit;
						}
						else
						{
							global.credit-=cost_qty*buy_qty
						}
					}
					
					if cost_type = "uridium" 
					{
						if global.uridium < cost_qty*buy_qty
						{
							show_message("Not enough uridium");
							exit;
						}
						else
						{
							global.uridium-=cost_qty*buy_qty
						}
					}
					
					if _content = "x1" then global.x1+=buy_qty
					else if _content = "x2" then global.x2+=buy_qty
					else if _content = "x3" then global.x3+=buy_qty
					else if _content = "x4" then global.x4+=buy_qty
					else if _content = "x5" then global.x5+=buy_qty
					else if _content = "x6" then global.x6+=buy_qty
					else if _content = "emp" then global.emp+=buy_qty
					else if _content = "ish" then global.ish+=buy_qty
					else if _content = "DMG_1" then global.booster_damage_i+=buy_qty*15*60 //15mn booster
					else if _content = "DMG_2" then global.booster_damage_ii+=buy_qty*15*60 //15mn booster
					else if _content = "HP_1" then global.booster_hp_i+=buy_qty*15*60 //15mn booster
					else if _content = "HP_2" then global.booster_hp_ii+=buy_qty*15*60 //15mn booster
					else if _content = "SHD_1" then global.booster_shield_i+=buy_qty*15*60 //15mn booster
					else if _content = "SHD_2" then global.booster_shield_ii+=buy_qty*15*60 //15mn booster
					
					show_message(_name + " was bought sucessfully!");
				}
				else
				{
					exit
				}
			} else show_message("Select an item to buy");
		}
		
		#endregion
    }