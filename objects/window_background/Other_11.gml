/// @description CHANGE TABS

instance_destroy(button_side);
instance_destroy(inv_cell);
instance_destroy(button_action);
instance_destroy(shop_cell);
instance_destroy(button_left_right);
instance_destroy(button_qty);

//show_message(active_tab)
switch active_tab
{
	
	//EQUIPMENT
	#region
	case "EQUIPMENT":
	{
		//EQUIPMENT SIDE BUTTONS
		#region
		var btn_side_start, btn_side_end, number_btn, totalheight, buttons_x;
	
		buttons_x=425;
		number_btn=5;
		btn_side_start=320;
		btn_side_end=750;
		totalheight = btn_side_end - btn_side_start;
	
		var side_btn_0 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_0.x = buttons_x;
		side_btn_0.y = btn_side_start + totalheight / (number_btn-1) * 0;
		side_btn_0.button_sprite=button_side_spr;
		side_btn_0.button_text="OVERVIEW"
		side_btn_0.image_index=2;
	
		var side_btn_1 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_1.x = buttons_x;
		side_btn_1.y = btn_side_start + totalheight / (number_btn-1) * 1;
		side_btn_1.button_sprite=button_side_spr;
		side_btn_1.button_text="SHIP"
		side_btn_1.image_index=2;
	
		var side_btn_2 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_2.x = buttons_x;
		side_btn_2.y = btn_side_start + totalheight / (number_btn-1) * 2;
		side_btn_2.button_sprite=button_side_spr;
		side_btn_2.button_text="DRONES"
		side_btn_2.image_index=2;
	
		var side_btn_3 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_3.x = buttons_x;
		side_btn_3.y = btn_side_start + totalheight / (number_btn-1) * 3;
		side_btn_3.button_sprite=button_side_spr;
		side_btn_3.button_text="PET"
		side_btn_3.image_index=2;
	
		var side_btn_4 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_4.x = buttons_x;
		side_btn_4.y = btn_side_start + totalheight / (number_btn-1) * 4;
		side_btn_4.button_sprite=button_side_spr;
		side_btn_4.button_text="HANGARS"
		side_btn_4.image_index=2;
		#endregion
		
		switch active_side_tab
		{
			//SHIP
			#region
			case "SHIP":
			{
				side_btn_1.image_index=1;

				//GUNS
				var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell;
	
				cells_start_x = 800;
				cells_start_y = 420;
				spacing_x = 50;
				spacing_y = 50;
				var cells = gamer.Gun[0];
				columns = 8;
				rows = cells div columns;
	
				for (i=1; i<=cells; i+=1)
				{
					var _row = i div (columns + 1)
					var _column = i - (_row * columns) - 1
					cell=instance_create_depth(0, 0, depth-1, inv_cell);
					cell.x=cells_start_x+(_column)*spacing_x
					cell.y=cells_start_y+(_row)*spacing_y
					cell.position = i;
					cell.category="ship_guns";
					cell.sprite_index=inv_cell_spr;
			
					if gamer.Gun[cell.position] != noone and gamer.Gun[cell.position] != "" then cell.content= gamer.Gun[cell.position] else cell.content = noone;
				}
	
				//ENGINES
				var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell;
	
				cells_start_x = 800;
				cells_start_y = 620;
				spacing_x = 50;
				spacing_y = 50;
				var cells = gamer.Engine[0];
				columns = 8;
				rows = cells div columns;
	
				for (i=1; i<=cells; i+=1)
				{
					var _row = i div (columns + 1)
					var _column = i - (_row * columns) - 1
					cell=instance_create_depth(0, 0, depth-1, inv_cell);
					cell.x=cells_start_x+(_column)*spacing_x
					cell.y=cells_start_y+(_row)*spacing_y
					cell.position = i;
					cell.category="ship_engines";
					cell.sprite_index=inv_cell_spr;
			
					if gamer.Engine[cell.position] != noone and gamer.Engine[cell.position] != "" then cell.content= gamer.Engine[cell.position] else cell.content = noone;
				}
	
	
				//INVENTORY
				cells_start_x = 1240;
				cells_start_y = 350;
				spacing_x = 50;
				spacing_y = 50;
				rows = 7;
				columns = 5;
	
				for (j=1; j<=rows; j+=1)
				{
					for (i=1; i<=columns; i+=1)
					{
						cell=instance_create_depth(0, 0, depth-1, inv_cell);
						cell.x=cells_start_x+(i-1)*spacing_x
						cell.y=cells_start_y+(j-1)*spacing_y
						cell.position = i + (j-1) * columns;
						cell.category="inventory";
						cell.sprite_index=inv_cell_spr;
			
						if gamer.Inventory[cell.position] != noone and gamer.Inventory[cell.position] != "" then cell.content= gamer.Inventory[cell.position] else cell.content = noone;
			
					}
				}
	
				//SHIP
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 680;
				change_design_btn.y = 600;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="change_design";
				change_design_btn.button_text="Change design";
				change_design_btn.image_index=2;
	
				//EQUIP
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1350;
				change_design_btn.y = 710;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="equip";
				change_design_btn.button_text="Equip";
				change_design_btn.image_index=2;
	
				//SELL
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1350;
				change_design_btn.y = 780;
				change_design_btn.button_sprite=button_action_red_spr;
				change_design_btn.button_id="sell";
				change_design_btn.button_text="Sell";
				change_design_btn.image_index=2;
				break;
			}
			#endregion
	
	
			//DRONES
			#region
			case "DRONES":
			{
				side_btn_2.image_index=1;
				//DRONES		
				var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
				cells_start_x = 640;
				cells_start_y = 390;
				spacing_x = 330;
				spacing_y = 160;
				rows = 3;
				columns = 2;
				cell_position=0; //it's the "position" number for selected for drones items cells
	
				for (j=1; j<=rows; j+=1)
				{
					for (i=1; i<=columns; i+=1)
					{
						position=(j-1)*columns+i+(page-1)*rows*columns;
						if position <= 10 then
						//if position <= array_length(gamer.droid) then
						{
							switch gamer.droid[position,1]
							{
								case "iris":
								{
									var cell_item1, cell_item2;
									//DRONE
									cell=instance_create_depth(0, 0, depth-1, shop_cell);
									cell.x=cells_start_x+(i-1)*spacing_x
									cell.y=cells_start_y+(j-1)*spacing_y
									cell.position = j;
									cell.content="iris";
									cell.sprite_index=shop_icons_spr;
									cell.clickable=false;
									
									cell_position+=1;
									//ITEM1
									cell_item1=instance_create_depth(0, 0, depth-1, inv_cell);
									cell_item1.x=cell.x+100
									cell_item1.y=cell.y-30
									cell_item1.position = cell_position;
									cell_item1.droneItemNbr = 1;
									cell_item1.category="drone_item";
									cell_item1.sprite_index=inv_cell_spr;
									if gamer.droid[position,2] != noone and gamer.droid[position,2] != "" then cell_item1.content= gamer.droid[position,2] else cell_item1.content = noone;
									
									cell_position+=1;
									//ITEM2
									cell_item2=instance_create_depth(0, 0, depth-1, inv_cell);
									cell_item2.x=cell.x+100
									cell_item2.y=cell.y+30
									cell_item2.position = cell_position;
									cell_item2.droneItemNbr = 2;
									cell_item2.category="drone_item";
									cell_item2.sprite_index=inv_cell_spr;
									if gamer.droid[position,3] != noone and gamer.droid[position,3] != "" then cell_item2.content= gamer.droid[position,3] else cell_item2.content = noone;
									
									
									break;
								}
							
								case "flax":
								{
									cell=instance_create_depth(0, 0, depth-1, shop_cell);
									cell.x=cells_start_x+(i-1)*spacing_x
									cell.y=cells_start_y+(j-1)*spacing_y
									cell.position = j;
									cell.content="flax";
									cell.sprite_index=shop_icons_spr;
									cell.clickable=false;
									
									cell_position+=1;
									//ITEM1
									cell_item1=instance_create_depth(0, 0, depth-1, inv_cell);
									cell_item1.x=cell.x+100
									cell_item1.y=cell.y
									cell_item1.position = cell_position;
									cell_item1.droneItemNbr = 1;
									cell_item1.category="drone_item";
									cell_item1.sprite_index=inv_cell_spr;
									if gamer.droid[position,2] != noone and gamer.droid[position,2] != "" then cell_item1.content= gamer.droid[position,2] else cell_item1.content = noone;
									
									
									break;
								}
							
								case "apis":
								{
									cell=instance_create_depth(0, 0, depth-1, shop_cell);
									cell.x=cells_start_x+(i-1)*spacing_x
									cell.y=cells_start_y+(j-1)*spacing_y
									cell.position = j;
									cell.content="apis";
									cell.sprite_index=shop_icons_spr;
									cell.clickable=false;
									break;
								}
							
								case "zeus":
								{
									cell=instance_create_depth(0, 0, depth-1, shop_cell);
									cell.x=cells_start_x+(i-1)*spacing_x
									cell.y=cells_start_y+(j-1)*spacing_y
									cell.position = j;
									cell.content="zeus";
									cell.sprite_index=shop_icons_spr;
									cell.clickable=false;
									break;
								}
							}
						}
					}
				}
				
				//INVENTORY
				cells_start_x = 1240;
				cells_start_y = 350;
				spacing_x = 50;
				spacing_y = 50;
				rows = 7;
				columns = 5;
	
				for (j=1; j<=rows; j+=1)
				{
					for (i=1; i<=columns; i+=1)
					{
						cell=instance_create_depth(0, 0, depth-1, inv_cell);
						cell.x=cells_start_x+(i-1)*spacing_x
						cell.y=cells_start_y+(j-1)*spacing_y
						cell.position = i + (j-1) * columns;
						cell.category="inventory";
						cell.sprite_index=inv_cell_spr;
			
						if gamer.Inventory[cell.position] != noone and gamer.Inventory[cell.position] != "" then cell.content= gamer.Inventory[cell.position] else cell.content = noone;
			
					}
				}
				
				//LEFT RIGHT BUTTONS
				left_btn=instance_create_depth(0,0,depth-1,button_left_right);
				left_btn.x=780;
				left_btn.y=790;
				if page=1 then left_btn.image_index=0 else left_btn.image_index=1;
				left_btn.btn_direction="left";
				
				right_btn=instance_create_depth(0,0,depth-1,button_left_right);
				right_btn.x=880;
				right_btn.y=790;
				if page=2 then right_btn.image_index=0 else right_btn.image_index=1;
				right_btn.btn_direction="right";
				
				//EQUIP
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1350;
				change_design_btn.y = 710;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="equip";
				change_design_btn.button_text="Equip";
				change_design_btn.image_index=2;
	
				//SELL
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1350;
				change_design_btn.y = 780;
				change_design_btn.button_sprite=button_action_red_spr;
				change_design_btn.button_id="sell";
				change_design_btn.button_text="Sell";
				change_design_btn.image_index=2;
				
				
				break;
			}
			#endregion
			
			//PET
			#region
			case "PET":
			{
				side_btn_3.image_index=1;
				//INVENTORY
				cells_start_x = 1240;
				cells_start_y = 350;
				spacing_x = 50;
				spacing_y = 50;
				rows = 7;
				columns = 5;
	
				for (j=1; j<=rows; j+=1)
				{
					for (i=1; i<=columns; i+=1)
					{
						cell=instance_create_depth(0, 0, depth-1, inv_cell);
						cell.x=cells_start_x+(i-1)*spacing_x
						cell.y=cells_start_y+(j-1)*spacing_y
						cell.position = i + (j-1) * columns;
						cell.category="inventory";
						cell.sprite_index=inv_cell_spr;
			
						if gamer.Inventory[cell.position] != noone and gamer.Inventory[cell.position] != "" then cell.content= gamer.Inventory[cell.position] else cell.content = noone;
			
					}
				}
				
				//EQUIP
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1350;
				change_design_btn.y = 710;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="equip";
				change_design_btn.button_text="Equip";
				change_design_btn.image_index=2;
	
				//SELL
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1350;
				change_design_btn.y = 780;
				change_design_btn.button_sprite=button_action_red_spr;
				change_design_btn.button_id="sell";
				change_design_btn.button_text="Sell";
				change_design_btn.image_index=2;
				
				break;
			}
			#endregion
			
			default: {active_side_tab="SHIP"; event_user(1);}
		}
		break;
	}
	#endregion
	
	//SHOP
	#region
	case "SHOP":
	{
		
		//SHOP SIDE BUTTONS
		#region
		var btn_side_start, btn_side_end, number_btn, totalheight, buttons_x;
	
		buttons_x=425;
		number_btn=5;
		btn_side_start=320;
		btn_side_end=750;
		totalheight = btn_side_end - btn_side_start;
	
		side_btn_0 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_0.x = buttons_x;
		side_btn_0.y = btn_side_start + totalheight / (number_btn-1) * 0;
		side_btn_0.button_sprite=button_side_spr;
		side_btn_0.button_text="SHIPS"
		side_btn_0.image_index=2;
	
		side_btn_1 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_1.x = buttons_x;
		side_btn_1.y = btn_side_start + totalheight / (number_btn-1) * 1;
		side_btn_1.button_sprite=button_side_spr;
		side_btn_1.button_text="WEAPONS"
		side_btn_1.image_index=2;
	
		side_btn_2 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_2.x = buttons_x;
		side_btn_2.y = btn_side_start + totalheight / (number_btn-1) * 2;
		side_btn_2.button_sprite=button_side_spr;
		side_btn_2.button_text="MODULES"
		side_btn_2.image_index=2;
	
		side_btn_3 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_3.x = buttons_x;
		side_btn_3.y = btn_side_start + totalheight / (number_btn-1) * 3;
		side_btn_3.button_sprite=button_side_spr;
		side_btn_3.button_text="AMMOS"
		side_btn_3.image_index=2;
	
		side_btn_4 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_4.x = buttons_x;
		side_btn_4.y = btn_side_start + totalheight / (number_btn-1) * 4;
		side_btn_4.button_sprite=button_side_spr;
		side_btn_4.button_text="OTHERS"
		side_btn_4.image_index=2;
		#endregion
		
		switch active_side_tab
		{
			//SHIP
			#region
			case "SHIPS":
			{
				side_btn_0.image_index=1;
				buy_qty=1;
				
				//SHIPS TO BUY
				var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, ships_list;
				
				ships_list=["nostromo", "leonov", "bigboy", "bigboy", "vengeance", "goliath"];
	
				cells_start_x = 640;
				cells_start_y = 390;
				spacing_x = 110;
				spacing_y = 110;
				rows = 4;
				columns = 3;
	
				for (j=1; j<=rows; j+=1)
				{
					for (i=1; i<=columns; i+=1)
					{
						position=i + (j-1) * columns;
						if (position-1)<array_length(ships_list) then
						{
							cell=instance_create_depth(0, 0, depth-1, shop_cell);
							cell.x=cells_start_x+(i-1)*spacing_x
							cell.y=cells_start_y+(j-1)*spacing_y
							cell.position = position;
							cell.content=ships_list[position-1];
							cell.clickable=true;
							cell.category="ships";
							cell.sprite_index=shop_icons_spr;
						}
					}
				}
				
				//QUANTITY BUTTON (no qty when buying ships)
			/*	btn_qty=instance_create_depth(0,0,depth-1,button_qty);
				btn_qty.x=1340;
				btn_qty.y=650;
				btn_qty.shop_section="shop";
				btn_qty.image_index=button_qty_spr;*/
				
				//BUY BUTTON
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1340;
				change_design_btn.y = 720;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="buy";
				change_design_btn.button_text="BUY";
				change_design_btn.image_index=2;
				
				break;
			}
			#endregion
			
			//WEAPONS
			#region
			case "WEAPONS":
			{
				side_btn_1.image_index=1;
				buy_qty=1;
				
				//SHIPS TO BUY
				var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, weapons_list;
				
				weapons_list=["MP-1", "LF-3", "LF-4", "SPD-3", "BO-1", "BO-2"];
	
				cells_start_x = 640;
				cells_start_y = 390;
				spacing_x = 110;
				spacing_y = 110;
				rows = 3;
				columns = 3;
	
				for (j=1; j<=rows; j+=1)
				{
					for (i=1; i<=columns; i+=1)
					{
						position=i + (j-1) * columns;
						if (position-1)<array_length(weapons_list) then
						{
							cell=instance_create_depth(0, 0, depth-1, shop_cell);
							cell.x=cells_start_x+(i-1)*spacing_x
							cell.y=cells_start_y+(j-1)*spacing_y
							cell.position = position;
							cell.content=weapons_list[position-1];
							cell.clickable=true;
							cell.category="weapons";
							cell.sprite_index=shop_icons_spr;
						}
					}
				}
				
				//QUANTITY BUTTON (no qty when buying ships)
				btn_qty=instance_create_depth(0,0,depth-1,button_qty);
				btn_qty.x=1340;
				btn_qty.y=650;
				btn_qty.shop_section="shop";
				btn_qty.image_index=button_qty_spr;
				
				//BUY BUTTON
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1340;
				change_design_btn.y = 720;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="buy";
				change_design_btn.button_text="BUY";
				change_design_btn.image_index=2;
				
				break;
			}
			#endregion
			
			//MODULES
			#region
			case "MODULES":
			{
				side_btn_1.image_index=1;
				buy_qty=1;
				
				//SHIPS TO BUY
				var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, modules_list;
				
				modules_list=["LF-4_1", "HST-1_1"];
	
				cells_start_x = 640;
				cells_start_y = 390;
				spacing_x = 110;
				spacing_y = 110;
				rows = 1;
				columns = 2;
	
				for (j=1; j<=rows; j+=1)
				{
					for (i=1; i<=columns; i+=1)
					{
						position=i + (j-1) * columns;
						if (position-1)<array_length(modules_list) then
						{
							cell=instance_create_depth(0, 0, depth-1, shop_cell);
							cell.x=cells_start_x+(i-1)*spacing_x
							cell.y=cells_start_y+(j-1)*spacing_y
							cell.position = position;
							cell.content=modules_list[position-1];
							cell.clickable=true;
							cell.category="modules";
							cell.sprite_index=shop_icons_spr;
						}
					}
				}
				
				//QUANTITY BUTTON (no qty when buying ships)
				btn_qty=instance_create_depth(0,0,depth-1,button_qty);
				btn_qty.x=1340;
				btn_qty.y=650;
				btn_qty.shop_section="shop";
				btn_qty.image_index=button_qty_spr;
				
				//BUY BUTTON
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1340;
				change_design_btn.y = 720;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="buy";
				change_design_btn.button_text="BUY";
				change_design_btn.image_index=2;
				
				break;
			}
			#endregion
			
			//AMMOS
			#region
			case "AMMOS":
			{
				side_btn_1.image_index=1;
				buy_qty=1;
				
				//SHIPS TO BUY
				var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, ammos_list;
				
				ammos_list=["premium_lasers", "HST-1_1"];
	
				cells_start_x = 640;
				cells_start_y = 390;
				spacing_x = 110;
				spacing_y = 110;
				rows = 1;
				columns = 2;
	
				for (j=1; j<=rows; j+=1)
				{
					for (i=1; i<=columns; i+=1)
					{
						position=i + (j-1) * columns;
						if (position-1)<array_length(ammos_list) then
						{
							cell=instance_create_depth(0, 0, depth-1, shop_cell);
							cell.x=cells_start_x+(i-1)*spacing_x
							cell.y=cells_start_y+(j-1)*spacing_y
							cell.position = position;
							cell.content=ammos_list[position-1];
							cell.clickable=true;
							cell.category="ammos";
							cell.sprite_index=shop_icons_spr;
						}
					}
				}
				
				//QUANTITY BUTTON (no qty when buying ships)
				btn_qty=instance_create_depth(0,0,depth-1,button_qty);
				btn_qty.x=1340;
				btn_qty.y=650;
				btn_qty.shop_section="shop";
				btn_qty.image_index=button_qty_spr;
				
				//BUY BUTTON
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1340;
				change_design_btn.y = 720;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="buy";
				change_design_btn.button_text="BUY";
				change_design_btn.image_index=2;
				
				break;
			}
			#endregion
			
			default: {active_side_tab="SHIPS"; event_user(1);}
		}
		break;
	}
	#endregion
	
	//UPGRADES
	#region
	case "UPGRADES":
	{
		
		//UPGRADES SIDE BUTTONS
		#region
		var btn_side_start, btn_side_end, number_btn, totalheight, buttons_x;
	
		buttons_x=425;
		number_btn=5;
		btn_side_start=320;
		btn_side_end=750;
		totalheight = btn_side_end - btn_side_start;
	
		side_btn_0 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_0.x = buttons_x;
		side_btn_0.y = btn_side_start + totalheight / (number_btn-1) * 0;
		side_btn_0.button_sprite=button_side_spr;
		side_btn_0.button_text="SHIPS"
		side_btn_0.image_index=2;
	
		side_btn_1 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_1.x = buttons_x;
		side_btn_1.y = btn_side_start + totalheight / (number_btn-1) * 1;
		side_btn_1.button_sprite=button_side_spr;
		side_btn_1.button_text="INVENTORY"
		side_btn_1.image_index=2;
	
		side_btn_2 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_2.x = buttons_x;
		side_btn_2.y = btn_side_start + totalheight / (number_btn-1) * 2;
		side_btn_2.button_sprite=button_side_spr;
		side_btn_2.button_text="CARGO"
		side_btn_2.image_index=2;
	
		side_btn_3 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_3.x = buttons_x;
		side_btn_3.y = btn_side_start + totalheight / (number_btn-1) * 3;
		side_btn_3.button_sprite=button_side_spr;
		side_btn_3.button_text="HANGARS"
		side_btn_3.image_index=2;
	
		side_btn_4 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_4.x = buttons_x;
		side_btn_4.y = btn_side_start + totalheight / (number_btn-1) * 4;
		side_btn_4.button_sprite=button_side_spr;
		side_btn_4.button_text="OTHERS"
		side_btn_4.image_index=2;
		#endregion
		
		switch active_side_tab
		{
			//SHIP
			#region
			case "SHIPS":
			{
				side_btn_0.image_index=1;
				buy_qty=1;
				
				//SHIPS TO BUY
				var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, ships_list;
				
				ships_list=["nostromo", "leonov", "bigboy", "bigboy", "vengeance", "goliath"];
	
				cells_start_x = 640;
				cells_start_y = 390;
				spacing_x = 110;
				spacing_y = 110;
				rows = 4;
				columns = 3;
	
				for (j=1; j<=rows; j+=1)
				{
					for (i=1; i<=columns; i+=1)
					{
						position=i + (j-1) * columns;
						if (position-1)<array_length(ships_list) then
						{
							cell=instance_create_depth(0, 0, depth-1, shop_cell);
							cell.x=cells_start_x+(i-1)*spacing_x
							cell.y=cells_start_y+(j-1)*spacing_y
							cell.position = position;
							cell.content=ships_list[position-1];
							cell.clickable=true;
							cell.sprite_index=shop_icons_spr;
						}
					}
				}
				
				//QUANTITY BUTTON (no qty when buying ships)
			/*	btn_qty=instance_create_depth(0,0,depth-1,button_qty);
				btn_qty.x=1340;
				btn_qty.y=650;
				btn_qty.shop_section="shop";
				btn_qty.image_index=button_qty_spr;*/
				
				//BUY BUTTON
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1340;
				change_design_btn.y = 720;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="buy";
				change_design_btn.button_text="BUY";
				change_design_btn.image_index=2;
				
				break;
			}
			#endregion
			
			//INVENTORY
			#region
			case "INVENTORY":
			{
				side_btn_1.image_index=1;
				buy_qty=1;
				
				//INVENTORY
				cells_start_x = 620;
				cells_start_y = 390;
				spacing_x = 50;
				spacing_y = 50;
				rows = 7;
				columns = 5;
	
				for (j=1; j<=rows; j+=1)
				{
					//LASERS
					if j = 1 then
					{
						for (i=1; i<=5; i+=1)
						{
							cell=instance_create_depth(0, 0, depth-1, inv_cell);
							cell.x=cells_start_x+(i-1)*spacing_x
							cell.y=cells_start_y+(j-1)*spacing_y
							cell.position = i;
							cell.category="lasers";
							cell.sprite_index=inv_cell_spr;
			
							if gamer.Laser[cell.position] != noone and gamer.Laser[cell.position] != "" then cell.content= gamer.Laser[cell.position] else cell.content = noone;
			
						}
					}
					
					//GUNS
					if j = 2 then
					{
						for (i=1; i<=5; i+=1)
						{
							cell=instance_create_depth(0, 0, depth-1, inv_cell);
							cell.x=cells_start_x+(i-1)*spacing_x
							cell.y=cells_start_y+(j-1)*spacing_y
							cell.position = i;
							cell.category="guns";
							cell.sprite_index=inv_cell_spr;
			
							if gamer.Gun[cell.position] != noone and gamer.Gun[cell.position] != "" then cell.content= gamer.Gun[cell.position] else cell.content = noone;
			
						}
					}
					
					//INVENTORY
					if j>2
					{
						for (i=1; i<=columns; i+=1)
						{
							cell=instance_create_depth(0, 0, depth-1, inv_cell);
							cell.x=cells_start_x+(i-1)*spacing_x
							cell.y=cells_start_y+(j-1)*spacing_y 
							cell.position = i + (j-2-1) * columns; //-2 because we have one row for laser and one row for guns so needs to offset
							cell.category="inventory";
							cell.sprite_index=inv_cell_spr;
			
							if gamer.Inventory[cell.position] != noone and gamer.Inventory[cell.position] != "" then cell.content= gamer.Inventory[cell.position] else cell.content = noone;
						}
					}
				}
				
				//QUANTITY BUTTON (no qty when buying ships)
			/*	btn_qty=instance_create_depth(0,0,depth-1,button_qty);
				btn_qty.x=1340;
				btn_qty.y=650;
				btn_qty.shop_section="shop";
				btn_qty.image_index=button_qty_spr;*/
				
				//BUY BUTTON
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1340;
				change_design_btn.y = 720;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="upgrade";
				change_design_btn.button_text="UPGRADE";
				change_design_btn.image_index=2;
				
				break;
			}
			#endregion
			
			default: {active_side_tab="SHIPS"; event_user(1);}
		}
		break;
	}
	#endregion
	
	//GG
	#region
	case "GG PORTALS":
	{
		
		//EQUIPMENT SIDE BUTTONS
		#region
		var btn_side_start, btn_side_end, number_btn, totalheight, buttons_x;
	
		buttons_x=425;
		number_btn=5;
		btn_side_start=320;
		btn_side_end=750;
		totalheight = btn_side_end - btn_side_start;
	
		side_btn_0 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_0.x = buttons_x;
		side_btn_0.y = btn_side_start + totalheight / (number_btn-1) * 0;
		side_btn_0.button_sprite=button_side_spr;
		side_btn_0.button_text="ALPHA"
		side_btn_0.image_index=2;
	
		side_btn_1 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_1.x = buttons_x;
		side_btn_1.y = btn_side_start + totalheight / (number_btn-1) * 1;
		side_btn_1.button_sprite=button_side_spr;
		side_btn_1.button_text="BETA"
		side_btn_1.image_index=2;
	
		side_btn_2 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_2.x = buttons_x;
		side_btn_2.y = btn_side_start + totalheight / (number_btn-1) * 2;
		side_btn_2.button_sprite=button_side_spr;
		side_btn_2.button_text="GAMMA"
		side_btn_2.image_index=2;
	
		side_btn_3 = instance_create_depth(0,0,depth-1,button_side)
		side_btn_3.x = buttons_x;
		side_btn_3.y = btn_side_start + totalheight / (number_btn-1) * 3;
		side_btn_3.button_sprite=button_side_spr;
		side_btn_3.button_text="DELTA"
		side_btn_3.image_index=2;
	
		#endregion
		
		switch active_side_tab
		{
			//ALPHA
			#region
			case "ALPHA":
			{
				side_btn_0.image_index=1;
				
				//SHIPS TO BUY
			/*	var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, ships_list;
				
				ships_list=["nostromo", "leonov", "bigboy", "bigboy", "vengeance", "goliath"];
	
				cells_start_x = 640;
				cells_start_y = 390;
				spacing_x = 110;
				spacing_y = 110;
				rows = 4;
				columns = 3;
	
				for (j=1; j<=rows; j+=1)
				{
					for (i=1; i<=columns; i+=1)
					{
						position=i + (j-1) * columns;
						if (position-1)<array_length(ships_list) then
						{
							cell=instance_create_depth(0, 0, depth-1, shop_cell);
							cell.x=cells_start_x+(i-1)*spacing_x
							cell.y=cells_start_y+(j-1)*spacing_y
							cell.position = position;
							cell.content=ships_list[position-1];
							cell.clickable=true;
							cell.sprite_index=shop_icons_spr;
						}
					}
				}*/
				
				//QUANTITY BUTTON (no qty when buying ships)
				btn_qty=instance_create_depth(0,0,depth-1,button_qty);
				btn_qty.x=1300;
				btn_qty.y=650;
				btn_qty.shop_section="gg";
				btn_qty.image_index=button_qty_spr;
				
				//BUY BUTTON
				change_design_btn = instance_create_depth(0,0,depth-1,button_action)
				change_design_btn.x = 1300;
				change_design_btn.y = 720;
				change_design_btn.button_sprite=button_action_spr;
				change_design_btn.button_id="gg_buy";
				change_design_btn.button_text="USE ENERGY";
				change_design_btn.image_index=2;
				
				break;
			}
			#endregion
			
			default: {active_side_tab="ALPHA"; event_user(1);}
		}
		break;
	}
	
	#endregion
}