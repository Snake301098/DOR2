
draw_sprite_ext(window_background_spr,0,1920/2,1080/2,1.275,1.425,0,c_white,1)

//COMPUTE NUMBERS
//ORES
ores_qty=global.ores_qty;
ores_color=[c_maroon, c_teal, c_olive, c_fuchsia, c_green, c_orange, c_purple, c_aqua]

//STORAGE
storage_qty=global.storage_qty;

//TRANSFER
transfer_used = global.transfer_used;

switch active_tab
{
	//CARGO
	case "CARGO":
	{
		#region
		
		//ORES
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns;
	
		cells_start_x = 680;
		cells_start_y = 580;
		spacing_x = 200;
		spacing_y = 150;
		rows = 2;
		columns = 4;
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//ores_bar=draw_healthbar(cells_start_x+(i-1)*spacing_x, cells_start_y+(j-1)*spacing_y, cells_start_x+(i-1)*spacing_x + bar_length, cells_start_y+(j-1)*spacing_y + bar_width, 25, c_black,c_yellow,c_yellow,0,true,true);
				draw_set_font(hangarfont)
				draw_set_color(c_white)
				draw_text(cells_start_x+(i-1)*spacing_x,cells_start_y+(j-1)*spacing_y-30, ores_qty[i+(j-1)*columns-1]);
				draw_sprite_ext(ores_spr, i+(j-1)*columns-1, cells_start_x+(i-1)*spacing_x, cells_start_y+(j-1)*spacing_y, 1, 1, 0 ,c_white, 1)
			}
		}
		
		//CARGO BAR
		var x_start, x_end, y_start, bar_length, bar_width, start_bar, end_bar;		
		
		x_start=680;
		y_start=430;
		x_end=1280;
		start_bar=x_start;
		
		bar_length=x_end-x_start;
		bar_width=20;
		
		//total cargo
		draw_set_halign(fa_center)
		draw_set_font(hangarfont)
		draw_set_color(c_white)
		draw_text((x_start+x_end)/2, y_start - 30, string(get_current_cargo()) + "/" + string(total)); 
		
		//background
		draw_healthbar(x_start, y_start, x_end, y_start+bar_width, 0, c_black, c_black, c_black, 0, true, true); 
			
		//ores
		for(i=0; i<8; i+=1)
		{
			end_bar=start_bar + bar_length * ores_qty[i] / total;
			draw_healthbar(start_bar, y_start, end_bar, y_start+bar_width, 100, c_black, ores_color[i], ores_color[i], 0, true, true);
			start_bar=end_bar;
		}
		break;
		#endregion
	}
	
	
	//STORAGE
	case "STORAGE":
	{
		#region
		
		//ORES
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns;
	
		cells_start_x = 680;
		cells_start_y = 580;
		spacing_x = 200;
		spacing_y = 150;
		rows = 2;
		columns = 4;
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//ores_bar=draw_healthbar(cells_start_x+(i-1)*spacing_x, cells_start_y+(j-1)*spacing_y, cells_start_x+(i-1)*spacing_x + bar_length, cells_start_y+(j-1)*spacing_y + bar_width, 25, c_black,c_yellow,c_yellow,0,true,true);
				draw_set_font(hangarfont)
				draw_set_color(c_white)
				draw_text(cells_start_x+(i-1)*spacing_x,cells_start_y+(j-1)*spacing_y-30, storage_qty[i+(j-1)*columns-1]);
				draw_sprite_ext(ores_spr, i+(j-1)*columns-1, cells_start_x+(i-1)*spacing_x, cells_start_y+(j-1)*spacing_y, 1, 1, 0 ,c_white, 1)
			}
		}
		
		//CARGO BAR
		var x_start, x_end, y_start, bar_length, bar_width, start_bar, end_bar;		
		
		x_start=680;
		y_start=430;
		x_end=1280;
		start_bar=x_start;
		
		bar_length=x_end-x_start;
		bar_width=20;
		
		//total cargo
		draw_set_halign(fa_center)
		draw_set_font(hangarfont)
		draw_set_color(c_white)
		draw_text((x_start+x_end)/2, y_start - 30, string(get_current_storage()) + "/" + string(total_storage)); 
		
		//background
		draw_healthbar(x_start, y_start, x_end, y_start+bar_width, 0, c_black, c_black, c_black, 0, true, true); 
			
		//ores
		for(i=0; i<8; i+=1)
		{
			end_bar=start_bar + bar_length * storage_qty[i] / total_storage;
			draw_healthbar(start_bar, y_start, end_bar, y_start+bar_width, 100, c_black, ores_color[i], ores_color[i], 0, true, true);
			start_bar=end_bar;
		}
		break;
		#endregion
	}
	
	//TRANSFER
	case "TRANSFER":
	{
		#region
		
		//ORES
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns;
	
		cells_start_x = 680;
		cells_start_y = 580;
		spacing_x = 200;
		spacing_y = 150;
		rows = 2;
		columns = 4;
	
		for (j=1; j<=rows; j+=1)
		{
			for (i=1; i<=columns; i+=1)
			{
				//ores_bar=draw_healthbar(cells_start_x+(i-1)*spacing_x, cells_start_y+(j-1)*spacing_y, cells_start_x+(i-1)*spacing_x + bar_length, cells_start_y+(j-1)*spacing_y + bar_width, 25, c_black,c_yellow,c_yellow,0,true,true);
				draw_set_font(hangarfont)
				draw_set_color(c_white)
				draw_text(cells_start_x+(i-1)*spacing_x,cells_start_y+(j-1)*spacing_y-30, string(transfer_qty[i+(j-1)*columns-1]) + "/" + string(ores_qty[i+(j-1)*columns-1]));
				draw_sprite_ext(ores_spr, i+(j-1)*columns-1, cells_start_x+(i-1)*spacing_x, cells_start_y+(j-1)*spacing_y, 1, 1, 0 ,c_white, 1)

				//QUANTITY BUTTON
				btn_qty=instance_create_depth(0,0,depth-1,button_qty);
				btn_qty.x = cells_start_x+(i-1)*spacing_x;
				btn_qty.y = cells_start_y+(j-1)*spacing_y+40;
				btn_qty.shop_section="ores_transfer";
				btn_qty.qty=transfer_qty[i+(j-1)*columns-1];
				btn_qty.ores_transfer_index = i+(j-1)*columns-1;
				btn_qty.image_index=button_qty_spr;
			}
		}
		
		//TRANSFER BAR
		var x_start, x_end, y_start, bar_length, bar_width, start_bar, end_bar;		
		
		x_start=680;
		y_start=430;
		x_end=1280;
		start_bar=x_start;
		
		bar_length=x_end-x_start;
		bar_width=20;
		
		
		//total transfer
		draw_set_halign(fa_center)
		draw_set_font(hangarfont)
		draw_set_color(c_white)
		draw_text((x_start+x_end)/2, y_start - 30, string(get_current_transfer(transfer_qty)) + "/" + string(total_transfer)); 
		
		//background
		draw_healthbar(x_start, y_start, x_end, y_start+bar_width, 0, c_black, c_black, c_black, 0, true, true); 
			
		//ores
		for(i=0; i<8; i+=1)
		{
			end_bar=start_bar + bar_length * transfer_qty[i] / total_transfer;
			draw_healthbar(start_bar, y_start, end_bar, y_start+bar_width, 100, c_black, ores_color[i], ores_color[i], 0, true, true);
			start_bar=end_bar;
		}
		
		//TRANSFER BUTTON
		change_design_btn = instance_create_depth(0,0,depth-1,button_action)
		change_design_btn.x = (x_start+x_end)/2;
		change_design_btn.y = y_start+50;
		change_design_btn.button_sprite=button_default_spr;
		change_design_btn.button_id="transfer_ores";
		change_design_btn.button_text="Transfer to storage";
		change_design_btn.image_index=0;
		break;
		#endregion
	}
	
	
	//PIECES
	case "PIECES":
	{
		#region
		
		//ORES
		var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns;
	
		cells_start_x = 680;
		cells_start_y = 530;
		spacing_x = 200;
		spacing_y = 72;
		rows = 4;
		columns = 4;
	
		for (j=1; j<=columns; j+=1)
		{
			for (i=1; i<=rows; i+=1)
			{
				//ores_bar=draw_healthbar(cells_start_x+(i-1)*spacing_x, cells_start_y+(j-1)*spacing_y, cells_start_x+(i-1)*spacing_x + bar_length, cells_start_y+(j-1)*spacing_y + bar_width, 25, c_black,c_yellow,c_yellow,0,true,true);
				draw_set_font(hangarfont)
				draw_set_color(c_white)
				draw_set_valign(fa_center);
				draw_text(cells_start_x+(j-1)*spacing_x+35,cells_start_y+(i-1)*spacing_y, pieces_qty[i+(j-1)*columns-1]);
				draw_sprite_ext(pieces_spr, i+(j-1)*columns-1, cells_start_x+(j-1)*spacing_x, cells_start_y+(i-1)*spacing_y, 0.6, 0.6, 0 ,c_white, 1)
			}
		}
		
		//CARGO BAR
		var x_start, x_end, y_start, bar_length, bar_width, start_bar, end_bar;		
		
		x_start=680;
		y_start=430;
		x_end=1280;
		start_bar=x_start;
		
		bar_length=x_end-x_start;
		bar_width=20;
		
		//total cargo
		draw_set_halign(fa_center)
		draw_set_font(hangarfont)
		draw_set_color(c_white)
		draw_text((x_start+x_end)/2, y_start - 30, string(get_current_pieces()) + "/" + string(capacity_pieces)); 
		
		//background
		draw_healthbar(x_start, y_start, x_end, y_start+bar_width, 0, c_black, c_black, c_black, 0, true, true); 
			
		//ores
		for(i=0; i<8; i+=1)
		{
			end_bar=start_bar + bar_length * pieces_qty[i] / capacity_pieces;
			draw_healthbar(start_bar, y_start, end_bar, y_start+bar_width, 100, c_black, ores_color[i], ores_color[i], 0, true, true);
			start_bar=end_bar;
		}
		break;
		#endregion
	}
}