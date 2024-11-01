draw_set_alpha(a);
draw_set_font(fonter);
draw_set_halign(fa_center);
//draw_text_ol(round(myx),round(myy),t,color_1,color_2);
//draw_text_ol(x3,y3-80,t,color_1,color_2);
    


draw_set_color(color_2)
draw_text_transformed(round(7+x3-2),round(y3-48),t,scale,scale,1)
draw_text_transformed(round(7+x3+2),round(y3-48),t,scale,scale,1)
draw_text_transformed(round(7+x3),round(y3-2-48),t,scale,scale,1)
draw_text_transformed(round(7+x3),round(y3+2-48),t,scale,scale,1)
draw_set_color(color_1)
draw_text_transformed(round(7+x3),round(y3-48),t,scale,scale,1)


    //draw_text(x+view_xview,y+view_yview,t);
    draw_set_alpha(1);