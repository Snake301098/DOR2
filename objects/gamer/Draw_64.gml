/// @description 
var nbr_frames_reloading_spr = sprite_get_number(reloading_spr); 

//ABILITY 1
var ability_1_timer = 0;
var ability_1_x = 1920-330;
var ability_1_y = 1080-150;

//ABILITY 2
var ability_2_timer = 0;
var ability_2_x = 1920-250;
var ability_2_y = 1080-150;

with(cooldowns_ctrl)
{
	if owner = gamer.id
	{
		ability_1_timer = alarm_get(1);
		ability_2_timer = alarm_get(2);
	}
}

//ABILITY 1
if can_use_ability_1 = false then
{
	draw_sprite_ext(ability_1_icon,0,ability_1_x,ability_1_y,1,1,0,c_white,0.8);	
	var ability_1_timer_total = 60 * 10;
	var ability_1_timer_percentage = (ability_1_timer_total - ability_1_timer) / ability_1_timer_total
	var ability_1_reload_frame = round(nbr_frames_reloading_spr * ability_1_timer_percentage);
	draw_sprite_ext(reloading_spr,ability_1_reload_frame,ability_1_x,ability_1_y,1,1,0,c_white,0.8);
}
else
{
	draw_sprite_ext(ability_1_icon,0,ability_1_x,ability_1_y,1,1,0,c_white,1);
}

if is_using_ability_1 = true then
{
	draw_sprite_ext(cell_selected_spr,0,ability_1_x,ability_1_y,51/37,51/37,0,c_white,0.6);
}

//ABILITY 2
if can_use_ability_2 = false then
{
	draw_sprite_ext(ability_2_icon,0,ability_2_x,ability_2_y,1,1,0,c_white,0.8);	
	var ability_2_timer_total = 60 * 10;
	var ability_2_timer_percentage = (ability_2_timer_total - ability_2_timer) / ability_2_timer_total
	var ability_2_reload_frame = round(nbr_frames_reloading_spr * ability_2_timer_percentage);
	draw_sprite_ext(reloading_spr,ability_2_reload_frame,ability_2_x,ability_2_y,1,1,0,c_white,0.8);
}
else
{
	draw_sprite_ext(ability_2_icon,0,ability_2_x,ability_2_y,1,1,0,c_white,1);
}

if is_using_ability_2 = true then
{
	draw_sprite_ext(cell_selected_spr,0,ability_2_x,ability_2_y,51/37,51/37,0,c_white,0.6);
}