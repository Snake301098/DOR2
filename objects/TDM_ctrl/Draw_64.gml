/// @description 
draw_sprite_ext(window_background_spr,0,xx,yy,0.1,0.2,0,c_white,0.8);
draw_set_valign(fa_center);
draw_set_halign(fa_left);
draw_set_font(HUD_font)
draw_set_color(c_white);
draw_set_alpha(1);
draw_sprite_ext(icons_spr,0,xx-20,yy-20,1,1,0,c_white,1);
draw_sprite_ext(icons_spr,1,xx-20,yy,1,1,0,c_white,1);
draw_sprite_ext(icons_spr,2,xx-20,yy+20,1,1,0,c_white,1);
draw_text(xx+20,yy-20,mmo_ships);
draw_text(xx+20,yy,eic_ships);
draw_text(xx+20,yy+20,vru_ships);

