draw_sprite_ext(window_background_spr,0,x,y,0.6,1.6,0,c_white,0.5)

draw_set_color(c_white)
draw_set_font(HUD_font)
draw_set_halign(fa_left)
draw_set_alpha(0.5)
draw_set_valign(fa_top)
var text_str = ""
for(var i=0;i<array_length(global.protocol_log);i++)
{
	text_str = text_str + global.protocol_log[i]+"\n"
}

draw_text(x-100,175,text_str)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(1)