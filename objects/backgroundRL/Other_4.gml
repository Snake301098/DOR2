
xmultiplier:=room_width / back_width;
ymultiplier:=room_height / back_height;

if room=lv2_1 then mapbackground=lv2_1_bg;
if room=lv2_2 then mapbackground=lv2_2_bg;
if room=lv2_3 then mapbackground=lv2_3_bg;
if room=lv2_4 then mapbackground=lv2_4_bg;
if room=lv3_1 then mapbackground=lv3_1_bg;
if room=lv3_2 then mapbackground=lv3_2_bg;
if room=GGA then mapbackground=GGA_bg;
if room=GGB then mapbackground=GGB_bg;
if room=GGD then mapbackground=GGD_bg;
if room=GGY then mapbackground=GGY_bg;

var map_code = string_char_at(info_map(room,"name"),1)+"_"+string_char_at(info_map(room,"name"),3);
if room = GGA or room=GGB or room=GGD or room = GGY {map_code = info_map(room,"name")}
if room = arena or room = TDM {map_code = "4_4"}

tiles = []

step_x = 15;
step_y = 10;

for(yy=1;yy<=step_y;yy++)
{
	var subtiles = []
	for(xx=1;xx<=step_x;xx++)
	{
		array_push(subtiles,sprite_add("MAP_TILES/"+map_code+"-"+string(yy)+"_"+string(xx)+".jpg",1,false,true,0,0));
	}
	array_push(tiles,subtiles);
}




background_x = room_width;
background_y = room_height;
ratio_x = room_width/2100/step_x;
ratio_y = room_height/1310/step_y;

