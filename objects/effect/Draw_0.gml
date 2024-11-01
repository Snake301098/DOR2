/// @description Insert description here
// You can write your code in this editor
image_xscale=global.scale;
image_yscale=global.scale;

if (sprite_index=bigexpl1_spr or sprite_index=bigexpl2_spr or sprite_index=bigexpl3_spr or sprite_index=bigexpl4_spr or sprite_index=bigexpl5_spr) then
{
    image_xscale=1.2;
    image_yscale=1.2;
}
sprite_set_speed(sprite_index, 30, spritespeed_framespersecond);
if view_current!=1 then
    {draw_sprite_ext(sprite_index,image_index,round(x),round(y),image_xscale,image_yscale,image_angle,c_white,image_alpha);}