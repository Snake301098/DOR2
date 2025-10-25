/// @description 
draw_sprite(sprite_index,image_index,x,y);
draw_set_font(ButtonFont);
if image_index<2 then
    draw_set_color(make_color_rgb(169,221,245))
else
    draw_set_color(make_color_rgb(97,122,220))
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y,"CONTINUE");
draw_set_valign(fa_top);
draw_set_font(damage_fon);
if clicked then draw_text_ol(x,y-50,"LOADING...",c_black,make_color_rgb(237,115,33),hangarfont);