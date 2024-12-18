/// @description Insert description here
// You can write your code in this editor

//show_HUD_message(string(window_mouse_get_x() - xx_pet) + " " + string(window_mouse_get_y() - yy_pet))

//PET
//ACTIVATE PET
if (window_mouse_get_x() - xx_pet) > 17 and (window_mouse_get_x() - xx_pet) < 51 and (window_mouse_get_y() - yy_pet) > 120 and (window_mouse_get_y() - yy_pet) < 155 
{
	var isopened = false
	if instance_exists(PET)
	{
		with(PET) {if owner = gamer.id then {isopened = true; instance_destroy()}}
	}
	
	if !isopened
	{
		var _x = gamer.x + irandom_range(-100,100)
		var _y = gamer.y + irandom_range(-100,100)
		var _pet = instance_create_depth(_x,_y,-2,PET);
		_pet.owner = gamer.id
	}
}

//KAMIKAZE
if (window_mouse_get_x() - xx_pet) > 17 and (window_mouse_get_x() - xx_pet) < 51 and (window_mouse_get_y() - yy_pet) > 163 and (window_mouse_get_y() - yy_pet) < 203 
{
	var isopened = false
	if instance_exists(PET)
	{
		with(PET) {if owner = gamer.id then isopened = true}
	}
	if  isopened
	{
		if kamikaze_selected
		{
			kamikaze_selected = false 
		}
		else 
		{
			kamikaze_selected = true
		}
	
		var _status = kamikaze_selected
		with(PET)
		{
			if owner = gamer.id then kamikaze = _status 
		}
	}
}

