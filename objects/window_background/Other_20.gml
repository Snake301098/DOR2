/// @description FUEL

if global.uridium >= buy_qty
{
	global.pet_fuel += buy_qty;
	global.uridium -= buy_qty
	show_message("Successfully bought fuel for PET");
}
else
{
	show_message("Not enough uridium");
}

