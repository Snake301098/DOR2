/// @description Insert description here
// You can write your code in this editor

//sprite_index=window_background_spr;

draw_sprite_ext(window_background_spr,0,1920/2,1080/2,1.7,1.9,0,c_white,1)
draw_sprite_ext(hangar_bareer_spr,0,560,550,5.6,1.5,90,c_white,1)

switch active_tab
{
	//Profile
	case "PROFILE":
	{
		#region
		
		draw_set_halign(fa_center)
		draw_set_font(hangarfont);
			
		//STATS PROFILE
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
		var cells_start_x = _Profilex;
		var cells_start_y = _Profiley;
		var spacing_x = 200;
		var spacing_y = 120;
		var rows = 5;
		var columns = 5;
	
		
		var stats_list = ["CREDITS", "URIDIUM", "PVP KILLS","PVE KILLS","DEATHS","QUESTS","GG","TDM VICTORY","HIGHEST KILLSTREAK"];
		var used = [5646344,2452,513,67];
	
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//position=i + (j-1) * columns;
				position=(j-1)*columns+i+(page_ships-1)*rows*columns;
				if (position-1)<array_length(stats_list) then
				{
					draw_text(cells_start_x+(i-1)*spacing_x,cells_start_y+(j-1)*spacing_y,stats_list[position-1]);
					draw_text(cells_start_x+(i-1)*spacing_x,cells_start_y+(j-1)*spacing_y+25,"58234");
				}
			}
		}
		break;
		#endregion
	}
	
	//PVP
	case "PVP":
	{
		#region
		
		draw_set_halign(fa_center)
		draw_set_font(hangarfont);
		draw_text(_PVPx-110,_PVPy,"NEW GENS");
		draw_text(_PVPx-110,_PVPy+25,"58234");
			
		draw_text(_PVPx-110,_PVPy+150,"GOLIATHS");
		draw_text(_PVPx-110,_PVPy+150+25,"58234");
			
		draw_text(_PVPx-110,_PVPy+400,"VENGEANCES");
		draw_text(_PVPx-110,_PVPy+400+25,"58234");
			
		draw_text(_PVPx-110,_PVPy+550,"BAD SHIPS");
		draw_text(_PVPx-110,_PVPy+550+25,"58234");
		break;
		#endregion
	}
	
}