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
var _ratio = 1.2;
var _start = 1920/2-sprite_get_width(hud_ammo2_spr)/2*_ratio
draw_sprite_ext(shiphud_spr,0,_start,920,_ratio,_ratio,0,c_white,1); //ammo
draw_sprite_ext(hud_rsb_spr,0,_start + sprite_get_width(shiphud_spr)*_ratio,920,_ratio,_ratio,0,c_white,1); //ammo
//draw_sprite_ext(reload_spr,
draw_sprite_ext(hud_dcr_spr,0,_start + sprite_get_width(shiphud_spr)*_ratio+39*1*_ratio,920,_ratio,_ratio,0,c_white,1); //ammo
draw_sprite_ext(hud_emp_spr,0,_start + sprite_get_width(shiphud_spr)*_ratio+39*2*_ratio,920,_ratio,_ratio,0,c_white,1); //ammo
draw_sprite_ext(hud_ish_spr,0,_start + sprite_get_width(shiphud_spr)*_ratio+39*3*_ratio,920,_ratio,_ratio,0,c_white,1); //ammo
draw_sprite_ext(hud_smb_spr,0,_start + sprite_get_width(shiphud_spr)*_ratio+39*4*_ratio,920,_ratio,_ratio,0,c_white,1); //ammo
draw_sprite_ext(hud_ammo2_spr,0,_start,870,_ratio,_ratio,0,c_white,1); //ammo

//Ammo selected
var _xx_sel = 0
if gamer.ammo_display = "x1" then _xx_sel = _start 
if gamer.ammo_display = "x2" then _xx_sel = _start + sprite_get_width(shiphud_spr)*_ratio*1/5
if gamer.ammo_display = "x3" then _xx_sel = _start + sprite_get_width(shiphud_spr)*_ratio*2/5
if gamer.ammo_display = "x4" then _xx_sel = _start + sprite_get_width(shiphud_spr)*_ratio*3/5
if gamer.ammo_display = "x5" then _xx_sel = _start + sprite_get_width(shiphud_spr)*_ratio*4/5
if gamer.ammo_display = "x6" then _xx_sel = _start + sprite_get_width(shiphud_spr)*_ratio*6/5
draw_sprite_ext(cell_selected_spr,0,_xx_sel + 0.5*38*_ratio,920+ 0.5*38*_ratio,_ratio*38/42,_ratio*38/42,0,c_white,0.3);


//RELOAD SPRITES
var _warrep_reload_img = 0;
var _emp_reload_img = 0;
var _ish_reload_img = 0;
var _shieldbackup_reload_img = 0;
var _kamikaze_reload_img = 0;
with cooldowns_ctrl 
{
	if owner = gamer.id
	{
		_warrep_reload_img = round(100 * (alarm_get(1) / global.warrep_cooldown));
		_emp_reload_img = round(100 * (alarm_get(2) / global.emp_cooldown));
		_ish_reload_img = round(100 * (alarm_get(3) / global.ish_cooldown));
		_shieldbackup_reload_img = round(100 * (alarm_get(4) / global.shieldbackup_cooldown));
		_kamikaze_reload_img = round(100 * (alarm_get(5) / global.kami_cooldown));
	}
}
var _rsb_reload_img = 0;
with gamer {_rsb_reload_img = round(100 * (alarm_get(10) / global.rsb_cooldown))+1;}

draw_sprite_ext(reload_spr,_rsb_reload_img,_start + sprite_get_width(shiphud_spr)*_ratio,920,_ratio,_ratio,0,c_white,1)
draw_sprite_ext(reload_spr,_warrep_reload_img,_start + 39*_ratio,870,_ratio,_ratio,0,c_white,1)
draw_sprite_ext(reload_spr,_emp_reload_img,_start + sprite_get_width(shiphud_spr)*_ratio+39*2*_ratio,920,_ratio,_ratio,0,c_white,1)
draw_sprite_ext(reload_spr,_ish_reload_img,_start + sprite_get_width(shiphud_spr)*_ratio+39*3*_ratio,920,_ratio,_ratio,0,c_white,1)
draw_sprite_ext(reload_spr,_shieldbackup_reload_img,_start,870,_ratio,_ratio,0,c_white,1)

//Draw ammo text
draw_set_halign(fa_left);
draw_text(_start,960,dotString(global.x1,true))
draw_text(_start+39*1*_ratio,960,dotString(global.x2,true))
draw_text(_start+39*2*_ratio,960,dotString(global.x3,true))
draw_text(_start+39*3*_ratio,960,dotString(global.x4,true))
draw_text(_start+39*4*_ratio,960,dotString(global.x5,true))
draw_text(_start+39*5*_ratio,960,dotString(global.x6,true))
draw_text(_start+39*6*_ratio,960,dotString(global.dcr,true))
draw_text(_start+39*7*_ratio,960,dotString(global.emp,true))
draw_text(_start+39*8*_ratio,960,dotString(global.ish,true))
draw_text(_start+39*9*_ratio,960,dotString(global.smb,true))
draw_text(_start+39*0*_ratio,910,dotString(global.shieldbackup,true))
draw_text(_start+39*1*_ratio,910,dotString(global.warrep,true))

//Draw the HUD
draw_set_valign(fa_middle);
draw_set_halign(fa_left)
draw_sprite_ext(userhud_spr,0,25,60,1.2,1.2,0,c_white,0.8)
draw_text_ext(+70,76+31,string(strEP),-1,string_width*0.7);   
draw_text_ext(+70,97+31,string(global.level),-1,string_width*0.7);
draw_text_ext(+70,117+31,string(strHO),-1,string_width*0.7);
draw_text_ext(+70,137+31,string(global.ggenergy),-1,string_width*0.7);
draw_text_ext(+195,97+31,string(dotString(round(global.uridium))),-1,string_width*0.7);
draw_text_ext(+195,76+31,string(strCR),-1,string_width*0.7); 
draw_text_ext(+195,117+31,string(dotString(round(global.tdm_tickets))),-1,string_width*0.7);
draw_text_ext(+195,137+31,string(dotString(round(global.chest_gold_key))) + " Go | " + string(dotString(round(global.chest_green_key))) + " Gr",-1,string_width*0.7);
//draw_text_ext(+220,145,string(global.boxkey),-1,string_width*0.7);    
//draw_text_ext(+220,135,string(global.resetcpclock),-1,string_width*0.7); 

//HP etc
draw_set_valign(fa_middle);
draw_sprite_ext(hud_ammo_spr,0,330,60,1,1,0,c_white,0.8)
draw_text_ext(+370,77+31,"THANATOS",-1,string_width*0.7); 
draw_text_ext(+370,97+31,string(dotString(round(gamer.own_health))),-1,string_width*0.7); 
draw_text_ext(+370,117+31,string(dotString(round(gamer.own_shield))),-1,string_width*0.7);  
draw_text_ext(+370,137+31,string(gamer.config),-1,string_width*0.7);    
//draw_text_ext(+495,76+31,string(dotString(round(global.chest_gold_key))),-1,string_width*0.7); 
//draw_text_ext(+495,97+31,string(dotString(round(global.chest_green_key))),-1,string_width*0.7);  
//draw_text_ext(+495,117+31,string(global.ggenergy),-1,string_width*0.7);    
//draw_text_ext(+80,97,string(global.level),-1,string_width*0.7);
//draw_text_ext(+90,117,string(strHO),-1,string_width*0.7);
//draw_text_ext(+220,97,string(strURI),-1,string_width*0.7);
//draw_text_ext(+220,76,string(strCR),-1,string_width*0.7); 
//draw_text_ext(+90,135,string(global.ggenergy),-1,string_width*0.7);

//PET
draw_sprite_ext(pet_hud_spr,0,xx_pet,yy_pet+20,1,1,0,c_white,1)
draw_sprite_ext(pet_kamikaze_spr,0,xx_pet+33,yy_pet+203,0.55,0.55,0,c_white,1)
if kamikaze_selected then draw_sprite_ext(pet_selected_spr,0,xx_pet+33,yy_pet+203,0.55,0.55,0,c_white,1)
draw_sprite_ext(reload_spr,_kamikaze_reload_img,xx_pet+10,yy_pet+180,_ratio,_ratio,0,c_white,1)

//Draw CP HUD
/*
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

