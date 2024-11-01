
draw_sprite_ext(window_background_spr,0,x,y,0.33,0.9,0,c_white,1)

//COMPUTE NUMBERS

//ORES
var start_x = x-78;
var start_y = y-150;
		
draw_set_font(HUD_font);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(start_x,start_y,"Mob");
draw_text(start_x+60,start_y,"Ore 1");
draw_text(start_x+110,start_y,"Ore 2");
draw_text(start_x+160,start_y,"Ore 3");		
var ydec = 45;
		
for (mob_index=0; mob_index<array_length(rewards_table); mob_index++)
{
	//mob sprite
	draw_sprite_ext(rewards_table[mob_index,0],0,start_x,start_y+ydec*(mob_index+1),0.3,0.3,0,c_white,1);
	
	//1st ore sprite
	if rewards_table[mob_index,2] = 0
	{
		draw_sprite_ext(ores_spr,rewards_table[mob_index,1],start_x+60,start_y+ydec*(mob_index+1),0.65,0.65,0,c_white,1);
	}
	else
	{
		draw_sprite_ext(ores_special_spr,rewards_table[mob_index,1],start_x+60,start_y+ydec*(mob_index+1),0.65,0.65,0,c_white,1);
	}
	
	//2nd ore sprite
	if rewards_table[mob_index,4] = 0
	{
		draw_sprite_ext(ores_spr,rewards_table[mob_index,3],start_x+110,start_y+ydec*(mob_index+1),0.65,0.65,0,c_white,1);
	}
	else
	{
		draw_sprite_ext(ores_special_spr,rewards_table[mob_index,3],start_x+110,start_y+ydec*(mob_index+1),0.65,0.65,0,c_white,1);
	}
	
	//3rd ore sprite
	if rewards_table[mob_index,6] = 0
	{
		draw_sprite_ext(ores_spr,rewards_table[mob_index,5],start_x+160,start_y+ydec*(mob_index+1),0.65,0.65,0,c_white,1);
	}
	else
	{
		draw_sprite_ext(ores_special_spr,rewards_table[mob_index,5],start_x+160,start_y+ydec*(mob_index+1),0.65,0.65,0,c_white,1);
	}
}
		