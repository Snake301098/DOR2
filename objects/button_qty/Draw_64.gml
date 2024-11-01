draw_sprite_ext(button_qty_spr,0,x,y,1,1,0,c_white,1)
draw_set_font(hangarfont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x,y,string(qty));