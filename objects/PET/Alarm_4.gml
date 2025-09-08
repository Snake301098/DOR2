/// @description FUEL

if global.pet_fuel >= 10
{
	global.pet_fuel -= 10;
}
else
{
	show_HUD_message("No enough fuel for PET");
	instance_destroy();
}

alarm[4] = room_speed*60;
