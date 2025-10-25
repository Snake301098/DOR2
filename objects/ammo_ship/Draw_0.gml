//Ðàçâîðîò îáúåêòà â ñòîðîíó äâèæåíèÿ
image_xscale = 1.1;//global.scale;
image_yscale = 1.1;//global.scale;

//draw_text_ol(view_xview+640*global.xwidthscale,view_yview+471*global.yheightscale,global.DisplayNickname,global.HUD_color,c_black);

if initialized then draw_sprite_ext(sprite_index,image_index,round(x),round(y),image_xscale,image_yscale,direction,c_white,image_alpha)
