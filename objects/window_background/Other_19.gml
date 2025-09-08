/// @description BUY KAMI


if show_question("Are you sure you want to buy the kamikaze module?") then
{
	if global.uridium >= 50000
	{
		global.uridium -= 50000;

		global.pet_kamikaze = 1;

		show_message("Kamikaze module was bought successfully");
		active_side_tab = "SHIP";
		event_user(1);
		active_side_tab = "PET";
		event_user(1);
	}
	else
	{
		show_message("Not enough uridium");
	}
}
else
{
	exit;	
}

