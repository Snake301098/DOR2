
//MINIMAP HUD
#region
draw_set_alpha(1);
draw_sprite_stretched(mimage,0,x+20,y+50,170*1,142*0.8)
draw_set_alpha(1);
draw_sprite_ext(minimaphud_spr,0,x,y,1.2,1.2,0,c_white,1)
draw_set_alpha(1);

decx=32;
decy=60;
var xmultiplier:=room_width  / 128 /1.2
var ymultiplier:=room_height / 80 /1.2

	
    if gamer.x<room_width and gamer.x>0 and gamer.y<room_height and gamer.y>0 then
            //Ïåðåêðåñòèå íà ìèíèêàðòå.
    {
            draw_text(10,1,x+decx)
            draw_text(20,1,y+decy)
            draw_set_alpha(1);
            event_user(0);
            draw_line_color(round(x+gamer.x / xmultiplier)+decx,round(y+80*1.2)+decy,round(x+gamer.x / xmultiplier)+decx,round(y)+decy,c_gray,c_gray);
            draw_line_color(round(x+128*1.2)+decx,round(y+gamer.y / ymultiplier)+decy,round(x)+decx,round(y+gamer.y / ymultiplier)+decy,c_gray,c_gray);
        }


    
    with (base)
        {
        draw_sprite(mm_base_icon_spr,0,round(minimap.x+x / xmultiplier)+decx,round(minimap.y+y / ymultiplier)+decy);}
    with (controlpoint)
    {
    draw_sprite(mm_base_icon_spr,0,round(minimap.x+x / xmultiplier)+decx,round(minimap.y+y / ymultiplier)+decy);}
    with (mob) if distance_to_object(gamer)<=gamer.radarrange or id=gamer.target then
        {draw_set_color(make_color_rgb(253,0,0));
        draw_point(round(minimap.x+x / xmultiplier)+decx,round(minimap.y+y / ymultiplier)+decy);}
    with (ship) if distance_to_object(gamer)<=gamer.radarrange or id=gamer.target or gamer.id=target then
        if visible=true then
        {if corporation=gamer.corporation then {draw_set_color(make_color_rgb(88,169,253)); isfriendly=1}
        else {draw_set_color(make_color_rgb(253,0,0)); isfriendly=0}
        draw_point(minimap.x+x / xmultiplier+decx,minimap.y+y / ymultiplier+decy);
        if isfriendly=1 then
        {     }
        //else if (isfriendly=0 && room=arena) then
        //{    {draw_sprite(MINIENEMY,0,minimap.x+x / other.xmultiplier-decx,minimap.y+y / other.ymultiplier-decy);} }
		}
	with (teleport)
    if visible=true then{
        draw_circle_color(minimap.x+x / xmultiplier+32,minimap.y+y / ymultiplier+60,3,c_white,c_white,true)
		}
    //with(gamer)
       // if map_open=true then
           // draw_sprite(global.maps1_spr,0,view_xview+view_wview div 2,view_yview+view_hview div 2);
  /*
  with (cubikon)
        {draw_sprite(MapCub,0,minimap.x+x / other.xmultiplier-decx,minimap.y+y / other.ymultiplier-decy);}  
    with (PET)
        {draw_sprite(mmPET,0,minimap.x+x / other.xmultiplier-decx,minimap.y+y / other.ymultiplier-decy);}
       
*/
#endregion

//OTHER HUD
#region


//middlex=1920/2;
//middley=1080/2;

var a, dmgBoost, hpBoost, shdBoost;
with (gamer) {


/*
 *
 * All stuff specific to a certain resolution can be found below  
 * at the according resolution comment.
 *
*/
    global.yoffset=940;
    global.xoffset=678;
    draw_set_alpha(1)/*
    draw_sprite_ext(fake_HUD,0,view_xview+2*global.xwidthscale*global.hudscale,view_yview+2*global.yheightscale,global.xwidthscale*global.hudscale,global.yheightscale*global.hudscale,0,c_white,1)
    draw_sprite_ext(fake_HUD2,0,view_xview+1278*global.xwidthscale*global.hudscal,view_yview+2*global.yheightscale,global.xwidthscale*global.hudscale,global.yheightscale*global.hudscale,0,c_white,1)
    draw_sprite_ext(ammo_HUD,0,view_xview+global.xoffset,view_yview+global.yoffset,global.xwidthscale*global.hudscale,global.yheightscale*global.hudscale,0,c_white,1);
    draw_sprite_ext(ammo2_HUD,0,view_xview+global.xoffset,view_yview+global.yoffset-59,global.xwidthscale*global.hudscale,global.yheightscale*global.hudscale,0,c_white,1);
    draw_sprite_ext(ammo_HUD_select,image_index,view_xview+(ammo[0,0]-1)*47+global.xoffset,view_yview+global.yoffset,global.xwidthscale*global.hudscale,global.yheightscale*global.hudscale,0,c_white,1);
   */ draw_set_font(wendy_font); 
    draw_set_halign(fa_left)
    draw_set_valign(fa_bottom)
    
    /*
     * ****AMMO COUNTERS**** *
    */
	
	/*
    {
        if(gamer.ammo[1,0] < 1000*global.code1) {
            draw_text_ol(view_xview+global.xoffset+3,view_yview+global.yoffset+45,string(round(ammo[1,0] / global.code1)),c_red,c_black);
        } else {
            draw_text_ol(view_xview+global.xoffset+3,view_yview+global.yoffset+45,string(round(ammo[1,0] / global.code1)),make_color_rgb(88,123,189),c_black);
        }
 
        if(gamer.ammo[2,0] < 1000*global.code1) {
            draw_text_ol(view_xview+global.xoffset+3+47,view_yview+global.yoffset+45,string(round(ammo[2,0] / global.code1)),c_red,c_black);
        } else {
            draw_text_ol(view_xview+global.xoffset+3+47,view_yview+global.yoffset+45,string(round(ammo[2,0] / global.code1)),make_color_rgb(88,123,189),c_black);
        }
 
        if(gamer.ammo[3,0] < 1000*global.code1) {
            draw_text_ol(view_xview+global.xoffset+3+47*2,view_yview+global.yoffset+45,string(round(ammo[3,0] / global.code1)),c_red,c_black);
        } else {
            draw_text_ol(view_xview+global.xoffset+3+47*2,view_yview+global.yoffset+45,string(round(ammo[3,0] / global.code1)),make_color_rgb(88,123,189),c_black);
        }
 
        if(gamer.ammo[4,0] < 1000*global.code1) {
            draw_text_ol(view_xview+global.xoffset+3+47*3,view_yview+global.yoffset+45,string(round(ammo[4,0] / global.code1)),c_red,c_black);
        } else {
            draw_text_ol(view_xview+global.xoffset+3+47*3,view_yview+global.yoffset+45,string(round(ammo[4,0] / global.code1)),make_color_rgb(88,123,189),c_black);
        }
 
        if(gamer.ammo[5,0] < 1000*global.code1) {
            draw_text_ol(view_xview+global.xoffset+3+47*4,view_yview+global.yoffset+45,string(round(ammo[5,0] / global.code1)),c_red,c_black);
        } else {
            draw_text_ol(view_xview+global.xoffset+3+47*4,view_yview+global.yoffset+45,string(round(ammo[5,0] / global.code1)),make_color_rgb(88,123,189),c_black);
        }
    }
    /*
     * ****SPECIAL AMMO SPRITES AND COUNTER**** *
    */
	/*
    {
        //draw_set_halign(fa_center); draw_sprite(HUDEMP,0,view_xview+578*global.xwidthscale,view_yview+600*global.yheightscale)
        draw_set_halign(fa_center); draw_sprite_ext(HUDRSB,0,view_xview+global.xoffset+47*5,view_yview+global.yoffset,global.xwidthscale*global.hudscale,global.yheightscale*global.hudscale,0,c_white,1)
    } {
        draw_set_halign(fa_center); draw_sprite_ext(HUDDCR,0,view_xview+global.xoffset+47*6,view_yview+global.yoffset,global.xwidthscale*global.hudscale,global.yheightscale*global.hudscale,0,c_white,1)
    } {
        draw_set_halign(fa_center); draw_sprite_ext(HUDEMP,0,view_xview+global.xoffset+47*7,view_yview+global.yoffset,global.xwidthscale*global.hudscale,global.yheightscale*global.hudscale,0,c_white,1)
    } {
        draw_set_halign(fa_left); draw_sprite_ext(HUDISH,0,view_xview+global.xoffset+47*8,view_yview+global.yoffset,global.xwidthscale*global.hudscale,global.yheightscale*global.hudscale,0,c_white,1)
    } {
        draw_set_halign(fa_left); draw_set_valign(fa_bottom) draw_sprite_ext(HUDSMB,0,view_xview+global.xoffset+47*9,view_yview+global.yoffset,global.xwidthscale*global.hudscale,global.yheightscale*global.hudscale,0,c_white,1)
    } {
        //draw_set_halign(fa_left); draw_text_ol(view_xview+581*global.xwidthscale*global.hudscale,view_yview+637*global.yheightscale*global.hudscale-11,string(global.empcount),make_color_rgb(88,123,189),c_black);
        draw_set_halign(fa_left); draw_text_ol(view_xview+global.xoffset+3+47*5,view_yview+global.yoffset+45,string(round(global.rsb)),make_color_rgb(88,123,189),c_black);
    } {
        draw_set_halign(fa_left); draw_text_ol(view_xview+global.xoffset+3+47*6,view_yview+global.yoffset+45,string(round(global.dcr)),make_color_rgb(88,123,189),c_black);
    } {
        draw_set_halign(fa_left); draw_text_ol(view_xview+global.xoffset+3+47*7,view_yview+global.yoffset+45,string(global.empcount),make_color_rgb(88,123,189),c_black);
    } {
        draw_text_ol(view_xview+global.xoffset+3+47*8,view_yview+global.yoffset+45,string(global.ishcount),make_color_rgb(88,123,189),c_black);
    } {
        draw_set_halign(fa_left) draw_set_valign(fa_bottom) draw_text_ol(view_xview+global.xoffset+3+47*9,view_yview+global.yoffset+45,string(global.ishcount),make_color_rgb(88,123,189),c_black);
    }
        if(global.warrepcount < 10) {
            draw_text_ol(view_xview+global.xoffset+3+47,view_yview+global.yoffset+45-59,string(global.warrepcount),c_red,c_black);
        } else {
            draw_text_ol(view_xview+global.xoffset+3+47,view_yview+global.yoffset+45-59,string(global.warrepcount),make_color_rgb(88,123,189),c_black);
        }
        if(global.shieldbackupcount < 10) {
            draw_text_ol(view_xview+global.xoffset+3,view_yview+global.yoffset+45-59,string(global.shieldbackupcount),c_red,c_black);
        } else {
            draw_text_ol(view_xview+global.xoffset+3,view_yview+global.yoffset+45-59,string(global.shieldbackupcount),make_color_rgb(88,123,189),c_black);
        }
    /*
     * ****RECHARGE SPRITES**** *
    *//*
    {
        draw_set_halign(fa_center); draw_sprite(recharge,gamercooldowns.rsbsprite,view_xview+global.xoffset+3+47*5+1,view_yview+global.yoffset+4)
    } {
        draw_set_halign(fa_center); draw_sprite(recharge,gamercooldowns.dcrsprite,view_xview+global.xoffset+3+47*6+1,view_yview+global.yoffset+4)
    } {
        draw_set_halign(fa_center); draw_sprite(recharge,gamercooldowns.empsprite,view_xview+global.xoffset+3+47*7+1,view_yview+global.yoffset+4)
    } {
        draw_set_halign(fa_center); draw_sprite(recharge,gamercooldowns.ishsprite,view_xview+global.xoffset+3+47*8+1,view_yview+global.yoffset+4)
    } {
        draw_set_halign(fa_center); draw_sprite(recharge,gamercooldowns.smbsprite,view_xview+global.xoffset+3+47*9+1,view_yview+global.yoffset+4)
    } { 
        draw_set_halign(fa_center); draw_sprite(recharge,gamercooldowns.warrepsprite,view_xview+global.xoffset+3+47+1,view_yview+global.yoffset-59+4)
    } { 
        draw_set_halign(fa_center); draw_sprite(recharge,ships_ability_cooldowns.spectrumabilitysprite,view_xview+global.xoffset+3+47*2+1,view_yview+global.yoffset-59+4)
    } {
        draw_set_halign(fa_center); draw_sprite(recharge,gamercooldowns.shieldbackupsprite,view_xview+global.xoffset+3+1,view_yview+global.yoffset-59+4)
    }
    
   
    /*
     * ****HUD STUFF IS HERE!**** *
     */
	 
    draw_set_alpha(1);
    draw_set_font(Digits);
    draw_set_valign(fa_bottom);
    draw_set_halign(fa_center);
    
    if(gamer.protocol != "") {
        draw_text(1250,min(view_hport[0] div 4,40+string_height(gamer.protocol)),gamer.protocol);
    }    
    //draw_set_valign(fa_top);
    draw_set_font(HUD_mes_font);
    //draw_set_halign(fa_center);
    //   
    if(gamer.HUD_message != "") {
		draw_set_alpha(HUD_message_alpha); 
        draw_text_ol(view_wport[0] div 2,view_hport[0] div 4,gamer.HUD_message,make_color_rgb(225,0,0),c_black);
		draw_set_alpha(1)
	}
	
    draw_set_font(Digits);
    //draw_text_ol(view_wview-(minimap.xscale+30)*global.xwidthscale*global.hudscale,view_hview-(minimap.yscale-18)*global.yheightscale*global.hudscale,string(gamer.x div 20) + "/" + string(gamer.y div 20),global.HUD_color,c_black);
    //draw_text_ol(view_wview-(minimap.xscale+75)*global.xwidthscale*global.hudscale,view_hview-(minimap.yscale-18)*global.yheightscale*global.hudscale,text.map_minimap,global.HUD_color,c_black);
    //(view_wview-(minimap.xscale+105)*global.xwidthscale*global.hudscale,view_hview-(minimap.yscale-18)*global.yheightscale*global.hudscale,string(room_caption),global.HUD_color,c_black);
	
	draw_set_valign(fa_middle);
    draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_set_alpha(1)
	draw_text(minimap.x+18,minimap.y+40, "Map: " + info_map(room, "name") + " | (" + string(round(gamer.x)) + ";" + string(round(gamer.y)) + ")");
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
   
   if(gamer.v_zone_bz == true) {
        draw_text_ol(1920/2, 300, text.security_zone,global.HUD_color,c_black);
    }




}

draw_sprite_ext(nuke_spr,0,1920/2,1050,5,5,-90,c_white,1);
    
    
#endregion