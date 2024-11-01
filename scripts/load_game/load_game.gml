function load_game()
{
	var _hangar_string;
	ini_open("newSave.sav");
	//show_message("newSave.sav")
	
	//PLAYER
	global.nickname = ini_read_string("Player","nickname","unnamed");
	gamer.corporation = ini_read_real("Player","company",0);
	global.corporation = ini_read_real("Player","company",0);
	global.credit = ini_read_real("Player","credit",0);
	global.ggenergy = ini_read_real("Player","ggenergy",0);
	global.boxkey = ini_read_real("Player","boxkey",0);
	global.experience = ini_read_real("Player","experience",0);
	global.level = ini_read_real("Player","level",1);
	global.honor = ini_read_real("Player","honor",0);
	global.rankpoints = ini_read_real("Player","rankpoints",0);
	global.rpfactor = 1;
	//global.uridium = ini_read_real("Player","credit",0)
	//global.logfile = ini_read_real("Player","logfile",0);


	//STATE
	gamer.own_health = ini_read_real("State","health",1000);
	gamer.state_room = ini_read_real("State","room",0);
	gamer.state_x=ini_read_real("State","room",0);
	gamer.state_y=ini_read_real("State","room",0);
	global.hangar=ini_read_real("State", "hangar", 1)
	global.cloaked = ini_read_real("State","cloaked",0);
	gamer.droneformation = ini_read_real("State","drone_formation",1);
	global.killstreak = ini_read_real("State","killstreak",1);

	
	//CARGO
	global.cargo_level=ini_read_real("Cargo", "cargo_level", 1);
	var prometium=ini_read_real("Cargo", "prometium", 1);
	var endurium=ini_read_real("Cargo", "endurium", 1);
	var terbium=ini_read_real("Cargo", "terbium", 1);
	var duranium=ini_read_real("Cargo", "duranium", 1);
	var prometid=ini_read_real("Cargo", "prometid", 1);
	var promerium=ini_read_real("Cargo", "promerium", 1);
	var seprom=ini_read_real("Cargo", "seprom", 1);
	var palladium=ini_read_real("Cargo", "palladium", 1);
	global.ores_qty=[prometium,endurium,terbium,duranium,prometid,promerium,seprom,palladium];
	
	//STORAGE
	global.storage_level=ini_read_real("Storage", "storage_level", 1);
	var storage_prometium=ini_read_real("Storage", "prometium", 1);
	var storage_endurium=ini_read_real("Storage", "endurium", 1);
	var storage_terbium=ini_read_real("Storage", "terbium", 1);
	var storage_duranium=ini_read_real("Storage", "duranium", 1);
	var storage_prometid=ini_read_real("Storage", "prometid", 1);
	var storage_promerium=ini_read_real("Storage", "promerium", 1);
	var storage_seprom=ini_read_real("Storage", "seprom", 1);
	var storage_palladium=ini_read_real("Storage", "palladium", 1);
	global.storage_qty=[storage_prometium,storage_endurium,storage_terbium,storage_duranium,storage_prometid,storage_promerium,storage_seprom,storage_palladium];
	
	//SKILLTREE
	gamer.pilotsheet_ship_hull_i=ini_read_real("Skilltree", "pilotsheet_ship_hull_i", 0);
	gamer.pilotsheet_ship_hull_ii=ini_read_real("Skilltree", "pilotsheet_ship_hull_ii", 0);
	
	//AMMOS
	/*
	booster=0
	warrep=6
	ISH=5*/
	global.premium_lasers = ini_read_real("Ammo", "premium_lasers", 1);
	global.nuke_k1 = ini_read_real("Ammo", "nuke_k1", 1);
	
	
	//HANGAR + DRONES
	_hangar_string = "Hangar" + string(global.hangar);
	gamer.Ship = ini_read_string(_hangar_string,"ship","nostromo");
	global.ship_level = ini_read_real(_hangar_string,"ship_level",1);
	//Gun
	for(i = 1; i<=5; i+=1){
	    gamer.Gun[i] = ini_read_string(_hangar_string,"gun"+string(i),"");
		if gamer.Gun[i] !="noone" and gamer.Gun[i] !="" then gamer.guns+=1;
	}
	//Laser
	for(i = 1; i<=5; i+=1){
	    gamer.Laser[i] = ini_read_string(_hangar_string,"laser"+string(i),"");
		if gamer.Laser[i] !="noone" and gamer.Laser[i] !="" then gamer.lasers+=1;
	}
	//Inventory
	for(i = 1; i<=60; i+=1){
	    gamer.Inventory[i] = ini_read_string("Inventory",string(i),"");
	}
	//Drones
	for(i = 1; i<=10; i+=1){
	    gamer.droid[i,1] = ini_read_string("Drones","drone"+string(i),"");
	    gamer.droid[i,2] = ini_read_string("Drones","slot"+string(i)+"_1","");
	    gamer.droid[i,3] = ini_read_string("Drones","slot"+string(i)+"_2","");
	    gamer.droid[i,4] = ini_read_string("Drones","design"+string(i),"");
		if gamer.droid[i,1] != "" and gamer.droid[i,1] != "noone" then gamer.dronesNbr+=1;
	}


	//Galaxy gates :D
	//Alpha
	global.alphawave = ini_read_real("alpha","wave",0)
	global.alphaonmap = ini_read_real("alpha","onmap",0)
	global.alphaparts = ini_read_real("alpha","parts",0)
	global.alphacompleted = ini_read_real("alpha","completed",0)
	global.alphalife = ini_read_real("alpha","life",0)
	//Beta
	global.betawave = ini_read_real("beta","wave",0)
	global.betaonmap = ini_read_real("beta","onmap",0)
	global.betaparts = ini_read_real("beta","parts",0)
	global.betacompleted = ini_read_real("beta","completed",0)
	global.betalife = ini_read_real("beta","life",0)
	//Gamma
	global.gammawave = ini_read_real("gamma","wave",0)
	global.gammaonmap = ini_read_real("gamma","onmap",0)
	global.gammaparts = ini_read_real("gamma","parts",0)
	global.gammacompleted = ini_read_real("gamma","completed",0)
	global.gammalife = ini_read_real("gamma","life",0)
	//Delta
	global.deltawave = ini_read_real("delta","wave",0)
	global.deltaonmap = ini_read_real("delta","onmap",0)
	global.deltaparts = ini_read_real("delta","parts",0)
	global.deltacompleted = ini_read_real("delta","completed",0)  
	global.deltalife = ini_read_real("delta","life",0) 

	
	//MEDAILS
	global.medails_defender = ini_read_real("Medails","defender",0)
	global.medails_double_kill = ini_read_real("Medails","double_kill",0)
	global.medails_triple_kill = ini_read_real("Medails","triple_kill",0)
	global.medails_quadra_kill = ini_read_real("Medails","quadra_kill",0)
	global.medails_penta_kill = ini_read_real("Medails","penta_kill",0)
	global.medails_point_kill = ini_read_real("Medails","point_kill",0)
	global.medails_invader = ini_read_real("Medails","invader",0)
	
	
	//STATS
	global.kills=ini_read_real("","kills",0);
	global.deaths=ini_read_real("Stats","deaths",0);
	global.cp_wins=ini_read_real("Stats","cp_wins",0);
	global.highest_killstreak=ini_read_real("Stats","highest_killstreak",0);
	global.kills_nostromo = ini_read_real("Stats","kills_nostromo",0);
	global.kills_leonov = ini_read_real("Stats","kills_leonov",0);
	global.kills_bigboy = ini_read_real("Stats","kills_bigboy",0);
	global.kills_spearhead = ini_read_real("Stats","kills_spearhead",0);
	global.kills_aegis = ini_read_real("Stats","kills_aegis",0);
	global.kills_citadel = ini_read_real("Stats","kills_citadel",0);
	global.kills_vengeance = ini_read_real("Stats","kills_vengeance",0);
	global.kills_goliath = ini_read_real("Stats","kills_goliath",0);
	global.kills_mobs = ini_read_real("Stats","kills_mobs",0);
	global.kills_streuner_1 = ini_read_real("Stats","kills_streuner_1",0);
	global.kills_lordakia = ini_read_real("Stats","kills_lordakia",0);
	global.kills_saimon = ini_read_real("Stats","kills_saimon",0);
	global.kills_mordon = ini_read_real("Stats","kills_mordon",0);
	global.kills_devolarium = ini_read_real("Stats","kills_devolarium",0);
	global.kills_sibelon = ini_read_real("Stats","kills_sibelon",0);
	global.kills_sibelonit = ini_read_real("Stats","kills_sibelonit",0);
	global.kills_lordakium = ini_read_real("Stats","kills_lordakium",0);
	global.kills_kristalin = ini_read_real("Stats","kills_kristalin",0);
	global.kills_kristalon = ini_read_real("Stats","kills_kristalon",0);
	global.kills_streuner = ini_read_real("Stats","kills_streuner",0);
	global.kills_cubikon = ini_read_real("Stats","kills_cubikon",0);
	global.kills_protegit = ini_read_real("Stats","kills_protegit",0);
	global.kills_boss_mobs = ini_read_real("Stats","kills_boss_mobs",0);
	global.kills_boss_streuner_1 = ini_read_real("Stats","kills_boss_streuner_1",0);
	global.kills_boss_lordakia = ini_read_real("Stats","kills_boss_lordakia",0);
	global.kills_boss_saimon = ini_read_real("Stats","kills_boss_saimon",0);
	global.kills_boss_mordon = ini_read_real("Stats","kills_boss_mordon",0);
	global.kills_boss_devolarium = ini_read_real("Stats","kills_boss_devolarium",0);
	global.kills_boss_sibelon = ini_read_real("Stats","kills_boss_sibelon",0);
	global.kills_boss_sibelonit = ini_read_real("Stats","kills_boss_sibelonit",0);
	global.kills_boss_lordakium = ini_read_real("Stats","kills_boss_lordakium",0);
	global.kills_boss_kristalin = ini_read_real("Stats","kills_boss_kristalin",0);
	global.kills_boss_kristalon = ini_read_real("Stats","kills_boss_kristalon",0);
	global.kills_boss_streuner = ini_read_real("Stats","kills_boss_streuner",0);
	global.kills_uber_mobs = ini_read_real("Stats","kills_uber_mobs",0);
	global.kills_uber_streuner_1 = ini_read_real("Stats","kills_uber_streuner_1",0);
	global.kills_uber_lordakia = ini_read_real("Stats","kills_uber_lordakia",0);
	global.kills_uber_saimon = ini_read_real("Stats","kills_uber_saimon",0);
	global.kills_uber_mordon = ini_read_real("Stats","kills_uber_mordon",0);
	global.kills_uber_devolarium = ini_read_real("Stats","kills_uber_devolarium",0);
	global.kills_uber_sibelon = ini_read_real("Stats","kills_uber_sibelon",0);
	global.kills_uber_sibelonit = ini_read_real("Stats","kills_uber_sibelonit",0);
	global.kills_uber_lordakium = ini_read_real("Stats","kills_uber_lordakium",0);
	global.kills_uber_kristalin = ini_read_real("Stats","kills_uber_kristalin",0);
	global.kills_uber_kristalon = ini_read_real("Stats","kills_uber_kristalon",0);
	global.kills_uber_streuner = ini_read_real("Stats","kills_uber_streuner",0);
	global.damage_done_gun = ini_read_real("Stats","damage_done_gun",0);
	global.damage_done_laser = ini_read_real("Stats","damage_done_laser",0);
	global.damage_done_nuke = ini_read_real("Stats","damage_done_nuke",0);
	global.used_nuke = ini_read_real("Stats","used_nuke",0);
	global.kills_nuke = ini_read_real("Stats","kills_nuke",0);
	global.damage_received = ini_read_real("Stats","damage_received",0);
	var prometium_received = ini_read_real("Stats","prometium_received",0);
	var endurium_received = ini_read_real("Stats","endurium_received",0);
	var terbium_received = ini_read_real("Stats","terbium_received",0);
	var duranium_received = ini_read_real("Stats","duranium_received",0);
	var prometid_received = ini_read_real("Stats","prometid_received",0);
	var promerium_received = ini_read_real("Stats","promerium_received",0);
	var seprom_received = ini_read_real("Stats","seprom_received",0);
	var palladium_received = ini_read_real("Stats","palladium_received",0);
	global.ores_received=[prometium_received,endurium_received,terbium_received,duranium_received,prometid_received,promerium_received,seprom_received,palladium_received];
	global.credit_received = ini_read_real("Stats","credit_received",0);
	
	//PIECES
	var piece_0 = ini_read_real("Pieces","0",0);
	var piece_1 = ini_read_real("Pieces","1",0);
	var piece_2 = ini_read_real("Pieces","2",0);
	var piece_3 = ini_read_real("Pieces","3",0);
	var piece_4 = ini_read_real("Pieces","4",0);
	var piece_5 = ini_read_real("Pieces","5",0);
	var piece_6 = ini_read_real("Pieces","6",0);
	var piece_7 = ini_read_real("Pieces","7",0);
	var piece_8 = ini_read_real("Pieces","8",0);
	var piece_9 = ini_read_real("Pieces","9",0);
	var piece_10 = ini_read_real("Pieces","10",0);
	var piece_11 = ini_read_real("Pieces","11",0);
	var piece_12 = ini_read_real("Pieces","12",0);
	var piece_13 = ini_read_real("Pieces","13",0);
	var piece_14 = ini_read_real("Pieces","14",0);
	var piece_15 = ini_read_real("Pieces","15",0);
	var piece_0_received = ini_read_real("Pieces","0_received",0);
	var piece_1_received = ini_read_real("Pieces","1_received",0);
	var piece_2_received = ini_read_real("Pieces","2_received",0);
	var piece_3_received = ini_read_real("Pieces","3_received",0);
	var piece_4_received = ini_read_real("Pieces","4_received",0);
	var piece_5_received = ini_read_real("Pieces","5_received",0);
	var piece_6_received = ini_read_real("Pieces","6_received",0);
	var piece_7_received = ini_read_real("Pieces","7_received",0);
	var piece_8_received = ini_read_real("Pieces","8_received",0);
	var piece_9_received = ini_read_real("Pieces","9_received",0);
	var piece_10_received = ini_read_real("Pieces","10_received",0);
	var piece_11_received = ini_read_real("Pieces","11_received",0);
	var piece_12_received = ini_read_real("Pieces","12_received",0);
	var piece_13_received = ini_read_real("Pieces","13_received",0);
	var piece_14_received = ini_read_real("Pieces","14_received",0);
	var piece_15_received = ini_read_real("Pieces","15_received",0);
	global.pieces_qty = [piece_0,piece_1,piece_2,piece_3,piece_4,piece_5,piece_6,piece_7,piece_8,piece_9,piece_10,piece_11,piece_12,piece_13,piece_14,piece_15];
	global.pieces_received_qty = [piece_0_received,piece_1_received,piece_2_received,piece_3_received,piece_4_received,piece_5_received,piece_6_received,piece_7_received,piece_8_received,piece_9_received,piece_10_received,piece_11_received,piece_12_received,piece_13_received,piece_14_received,piece_15_received];
	global.pieces_capacity = ini_read_real("Pieces","capacity",0);
	
	//PET
	global.petname=ini_read_string("Pet","name","");
	



	//global.eco10 = ini_read_real("Player","eco10",0);
	//global.rsb = ini_read_real("Player","rsb",0);
	
	//global.dnormal = ini_read_real("droid","normal",1);
	//global.dhavoc = ini_read_real("droid","havoc",0);
	//global.dhercules = ini_read_real("droid","hercules",0);

	//TDM ------
	//global.tdm=0;
	//global.tdm_mmo_lifes=4;
	//global.tdm_eic_lifes=4;
	//global.tdm_vru_lifes=4;

	

  /*
	
	global.ishcount = ini_read_real("Player","ish",0);
	global.warrepcount = ini_read_real("Player","warrep",0)
	global.shieldbackupcount = ini_read_real("Player","shieldbackup",0)
	global.old_lasers = ini_read_real("lasers","type",1);*/
	//-------------- PET
	
	
	global.loading=0;
	gamer.Shiptype = info(gamer.Ship, "ship_class")
	guns_installation(gamer);
	ini_close();
}