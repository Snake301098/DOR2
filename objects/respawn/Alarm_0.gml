//GAMER DEAD RESPAWN

//REMOVE SHAKE EFFECT
layer_destroy("shake_screen");

if dead_in_gg
{
	var life = 0;
	var gg_name = "";
	if room=GGA then {global.alphalife--;life=global.alphalife;gg_name="GGA";}
	if room=GGB then {global.betalife--;life=global.betalife;gg_name="GGB";}
	if room=GGD then {global.deltalife--;life=global.deltalife;gg_name="GGD";}
	if room=GGY then {global.gammalife--;life=global.gammalife;gg_name="GGY";}
	show_message("Wave failed...\n" + string(life) + " life(s) remaining for " + gg_name);
	if gamer.corporation = 0 then room_goto(lv1_1);
	if gamer.corporation = 1 then room_goto(lv2_1);
	if gamer.corporation = 2 then room_goto(lv3_1);
	if instance_exists(base) then {gamer.x = base.x; gamer.y = base.y};
}
else
{
	if show_question("Your ship was destroyed.\nRepair on the map for 500 credits?") then
	{
		//REPAIR ON MAP
		event_user(0);
	} else
	{
		//DO NOT REPAIR ON MAP
		event_user(1);
	}
}


