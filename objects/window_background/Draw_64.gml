/// @description Insert description here
// You can write your code in this editor

//sprite_index=window_background_spr;

draw_sprite_ext(window_background_spr,0,1920/2,1080/2,1.7,1.9,0,c_white,1)

switch active_tab
{
	//EQUIPMENT
	case "EQUIPMENT":
	{
		#region
		switch active_side_tab
		{
			case "SHIP":
			{
				draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.77,2.37,0,c_white,1)
				draw_sprite_ext(shop_icons_spr,24,620,500,1,1,0,c_white,1)
				draw_sprite_ext(hangar_bareer_spr,0,1170,550,5.3,1.5,90,c_white,1)
				draw_set_font(hangarfont);
				draw_text(730,390,"GUNS");
				draw_text(730,590,"ENGINES");
				break;
			}
			
			case "DRONES":
			{
				draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.77,2.37,0,c_white,1)
				draw_set_font(hangarfont);
				draw_set_halign(fa_center);
				draw_set_valign(fa_middle);
				draw_text(830,810,string(page_droid));
				draw_sprite_ext(hangar_bareer_spr,0,1170,550,5.3,1.5,90,c_white,1)
				break;
			}
			
			case "PET":
			{
				draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.77,2.37,0,c_white,1)
				draw_sprite_ext(hangar_bareer_spr,0,1170,550,5.3,1.5,90,c_white,1)
				break;
			}
		}
		break;
		#endregion
	}
	
	
	case "SHOP":
	{
		#region
		//LAYERS
		draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.77,2.37,0,c_white,1)
		draw_sprite_ext(hangar_bareer_spr,0,1170,550,5.3,1.5,90,c_white,1)
				
		//QTY BTN
		draw_set_font(hangarfont);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		//draw_text(1000,600,"This is a cool gun*\n*with so much power");
								
		if active_side_tab = "SHIPS" then draw_text(830,810,string(page_ships));
		break;
		#endregion
	}
	
	case "UPGRADES":
	{
		#region
		switch active_side_tab
		{
			case "INVENTORY":
			{
				//LAYERS
				draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.77,2.37,0,c_white,1)
				draw_sprite_ext(hangar_bareer_spr,0,1170,550,5.3,1.5,90,c_white,1)
				draw_sprite_ext(hangar_bareer_spr,0,900,550,5.3,1.5,90,c_white,1)
				
				//UPGRADE TEXT
				draw_set_font(hangarfont);
				draw_set_halign(fa_center);
				draw_set_valign(fa_middle);
				draw_text(1920/2+80,1080/4,upgrade_text);
								
				//BARS FOR RESOURCES COST
				if cost1_amount>0 then
				{
					draw_healthbar(1240,355,1440,385,global.ores_qty[cost1_type]/cost1_amount/buy_qty*100,c_black,c_red,c_lime,0,true,true);
					draw_text(1340,345,string(global.ores_qty[cost1_type])+"/"+string(cost1_amount*buy_qty));
					draw_sprite_ext(ores_spr,cost1_type,1460,370,0.7,0.7,0,c_white,1);
				} else draw_healthbar(1240,355,1440,385,0,c_black,c_red,c_lime,0,true,true);
				
				if cost2_amount>0 then
				{
					draw_healthbar(1240,455,1440,485,global.ores_qty[cost2_type]/cost2_amount/buy_qty*100,c_black,c_red,c_lime,0,true,true);
					draw_text(1340,445,string(global.ores_qty[cost2_type])+"/"+string(cost2_amount*buy_qty));
					draw_sprite_ext(ores_spr,cost2_type,1460,470,0.7,0.7,0,c_white,1);
				} else draw_healthbar(1240,455,1440,485,0,c_black,c_red,c_lime,0,true,true);
				
				if cost3_amount>0 then
				{
					draw_healthbar(1240,555,1440,585,global.ores_qty[cost3_type]/cost3_amount/buy_qty*100,c_black,c_red,c_lime,0,true,true);
					draw_text(1340,545,string(global.ores_qty[cost3_type])+"/"+string(cost3_amount*buy_qty));
					draw_sprite_ext(ores_spr,cost3_type,1460,570,0.7,0.7,0,c_white,1);
				} else draw_healthbar(1240,555,1440,585,0,c_black,c_red,c_lime,0,true,true);
				break;
			}
		}
		break;
		#endregion
	}
	
	case "SKILLTREE":
	{
		#region

		//LAYERS
		draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.77,2.37,0,c_white,1)
		draw_sprite_ext(hangar_bareer_spr,0,1050,550,5.3,1.5,90,c_white,1)
				
		break;
		#endregion
	}
		
	case "GG PORTALS":
	{
		#region
		switch active_side_tab
		{
			case "ALPHA":
			{
				//LAYERS
				draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.5,2.1,0,c_white,1)
				draw_sprite_ext(hangar_bareer_spr,0,1050,550,5.3,1.5,90,c_white,1)
				draw_sprite_ext(gg_picture_spr,0,800,500,1,1,0,c_white,1)
				
				//ENERGY AVAILABLE
				draw_set_font(hangarfont);
				draw_set_halign(fa_center);
				draw_set_valign(fa_middle);
				draw_text(1300,600,"ENERGY AVAILABLE:\n55");
				
				//GG PORTAL PROGRESS
				draw_healthbar(700,655,900,685,35,c_black,c_red,c_lime,0,true,true);
				draw_text(800,640,"35/100");
				
				//SHOWING GG REWARDS
				var reward_number=0;
				for(var i=0; i<array_length(rewards); i+=1)
				{
					if rewards[i,0]>0 then
					{
						draw_text(1300,550-reward_number*30,string(rewards[i,0]) + " of " + rewards[i,1]);
						reward_number+=1;
					}
				}
				break;
			}
		}
		break;
		#endregion
	}
}