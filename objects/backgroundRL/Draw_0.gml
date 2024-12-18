//if room=lv2_1 then mapbackground=lv2_1_bg;
draw_set_alpha(1);//if instance_exists(gamer) then draw_sprite_stretched(mapbackground,0,gamer.x*0.8-room_width/2*(1-(1/xmultiplier))*0.2, gamer.y*0.8-room_height/2*(1-(1/xmultiplier))*0.2, back_width,back_height)
if instance_exists(gamer) then draw_sprite_ext(mapbackground,0,room_width/2+(gamer.x-room_width/2)*0.8,room_height/2+(gamer.y-room_height/2)*0.8,1.7,1.7,0,c_white,1)
