/// @description Insert description here
// You can write your code in this editor




draw_sprite_ext(button_sprite,image_index,x,y,1,1,0,c_white,1)


draw_set_font(hangarfont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if image_index=1 then draw_set_color(c_orange) else draw_set_color(c_black);
draw_text(x,y,button_text);