function guns_installation(_id){
	with (_id)
	{
		/************************************************
		                INIT PARAMETERS
		*************************************************/
		#region
		shieldCount=0; Shiptype=0;
		var i;
		fatlasers:=false guns:=0; lasers=0; health_def:=10; MaxDamageGun:=0; MaxDamageLaser=0; bluing=false; //ammo[1,2]=global.x1ammo_sound; ammo[2,2]=global.x1ammo_sound; ammo[3,2]=global.x1ammo_sound; 
		shield_def:=0;
		//Ship = ship_name;
		Shiptype=info(Ship,"ship_type");
		ship_speed:=info_shiptypes(Shiptype,"speed"); Engines:=0; 
		Flax_numb=0; Iris_numb:=0; SuperGunNumb:=0; Apis_numb=0; Zeus_numb=0;
		gunlvlmin=0;
		laserlvlmin=0;
		//ship
		health_def:=info_shiptypes(Shiptype,"health");
		
		//Engine[0]:=info_shiptypes(Shiptype,"engine_slots");
		#endregion
		

		/************************************************
		                CONFIGS
		*************************************************/
		#region
		//CONFIG 2
		Engine = EngineC2
		Gun = GunC2
		droid = droidC2
		shield_def = 0
		MaxDamage = 0
		if id = gamer.id then guns = 0
		ship_speed:=info_shiptypes(Shiptype,"speed"); Engines:=0; 
		
		//ENGINES
		for (i=1; i<=Engine[0]; i+=1)
		{
			if Engine[i] != "" and Engine[i] != "noone"
			{
				var _type = info(Engine[i],"type");
				var _quantity = info(Engine[i],"quantity");
				if _type = "shield" then 
				{
					var _absorb = info(Engine[i],"absorb")
					shield_def+=_quantity; shieldAbsorbC2 += _quantity * _absorb
				}
				if _type = "generator" then ship_speed+=_quantity;
			}
		}
		
		//GUNS
		for (i=1; i<=Gun[0]; i+=1)
		{
			if Gun[i] != "" and Gun[i] != "noone"
			{
				var _damage = info(Gun[i],"damage");
				MaxDamage+=_damage; guns+=1; GunDmg[i]=_damage;
			}
		}
		
		//DRONES
		for (i:=1; i<=10; i+=1)
		{
			//Type and design
		    if droid[i,1]="noone" or droid[i,1]="" then break;
		    if droid[i,1]="flax" then Flax_numb+=1
		    else if droid[i,1]="apis" then Apis_numb+=1
		    else if droid[i,1]="zeus" then Zeus_numb+=1;
		    else Iris_numb+=1;
			if id = gamer.id
			{
				//Slot 1
			    switch info(droid[i,2],"type")
			    {
			        case "gun": MaxDamage+=info(droid[i,2],"damage"); guns+=1; break;
			        case "shield": 
					{
						var _absorb = info(droid[i,2],"absorb")
						var _quantity = info(droid[i,2],"quantity");
						shield_def+=info(droid[i,2],"quantity"); 
						shieldAbsorbC2 += _quantity * _absorb 
						break;
					}
			    }
				//Slot 2
			    switch info(droid[i,3],"type")
			    {
			        case "gun": MaxDamage+=info(droid[i,3],"damage"); guns+=1; break;
			        case "shield": 
					{
						var _absorb = info(droid[i,3],"absorb")
						var _quantity = info(droid[i,3],"quantity");
						shield_def+=info(droid[i,3],"quantity"); 
						shieldAbsorbC2 += _quantity * _absorb 
						break;
					}
			    }
			}
		} 
		
		shield_defC2 = shield_def
		own_shieldC2 = shield_defC2
		shieldAbsorbC2 = shieldAbsorbC2 / shield_defC2
		ship_speedC2 = ship_speed/(450/(5)) // factor to adapt speed in game
		MaxDamageC2 = MaxDamage
		if id = gamer.id then gunsC2 = guns
		
		//CONFIG 1
		Engine = EngineC1
		Gun = GunC1
		droid = droidC1
		shield_def = 0
		MaxDamage = 0
		if id = gamer.id then guns = 0
		ship_speed:=info_shiptypes(Shiptype,"speed"); Engines:=0; 
		//ENGINES
		for (i=1; i<=Engine[0]; i+=1)
		{
			if Engine[i] != "" and Engine[i] != "noone"
			{
				var _type = info(Engine[i],"type");
				var _quantity = info(Engine[i],"quantity");
				if _type = "shield" then 
				{
					_absorb = info(Engine[i],"absorb")
					shield_def+=_quantity; shieldAbsorbC1 += _quantity * _absorb}
				if _type = "generator" then ship_speed+=_quantity;
			}
		}
		
		//GUNS
		for (i=1; i<=Gun[0]; i+=1)
		{
			if Gun[i] != "" and Gun[i] != "noone"
			{
				var _damage = info(Gun[i],"damage");
				MaxDamage+=_damage; guns+=1; GunDmg[i]=_damage;
			}
		}
		
		//DRONES
		for (i:=1; i<=10; i+=1)
		{
			//Type and design
		    if droid[i,1]="noone" or droid[i,1]="" then break;
		    if droid[i,1]="flax" then Flax_numb+=1
		    else if droid[i,1]="apis" then Apis_numb+=1
		    else if droid[i,1]="zeus" then Zeus_numb+=1;
		    else Iris_numb+=1;
			if id = gamer.id
			{
				//Slot 1
			    switch info(droid[i,2],"type")
			    {
			        case "gun": MaxDamage+=info(droid[i,2],"damage"); guns+=1; break;
			        case "shield": 
					{
						var _absorb = info(droid[i,2],"absorb")
						var _quantity = info(droid[i,2],"quantity");
						shield_def+=info(droid[i,2],"quantity"); 
						shieldAbsorbC1 += _quantity * _absorb 
						break;
					}
			    }
				//Slot 2
			    switch info(droid[i,3],"type")
			    {
			        case "gun": MaxDamage+=info(droid[i,3],"damage"); guns+=1; break;
			        case "shield": 
					{
						var _absorb = info(droid[i,3],"absorb")
						var _quantity = info(droid[i,3],"quantity");
						shield_def+=info(droid[i,3],"quantity"); 
						shieldAbsorbC1 += _quantity * _absorb 
						break;
					}
			    }
			}
		} 
		
		shield_defC1 = shield_def
		own_shieldC1 = shield_defC1
		shieldAbsorbC1 = shieldAbsorbC1 / shield_defC1
		ship_speedC1 = ship_speed/(450/(5)) // factor to adapt speed in game
		MaxDamageC1 = MaxDamage
		if id = gamer.id then gunsC1 = guns
		
		if config = 1
		{
			shield_def = shield_defC1
			own_shield = own_shieldC1
			ship_speed = ship_speedC1
			MaxDamage = MaxDamageC1
			Engine = EngineC1
			droid = droidC1
			Gun = GunC1
			shieldAbsorb = shieldAbsorbC1
			if id = gamer.id then {guns = gunsC1; gamer.Inventory = gamer.InventoryC1}
		}
		else
		{
			shield_def = shield_defC2
			own_shield = own_shieldC2
			ship_speed = ship_speedC2
			MaxDamage = MaxDamageC2
			Engine = EngineC2
			droid = droidC2
			Gun = GunC2
			shieldAbsorb = shieldAbsorbC2
			if id = gamer.id then {guns = gunsC2; gamer.Inventory = gamer.InventoryC2}
		}
		
		#endregion

		//SHIELD
		//shieldPen = 0.1
		own_shield = shield_def;

		/************************************************
		                DRONES
		*************************************************/
		#region
		//DRONES
		/*
		for (i:=1; i<=10; i+=1)
		    {
		    if droid[i,1]="noone" or droid[i,1]="" then break;
		    if droid[i,1]="flax" then Flax_numb+=1
		    else if droid[i,1]="apis" then Apis_numb+=1
		    else if droid[i,1]="zeus" then Zeus_numb+=1;
		    else Iris_numb+=1;
	
			
		    switch info(droid[i,2],"type")
		        {
		        case "gun": MaxDamage+=info(droid[i,2],"damage"); guns+=1; break;
		        case "engine": shield_def+=info(droid[i,2],"power"); break;
		        }
		    switch info(droid[i,3],"type")
		        {
		        case "gun": MaxDamage+=info(droid[i,3],"damage"); guns+=1; break;
		        case "engine": shield_def+=info(droid[i,3],"power"); break;
		        }
		} */
    


		//DRONES FORMATIONS
		 /*   if(_id == gamer || _id == gamer.id){
    
		        if(global.droneformation == 1)      {shield_def*=1; health_def*=1; MaxDamage*=1;} //Normal
		        else if(global.droneformation == 2) {shield_def*=1.1; health_def*=1.2; MaxDamage*=0.9;} //Heart
		        else if(global.droneformation == 3) {shield_def*=1; health_def*=1.2; MaxDamage*=1.1; shieldPen=0.2;} //Moth
		        /*
		        if(global.dnormal == 1)        {shield_def*=1; health_def*=1; MaxDamage*=1;}
		        else if(global.dhavoc == 1)    {MaxDamage*=1.1}
		        else if(global.dhercules == 1) {shield_def*=1.15; health_def*=1.2}
		        */
		   /*     if(havocCount != droneCount && herculesCount != droneCount)        {shield_def*=1; health_def*=1; MaxDamage*=1;}
		        else if(havocCount == droneCount)    {MaxDamage*=1.1}
		        else if(herculesCount == droneCount) {shield_def*=1.15; health_def*=1.2}

		    }
		    else if(_id != gamer && _id != gamer.id)
		    {
    
		        if(droneformation == 1)      {shield_def*=1; health_def*=1; MaxDamage*=1;} //Normal
		        else if(droneformation == 2) {shield_def*=1.1; health_def*=1.2; MaxDamage*=0.9;} //Heart
		        else if(droneformation == 3) {shield_def*=1; health_def*=1.2; MaxDamage*=1.1; shieldPen=0.2;} //Moth
		        /*
		        if(dnormal == 1)        {shield_def*=1; health_def*=1; MaxDamage*=1;}
		        else if(dhavoc == 1)    {MaxDamage*=1.1}
		        else if(dhercules == 1) {shield_def*=1.15; health_def*=1.2}
		        */
		/*        if(havocCount != droneCount && herculesCount != droneCount)        {shield_def*=1; health_def*=1; MaxDamage*=1;}
		        else if(havocCount == droneCount)    {MaxDamage*=1.1}
		        else if(herculesCount == droneCount) {shield_def*=1.15; health_def*=1.2}
        */
		   // }
    
		
		#endregion


		/************************************************
		                OTHERS
		*************************************************/
		#region
		//SPEED	
		//ship_speed = 5*0.7 //round(ship_speed*2); //because 60fps instead of 30fps now

/*
		//CARGO
		if id=gamer.id then
		{
			var cargo_lvl;
			if global.cargo_level>0 then cargo_lvl=global.cargo_level else cargo_lvl=1;
			//var cargo_base = info_shiptypes(gamer.Shiptype, "cargo");
			var cargo_supp = info_upgrades("cargo", cargo_lvl, "amount");
			//global.cargo_max = cargo_base + cargo_supp;
		}
		
		//STORAGE
		if id=gamer.id then
		{
			var storage_lvl;
			if global.storage_level>0 then storage_lvl=global.storage_level else storage_lvl=1;
			global.storage_max = 100 + info_upgrades("storage", storage_lvl, "amount");
		}
*/

		#endregion

		/************************************************
		                SKILLTREE
		*************************************************/
		#region
		//HP
		health_def += ship_hull_i * 10000 + ship_hull_ii * 15000
		
		//SHIELD
		shield_def += shield_def * shield_engineering * 0.05
		shield_defC1 += shield_defC1 * shield_engineering * 0.05
		shield_defC2 += shield_defC2 * shield_engineering * 0.05
		
		//SHIELD ABSORB
		shieldAbsorb += shield_mechanics * 0.02
		shieldAbsorbC1 += shield_mechanics * 0.02
		shieldAbsorbC2 += shield_mechanics * 0.02
		#endregion


		//END
		event_user(2);
		if own_health>health_def then own_health=health_def;
		own_health_bilo:=own_health;
	}
}


/************************************************
                DELETED
*************************************************/
#region
/*
    //SHIP BONUS
    switch Ship
    {
        case "phoenix":             {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "nostromo":            {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "leonov":              {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "bigboy":              {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "admin":               {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "kringspiermusketier": {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        //Vengies
        case "vengeance":           {shield_def*=1; health_def*=1; MaxDamage*=1.3;} break;
        case "adept":               {shield_def*=1; health_def*=1; MaxDamage*=1.3;} break;
        case "corsair":             {shield_def*=1; health_def*=1; MaxDamage*=1.3;} break;
        case "avenger":             {shield_def*=1; health_def*=1; MaxDamage*=1.3;} break;
        case "revenge":             {shield_def*=1; health_def*=1; MaxDamage*=1.3;} break;
        case "lightning":           {shield_def*=1; health_def*=1; MaxDamage*=1.3;} break;
        //Golies
        case "goliath":             {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "veteran":             {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "exalted":             {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "goal":                {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "bastion":             {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "kick":                {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "sentinel":            {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "solace":              {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "spectrum":            {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "enforcer":            {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "diminisher":          {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "venom":               {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "referee":             {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "centaur":             {shield_def*=1; health_def*=1.; MaxDamage*=1;} break;
        case "saturn":              {shield_def*=1; health_def*=1.; MaxDamage*=1;} break;
        //Newgen
        case "spearhead":           {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "aegis":               {shield_def*=1; health_def*=1; MaxDamage*=1;} break;
        case "citadel":             {shield_def*=1.5; health_def*=1; MaxDamage*=1;} break; //1.0
    }



//PILOTSHEET
 /*
    
    //FOR GAMER*****
    if _id = gamer.id then 
    {
    //Pilotsheet bonusses
    //Hull
    if _id.pilotsheet_ship_hull_i = 0 and _id.pilotsheet_ship_hull_ii = 0 then {health_def+=0}
    if _id.pilotsheet_ship_hull_i = 1 and _id.pilotsheet_ship_hull_ii = 0 then {health_def+=5000}
    if _id.pilotsheet_ship_hull_i = 2 and _id.pilotsheet_ship_hull_ii = 0 then {health_def+=10000}    
    if _id.pilotsheet_ship_hull_ii = 1 then {health_def+=15000}
    if _id.pilotsheet_ship_hull_ii = 2 then {health_def+=25000}
    if _id.pilotsheet_ship_hull_ii = 3 then {health_def+=50000}      
    //Bounty hunter
    if _id.pilotsheet_bounty_hunter_i = 0 and _id.pilotsheet_bounty_hunter_ii = 0 then {global.bounty_hunter_bonus=0.00}
    if _id.pilotsheet_bounty_hunter_i = 1 and _id.pilotsheet_bounty_hunter_ii = 0 then {global.bounty_hunter_bonus=0.02}
    if _id.pilotsheet_bounty_hunter_i = 2 and _id.pilotsheet_bounty_hunter_ii = 0 then {global.bounty_hunter_bonus=0.04}
    if _id.pilotsheet_bounty_hunter_ii = 1 then {global.bounty_hunter_bonus=0.06}
    if _id.pilotsheet_bounty_hunter_ii = 2 then {global.bounty_hunter_bonus=0.08}    
    if _id.pilotsheet_bounty_hunter_ii = 3 then {global.bounty_hunter_bonus=0.12; fatlasers=true;}        
    //Shield engineering
    if _id.pilotsheet_shield_engineering = 0 then {shield_def*=1}  
    if _id.pilotsheet_shield_engineering = 1 then {shield_def*=1.04}
    if _id.pilotsheet_shield_engineering = 2 then {shield_def*=1.08}
    if _id.pilotsheet_shield_engineering = 3 then {shield_def*=1.12}
    if _id.pilotsheet_shield_engineering = 4 then {shield_def*=1.18}
    if _id.pilotsheet_shield_engineering = 5 then {shield_def*=1.25}
    //Ship engineering
    if _id.pilotsheet_ship_engineering = 0 then {global.ship_engineering_bonus=0.00}  
    if _id.pilotsheet_ship_engineering = 1 then {global.ship_engineering_bonus=0.10}
    if _id.pilotsheet_ship_engineering = 2 then {global.ship_engineering_bonus=0.20}
    if _id.pilotsheet_ship_engineering = 3 then {global.ship_engineering_bonus=0.30}
    if _id.pilotsheet_ship_engineering = 4 then {global.ship_engineering_bonus=0.40}
    if _id.pilotsheet_ship_engineering = 5 then {global.ship_engineering_bonus=0.50}
    //Alien hunter
    if _id.pilotsheet_alien_hunter = 0 then {global.alien_hunter_bonus=0.00}  
    if _id.pilotsheet_alien_hunter = 1 then {global.alien_hunter_bonus=0.02}
    if _id.pilotsheet_alien_hunter = 2 then {global.alien_hunter_bonus=0.04}
    if _id.pilotsheet_alien_hunter = 3 then {global.alien_hunter_bonus=0.06}
    if _id.pilotsheet_alien_hunter = 4 then {global.alien_hunter_bonus=0.08}
    if _id.pilotsheet_alien_hunter = 5 then {global.alien_hunter_bonus=0.12}
    //Greed
    if _id.pilotsheet_greed = 0 then {global.greed_bonus=0.00}  
    if _id.pilotsheet_greed = 1 then {global.greed_bonus=0.02}
    if _id.pilotsheet_greed = 2 then {global.greed_bonus=0.04}
    if _id.pilotsheet_greed = 3 then {global.greed_bonus=0.06}
    if _id.pilotsheet_greed = 4 then {global.greed_bonus=0.08}
    if _id.pilotsheet_greed = 5 then {global.greed_bonus=0.12}
    //Luck 
    if _id.pilotsheet_luck_i = 0 and _id.pilotsheet_luck_ii = 0 then {global.luck_bonus=0.00}  
    if _id.pilotsheet_luck_i = 1 and _id.pilotsheet_luck_ii = 0 then {global.luck_bonus=0.02}
    if _id.pilotsheet_luck_i = 2 and _id.pilotsheet_luck_ii = 0 then {global.luck_bonus=0.04}
    if _id.pilotsheet_luck_ii = 1 then {global.luck_bonus=0.06}
    if _id.pilotsheet_luck_ii = 2 then {global.luck_bonus=0.08}
    if _id.pilotsheet_luck_ii = 3 then {global.luck_bonus=0.12}
    //Cruelty 
    if _id.pilotsheet_cruelty_i = 0 and _id.pilotsheet_cruelty_ii = 0 then {global.cruelty_bonus=0.00}  
    if _id.pilotsheet_cruelty_i = 1 and _id.pilotsheet_cruelty_ii = 0 then {global.cruelty_bonus=0.04}
    if _id.pilotsheet_cruelty_i = 2 and _id.pilotsheet_cruelty_ii = 0 then {global.cruelty_bonus=0.08}
    if _id.pilotsheet_cruelty_ii = 1 then {global.cruelty_bonus=0.12}
    if _id.pilotsheet_cruelty_ii = 2 then {global.cruelty_bonus=0.18}
    if _id.pilotsheet_cruelty_ii = 3 then {global.cruelty_bonus=0.25}
    //Evasive 
    if _id.pilotsheet_evasive_i = 0 and _id.pilotsheet_evasive_ii = 0 then {global.evasive_bonus=0.00}  
    if _id.pilotsheet_evasive_i = 1 and _id.pilotsheet_evasive_ii = 0 then {global.evasive_bonus=0.02}
    if _id.pilotsheet_evasive_i = 2 and _id.pilotsheet_evasive_ii = 0 then {global.evasive_bonus=0.04}
    if _id.pilotsheet_evasive_ii = 1 then {global.evasive_bonus=0.06}
    if _id.pilotsheet_evasive_ii = 2 then {global.evasive_bonus=0.08}
    if _id.pilotsheet_evasive_ii = 3 then {global.evasive_bonus=0.12}
    //Electro Optics
    if _id.pilotsheet_electro_optics = 0 then {global.electro_optics_bonus=0.00}  
    if _id.pilotsheet_electro_optics = 1 then {global.electro_optics_bonus=0.02}
    if _id.pilotsheet_electro_optics = 2 then {global.electro_optics_bonus=0.04}
    if _id.pilotsheet_electro_optics = 3 then {global.electro_optics_bonus=0.06}
    if _id.pilotsheet_electro_optics = 4 then {global.electro_optics_bonus=0.08}
    if _id.pilotsheet_electro_optics = 5 then {global.electro_optics_bonus=0.12}
    //Shield Mechanics
    if _id.pilotsheet_shield_mechanics = 0 then {global.shield_mechanics_bonus=0.00}  
    if _id.pilotsheet_shield_mechanics = 1 then {global.shield_mechanics_bonus=0.02}
    if _id.pilotsheet_shield_mechanics = 2 then {global.shield_mechanics_bonus=0.04}
    if _id.pilotsheet_shield_mechanics = 3 then {global.shield_mechanics_bonus=0.06}
    if _id.pilotsheet_shield_mechanics = 4 then {global.shield_mechanics_bonus=0.08}
    if _id.pilotsheet_shield_mechanics = 5 then {global.shield_mechanics_bonus=0.12}
    //SMB Upgrade
    if _id.pilotsheet_smb_upgrade = 0 then {global.smb_upgrade_bonus=0.00}  
    if _id.pilotsheet_smb_upgrade = 1 then {global.smb_upgrade_bonus=0.04}
    if _id.pilotsheet_smb_upgrade = 2 then {global.smb_upgrade_bonus=0.08}
    if _id.pilotsheet_smb_upgrade = 3 then {global.smb_upgrade_bonus=0.12}
    if _id.pilotsheet_smb_upgrade = 4 then {global.smb_upgrade_bonus=0.18}
    if _id.pilotsheet_smb_upgrade = 5 then {global.smb_upgrade_bonus=0.25}
    //ISH Upgrade
    if _id.pilotsheet_ish_upgrade = 0 then {global.ish_upgrade_bonus=0.00}  
    if _id.pilotsheet_ish_upgrade = 1 then {global.ish_upgrade_bonus=0.04}
    if _id.pilotsheet_ish_upgrade = 2 then {global.ish_upgrade_bonus=0.08}
    if _id.pilotsheet_ish_upgrade = 3 then {global.ish_upgrade_bonus=0.12}
    if _id.pilotsheet_ish_upgrade = 4 then {global.ish_upgrade_bonus=0.18}
    if _id.pilotsheet_ish_upgrade = 5 then {global.ish_upgrade_bonus=0.25}
    //Shield Backup Upgrade
    if _id.pilotsheet_shield_backup_upgrade = 0 then {global.shield_backup_upgrade_bonus=0.00}  
    if _id.pilotsheet_shield_backup_upgrade = 1 then {global.shield_backup_upgrade_bonus=0.04}
    if _id.pilotsheet_shield_backup_upgrade = 2 then {global.shield_backup_upgrade_bonus=0.08}
    if _id.pilotsheet_shield_backup_upgrade = 3 then {global.shield_backup_upgrade_bonus=0.12}
    if _id.pilotsheet_shield_backup_upgrade = 4 then {global.shield_backup_upgrade_bonus=0.18}
    if _id.pilotsheet_shield_backup_upgrade = 5 then {global.shield_backup_upgrade_bonus=0.25}
    //Warrep Upgrade
    if _id.pilotsheet_warrep_upgrade = 0 then {global.warrep_upgrade_bonus=0.00}  
    if _id.pilotsheet_warrep_upgrade = 1 then {global.warrep_upgrade_bonus=0.04}
    if _id.pilotsheet_warrep_upgrade = 2 then {global.warrep_upgrade_bonus=0.08}
    if _id.pilotsheet_warrep_upgrade = 3 then {global.warrep_upgrade_bonus=0.12}
    if _id.pilotsheet_warrep_upgrade = 4 then {global.warrep_upgrade_bonus=0.18}
    if _id.pilotsheet_warrep_upgrade = 5 then {global.warrep_upgrade_bonus=0.25}
    
    //-------Boosters------
    if _id.booster_damage_regular >= 1 {MaxDamage*=1.1; hasRegDmg=1}
    if _id.booster_damage_extend >= 1 {MaxDamage*=1.1; hasExtDmg=1}
    if _id.booster_hp_regular >= 1 {health_def*=1.1; hasRegHp=1}
    if _id.booster_hp_extend >= 1  {health_def*=1.1; hasExtHp=1}
    if _id.booster_shield_regular >= 1 {shield_def*=1.25; hasRegShd=1}
    if _id.booster_shield_extend >= 1 {shield_def*=1.25; hasExtShd=1}  
    } 
    
    
    else //FOR BOTS ****
    {
    //Pilotsheet bonusses
    //Hull
    if _id.pilotsheet_ship_hull_i = 0 and _id.pilotsheet_ship_hull_ii = 0 then {health_def+=0}
    if _id.pilotsheet_ship_hull_i = 1 and _id.pilotsheet_ship_hull_ii = 0 then {health_def+=5000}
    if _id.pilotsheet_ship_hull_i = 2 and _id.pilotsheet_ship_hull_ii = 0 then {health_def+=10000}    
    if _id.pilotsheet_ship_hull_ii = 1 then {health_def+=15000}
    if _id.pilotsheet_ship_hull_ii = 2 then {health_def+=25000}
    if _id.pilotsheet_ship_hull_ii = 3 then {health_def+=50000}      
    //Bounty hunter
    if _id.pilotsheet_bounty_hunter_i = 0 and _id.pilotsheet_bounty_hunter_ii = 0 then {MaxDamage*=1}
    if _id.pilotsheet_bounty_hunter_i = 1 and _id.pilotsheet_bounty_hunter_ii = 0 then {MaxDamage*=1.02}
    if _id.pilotsheet_bounty_hunter_i = 2 and _id.pilotsheet_bounty_hunter_ii = 0 then {MaxDamage*=1.04}
    if _id.pilotsheet_bounty_hunter_ii = 1 then {MaxDamage*=1.06}
    if _id.pilotsheet_bounty_hunter_ii = 2 then {MaxDamage*=1.08}    
    if _id.pilotsheet_bounty_hunter_ii = 3 then {MaxDamage*=1.12; fatlasers=true;}        
    //Shield engineering
    if _id.pilotsheet_shield_engineering = 0 then {shield_def*=1}  
    if _id.pilotsheet_shield_engineering = 1 then {shield_def*=1.04}
    if _id.pilotsheet_shield_engineering = 2 then {shield_def*=1.08}
    if _id.pilotsheet_shield_engineering = 3 then {shield_def*=1.12}
    if _id.pilotsheet_shield_engineering = 4 then {shield_def*=1.18}
    if _id.pilotsheet_shield_engineering = 5 then {shield_def*=1.25}
    //-------Boosters------
    if _id.booster_damage_regular >= 1 {MaxDamage*=1.1; hasRegDmg=1}
    if _id.booster_damage_extend >= 1 {MaxDamage*=1.1; hasExtDmg=1}
    if _id.booster_hp_regular >= 1 {health_def*=1.1; hasRegHp=1}
    if _id.booster_hp_extend >= 1  {health_def*=1.1; hasExtHp=1}
    if _id.booster_shield_regular >= 1 {shield_def*=1.25; hasRegShd=1}
    if _id.booster_shield_extend >= 1 {shield_def*=1.25; hasExtShd=1}            
    }
    
    
    */
                                 
    //Drone bonusses
	#endregion