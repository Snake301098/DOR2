
sprite_collision_mask(lordakia_spr, false, 1, 0, 0, 0, 0, 0, 0);

	image_xscale=global.scale; //sprite_add_sprite(working_directory + "\data\" + global.emptyRes);
    image_yscale=global.scale; //global.StreuneR_spr
	
draw_sprite_ext(sprite_index,image_index,round(x),round(y),image_xscale,image_yscale,image_angle,c_white,1);

                draw_set_font(nicktext);
				draw_set_valign(fa_middle);
            draw_text_ol(round(x),round(y+35),name,make_color_rgb(190,0,0));
        
       // if instance_exists(gamer) then if id=gamer.target
            {
				draw_set_alpha(0.6);
            //Ëîê
            if instance_exists(gamer) then if id=gamer.target then{
                draw_sprite(lock_spr,0,round(x),round(y));}
            //Èìÿ ìîáà.

            //Ïîëîñêà çäîðîâüÿ.
//            draw_healthbar(round(x-24),round(y-40),round(x+22),round(y-37),own_health/health_def*100,
  //          c_black,c_red,c_lime,0,1,1);draw_set_alpha(0.6);
			
            draw_healthbar(x-55,round(y)+55,round(x+55),round(y+70),followHP/health_def*100, c_black,c_orange,c_orange,0,1,1);draw_set_alpha(0.6);
            draw_healthbar(x-55,round(y)+55,round(x+55),round(y+70),own_health/health_def*100, c_black,c_red,c_red,0,0,0);draw_set_alpha(0.6);
			
            //Ïîëîñêà ùèòà (åñëè îí èìååòñÿ).
           /* if own_shield>0 then draw_healthbar(round(x-24),round(y-35),round(x+22),round(y-32),own_shield/shield_def*100,
                    c_black,c_aqua,c_aqua,0,1,1);
					*/}
        draw_set_alpha(1);