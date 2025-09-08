/// @description Insert description here
// You can write your code in this editor
var _locked_alpha = 0;

if button_id = "config1"
{
	if gamer.config = 1 then image_index = 0 else image_index = 1;
}

if button_id = "config2"
{
	if gamer.config = 2 then image_index = 0 else image_index = 1;
}

if button_id = "hangar1"
{
	if global.active_hangar = 1 then image_index = 0 else image_index = 1;
}

if button_id = "hangar2"
{
	if global.active_hangar = 2 then image_index = 0 else image_index = 1;
	if global.hangar2_unlocked = 0 then _locked_alpha = 1;
}

if button_id = "hangar3"
{
	if global.active_hangar = 3 then image_index = 0 else image_index = 1;
	if global.hangar3_unlocked = 0 then _locked_alpha = 1;
}

if button_id = "hangar4"
{
	if global.active_hangar = 4 then image_index = 0 else image_index = 1;
	if global.hangar4_unlocked = 0 then _locked_alpha = 1;
}

if button_id = "hangar5"
{
	if global.active_hangar = 5 then image_index = 0 else image_index = 1;
	if global.hangar5_unlocked = 0 then _locked_alpha = 1;
}

draw_sprite_ext(button_sprite,image_index,x,y,_xscale,1,0,c_white,1);
draw_set_font(hangarfont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y,button_text);
draw_sprite_ext(locked_spr,0,x,y,1.2,1.2,0,c_white,_locked_alpha);
if image_index=1 then draw_set_color(c_orange) else draw_set_color(c_black);