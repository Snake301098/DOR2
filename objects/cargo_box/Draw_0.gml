    if view_current!=1 then
    //{draw_sprite(sprite_index,image_index,round(x),round(y));}
    {
        image_xscale=global.scale;
        image_yscale=global.scale;
        //draw_sprite(sprite_index,image_index,round(x),round(y));
        draw_sprite_ext(sprite_index,image_index,round(x),round(y),image_xscale,image_yscale,image_angle,c_white,image_alpha);
    }