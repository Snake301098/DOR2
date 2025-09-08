// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_hangar(hangar_nbr){
	
	//check if at base
	var unlocked = false;
	if hangar_nbr = 1 then unlocked = true;
	if hangar_nbr = 2 and global.hangar2_unlocked = 1 then unlocked = true;
	if hangar_nbr = 3 and global.hangar3_unlocked = 1 then unlocked = true;
	if hangar_nbr = 4 and global.hangar4_unlocked = 1 then unlocked = true;
	if hangar_nbr = 5 and global.hangar5_unlocked = 1 then unlocked = true;
	

	if unlocked = true
	{
		//TEST IF THERE IS SHIP IN HANGAR
		//ini_open("Hangar" + string(hangar_nbr) + ".sav");
		ini_open("newSave.sav");
		var _ship = ini_read_string("Hangar"+string(hangar_nbr),"ship","");
		ini_close();
		if  _ship = "" or _ship = "noone"
		{
			show_message("Hangar " + string(hangar_nbr) + " is empty, please buy a ship first");
			exit;
		}
		else
		{
			save_game();
			global.active_hangar = hangar_nbr;
			load_game(hangar_nbr);
		}
	}
	else
	{
		var price = 20000;
		if hangar_nbr = 3 then price = 30000;
		if hangar_nbr = 4 then price = 40000;
		if hangar_nbr = 5 then price = 50000;
		
		if show_question("Are you sure you want to buy hangar " + string(hangar_nbr) + " for " + string(price) + " uridium?") then
		{
			if global.uridium >= price
			{
				if hangar_nbr = 2 then global.hangar2_unlocked = 1;
				if hangar_nbr = 3 then global.hangar3_unlocked = 1;
				if hangar_nbr = 4 then global.hangar4_unlocked = 1;
				if hangar_nbr = 5 then global.hangar5_unlocked = 1;
				global.uridium -= price;
			}
			else
			{
				show_message("Not enough uridium to buy this hangar");
			}
		}
	}
}