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
				draw_set_halign(fa_center);
				draw_set_valign(fa_middle);
				draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.77,2.37,0,c_white,1)
				//draw_sprite_ext(shop_icons_spr,24,620,500,1,1,0,c_white,1)
				draw_sprite_ext(hangar_bareer_spr,0,1170,550,5.3,1.5,90,c_white,1)
				draw_set_font(hangarfont);
				draw_text(730,390,"GUNS");
				draw_text(730,590,"ENGINES");
				draw_text(1370,680,string(page_inventory));
				break;
			}
			
			case "DRONES":
			{
				draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.77,2.37,0,c_white,1)
				draw_set_font(hangarfont);
				draw_text(830,810,string(page_droid));
				draw_text(1370,680,string(page_inventory));
				draw_sprite_ext(hangar_bareer_spr,0,1170,550,5.3,1.5,90,c_white,1)
				break;
			}
			
			case "PET":
			{
				draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.77,2.37,0,c_white,1)
				draw_sprite_ext(hangar_bareer_spr,0,1170,550,5.3,1.5,90,c_white,1)
				draw_text(1370,680,string(page_inventory));
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
		
		draw_set_font(hangarfont);
		draw_set_halign(fa_center);
		draw_text(1300,410,skilltree_selected);
		draw_set_valign(fa_top);
		draw_text(1300,450,skilltree_selected_description);
		draw_set_valign(fa_middle);
		draw_text(1300,590,"Total points: " + string(skilltree_points));
		draw_text(1300,630,"Next point cost: " + string(skilltree_cost));
		draw_text(1300,670,"Logfiles: " + string(global.logfile));
				
		break;
		#endregion
	}
		
	case "GG PORTALS":
	{
		#region
		var portal_image = 0;
		var owned_portal_parts = 0;
		var total_portal_parts = 0;
		
		switch active_side_tab
		{
			case "ALPHA":
			{
				var portal_sprite = 0;
				var owned_portal_parts = global.alphaparts;
				var total_portal_parts = info("alpha","total_parts");
				break;
			}
			
			case "BETA":
			{
				var portal_image = 1;
				var owned_portal_parts = global.alphaparts;
				var total_portal_parts = info("beta","total_parts");
				break;
			}
			
			case "GAMMA":
			{
				var portal_image = 2;
				var owned_portal_parts = global.alphaparts;
				var total_portal_parts = info("gamma","total_parts");
				break;
			}
			
			case "DELTA":
			{
				var portal_image = 3;
				var owned_portal_parts = global.alphaparts;
				var total_portal_parts = info("delta","total_parts");
				break;
			}
		}
			
		//LAYERS
		draw_sprite_ext(window_layer_spr,0,1920/2+85,1080/2+10,2.5,2.1,0,c_white,1)
		draw_sprite_ext(hangar_bareer_spr,0,1050,550,5.3,1.5,90,c_white,1)
		draw_sprite_ext(gg_picture_spr,portal_image,800,500,1,1,0,c_white,1)
				
		//ENERGY AVAILABLE
		draw_set_font(hangarfont);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(1300,600,"ENERGY AVAILABLE: " + string(global.ggenergy));
				
		//GG PORTAL PROGRESS
		draw_healthbar(700,655,900,685,35,c_black,c_red,c_lime,0,true,true);
		draw_text(800,640,string(owned_portal_parts) + "/" + string(total_portal_parts));
				
		//SHOWING GG REWARDS
		var reward_number=0;
		for(var i=0; i<array_length(rewards); i+=1)
		{
			if rewards[i,0]>0 then
			{
				//sprite reward
				var xdec = 0
				var ydec = 0
				if reward_number >= 7 then {xdec = 200; ydec = 7*40}
				var sprt = stats_icons_spr;
				var img_nbr = 26;
				var scale = 1;
						
				if rewards[i,1]="x1" then {sprt = stats_icons_spr; img_nbr = 25}
				if rewards[i,1]="x2" then {sprt = stats_icons_spr; img_nbr = 26}
				if rewards[i,1]="x3" then {sprt = stats_icons_spr; img_nbr = 27}
				if rewards[i,1]="x4" then {sprt = stats_icons_spr; img_nbr = 30}
				if rewards[i,1]="x5" then {sprt = stats_icons_spr; img_nbr = 29}
				if rewards[i,1]="x6" then {sprt = stats_icons_spr; img_nbr = 28}
				if rewards[i,1]="ish" then {sprt = stats_icons_spr; img_nbr = 93}
				if rewards[i,1]="smb" then {sprt = stats_icons_spr; img_nbr = 98}
				if rewards[i,1]="emp" then {sprt = stats_icons_spr; img_nbr = 51}
				if rewards[i,1]="shieldbackup" then {sprt = stats_icons_spr; img_nbr = 55}
				if rewards[i,1]="warrep" then {sprt = stats_icons_spr; img_nbr = 56}
				if (rewards[i,1]="ggpart" or rewards[i,1]="ggpart_dupp") and active_side_tab = "ALPHA" then {sprt = alpha_portal_spr; img_nbr = 0; scale=38/369}
				if (rewards[i,1]="ggpart" or rewards[i,1]="ggpart_dupp") and active_side_tab = "BETA" then {sprt = beta_portal_spr; img_nbr = 0; scale=38/369}
				if (rewards[i,1]="ggpart" or rewards[i,1]="ggpart_dupp") and active_side_tab = "GAMMA" then {sprt = gamma_portal_spr; img_nbr = 0; scale=38/369}
				if (rewards[i,1]="ggpart" or rewards[i,1]="ggpart_dupp") and active_side_tab = "DELTA" then {sprt = delta_portal_spr; img_nbr = 0; scale=38/381}

				draw_sprite_ext(sprt,img_nbr,1200-30+xdec,300+reward_number*40-ydec,scale,scale,0,c_white,1)
				if rewards[i,1]="ggpart_dupp" then draw_sprite_ext(full_storage_spr,0,1200-30+xdec,300+reward_number*40-ydec,38/50,38/50,0,c_white,1)						
						
				//number reward
				draw_set_font(hangarfont)
				draw_set_halign(fa_left)
				draw_text(1200+xdec,300+reward_number*40-ydec,string(rewards[i,0]));
				reward_number+=1;
			}
		}
		
		break;
		#endregion
	}
}