//GAMER DEAD RESPAWN

//REMOVE SHAKE EFFECT
layer_destroy("shake_screen");

if dead_in_gg
{
	var life = 0;
	var gg_name = "";
	if room=GGA then {global.alphalife--;life=global.alphalife;gg_name="GGA";show_message("Wave failed...\n" + string(life) + " life(s) remaining for " + gg_name);}
	if room=GGB then {global.betalife--;life=global.betalife;gg_name="GGB";show_message("Wave failed...\n" + string(life) + " life(s) remaining for " + gg_name);}
	if room=GGD then {global.deltalife--;life=global.deltalife;gg_name="GGD";show_message("Wave failed...\n" + string(life) + " life(s) remaining for " + gg_name);}
	if room=GGY then {global.gammalife--;life=global.gammalife;gg_name="GGY";show_message("Wave failed...\n" + string(life) + " life(s) remaining for " + gg_name);}
	if room=TDM then {show_message("Player eliminated from Arena...");}
	alarm[2] = room_speed * 2;
}
else
{
	if show_question("Your ship was destroyed.\nRepair on the map for 1000 uridium?") then
	{
		//REPAIR ON MAP
		if global.uridium >= 1000 then event_user(0) else  {show_message("Not enough uridium");event_user(1);};
	} 
	else
	{
		//DO NOT REPAIR ON MAP
		event_user(1);
	}
}


