
//sprite_collision_mask(lordakia_spr, false, 1, 0, 0, 0, 0, 0, 0);

	image_xscale=global.scale; //sprite_add_sprite(working_directory + "\data\" + global.emptyRes);
    image_yscale=global.scale; //global.StreuneR_spr
	
draw_sprite_ext(sprite_index,image_index,round(x),round(y),1,1,image_angle,c_white,1);

                draw_set_font(nicktext);
				draw_set_valign(fa_middle);
				draw_set_halign(fa_center);
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
	
if instance_exists(gamer.target)
{
	if id = gamer.target
	{
		//HEALTH
		draw_set_alpha(0.9);draw_healthbar(x-55,y-105,x+55,y-100,followHP/health_def*100,c_black,c_lime,c_lime,0,1,1);draw_set_alpha(0.9); //+41+25
		draw_set_alpha(0.9);draw_healthbar(x-55,y-105,x+55,y-100,own_health/health_def*100,c_black,c_lime,c_lime,0,0,0);draw_set_alpha(0.9); //+41+25

		//SHIELD
		if own_shield>0 then{    draw_set_alpha(0.9);draw_healthbar(x-55,y-90,x+55,y-85,followShield/shield_def*100,c_black,c_aqua,c_aqua,0,1,1);draw_set_alpha(0.9);} //+41+25
		if own_shield>0 then{    draw_set_alpha(0.9);draw_healthbar(x-55,y-90,x+55,y-85,own_shield/shield_def*100,c_black,c_aqua,c_aqua,0,0,0);draw_set_alpha(0.9);} //+41+25
	}
}
      		
            //Ïîëîñêà ùèòà (åñëè îí èìååòñÿ).
           /* if own_shield>0 then draw_healthbar(round(x-24),round(y-35),round(x+22),round(y-32),own_shield/shield_def*100,
                    c_black,c_aqua,c_aqua,0,1,1);
					*/}
        draw_set_alpha(1);