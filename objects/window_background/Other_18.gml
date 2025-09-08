/// @description BUY PET

if show_question("Are you sure you want to buy PET?") then
{
	if global.uridium >= 50000
	{
		global.uridium -= 50000;
		global.pet_unlocked = 1;

		active_side_tab = "SHIP";
		event_user(1);
		active_side_tab = "PET";
		event_user(1);
		show_message("PET was bought successfully");
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
