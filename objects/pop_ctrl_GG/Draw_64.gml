/// @description 
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(nicktext);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(1920/2,50, "Wave: " + string(wave));
draw_text(1920/2,70, "Lifes: " + string(life));