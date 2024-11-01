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
					//move Guns to inventory
					for (i=1; i<=5; i+=1)
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
				
					//move lasers to inventory
					for (i=1; i<=5; i+=1)
					{
						for (var pos=1; pos<=100; pos+=1)
						{
							if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
							{
								gamer.Inventory[pos]=gamer.Laser[i]; 
								gamer.Laser[i]=""; 
								break;
							}
						}
					}
					guns_installation(gamer.id);
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
					var _name = info_weapons(_content,"weapon_name")
	
					if global.ores_qty[cost1_type] < cost1_amount or global.ores_qty[cost2_type] < cost2_amount or global.ores_qty[cost3_type] < cost3_amount
					{
						show_message("Resources not sufficient");
						exit;
					}
	
					//CAN UPGRADE HERE
					global.ores_qty[cost1_type] -= cost1_amount;
					global.ores_qty[cost2_type] -= cost2_amount;
					global.ores_qty[cost3_type] -= cost3_amount;
					
					for (var pos=1; pos<=100; pos+=1)
					{
						if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
						{
							gamer.Inventory[pos]=selected_id.content; 
							break;
						}
					}
					
					show_message(_name + " was bought sucessfully!");
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
					var _name = info_ammos(_content,"ammo_name")
	
					if global.ores_qty[cost1_type] < cost1_amount * buy_qty or global.ores_qty[cost2_type] < cost2_amount * buy_qty or global.ores_qty[cost3_type] < cost3_amount * buy_qty
					{
						show_message("Resources not sufficient");
						exit;
					}
	
					//CAN UPGRADE HERE
					global.ores_qty[cost1_type] -= cost1_amount * buy_qty;
					global.ores_qty[cost2_type] -= cost2_amount * buy_qty;
					global.ores_qty[cost3_type] -= cost3_amount * buy_qty;
					
					if _content = "premium_lasers" then global.premium_lasers += buy_qty * info_ammos(_content, "base_quantity")
					
					show_message(_name + " was bought sucessfully!");
				}
				else
				{
					exit
				}
			} else show_message("Select an item to buy");
		}
		#endregion
		
		
	/*    if buyunits*price<=global.uridium  then
	        {
	        global.uridium-=(buyunits*price)*global.code1;
	        global.warrepcount+=buyunits;
	        }
	    else
	        {show_message(text.no_money)}*/
    }