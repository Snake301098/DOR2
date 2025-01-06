
if(global.cloaked == 1){
    alpha=0.5
}else{
    alpha=1
}
if destroyed=1 then alpha=0;
SHIPXX=view_xview+640*global.xwidthscale; SHIPYY=view_yview+360*global.yheightscale
//Let"s do the actual drawing now...
if(attacking == false) {
    directions=direction;
    image_index = round(set_angle(image_index*(360/32),directions,dirspeed)/(360/32));
}else{ 
	if instance_exists(target) then directions=point_direction(gamer.x,gamer.y,round(target.x),round(target.y)); 
	else directions=point_direction(gamer.x,gamer.y,round(mouse_x),round(mouse_y)); 
    image_index = round(set_angle(image_index*(360/32),directions,dirspeed)/(360/32));
}
//draw_sprite_ext(SHIPNAME,image_index,x,y,global.scale,global.scale,0,c_white,alpha) 
draw_sprite_ext(ship_sprite,image_index,x,y,1,1,0,c_white,alpha) 

//HEALTH
if own_health>0 then{    draw_set_alpha(0.9);draw_healthbar(x-55,y-105,x+55,y-100,followHP/health_def*100,c_black,c_lime,c_lime,0,1,1);draw_set_alpha(0.9);} //+41+25
if own_health>0 then{    draw_set_alpha(0.9);draw_healthbar(x-55,y-105,x+55,y-100,own_health/health_def*100,c_black,c_lime,c_lime,0,0,0);draw_set_alpha(0.9);} //+41+25

//SHIELD
if own_shield>0 then{    draw_set_alpha(0.9);draw_healthbar(x-55,y-90,x+55,y-85,followShield/shield_def*100,c_black,c_aqua,c_aqua,0,1,1);draw_set_alpha(0.9);} //+41+25
if own_shield>0 then{    draw_set_alpha(0.9);draw_healthbar(x-55,y-90,x+55,y-85,own_shield/shield_def*100,c_black,c_aqua,c_aqua,0,0,0);draw_set_alpha(0.9);} //+41+25


