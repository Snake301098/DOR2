if global.cpfirm=0 then sprite_index=base0_spr;
if global.cpfirm=1 then sprite_index=base1_spr;
if global.cpfirm=2 then sprite_index=base2_spr;

draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,image_alpha);

