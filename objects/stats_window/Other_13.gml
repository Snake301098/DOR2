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
		
		
	/*    if buyunits*price<=global.uridium  then
	        {
	        global.uridium-=(buyunits*price)*global.code1;
	        global.warrepcount+=buyunits;
	        }
	    else
	        {show_message(text.no_money)}*/
    }