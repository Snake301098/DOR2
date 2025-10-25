/// @description
function reset_game(_name,_corp)
{
	//ADD SAVE IN THE CURRENT FILE
	var _hangar_string;
	ini_open("newSave.sav");
	
	//PLAYER
	ini_write_string("Player","nickname",_name);
	ini_write_real("Player","company",_corp);
	ini_write_real("Player","credit",100000);
	ini_write_real("Player","ggclick",0);
	ini_write_real("Player","chest_green_key",0);
	ini_write_real("Player","chest_gold_key",0);
	ini_write_real("Player","experience",0);
	ini_write_real("Player","level",1);
	ini_write_real("Player","honor",0);
	ini_write_real("Player","rankpoints",0);
	ini_write_real("Player","rpfactor",1);
	ini_write_real("Player","uridium",5000);
	ini_write_real("Player","logfile",0);
	ini_write_real("Player","tdm_tickets",0);
	ini_write_real("Player","droid_parts",0);
	ini_write_string("Player","ship_name","phoenix");
	ini_write_real("Player","active_hangar",1);
	ini_write_real("Player","hangar2_unlocked",0);
	ini_write_real("Player","hangar3_unlocked",0);
	ini_write_real("Player","hangar4_unlocked",0);
	ini_write_real("Player","hangar5_unlocked",0);
	

	//PET
	ini_write_real("PET","pet_unlocked",0);
	ini_write_real("PET","pet_kamikaze",0);
	ini_write_real("PET","pet_hp",0);
	ini_write_real("PET","pet_fuel",0);
	ini_write_string("PET","slot_1","");
	ini_write_string("PET","slot_2","");
	ini_write_string("PET","slot_3","");
	ini_write_string("PET","slot_4","");
	ini_write_string("PET","slot_5","");
	

	//STATE
	ini_write_real("State","health",6000);
	if _corp = 0 then 
	{
		ini_write_string("State","room","11");
		ini_write_real("State","x",1024/2);
		ini_write_real("State","y",1024/2);
	}
	if _corp = 1 then 
	{
		ini_write_string("State","room","21");
		ini_write_real("State","x",14960/2);
		ini_write_real("State","y",1024/2);
	}
	if _corp = 2 then 
	{
		ini_write_string("State","room","31");
		ini_write_real("State","x",14960/2);
		ini_write_real("State","y",8960/2);
	}
	ini_write_real("State", "hangar", 1)
	ini_write_real("State","cloaked",0);
	ini_write_real("State","drone_formation",1);
	ini_write_real("State","killstreak",0);

	//AMMOS
	ini_write_real("Ammo", "premium_lasers", 0);
	ini_write_real("Ammo", "nuke_k1", 0);
	ini_write_real("Ammo", "x1", 10000);
	ini_write_real("Ammo", "x2", 0);
	ini_write_real("Ammo", "x3", 0);
	ini_write_real("Ammo", "x4", 0);
	ini_write_real("Ammo", "x5", 0);
	ini_write_real("Ammo", "x6", 0);
	ini_write_real("Ammo", "emp", 0);
	ini_write_real("Ammo", "ish", 0);
	ini_write_real("Ammo", "smb", 0);
	ini_write_real("Ammo", "shieldbackup", 0);
	ini_write_real("Ammo", "warrep", 0);
	ini_write_real("Ammo", "dcr", 0);
	
	//BOOSTERS
	ini_write_real("Boosters", "booster_damage_i", 0);
	ini_write_real("Boosters", "booster_damage_i", 0);
	ini_write_real("Boosters", "booster_damage_i", 0);
	ini_write_real("Boosters", "booster_damage_i", 0);
	ini_write_real("Boosters", "booster_damage_i", 0);
	ini_write_real("Boosters", "booster_damage_i", 0);

	
	//HANGAR + DRONES
	for (var hangar_nbr = 1; hangar_nbr<=5; hangar_nbr++)
	{
		var _hangar_string = "Hangar" + string(hangar_nbr);
		ini_write_string(_hangar_string,"ship","phoenix");
		ini_write_real(_hangar_string,"ship_level",1);



		//Gun
		for(i=1; i<=20; i+=1)
		{
			//C1
			ini_write_string(_hangar_string,"gun"+string(i)+"C1","");
			//C2
			ini_write_string(_hangar_string,"gun"+string(i)+"C2","");
		}
	
	
		//Engine
		for(i = 1; i<=20; i+=1)
		{
			//C1
			ini_write_string(_hangar_string,"engine"+string(i)+"C1","");
			//C2
			ini_write_string(_hangar_string,"engine"+string(i)+"C2","");
		}
	}
	ini_write_string("Hangar1","ship","phoenix");
	
	
	//Inventory
	for(i = 1; i<=99; i+=1)
	{
	    ini_write_string("InventoryC1",string(i),"");
	    ini_write_string("InventoryC2",string(i),"");
	}
	//so nice from me :)
	ini_write_string("InventoryC1","1","MP-1");
	ini_write_string("InventoryC2","1","MP-1");
	
	//Drones
	for(i = 1; i<=10; i+=1){
		//Config 1
		ini_write_string("Drones","drone"+string(i),"");
		ini_write_string("Drones","slot"+string(i)+"_1_C1","");
		ini_write_string("Drones","slot"+string(i)+"_2_C1","");
		ini_write_string("Drones","design_"+string(i)+"_C1","");
		
		//Config 2

		ini_write_string("Drones","drone"+string(i),"");
		ini_write_string("Drones","slot"+string(i)+"_1_C2","");
		ini_write_string("Drones","slot"+string(i)+"_2_C2","");
		ini_write_string("Drones","design_"+string(i)+"_C2","");
		
	}


	//Galaxy gates :D
	//Alpha
	ini_write_real("alpha","wave",0)
	ini_write_real("alpha","onmap",0)
	ini_write_real("alpha","parts",0)
	ini_write_real("alpha","completed",0)
	ini_write_real("alpha","life",0)
	//Beta
	ini_write_real("beta","wave",0)
	ini_write_real("beta","onmap",0)
	ini_write_real("beta","parts",0)
	ini_write_real("beta","completed",0)
	ini_write_real("beta","life",0)
	//Gamma
	ini_write_real("gamma","wave",0)
	ini_write_real("gamma","onmap",0)
	ini_write_real("gamma","parts",0)
	ini_write_real("gamma","completed",0)
	ini_write_real("gamma","life",0)
	//Delta
	ini_write_real("delta","wave",0)
	ini_write_real("delta","onmap",0)
	ini_write_real("delta","parts",0)
	ini_write_real("delta","completed",0)
	ini_write_real("delta","life",0)

	//SKILLTREE
	ini_write_real("Skilltree","ship_hull_i",0)
	ini_write_real("Skilltree","ship_hull_ii",0)
	ini_write_real("Skilltree","shield_engineering",0)
	ini_write_real("Skilltree","engineering",0)
	ini_write_real("Skilltree","bounty_hunter_i",0)
	ini_write_real("Skilltree","bounty_hunter_ii",0)
	ini_write_real("Skilltree","alien_hunter",0)
	ini_write_real("Skilltree","greed",0)
	ini_write_real("Skilltree","luck_i",0)
	ini_write_real("Skilltree","luck_ii",0)
	ini_write_real("Skilltree","cruelty_i",0)
	ini_write_real("Skilltree","cruelty_ii",0)
	ini_write_real("Skilltree","evasive_i",0)
	ini_write_real("Skilltree","evasive_ii",0)
	ini_write_real("Skilltree","electro_optics",0)
	ini_write_real("Skilltree","shield_mechanics",0)
	ini_write_real("Skilltree","smb_upgrade",0)
	ini_write_real("Skilltree","ish_upgrade",0)
	ini_write_real("Skilltree","shieldbackup_upgrade",0)
	ini_write_real("Skilltree","warrep_upgrade",0)

	
	//PET
	ini_write_string("Pet","name","");
	
	//QUESTS
	create_quest(1);
	create_quest(2);
	create_quest(3);
	save_quests();


	//global.eco10 = ini_write_real("Player","eco10",0);
	//global.rsb = ini_write_real("Player","rsb",0);
	
	//global.dnormal = ini_write_real("droid","normal",1);
	//global.dhavoc = ini_write_real("droid","havoc",0);
	//global.dhercules = ini_write_real("droid","hercules",0);

	//TDM ------
	//global.tdm=0;
	//global.tdm_mmo_lifes=4;
	//global.tdm_eic_lifes=4;
	//global.tdm_vru_lifes=4;

	

  /*
	
	global.ishcount = ini_write_real("Player","ish",0);
	global.warrepcount = ini_write_real("Player","warrep",0)
	global.shieldbackupcount = ini_write_real("Player","shieldbackup",0)
	global.old_lasers = ini_write_real("lasers","type",1);*/
	//-------------- PET
	
	
	//global.loading=0;
	//gamer.Shiptype = info(gamer.Ship, "ship_class")
	//guns_installation(gamer);
	ini_close();
	
	
	var date = string(current_year) +"_"+ string(current_month) +"_"+ string(current_day) +"_"+ string(current_hour) +"_"+ string(current_minute) +"_"+ string(current_second)
	file_copy("newSave.sav","testfolder/Backup_newSave_" + date + ".sav");
	
	var file =  file_text_open_write("stats.csv")
	var _STATS = ds_grid_create(1,1)
	ds_grid_copy(_STATS,global.stats)

	//first row
	var row = ""
	for(var j=0; j<ds_grid_width(_STATS); j++)
	{
		row = row + string(_STATS[# j,0]) + ","
	}
	row = string_delete(row, string_length(row), 1)
	file_text_write_string(file,row)
	file_text_writeln(file);

	//other rows
	for(var i=1; i<ds_grid_height(_STATS); i++)
	{
		row = ""
		for(var j=0; j<ds_grid_width(_STATS);j++)
		{
			if j = 0 then row = row + string(_STATS[# j,i]) + ","; else row = row + "0,";
		}
		row = string_delete(row, string_length(row), 1)
		file_text_write_string(file,row)
		file_text_writeln(file);
	}
	file_text_close(file);
	
	//show_protocol_message("Game Reset");
}