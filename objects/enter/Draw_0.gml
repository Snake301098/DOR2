/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7AF6E91B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_sprite(sprite_index,image_index,x,y);$(13_10)draw_set_font(ButtonFont);$(13_10)if image_index<2 then$(13_10)    draw_set_color(make_color_rgb(169,221,245))$(13_10)else$(13_10)    draw_set_color(make_color_rgb(97,122,220))$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_text(x,y,"CONTINUE");$(13_10)draw_set_valign(fa_top);"
/// @description Execute Code
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