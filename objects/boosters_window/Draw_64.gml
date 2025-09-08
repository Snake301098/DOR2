/// @description 
draw_sprite_ext(boosters_window_spr,0,x,y,1,1,0,c_white,0.8);
draw_set_valign(fa_center);
draw_set_halign(fa_left);
draw_set_font(HUD_font);
draw_set_color(c_white);
draw_set_alpha(1);
if dmg_time > 0 then draw_text(x+70,y+100, string(round(dmg_value*100)) + "% (" + string(round(dmg_time/60)) + " min)");
if hp_time > 0 then draw_text(x+70,y+145, string(round(hp_value*100)) + "% (" + string(round(hp_time/60)) + " min)");
if shd_time > 0 then draw_text(x+70,y+190, string(round(shd_value*100)) + "% (" + string(round(shd_time/60)) + " min)");

