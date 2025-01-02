//ROOM LIMITS BORDERS
//Ãðàíèöû êîìíàòû
draw_set_alpha(0.5);
draw_set_color(make_color_rgb(160,0,0));
draw_line(0,0,room_width,0);
draw_line(0,0,0,room_height);
draw_line(0,room_height,room_width,room_height);
draw_line(room_width,0,room_width,room_height);

draw_set_halign(fa_center)

draw_set_font(wendy_font);



