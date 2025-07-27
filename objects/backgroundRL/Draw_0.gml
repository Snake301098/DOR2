//if room=lv2_1 then mapbackground=lv2_1_bg;
draw_set_alpha(1);//if instance_exists(gamer) then draw_sprite_stretched(mapbackground,0,gamer.x*0.8-room_width/2*(1-(1/xmultiplier))*0.2, gamer.y*0.8-room_height/2*(1-(1/xmultiplier))*0.2, back_width,back_height)
//if instance_exists(gamer) then draw_sprite_ext(tile_sprite_1_1,0,room_width/2+(gamer.x-room_width/2)*0.8,room_height/2+(gamer.y-room_height/2)*0.8,1.7,1.7,0,c_white,1)
/*if instance_exists(gamer) then draw_sprite_ext(tile_sprite_1_1,0,background_x*0/step_x+(gamer.x-room_width/2)*0.8,background_y*0/step_y+(gamer.y-room_height/2)*0.8,ratio_x,ratio_x,0,c_white,1)
if instance_exists(gamer) then draw_sprite_ext(tile_sprite_1_2,0,background_x*1/step_x+(gamer.x-room_width/2)*0.8,background_y*0/step_y+(gamer.y-room_height/2)*0.8,ratio_x,ratio_y,0,c_white,1)
if instance_exists(gamer) then draw_sprite_ext(tile_sprite_1_3,0,background_x*2/step_x+(gamer.x-room_width/2)*0.8,background_y*0/step_y+(gamer.y-room_height/2)*0.8,ratio_x,ratio_y,0,c_white,1)
if instance_exists(gamer) then draw_sprite_ext(tile_sprite_2_1,0,background_x*0/step_x+(gamer.x-room_width/2)*0.8,background_y*1/step_y+(gamer.y-room_height/2)*0.8,ratio_x,ratio_y,0,c_white,1)
if instance_exists(gamer) then draw_sprite_ext(tile_sprite_2_2,0,background_x*1/step_x+(gamer.x-room_width/2)*0.8,background_y*1/step_y+(gamer.y-room_height/2)*0.8,ratio_x,ratio_y,0,c_white,1)
if instance_exists(gamer) then draw_sprite_ext(tile_sprite_2_3,0,background_x*2/step_x+(gamer.x-room_width/2)*0.8,background_y*1/step_y+(gamer.y-room_height/2)*0.8,ratio_x,ratio_y,0,c_white,1)
*/

//if instance_exists(gamer) then draw_sprite_stretched(tiles[0,0],0,0,0,room_width/5,room_height/3)
//if instance_exists(gamer) then draw_sprite_stretched(tiles[0,1],0,room_width/3,0,room_width/5,room_height/3)

for(yy=1;yy<=step_y;yy++)
{
	for(xx=1;xx<=step_x;xx++)
	{
		var x1 = room_width*(xx-1)/step_x; //x in the game coordinates with origin (0;0)
		var y1 = room_height*(yy-1)/step_y; //y in the game coordinates with origin (0;0)
		var x2 = x1 - room_width/2; //x in the game coordinates with origin (room_width/2;room_height/2)
		var y2 = y1 - room_height/2; //y in the game coordinates with origin (room_width/2;room_height/2)
		var new_x2 = x2 * bg_scale; //x in the game coordinates with origin (room_width/2;room_height/2) and scaled
		var new_y2 = y2 * bg_scale; //y in the game coordinates with origin (room_width/2;room_height/2) and scaled
		var new_x1 = new_x2 + room_width/2+(gamer.x-room_width/2)*parallax_scale; //x in the game coordinates with origin (0;0) and scaled
		var new_y1 = new_y2 + room_height/2+(gamer.y-room_height/2)*parallax_scale; //y in the game coordinates with origin (0;0) and scaled
		draw_sprite_stretched(tiles[yy-1,xx-1],0,new_x1,new_y1,room_width/step_x*bg_scale,room_height/step_y*bg_scale)
		//draw_sprite_ext(tiles[yy-1,xx-1],0,new_x1,new_y1,1,1,0,c_white,1)
	}
}

