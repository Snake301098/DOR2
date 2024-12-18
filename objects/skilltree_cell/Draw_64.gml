draw_set_halign(fa_center);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1);
draw_set_font(hangarfont)
if clickable=true then draw_text_color(x,y+39,name,c_white,c_white,c_white,c_white,image_alpha);
if selected=true then draw_sprite_ext(cell_shop_selected_spr,0,x,y,1,1,0,c_white,1)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(x,y+30,string(owning) + "/1")
//draw_sprite_ext(sprite_index,3,x,y,image_xscale,image_yscale,0,c_white,1);

