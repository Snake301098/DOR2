
draw_sprite_ext(window_background_spr,0,x,y,0.7,0.3,0,c_white,1)

draw_set_color(c_white)
draw_set_font(HUD_font)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_text(x-200,y-30,global.quest1_label)
draw_text(x-200,y,global.quest2_label)
draw_text(x-200,y+30,global.quest3_label)


draw_text(x-220,y-30,"X")
draw_text(x-220,y,"X")
draw_text(x-220,y+30,"X")
