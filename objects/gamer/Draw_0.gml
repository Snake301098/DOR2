
if(global.cloaked == 1){
    alpha=0.5
}else{
    alpha=1
}
if destroyed=1 then alpha=0;
SHIPXX=view_xview+640*global.xwidthscale; SHIPYY=view_yview+360*global.yheightscale
//Let"s do the actual drawing now...
if(attacking == false and attacking_laser=false) {
    directions=direction;
    image_index = round(set_angle(image_index*(360/32),directions,dirspeed)/(360/32));
}else{ 
	if instance_exists(target) then directions=point_direction(gamer.x,gamer.y,round(target.x),round(target.y)); 
	else directions=point_direction(gamer.x,gamer.y,round(mouse_x),round(mouse_y)); 
    image_index = round(set_angle(image_index*(360/32),directions,dirspeed)/(360/32));
}
draw_sprite_ext(SHIPNAME,image_index,x,y,global.scale,global.scale,0,c_white,alpha) 
draw_sprite_ext(target_looking_rocket_spr,0,x,y,1.4,1,directions,c_white,target_looking_rocket_alpha) 
draw_sprite_ext(target_looking_rocket_far_spr,0,x,y,2.3,1.5,directions,c_white,target_looking_rocket_far_alpha) 

if own_health>0 then{    draw_set_alpha(0.9);draw_healthbar(x-55,y+105,x+55,y+90,followHP/health_def*100,c_black,c_orange,c_orange,0,1,1);draw_set_alpha(0.9);} //+41+25
if own_health>0 then{    draw_set_alpha(0.9);draw_healthbar(x-55,y+105,x+55,y+90,own_health/health_def*100,c_black,c_lime,c_lime,0,0,0);draw_set_alpha(0.9);} //+41+25