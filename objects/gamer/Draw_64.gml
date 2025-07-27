/// @description 

var ship_sprite=info(ship_name,"sprite");
if(global.cloaked == 1){
    alpha=0.5
}else{
    alpha=1
}
if destroyed=1 then alpha=0;


if(attacking == false) {
    directions=direction;
    image_index = round(set_angle(image_index*(360/32),directions,dirspeed)/(360/32));
}else{ 
	if instance_exists(target) then directions=point_direction(gamer.x,gamer.y,round(target.x),round(target.y)); 
	else directions=point_direction(gamer.x,gamer.y,round(mouse_x),round(mouse_y)); 
    image_index = round(set_angle(image_index*(360/32),directions,dirspeed)/(360/32));
}

draw_sprite_ext(ship_sprite,image_index,1920/2,1080/2,1,1,0,c_white,alpha) 

//HEALTH
//if own_health>0 then{    draw_set_alpha(0.9);draw_healthbar(1920/2-55,1080/2-105,1920/2+55,1080/2-100,followHP/health_def*100,c_black,c_lime,c_lime,0,1,1);draw_set_alpha(0.9);} //+41+25
if own_health>0 then{    draw_set_alpha(0.9);draw_healthbar(1920/2-55,1080/2-104,1920/2+55,1080/2-101,own_health/health_def*100,c_grey,c_lime,c_lime,0,1,1);draw_set_alpha(0.9);} //+41+25

//SHIELD
//if own_shield>0 then{    draw_set_alpha(0.9);draw_healthbar(1920/2-55,1080/2-90,1920/2+55,1080/2-85,followShield/shield_def*100,c_black,c_aqua,c_aqua,0,1,1);draw_set_alpha(0.9);} //+41+25
if own_shield>0 then{    draw_set_alpha(0.9);draw_healthbar(1920/2-55,1080/2-91,1920/2+55,1080/2-88,own_shield/shield_def*100,c_grey,c_aqua,c_aqua,0,1,1);draw_set_alpha(0.9);} //+41+25





/*

var nbr_frames_reloading_spr = sprite_get_number(reloading_spr); 

//ABILITY 1
var ability_1_timer = 0;
var ability_1_x = 1920-330;
var ability_1_y = 1080-150;

//ABILITY 2
var ability_2_timer = 0;
var ability_2_x = 1920-250;
var ability_2_y = 1080-150;

/*
with(cooldowns_ctrl)
{
	if owner = gamer.id
	{
		ability_1_timer = alarm_get(1);
		ability_2_timer = alarm_get(2);
	}
}

//ABILITY 1
if can_use_ability_1 = false then
{
	draw_sprite_ext(ability_1_icon,0,ability_1_x,ability_1_y,1,1,0,c_white,0.8);	
	var ability_1_timer_total = 60 * 10;
	var ability_1_timer_percentage = (ability_1_timer_total - ability_1_timer) / ability_1_timer_total
	var ability_1_reload_frame = round(nbr_frames_reloading_spr * ability_1_timer_percentage);
	draw_sprite_ext(reloading_spr,ability_1_reload_frame,ability_1_x,ability_1_y,1,1,0,c_white,0.8);
}
else
{
	draw_sprite_ext(ability_1_icon,0,ability_1_x,ability_1_y,1,1,0,c_white,1);
}

if is_using_ability_1 = true then
{
	draw_sprite_ext(cell_selected_spr,0,ability_1_x,ability_1_y,51/37,51/37,0,c_white,0.6);
}

//ABILITY 2
if can_use_ability_2 = false then
{
	draw_sprite_ext(ability_2_icon,0,ability_2_x,ability_2_y,1,1,0,c_white,0.8);	
	var ability_2_timer_total = 60 * 10;
	var ability_2_timer_percentage = (ability_2_timer_total - ability_2_timer) / ability_2_timer_total
	var ability_2_reload_frame = round(nbr_frames_reloading_spr * ability_2_timer_percentage);
	draw_sprite_ext(reloading_spr,ability_2_reload_frame,ability_2_x,ability_2_y,1,1,0,c_white,0.8);
}
else
{
	draw_sprite_ext(ability_2_icon,0,ability_2_x,ability_2_y,1,1,0,c_white,1);
}

if is_using_ability_2 = true then
{
	draw_sprite_ext(cell_selected_spr,0,ability_2_x,ability_2_y,51/37,51/37,0,c_white,0.6);
}

*/

//HUD NICKNAME ETC

var xx = 1920/2;
var yy = 1080/2;
var a, dmgBoost, hpBoost, shdBoost;

//Ïîëîñêà çäîðîâüÿ è ùèòà. 
//Îòîáðàæåíèå íèêà.
draw_set_halign(fa_center);
draw_set_alpha(1);
draw_set_font(nicktext);
draw_set_color(global.HUD_color);
var rpf=global.rpfactor;
var rpbelow=0;
var rpabove=0;
var subimg = 0;

var _res = get_rankpoints()

global.subimg=_res[0];
global.rpbelow=_res[1];
global.rpabove=_res[2];
RPOINT=_res[3];
	
/*
* ****USERNAME + COMPANY + RANK + GATES**** *
*/ 
if gamer.destroyed=0 then //check if gamer not killed
{
	draw_set_font(nicktext)    
	draw_set_valign(fa_middle);
	//draw_text_ol(xx,yy+73,string(global.nickname),global.HUD_color,c_black,HUD_font); //nickname
	draw_set_font(HUD_font)   
	draw_text_ext(xx,yy+75,string(global.nickname),-1,string_width*0.7); 
	draw_sprite(icons_spr,corporation,xx+string_width(string(global.nickname))/2+15,yy+73); //firm
	draw_sprite(ranks_spr,global.subimg,xx-string_width(string(global.nickname))/2-15,yy+75) 
    
	if(global.alphacompleted+global.betacompleted+global.gammacompleted+global.deltacompleted == 4) 
	{
		draw_sprite(ggring_spr,1,xx-string_width(global.nickname)/2-15,yy+63)
	} 
	else 
	{
		if(global.alphacompleted == 1) 
		{
			draw_sprite(ggring_spr,0,xx-string_width(global.nickname)/2-21,yy+63) //476
		}
		if(global.betacompleted == 1) 
		{
			draw_sprite(ggring_spr,0,xx-string_width(global.nickname)/2-15,yy+63)//476
		}
		if(global.gammacompleted == 1) 
		{
			draw_sprite(ggring_spr,0,xx-string_width(global.nickname)/2-9,yy+63)//476
		}
		if(global.deltacompleted == 1) 
		{
			draw_sprite(ggring_spr,0,xx-string_width(global.nickname)/2-15,yy+63-5)//454
		}
	}
		/*
		* ****DRONE STUFF IS DOWN HERE**** *
	*/   
	if(global.droid_enable=false) 
	{
		draw_set_halign(fa_center)
		draw_set_alpha(0.6)
		draw_set_font(Digits);
		var startx = round(x-27);
		for(var i=1; i<=12; i+=1)
		{
			if(droid[i,1] == "flax")
			{
			    if(droid[i,4] == "HAVOC")
				{
					draw_set_color(c_red)
			        draw_text(startx,round(y-60),string("F"))
			        startx+=5;
				}
				else if(droid[i,4] == "HERCULES"){draw_set_color(c_aqua)
				    draw_text(startx,round(y-60),string("F"))
				    startx+=5;
				}
				else
				{
					draw_set_color(c_white)
				        draw_text(startx,round(y-60),string("F"))
				        startx+=5;
				}
			}
			else if(droid[i,1] == "iris")
			{
				if(droid[i,4] == "HAVOC")
				{
					draw_set_color(c_red)
				    draw_text(startx,round(y-60),string("I"))
				    startx+=5;
				}
				else if(droid[i,4] == "HERCULES")
				{
					draw_set_color(c_aqua)
				    draw_text(startx,round(y-60),string("I"))
				    startx+=5;
				}
				else
				{
					draw_set_color(c_white)
				    draw_text(startx,round(y-60),string("I"))
				    startx+=5;
				}
			}
			else if(droid[i,1] == "apis")
			{
				if(droid[i,4] == "HAVOC")
				{
					draw_set_color(c_red)
				    draw_text(startx,round(y-60),string("A"))
				    startx+=5;
				}
				else if(droid[i,4] == "HERCULES")
				{
					draw_set_color(c_aqua)
				    draw_text(startx,round(y-60),string("A"))
				    startx+=5;
				}
				else
				{
					draw_set_color(c_white)
				    draw_text(startx,round(y-60),string("A"))
				    startx+=5;
				}
			}
			else if(droid[i,1] == "zeus")
			{
				if(droid[i,4] == "HAVOC")
				{
					draw_set_color(c_red)
					draw_text(startx,round(y-60),string("Z"))
					startx+=5;
				}
				else if(droid[i,4] == "HERCULES")
				{
					draw_set_color(c_aqua)
					draw_text(startx,round(y-60),string("Z"))
					startx+=5;
				}
				else
				{
					draw_set_color(c_white)
				    draw_text(startx,round(y-60),string("Z"))
				    startx+=5;
				}
			}
		}
			draw_set_color(global.HUD_color); //Bugfix
	}
	
//draw_set_halign(fa_center); draw_sprite(HUDDRONE,((global.droneformation)-1),xx+round(x-50),yy+round(y-75))
draw_set_halign(fa_center); draw_sprite(huddrone_spr,((global.droneformation)-1),xx-60,yy-55)
}
