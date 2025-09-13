/// @description select ship target
var c;
c:=0;

if mouse_debug = 1 then show_message("x: " + string(window_mouse_get_x()) + " / y: " + string(window_mouse_get_y()))
if mouse_debug = 1 then show_message("x: " + string(device_mouse_x_to_gui(0)) + " / y: " + string(device_mouse_y_to_gui(0)))

//target = noone

if instance_exists(window_background)=false and instance_exists(stats_window)=false and destroyed=0 then
{
/*
if global.attacking_type = 0 then
{
	attacking_laser=true;
	attacking=false;
	target_looking_rocket_alpha=0.4;
	target_looking_rocket_far_alpha=0;
	if global.premium_lasers <=0 then gamer.using_premium_lasers = false;
}

if global.attacking_type = 1 then
{
	attacking_laser=false;
	attacking=true;
	target_looking_rocket_alpha=0;
	target_looking_rocket_far_alpha=0.4;
}
*/

	var a,b,c;
	//test if no target found
	var targetfound=0;
	a:=instance_nearest(mouse_x,mouse_y,ship);
	b:=instance_nearest(mouse_x,mouse_y,mob);

	if instance_exists(b)
	{
		if point_distance(mouse_x,mouse_y,b.x,b.y) < b.sprite_width*global.aim_assist
		{
			gamer.target = b;
			targetfound = 1;
		}
	}

	if instance_exists(a)
	{
		if point_distance(mouse_x,mouse_y,a.x,a.y) < a.sprite_width*global.aim_assist and a.is_using_emp = false
		{
			gamer.target = a;
			targetfound = 1;
		}
	}
	
	if targetfound=1 then 
	{
	//gamer.target=noone;
		moveship=false;
		attacking=false;
	}
}
