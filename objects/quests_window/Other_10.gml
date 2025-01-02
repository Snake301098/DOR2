///@description change quest

if show_question("Do you want to change quest " + string(_quest_nbr) + " for 500 Uridium ?") then
{
	if global.uridium >= 500
	{
		global.uridium-=500;
		create_quest(_quest_nbr);
	}
	else
	{
		show_message("Not enough Uridium");
	}
}
