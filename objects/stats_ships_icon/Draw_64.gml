/// @description 
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,owned_color,alpha)

if selected = true then draw_sprite_ext(stat_selected_spr,0,x,y,1,1,0,c_white,1);

draw_set_font(HUD_font)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_text(x,y+50,label)
