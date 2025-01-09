/// @description
function save_game()
{
	//ADD SAVE IN THE CURRENT FILE
	var _hangar_string;
	ini_open("newSave.sav");
	
	//PLAYER
	ini_write_string("Player","nickname",global.nickname);
	ini_write_real("Player","company",gamer.corporation);
	ini_write_real("Player","company",global.corporation);
	ini_write_real("Player","credit",global.credit);
	ini_write_real("Player","ggclick",global.ggenergy);
	ini_write_real("Player","chest_green_key",global.chest_green_key);
	ini_write_real("Player","chest_gold_key",global.chest_gold_key);
	ini_write_real("Player","experience",global.experience);
	ini_write_real("Player","level",global.level);
	ini_write_real("Player","honor",global.honor);
	ini_write_real("Player","rankpoints",global.rankpoints);
	ini_write_real("Player","rpfactor",global.rpfactor);
	ini_write_real("Player","uridium",global.uridium)
	ini_write_real("Player","logfile",global.logfile);


	//STATE
	ini_write_real("State","health",gamer.own_health);
	ini_write_string("State","room",string_replace(info_map(room,"name"),"-",""));
	ini_write_real("State","x",gamer.x);
	ini_write_real("State","y",gamer.y);
	ini_write_real("State", "hangar", global.hangar)
	ini_write_real("State","cloaked",global.cloaked);
	ini_write_real("State","drone_formation",gamer.droneformation);
	ini_write_real("State","killstreak",global.killstreak);

	//AMMOS
	ini_write_real("Ammo", "premium_lasers", global.premium_lasers);
	ini_write_real("Ammo", "nuke_k1", global.nuke_k1);
	ini_write_real("Ammo", "x1", global.x1);
	ini_write_real("Ammo", "x2", global.x2);
	ini_write_real("Ammo", "x3", global.x3);
	ini_write_real("Ammo", "x4", global.x4);
	ini_write_real("Ammo", "x5", global.x5);
	ini_write_real("Ammo", "x6", global.x6);
	ini_write_real("Ammo", "emp", global.emp);
	ini_write_real("Ammo", "ish", global.ish);
	ini_write_real("Ammo", "smb", global.smb);
	ini_write_real("Ammo", "shieldbackup", global.shieldbackup);
	ini_write_real("Ammo", "warrep", global.warrep);
	ini_write_real("Ammo", "dcr", global.dcr);
	
	
	//HANGAR + DRONES
	_hangar_string = "Hangar" + string(global.hangar);
	ini_write_string(_hangar_string,"ship",gamer.Ship);
	ini_write_real(_hangar_string,"ship_level",global.ship_level);



	//Gun
	for(i=1; i<=15; i+=1)
	{
		if gamer.GunC1[i] !="noone" and gamer.GunC1[i] !="" then ini_write_string(_hangar_string,"gun"+string(i)+"C1",gamer.GunC1[i]);gamer.GunC1[0]+=1;
		if gamer.GunC2[i] !="noone" and gamer.GunC2[i] !="" then ini_write_string(_hangar_string,"gun"+string(i)+"C2",gamer.GunC2[i])
	}
	
	
	//Engine
	for(i = 1; i<=15; i+=1)
	{
		if gamer.EngineC1[i] !="noone" and gamer.EngineC1[i] !="" then ini_write_string(_hangar_string,"engine"+string(i)+"C1",gamer.EngineC1[i]);
		if gamer.EngineC2[i] !="noone" and gamer.EngineC2[i] !="" then ini_write_string(_hangar_string,"engine"+string(i)+"C2",gamer.EngineC2[i]);
	}
	//Inventory
	for(i = 1; i<=99; i+=1)
	{
	    ini_write_string("InventoryC1",string(i),gamer.InventoryC1[i]);
	    ini_write_string("InventoryC2",string(i),gamer.InventoryC2[i]);
	}
	
	//Drones
	for(i = 1; i<=10; i+=1){
		//Config 1
		if gamer.droidC1[i,1] != "" and gamer.droidC1[i,1] != "noone" then 
		{
		    ini_write_string("Drones","drone"+string(i),gamer.droidC1[i,1]);
		    ini_write_string("Drones","slot"+string(i)+"_1_C1",gamer.droidC1[i,2]);
		    ini_write_string("Drones","slot"+string(i)+"_2_C1",gamer.droidC1[i,3]);
		    ini_write_string("Drones","design_"+string(i)+"_C1",gamer.droidC1[i,4]);
		}
		//Config 2

		if gamer.droidC2[i,1] != "" and gamer.droidC2[i,1] != "noone" then 
		{
			ini_write_string("Drones","drone"+string(i),gamer.droidC2[i,1]);
		    ini_write_string("Drones","slot"+string(i)+"_1_C2",gamer.droidC2[i,2]);
		    ini_write_string("Drones","slot"+string(i)+"_2_C2",gamer.droidC2[i,3]);
		    ini_write_string("Drones","design_"+string(i)+"_C2",gamer.droidC2[i,4]);
		}
	}


	//Galaxy gates :D
	//Alpha
	ini_write_real("alpha","wave",global.alphawave)
	ini_write_real("alpha","onmap",global.alphaonmap)
	ini_write_real("alpha","parts",global.alphaparts)
	ini_write_real("alpha","completed",global.alphacompleted)
	ini_write_real("alpha","life",global.alphalife)
	//Beta
	ini_write_real("beta","wave",global.betawave)
	ini_write_real("beta","onmap",global.betaonmap)
	ini_write_real("beta","parts",global.betaparts)
	ini_write_real("beta","completed",global.betacompleted)
	ini_write_real("beta","life",global.betalife)
	//Gamma
	ini_write_real("gamma","wave",global.gammawave)
	ini_write_real("gamma","onmap",global.gammaonmap)
	ini_write_real("gamma","parts",global.gammaparts)
	ini_write_real("gamma","completed",global.gammacompleted)
	ini_write_real("gamma","life",global.gammalife)
	//Delta
	ini_write_real("delta","wave",global.deltawave)
	ini_write_real("delta","onmap",global.deltaonmap)
	ini_write_real("delta","parts",global.deltaparts)
	ini_write_real("delta","completed",global.deltacompleted)  
	ini_write_real("delta","life",global.deltalife) 

	//SKILLTREE
	ini_write_real("Skilltree","ship_hull_i",gamer.ship_hull_i)
	ini_write_real("Skilltree","ship_hull_ii",gamer.ship_hull_ii)
	ini_write_real("Skilltree","shield_engineering",gamer.shield_engineering)
	ini_write_real("Skilltree","engineering",gamer.engineering)
	ini_write_real("Skilltree","bounty_hunter_i",gamer.bounty_hunter_i)
	ini_write_real("Skilltree","bounty_hunter_ii",gamer.bounty_hunter_ii)
	ini_write_real("Skilltree","alien_hunter",gamer.alien_hunter)
	ini_write_real("Skilltree","greed",gamer.greed)
	ini_write_real("Skilltree","luck_i",gamer.luck_i)
	ini_write_real("Skilltree","luck_ii",gamer.luck_ii)
	ini_write_real("Skilltree","cruelty_i",gamer.cruelty_i)
	ini_write_real("Skilltree","cruelty_ii",gamer.cruelty_ii)
	ini_write_real("Skilltree","evasive_i",gamer.evasive_i)
	ini_write_real("Skilltree","evasive_ii",gamer.evasive_ii)
	ini_write_real("Skilltree","electro_optics",gamer.electro_optics)
	ini_write_real("Skilltree","shield_mechanics",gamer.shield_mechanics)
	ini_write_real("Skilltree","smb_upgrade",gamer.smb_upgrade)
	ini_write_real("Skilltree","ish_upgrade",gamer.ish_upgrade)
	ini_write_real("Skilltree","shieldbackup_upgrade",gamer.shieldbackup_upgrade)
	ini_write_real("Skilltree","warrep_upgrade",gamer.warrep_upgrade)

	
	//PET
	ini_write_string("Pet","name",global.petname);
	



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
	
	var file =  file_text_open_write("testfolder/Backup_Stats_" + date + ".csv")
	var _STATS = ds_grid_create(1,1)
	ds_grid_copy(_STATS,global.stats)
	
	for(var i=0; i<ds_grid_width(_STATS);i++) 
	{
		var row = ""
		for(var j=0; j<ds_grid_height(_STATS); j++)
		{
			row = row + string(_STATS[# i,j]) + ","
		}
		row = string_delete(row, string_length(row), 1)
		file_text_write_string(file,row)
		file_text_writeln(file);
	}
	file_text_close(file);
	
	show_protocol_message("Game saved");
}