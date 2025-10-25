function load_hangar(hangar_nbr)
{
	//ini_open("Hangar" + string(hangar_nbr) + ".sav");
	ini_open("newSave.sav");
	
	
	//HANGAR + DRONES
	_hangar_string = "Hangar" + string(hangar_nbr);
	gamer.ship_name = ini_read_string(_hangar_string,"ship","");
	global.ship_level = ini_read_real(_hangar_string,"ship_level",1);


	//ABILITIES
	if gamer.ship_name = "solace" then {gamer.can_use_solace = true; gamer.can_use_spectrum = false; gamer.can_use_diminisher = false; gamer.can_use_venom = false; gamer.can_use_sentinel = false;}
	if gamer.ship_name = "spectrum" then {gamer.can_use_solace = false; gamer.can_use_spectrum = true; gamer.can_use_diminisher = false; gamer.can_use_venom = false; gamer.can_use_sentinel = false;}
	if gamer.ship_name = "diminisher" then {gamer.can_use_solace = false; gamer.can_use_spectrum = false; gamer.can_use_diminisher = true; gamer.can_use_venom = false; gamer.can_use_sentinel = false;}
	if gamer.ship_name = "venom" then {gamer.can_use_solace = false; gamer.can_use_spectrum = false; gamer.can_use_diminisher = false; gamer.can_use_venom = true; gamer.can_use_sentinel = false;}
	if gamer.ship_name = "sentinel" then {gamer.can_use_solace = false; gamer.can_use_spectrum = false; gamer.can_use_diminisher = false; gamer.can_use_venom = false; gamer.can_use_sentinel = true;}

	//PRE-LOAD GAME	
	with(gamer)
	{
		Gun=array_create(info_shiptypes(info(ship_name,"ship_type"),"gun_slots")+1,"")
		Engine=array_create(info_shiptypes(info(ship_name,"ship_type"),"engine_slots")+1,"")
		Gun[0]:=info_shiptypes(info(ship_name,"ship_type"),"gun_slots");
		Engine[0]:=info_shiptypes(info(ship_name,"ship_type"),"engine_slots");
		GunC1 = []
		GunC2 = []
		EngineC1 = []
		EngineC2 = []
		array_copy(GunC1, 0, Gun, 0, array_length(Gun))
		array_copy(GunC2, 0, Gun, 0, array_length(Gun))
		array_copy(EngineC1, 0, Engine, 0, array_length(Engine))
		array_copy(EngineC2, 0, Engine, 0, array_length(Engine))
		own_shieldC1=0
		own_shieldC2=0
		ship_speedC1=0
		ship_speedC2=0
		MaxDamage=0
		MaxDamageC1=0
		MaxDamageC2=0
		shieldAbsorb=0
		shieldAbsorbC1=0
		shieldAbsorbC2=0
		Inventory=0
		InventoryC1=0
		InventoryC2=0
		droid=array_create(11);
		for (i:=1; i<=10; i+=1) {droid[i,0]=noone; droid[i,1]:="noone"; droid[i,2]:="noone"; droid[i,3]:="noone"; droid[i,4]:="noone";}
		droidC1=array_create(11);
		for (i:=1; i<=10; i+=1) {droidC1[i,0]=noone; droidC1[i,1]:="noone"; droidC1[i,2]:="noone"; droidC1[i,3]:="noone"; droidC1[i,4]:="noone";}
		droidC2=array_create(11);
		for (i:=1; i<=10; i+=1) {droidC2[i,0]=noone; droidC2[i,1]:="noone"; droidC2[i,2]:="noone"; droidC2[i,3]:="noone"; droidC2[i,4]:="noone";}
	}


	//Gun
	for(i = 1; i<=20; i+=1)
	{
		//C1
		if i < array_length(gamer.GunC1)
		{
			gamer.GunC1[i] = ini_read_string(_hangar_string,"gun"+string(i)+"C1","");
		}
		//C2
		if i < array_length(gamer.GunC2)
		{
			gamer.GunC2[i] = ini_read_string(_hangar_string,"gun"+string(i)+"C2","");
		}
	}
	
	
	//Engine
	for(i = 1; i<=20; i+=1)
	{
		//C1
		if i < array_length(gamer.EngineC1)
		{
			gamer.EngineC1[i] = ini_read_string(_hangar_string,"engine"+string(i)+"C1","");
		}
		//C2
		if i < array_length(gamer.EngineC2)
		{
		    gamer.EngineC2[i] = ini_read_string(_hangar_string,"engine"+string(i)+"C2","");
		}
	}
	ini_close();
}