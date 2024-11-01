image_xscale=global.scale;
image_yscale=global.scale;
        
if view_current!=1
    {draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);}
else {draw_circle_color(x,y,200,c_gray,c_gray,true)}