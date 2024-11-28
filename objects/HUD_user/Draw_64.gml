//Getting some data
//EP
var strEP = dotString(round(global.experience));
//Honor
var strHO = dotString(round(global.honor));
//Credits
var strCR = dotString(round(global.credit));
//Uridium
//strURI = dotString(round(global.uridium));
    
//Make sure icon"s ALWAYS visible!

//draw_sprite(userhud_image,1,+2,2)
//draw_sprite_ext(userhud_image,1,+2,2,1.25,1.25,0,c_white,1)
//HUD_user.x=+2
//HUD_user.y=2

//draw_set_halign(fa_left);
//draw_set_valign(fa_bottom);
draw_set_font(HUD_font)
draw_set_alpha(1)

//CP ROOM
draw_set_alpha(1);
draw_set_color(c_white);

//Draw top icons
draw_sprite_ext(hud_user_square_spr,0,10,10,1,1,0,c_white,1); 
draw_sprite_ext(hud_ship_square_spr,0,50,10,1,1,0,c_white,1); 
draw_sprite_ext(hud_fake2_spr,0,10,10,1,1,0,c_white,1); 
draw_sprite_ext(hud_map_spr,0,205,10,1,1,0,c_white,1); 

//Draw Ammo HUD
var _start = 1920/2-sprite_get_width(hud_ammo2_spr)/2
draw_sprite_ext(shiphud_spr,0,_start,920,1,1,0,c_white,1); //ammo
draw_sprite_ext(hud_rsb_spr,0,_start + sprite_get_width(shiphud_spr),920,1,1,0,c_white,1); //ammo
draw_sprite_ext(hud_dcr_spr,0,_start + sprite_get_width(shiphud_spr)+39*1,920,1,1,0,c_white,1); //ammo
draw_sprite_ext(hud_emp_spr,0,_start + sprite_get_width(shiphud_spr)+39*2,920,1,1,0,c_white,1); //ammo
draw_sprite_ext(hud_ish_spr,0,_start + sprite_get_width(shiphud_spr)+39*3,920,1,1,0,c_white,1); //ammo
draw_sprite_ext(hud_smb_spr,0,_start + sprite_get_width(shiphud_spr)+39*4,920,1,1,0,c_white,1); //ammo
draw_sprite_ext(hud_ammo2_spr,0,_start,880,1,1,0,c_white,1); //ammo

//Draw the HUD
draw_set_valign(fa_middle);
draw_sprite_ext(userhud_spr,0,25,60,1.2,1.2,0,c_white,0.8)
draw_text_ext(+95,76+31,string(strEP),-1,string_width*0.7);   
draw_text_ext(+80,97+31,string(global.level),-1,string_width*0.7);
draw_text_ext(+90,117+31,string(strHO),-1,string_width*0.7);
draw_text_ext(+220,97+31,string(dotString(round(strURI))),-1,string_width*0.7);
draw_text_ext(+220,76+31,string(strCR),-1,string_width*0.7); 
draw_text_ext(+90,117+31,string(dotString(round(global.ggenergy))),-1,string_width*0.7);
//draw_text_ext(+220,145,string(global.boxkey),-1,string_width*0.7);    
draw_text_ext(+220,135,string(global.resetcpclock),-1,string_width*0.7); 
if global.cproom = noone then draw_text_ext(+220,117,"CP Offline",-1,string_width*0.7) else draw_text_ext(+220,117,string(info_map(global.cproom,"name")),-1,string_width*0.7);

//HP etc
draw_set_valign(fa_middle);
draw_sprite_ext(hud_ammo_spr,0,330,60,1.2,1.2,0,c_white,0.8)
draw_text_ext(+395,76+31,string(dotString(round(gamer.own_health))),-1,string_width*0.7); 
draw_text_ext(+395,97+31,string(dotString(round(gamer.own_shield))),-1,string_width*0.7);  
draw_text_ext(+395,117+31,string(gamer.config),-1,string_width*0.7);    
//draw_text_ext(+80,97,string(global.level),-1,string_width*0.7);
//draw_text_ext(+90,117,string(strHO),-1,string_width*0.7);
//draw_text_ext(+220,97,string(strURI),-1,string_width*0.7);
//draw_text_ext(+220,76,string(strCR),-1,string_width*0.7); 
//draw_text_ext(+90,135,string(global.ggenergy),-1,string_width*0.7);


//Draw CP HUD
if room=global.cproom
{
	draw_sprite_ext(window_background_spr,0,500,100,0.3,0.3,0,c_white,1);
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);
	draw_set_font(HUD_font)
	draw_set_color(global.yellow);
	draw_text(410,76,"Ships");
	draw_text(410,110,"Points");
	draw_text(410,144,"Score");
	draw_set_halign(fa_center);
	draw_set_color(global.orange);
	draw_text(475,76,global.mmooncp);
	draw_text(525,76,global.eiconcp);
	draw_text(575,76,global.vruoncp);
	draw_text(475,110,global.mmoscorecp);
	draw_text(525,110,global.eicscorecp);
	draw_text(575,110,global.vruscorecp);
	draw_text(475,144,global.mmowincp);
	draw_text(525,144,global.eicwincp);
	draw_text(575,144,global.vruwincp);
	draw_sprite_ext(icons_spr,0,475,53,1,1,0,c_white,1);
	draw_sprite_ext(icons_spr,1,525,53,1,1,0,c_white,1);
	draw_sprite_ext(icons_spr,2,575,53,1,1,0,c_white,1);
	
	draw_sprite_ext(window_background_spr,0,750,100,0.17,0.17,0,c_white,1);
	draw_set_color(global.yellow);
	draw_text(720,80,"Position");
	draw_text(720,120,"Time");
	draw_set_color(global.orange);
	draw_text(770,80,global.isgameronpc);
	draw_text(770,120,global.cproundclock);
}

