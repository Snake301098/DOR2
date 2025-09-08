/// @description INIT
ship_speed = owner.ship_speed;

if owner = gamer.id
{
	if global.pet_fuel >= 20
	{
		bounty_hunter_ii = owner.bounty_hunter_ii;
		global.pet_fuel -= 20;
		event_user(0);
		alarm[4] = room_speed*60;
	}
	else
	{
		show_HUD_message("No enough fuel for PET");
		instance_destroy();
	}
}
