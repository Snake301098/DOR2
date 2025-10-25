function info(item,_info,lvl=1)
{

	var goliath_health = 156000;
	var vengeance_health = 128000;

		
	switch item
	{
    
		/************************************************
		                AMMO
		*************************************************/
		#region
		case "ammo":
		    switch _info
		        {
		        case "x1": return 1; break;
		        case "x2": return 5 break;
		        case "x3": return 20; break;
		        case "x4": return 50; break;
		        case "sub": return 10; break;
		        case "R-310": return 15; break;
		        case "rsb75": return 5; break;
		        case "dcr250": return 750; break;     
		        case "emp": return 500; break;
		        case "ish": return 500; break;   
		        }
		    break;
			
		case "x1":
		    switch _info
		    {
		        case "cost_qty": return 1; 
		        case "cost_type": return "credit"; 
				case "description": return"Name: X1 \nDescription: This ammunition deals x1 damage\nPrice: 1 credit per ammunition"
		    }
		    break;
			
		case "x2":
		    switch _info
		    {
		        case "cost_qty": return 100; 
		        case "cost_type": return "credit"; 
				case "description": return"Name: X2 \nDescription: This ammunition deals x2 damage\nPrice: 10 credits per ammunition"
		    }
		    break;
			
		case "x3":
		    switch _info
		    {
		        case "cost_qty": return 1; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: X3 \nDescription: This ammunition deals x3 damage\nPrice: 1 uridium per ammunition"
		    }
		    break;
			
		case "x4":
		    switch _info
		    {
		        case "cost_qty": return 5; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: X4 \nDescription: This ammunition deals x4 damage\nPrice: 5 uridium per ammunition"
		    }
		    break;
			
		case "x5":
		    switch _info
		    {
		        case "cost_qty": return 2; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: X5 \nDescription: This ammunition deals x5 damage\nPrice: 2 uridium per ammunition"
		    }
		    break;
			
		case "x6":
		    switch _info
		    {
		        case "cost_qty": return 5; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: X6 \nDescription: This ammunition deals x6 damage\nPrice: 5 uridium per ammunition"
		    }
		    break;
	
		case "shieldbackup":
		    switch _info
		    {
		        case "cost_qty": return 500; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: Shield backup \nDescription: Allows to get back up to 50k shield\nPrice: 500 uridium per item"
		    }
		    break;
    
		case "warrep":
		    switch _info
		    {
		        case "cost_qty": return 500; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: Warrep \nDescription: Allows to get repair ship during battle\nPrice: 500 uridium per item"
		    }
		    break;
			
			
		case "ish":
		    switch _info
		    {
		        case "cost_qty": return 500; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: ISH \nDescription: Invicible to damage for few seconds\nPrice: 500 uridium per item"
		    }
		    break;
			
		case "smb":
		    switch _info
		    {
		        case "cost_qty": return 500; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: SMB \nDescription: Deals up to 50k damage to ennemy ships\nPrice: 500 uridium per item"
		    }
		    break;
			
		case "emp":
		    switch _info
		    {
		        case "cost_qty": return 500; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: EMP \nDescription: Ship is not targeted anymore\nPrice: 500 uridium per item"
		    }
		    break;
		#endregion
		
		/************************************************
		                BOOSTERS
		*************************************************/
		case "DMG_1":
		    switch _info
		    {
		        case "cost_qty": return 1000; 
		        case "cost_type": return "uridium";
				case "description": return"Name: Booster damage 1 \nDescription: Increases damages by 10%\nPrice: 1000 uridium per 15mn"
		    }
		    break; 
			
		case "DMG_2":
		    switch _info
		    {
		        case "cost_qty": return 2000; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: Booster damage 2 \nDescription: Increases damages by 20%\nPrice: 2000 uridium per 15mn"
		    }
		    break; 
			
		case "HP_1":
		    switch _info
		    {
		        case "cost_qty": return 1000; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: Booster HP 1 \nDescription: Increases HP by 10%\nPrice: 1000 uridium per 15mn"
		    }
		    break; 
			
		case "HP_2":
		    switch _info
		    {
		        case "cost_qty": return 2000; 
		        case "cost_type": return "uridium";
				case "description": return"Name: Booster HP 2 \nDescription: Increases HP by 20%\nPrice: 2000 uridium per 15mn" 
		    }
		    break; 
			
		case "SHD_1":
		    switch _info
		    {
		        case "cost_qty": return 1000; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: Booster Shield 1 \nDescription: Increases shield by 10%\nPrice: 1000 uridium per 15mn"
		    }
		    break; 
			
		case "SHD_2":
		    switch _info
		    {
		        case "cost_qty": return 2000; 
		        case "cost_type": return "uridium"; 
				case "description": return"Name: Booster Shield 2 \nDescription: Increases shield by 20%\nPrice: 2000 uridium per 15mn"
		    }
		    break; 
		
		/************************************************
		                SHIPS
		*************************************************/
		#region

		case "phoenix":
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 0;
			if _info = "sprite" then return phoenix_spr;
			if _info = "ship_type" then return "phoenix";
			if _info = "description"then return"Name: Phoenix \nHP: "+string(info_shiptypes(item,"health"))+"\nGuns slots: "+string(info_shiptypes(item,"gun_slots"))+"\nEngines slots: "+string(info_shiptypes(item,"engine_slots"))+"\nPrice: Free"
			break;
			
		case "nostromo":
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 195000;
			if _info = "sprite" then return nostromo_spr;
			if _info = "ship_type" then return "nostromo";
			if _info = "description"then return"Name: Nostromo \nHP: "+string(info_shiptypes(item,"health"))+"\nGuns slots: "+string(info_shiptypes(item,"gun_slots"))+"\nEngines slots: "+string(info_shiptypes(item,"engine_slots"))+"\nPrice: 195,000 credits"
			break;
			
		case "leonov":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 15000;
			if _info = "sprite" then return leonov_spr;
			if _info = "ship_type" then return "leonov";
			if _info = "description"then return"Name: Leonov \nHP: "+string(info_shiptypes(item,"health"))+"\nGuns slots: "+string(info_shiptypes(item,"gun_slots"))+"\nEngines slots: "+string(info_shiptypes(item,"engine_slots"))+"\nPrice: 15,000 uridium"
			break;
			
		case "bigboy":
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 285000;
			if _info = "sprite" then return bigboy_spr;
			if _info = "ship_type" then return "bigboy";
			if _info = "description"then return"Name: Bigboy \nHP: "+string(info_shiptypes(item,"health"))+"\nGuns slots: "+string(info_shiptypes(item,"gun_slots"))+"\nEngines slots: "+string(info_shiptypes(item,"engine_slots"))+"\nPrice: 285,000 credits"
			break;
			
		case "vengeance":
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 10000000;
			if _info = "sprite" then return vengeance_spr;
			if _info = "ship_type" then return "vengeance";
			if _info = "description"then return"Name: Vengeance \nHP: "+string(info_shiptypes("vengeance","health"))+"\nGuns slots: "+string(info_shiptypes("vengeance","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("vengeance","engine_slots"))+"\nPrice: 10,000,000 credits"
			break;
			
		case "adept": //xp10
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 50000;
			if _info = "sprite" then return adept_spr;
			if _info = "ship_type" then return "vengeance";
			if _info = "description"then return"Name: Adept (Vengeance) \nHP: "+string(info_shiptypes("vengeance","health"))+"\nGuns slots: "+string(info_shiptypes("vengeance","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("vengeance","engine_slots"))+"\nPassive: +10% XP\nPrice: 50,000 uridium"
			break;
			
		case "avenger":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 50000;
			if _info = "sprite" then return avenger_spr;
			if _info = "ship_type" then return "vengeance";
			if _info = "description"then return"Name: Avenger (Vengeance) \nHP: "+string(info_shiptypes("vengeance","health"))+"\nGuns slots: "+string(info_shiptypes("vengeance","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("vengeance","engine_slots"))+"\nPassive: +10% shield\nPrice: 50,000 uridium"
			break;
			
		case "lightning":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 80000;
			if _info = "sprite" then return lightning_spr;
			if _info = "ship_type" then return "vengeance";
			if _info = "description"then return"Name: Lightning (Vengeance) \nHP: "+string(info_shiptypes("vengeance","health"))+"\nGuns slots: "+string(info_shiptypes("vengeance","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("vengeance","engine_slots"))+"\nPassive: +20% damage\nPrice: 80,000 uridium"
			break;
			
		case "revenge":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 50000;
			if _info = "sprite" then return revenge_spr;
			if _info = "ship_type" then return "vengeance";
			if _info = "description"then return"Name: Revenge (Vengeance) \nHP: "+string(info_shiptypes("vengeance","health"))+"\nGuns slots: "+string(info_shiptypes("vengeance","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("vengeance","engine_slots"))+"\nPassive: +10% damage\nPrice: 50,000 uridium"
			break;
			
		case "corsair": //honour
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 50000;
			if _info = "sprite" then return corsair_spr;
			if _info = "ship_type" then return "vengeance";
			if _info = "description"then return"Name: Corsair (Vengeance) \nHP: "+string(info_shiptypes("vengeance","health"))+"\nGuns slots: "+string(info_shiptypes("vengeance","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("vengeance","engine_slots"))+"\nPassive: +10% honor\nPrice: 50,000 uridium"
			break;
			
		case "goliath":
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 50000000;
			if _info = "sprite" then return goliath_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Goliath \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nPrice: 50,000,000 uridium"
			break;
			
		case "bastion":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 80000;
			if _info = "sprite" then return bastion_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Bastion (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nPassive: +10% shield\nPrice: 80,000 uridium"
			break;
			
		case "enforcer":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 80000;
			if _info = "sprite" then return enforcer_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Enforcer (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nPassive: +10% damage\nPrice: 80,000 uridium"
			break;
			
		case "centaur": //HP10
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 100000;
			if _info = "sprite" then return centaur_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Centaur (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nPassive: +10% HP\nPrice: 100,000 uridium"
			break;
			
		case "exalted": //honor 10
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 100000;
			if _info = "sprite" then return exalted_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Exalted (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nPassive: +10% honor\nPrice: 100,000 uridium"
			break;
			
		case "goal": //uridium 5%
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 80000;
			if _info = "sprite" then return goal_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Goal (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nPassive: +5% uridium\nPrice: 80,000 uridium"
			break;
			
		case "kick": //mob dmg
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 100000;
			if _info = "sprite" then return kick_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Kick (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nPassive: +15% damage against mobs\nPrice: 100,000 uridium"
			break;
			
		case "referee": //CD red
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 100000;
			if _info = "sprite" then return referee_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Referee (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nPassive: -10% cooldown\nPrice: 100,000 uridium"
			break;
			
		case "saturn": //20HP
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 120000;
			if _info = "sprite" then return saturn_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Saturn (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nPassive: +20% HP\nPrice: 120,000 uridium"
			break;
			
		case "veteran": //xp
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 80000;
			if _info = "sprite" then return veteran_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Veteran (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nPassive: +10% XP\nPrice: 80,000 uridium"
			break;
			
		case "diminisher":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return diminisher_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Diminisher (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nSkill: Reduces enemy shield efficiency by 50%\nPrice: 256,000 uridium"
			break;
			
		case "sentinel":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return sentinel_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Sentinel (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nSkill: Increases shield efficiency by 30%\nPrice: 256,000 uridium"
			break;
			
		case "solace":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return solace_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Solace (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nSkill: Restore 50% of HPs\nPrice: 256,000 uridium"
			break;
			
		case "spectrum":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return spectrum_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Spectrum (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nSkill: Reduces own's damages by 25%\n and enemy's damage by 50%\nPrice: 256,000 uridium"
			break;
			
		case "venom":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return venom_spr;
			if _info = "ship_type" then return "goliath";
			if _info = "description"then return"Name: Diminisher (Goliath) \nHP: "+string(info_shiptypes("goliath","health"))+"\nGuns slots: "+string(info_shiptypes("goliath","gun_slots"))+"\nEngines slots: "+string(info_shiptypes("goliath","engine_slots"))+"\nSkill: Deals direct damages to HP over time\nPrice: 256,000 uridium"
			break;
			
		case "spearhead":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 45000;
			if _info = "sprite" then return spearhead_spr;
			if _info = "ship_type" then return "spearhead";
			if _info = "description"then return"Name: Spearhead \nHP: "+string(info_shiptypes(item,"health"))+"\nGuns slots: "+string(info_shiptypes(item,"gun_slots"))+"\nEngines slots: "+string(info_shiptypes(item,"engine_slots"))+"\nPrice: 45,000 uridium"
			break;
			
		case "aegis":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 80000;
			if _info = "sprite" then return aegis_spr;
			if _info = "ship_type" then return "aegis";
			if _info = "description"then return"Name: Aegis \nHP: "+string(info_shiptypes(item,"health"))+"\nGuns slots: "+string(info_shiptypes(item,"gun_slots"))+"\nEngines slots: "+string(info_shiptypes(item,"engine_slots"))+"\nPrice: 80,000 uridium"
			break;
			
		case "citadel":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 100000;
			if _info = "sprite" then return citadel_spr;
			if _info = "ship_type" then return "citadel";
			if _info = "description"then return"Name: Citadel \nHP: "+string(info_shiptypes(item,"health"))+"\nGuns slots: "+string(info_shiptypes(item,"gun_slots"))+"\nEngines slots: "+string(info_shiptypes(item,"engine_slots"))+"\nPrice: 80,000 uridium"
			break;
			
		#endregion
		
		/************************************************
		                WEAPONS
		*************************************************/
		#region
		
		case "LF-4":
			if _info = "type" then return "gun";
			if _info = "damage" then return 200;
			if _info = "description" then return"Name: LF-4 \nDescription: This laser deals 200 damage\nPrice: 1,000 uridium"
			break;
			
			
		case "LF-3":
			if _info = "type" then return "gun";
			if _info = "damage" then return 175;
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 10000;
			if _info = "description" then return"Name: LF-3 \nDescription: This laser deals 175 damage\nPrice: 10,000 uridium"
			break;
			
			
		case "MP-1":
			if _info = "type" then return "gun";
			if _info = "damage" then return 125;
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 150000;
			if _info = "description" then return"Name: MP-1 \nDescription: This laser deals 125 damage\nPrice: 150,000 credits"
			break;
			
		
		case "B0-2":
			if _info = "type" then return "shield";
			if _info = "quantity" then return 10000;
			if _info = "absorb" then return 0.8;
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 10000;
			if _info = "description" then return"Name: BO-2 \nDescription: This generator provides 10,000 shield\nPrice: 10,000 uridium"
			break;
		
		
		case "B0-1":
			if _info = "type" then return "shield";
			if _info = "quantity" then return 8000;
			if _info = "absorb" then return 0.7;
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 256000;
			if _info = "description" then return"Name: BO-1 \nDescription: This generator provides 8,000 shield\nPrice: 256,000 credits"
			break;
			
			
		case "B0-0":
			if _info = "type" then return "shield";
			if _info = "quantity" then return 6000;
			if _info = "absorb" then return 0.6;
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 50000;
			if _info = "description" then return"Name: BO-0 \nDescription: This generator provides 6,000 shield\nPrice: 50,000 credits"
			break;
			
			
		case "SPD-3":
			if _info = "type" then return "generator";
			if _info = "quantity" then return 10;
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 2000;
			if _info = "description" then return"Name: SPD-3 \nDescription: This engine provides 10 speed\nPrice: 2,000 uridium"
			break;
		
		
		case "SPD-2":
			if _info = "type" then return "generator";
			if _info = "quantity" then return 7;
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 1000;
			if _info = "description" then return"Name: SPD-2 \nDescription: This generator provides 7 speed\nPrice: 1,000 uridium"
			break;
			
			
		case "SPD-1":
			if _info = "type" then return "generator";
			if _info = "quantity" then return 5;
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 25000;
			if _info = "description" then return"Name: SPD-1 \nDescription: This generator provides 5 speed\nPrice: 25,000 credits"
			break;
		
		#endregion

		/************************************************
		                DRONES
		*************************************************/
		#region
		case "flax":
		    switch _info
		        {
		        case "type": return "drone"; break;
		        case "numb_slot": return 1; break;
		        case "cost_type": return "credit"; break;
		        case "cost_qty":
		            switch lvl
		            {
		            case 1: return 100000; break;
		            case 2: return 200000 break;
		            case 3: return 400000 break;
		            case 4: return 800000 break;
		            case 5: return 1600000 break;
		            case 6: return 3200000 break;
		            case 7: return 6400000 break;
		            case 8: return 12800000 break;
		            }
				case "description": return"Name: Drone Flax \nDescription: This drone provides 1 slot\nPrice 1st: 100,000 credits\nPrice 2nd: 200,000 credits\nPrice 3rd: 400,000 credits\nPrice 4th: 800,000 credits\nPrice 5th: 1,600,000 credits\nPrice 6th: 3,200,000 credits\nPrice 7th: 6,400,000 credits\nPrice 8th: 12,800,000 credits";break;
		        break;
		        }
		    break;
    
		case "iris":
		    switch _info
		        {
		        case "type": return "drone"; break;
		        case "numb_slot": return 2; break;
		        case "cost_type": return "uridium"; break;
		        case "cost_qty":
		            switch lvl
		            {
		            case 1: return 15000; break;
		            case 2: return 24000 break;
		            case 3: return 42000 break;
		            case 4: return 60000 break;
		            case 5: return 84000 break;
		            case 6: return 96000 break;
		            case 7: return 126000 break;
		            case 8: return 200000 break;
		            }
		        break;
				case "description": return"Name: Drone Iris \nDescription: This drone provides 2 slots\nPrice 1st: 15,000 uridium\nPrice 2nd: 24,000 uridium\nPrice 3rd: 42,000 uridium\nPrice 4th: 60,000 uridium\nPrice 5th: 84,000 uridium\nPrice 6th: 96,000 uridium\nPrice 7th: 126,000 uridium\nPrice 8th: 200,000 uridium";break;
		        }
		    break;
		    case "apis":
		    switch _info
		        {
		        case "type": return "drone"; break;
		        case "numb_slot": return 2; break;
		        case "cost": return 1000000; break;
				case "description": return"Name: Drone Apis \nDescription: This drone provides 2 slots\nPrice: 30 drone's parts";break;
		        }
		    break;
		    case "zeus":
		    switch _info
		        {
		        case "type": return "drone"; break;
		        case "numb_slot": return 2; break;
		        case "cost": return 2000000; break;
				case "description": return"Name: Drone Zeus \nDescription: This drone provides 2 slots\nPrice: 50 drone's parts";break;
		        }
		    break; 
	
		case "havoc":
		    switch _info
		        {
		        case "name": return "HAVOC"; break;
		        case "cost": return 0; break;
		        case "type": return "droneDesign"; break;
		        //case "type": return "Drone_item"; break;
		        case "power": return 16000; break;
		        case "damage_part": return 80; break;
		        }
		    break;
    
		case "hercules":
		    switch _info
		        {
		        case "name": return "HERCULES"; break;        
		        case "cost": return 0; break;
		        case "type": return "droneDesign"; break;
		        case "power": return 16000; break;
		        case "damage_part": return 80; break;
		        }
		    break;  
		//Drone designs
		case "dnormal":
		    switch _info
		        {
		        case "type": return "ddesign"; break;
		        case "numb_slot": return 0; break;
		        case "cost":
		            switch lvl
		            {
		            case 1: return 0; break;
		            }
		        break;
		        }
		    break;
		case "dhavoc":
		    switch _info
		        {
		        case "type": return "ddesign"; break;
		        case "numb_slot": return 0; break;
		        case "cost":
		            switch lvl
		            {
		            case 1: return 0; break;
		            }
		        break;
		        }
		    break;
		case "dhercules":
		    switch _info
		        {
		        case "type": return "ddesign"; break;
		        case "numb_slot": return 0; break;
		        case "cost":
		            switch lvl
		            {
		            case 1: return 0; break;
		            }
		        break;
		        }  
		    break;
		#endregion
		
		/************************************************
		                GG
		*************************************************/
		#region
		case "alpha":
		    if _info = "total_parts" then return 34;
		    break;
			
		case "beta":
		    if _info = "total_parts" then return 48;
		    break;
			
		case "gamma":
		    if _info = "total_parts" then return 82;
		    break;
			
		case "delta":
		    if _info = "total_parts" then return 128;
		    break;
   
		#endregion
		
		/************************************************
		                SKILLTREE
		*************************************************/
		#region
		case "ship_hull_i":
		    switch _info
		    {
		        case "level_max": return 2; break;
		        case "description": return "Increase HP\nLevel 1: +10,000 HP\nLevel 2: +20,000 HP"; break;
		    }
		    break;
			
		case "ship_hull_ii":
		    switch _info
		    {
		        case "level_max": return 3; break;
		        case "description": return "Increase HP\nLevel 1: +15,000 HP\nLevel 2: +30,000 HP\nLevel 2: +45,000 HP"; break;
		    }
		    break;
			
		case "shield_engineering":
		    switch _info
		    {
		        case "level_max": return 5; break;
		        case "description": return "Increase shield amount\nLevel 1: +5%\nLevel 2: +10%\nLevel 3: +15%\nLevel 4: 20%\nLevel 5: +25%"; break;
		    }
		    break;
			
		case "engineering":
		    switch _info
		    {
		        case "level_max": return 5; break;
		        case "description": return "Increase ship repairing speed\nLevel 1: +5%\nLevel 2: +10%\nLevel 3: +15%\nLevel 4: 20%\nLevel 5: +25%"; break;
		    }
		    break;
			
		case "bounty_hunter_i":
		    switch _info
		    {
		        case "level_max": return 2; break;
		        case "description": return "Increase damage against players\nLevel 1: +2%\nLevel 2: +4%"; break;
		    }
		    break;
			
		case "bounty_hunter_ii":
		    switch _info
		    {
		        case "level_max": return 3; break;
		        case "description": return "Increase damage against players\nLevel 1: +3%\nLevel 2: +6%\nLevel 2: +9%"; break;
		    }
		    break;
			
		case "alien_hunter":
		    switch _info
		    {
		        case "level_max": return 5; break;
		        case "description": return "Increase damage on aliens\nLevel 1: +4%\nLevel 2: +8%\nLevel 3: +12%\nLevel 4: 16%\nLevel 5: +20%"; break;
		    }
		    break;
			
		case "greed":
		    switch _info
		    {
		        case "level_max": return 5; break;
		        case "description": return "Increase credit rewards\nLevel 1: +5%\nLevel 2: +10%\nLevel 3: +15%\nLevel 4: 20%\nLevel 5: +25%"; break;
		    }
		    break;
			
		case "luck_i":
		    switch _info
		    {
		        case "level_max": return 2; break;
		        case "description": return "Increase uridium rewards\nLevel 1: +2%\nLevel 2: +4%"; break;
		    }
		    break;
			
		case "luck_ii":
		    switch _info
		    {
		        case "level_max": return 3; break;
		        case "description": return "Increase uridium rewards\nLevel 1: +3%\nLevel 2: +6%\nLevel 2: +9%"; break;
		    }
		    break;
			
		case "cruelty_i":
		    switch _info
		    {
		        case "level_max": return 2; break;
		        case "description": return "Increase honor rewards\nLevel 1: +2%\nLevel 2: +4%"; break;
		    }
		    break;
			
		case "cruelty_ii":
		    switch _info
		    {
		        case "level_max": return 3; break;
		        case "description": return "Increase honor rewards\nLevel 1: +3%\nLevel 2: +6%\nLevel 2: +9%"; break;
		    }
		    break;
			
		case "evasive_i":
		    switch _info
		    {
		        case "level_max": return 2; break;
		        case "description": return "Reduce probability of being hit by lasers\nLevel 1: -2%\nLevel 2: -4%"; break;
		    }
		    break;
			
		case "evasive_ii":
		    switch _info
		    {
		        case "level_max": return 3; break;
		        case "description": return "Reduce probability of being hit by lasers\nLevel 1: -3%\nLevel 2: -6%\nLevel 3: -9%"; break;
		    }
		    break;
			
		case "electro_optics":
		    switch _info
		    {
		        case "level_max": return 5; break;
		        case "description": return "Reduce probability of lasers MISS\nLevel 1: -3%\nLevel 2: -6%\nLevel 3: -9%\nLevel 4: 12%\nLevel 5: 15%"; break;
		    }
		    break;
			
		case "shield_mechanics":
		    switch _info
		    {
		        case "level_max": return 5; break;
		        case "description": return "Increase shield absorbtion\nLevel 1: +2%\nLevel 2: +4%\nLevel 3: +6%\nLevel 4: +8%\nLevel 5: +10%"; break;
		    }
		    break;
			
		case "smb_upgrade":
		    switch _info
		    {
		        case "level_max": return 5; break;
		        case "description": return "Increase SMB damage\nLevel 1: +5,000\nLevel 2: +10,000\nLevel 3: +15,000\nLevel 4: 20,000\nLevel 5: +25,000"; break;
		    }
		    break;
			
		case "ish_upgrade":
		    switch _info
		    {
		        case "level_max": return 5; break;
		        case "description": return "Increase ISH duration\nLevel 1: +5%\nLevel 2: +10%\nLevel 3: +15%\nLevel 4: 20%\nLevel 5: +25%"; break;
		    }
		    break;
			
		case "shieldbackup_upgrade":
		    switch _info
		    {
		        case "level_max": return 5; break;
		        case "description": return "Increase Shieldbackup amount\nLevel 1: +5%\nLevel 2: +10%\nLevel 3: +15%\nLevel 4: 20%\nLevel 5: +25%"; break;
		    }
		    break;
			
		case "warrep_upgrade":
		    switch _info
		    {
		        case "level_max": return 5; break;
		        case "description": return "Increase warrep repair speed\nLevel 1: +5%\nLevel 2: +10%\nLevel 3: +15%\nLevel 4: 20%\nLevel 5: +25%"; break;
		    }
		    break;
		#endregion

		/************************************************
		                NICKNAMES
		*************************************************/
		#region
		case"give_nick":
		switch _info
		{
			case 0: return "IceMan_TheLegend"; break;
			case 1: return "GroOver"; break;
			case 2: return "Punisher"; break;
			case 3: return "Scary_Movie<3"; break;
			case 4: return "LookMom!NoHands!"; break;
			case 5: return "kringspiermusketier"; break;
			case 6: return "[EMO] IcuTMyselF"; break;
			case 7: return "[NOOB] Ice.Shock"; break;
			case 8: return "(=DaOwner=)"; break;
			case 9: return "UltraNoobie1995"; break;
			case 10: return "[AVC] Caliqula"; break;
			case 11: return "[H*B] Deep_Freeze_CZ"; break;
			case 12: return "Olympus"; break;
			case 13: return "[MYB] Raiser"; break;
			case 14: return "[MYB] Martinos09"; break;
			case 15: return "[MYB] Galax"; break;
			case 16: return "[MYB] -=BJORNO=-"; break;
			case 17: return "[4YOU] WOLLIE"; break;
			case 18: return "[-_-*] Optimus_Prime"; break;
			case 19: return "[-_-*] Bumblebee"; break;
			case 20: return "[UEF] King_Kong"; break;
			case 21: return "[MYB] Luckystar"; break;
			case 22: return "[AVC] Killer_Of_Dark1995"; break;
			case 23: return "[MYB] The_Fallen_one"; break;
			case 24: return "[MYB] Fallen_Go_Insane"; break;
			case 25: return "[LEAD] Mopsya"; break;
			case 26: return "[MEM] MegatroN"; break;
			case 27: return "[TPA] littlelady63"; break;
			case 28: return "[MYB] Darkpeter66"; break;
			case 29: return "[MYB] Guppy66"; break;
			case 30: return "[MYB] Luckysdarkpeter"; break;
			case 31: return "[MLK] Mr.TC"; break;
			case 32: return "[MsK] DoDo[TURK]"; break;
			case 33: return "[MYB] Kartya"; break;
			case 34: return "[UEF] Kal_El"; break;
			case 35: return "[UEF] Garuda"; break;
			case 36: return "[UEF] Wardestroy"; break;
			case 37: return "[NU$] No_One_Can_Stop_NU$"; break;
			case 38: return "[UEF] No_One_Can_stop_God"; break;
			case 39: return "Try_To_Stop_Me"; break;
			case 40: return "[MYB] Gumby"; break;
			case 41: return "[WOLF] Unstoppable"; break;
			case 42: return "[WOLF] Lupus"; break;
			case 43: return "[HERO] =DANGER="; break;
			case 44: return "[HERO] =SPARK="; break;
			case 45: return "[HERO] =REVENGE="; break;
			case 46: return "[HERO] =DESTROYER="; break;
			case 47: return "[=X=] R4PT0R"; break;
			case 48: return "[=X=] FENIX"; break;
			case 49: return "[=X=] M4$T€R"; break;
			case 50: return "[=X=] HUNTER"; break;
			case 51: return "givememoney"; break;
			case 52: return "imanalien"; break;
			case 53: return "givemeaship"; break;
			case 54: return "kringspiermusketier"; break;
			case 55: return "imadick"; break;
			case 56: return "kerkava"; break;
			case 57: return "autolock"; break;
			case 58: return "merkava"; break;
			case 59: return "anaalgeneraal"; break;
			case 60: return "aarshaarwosterlaar"; break;
			case 61: return "[OSB] Kn^p_"
			case 62: return "int5_POWER!"; break;
			case 63: return "GE2 FTW!"; break;
			case 64: return "dragonborn"; break;
			case 65: return "Dovahkiin"; break;
			case 66: return "T.R.A.S.H.M.E.N"; break;
			case 67: return "SexyAndIKnowIt"; break;
			case 68: return "Sexy_Nasty_Sexy"; break;
			case 69: return "[sexy].GUN"; break;
			case 70: return "[2-1] I.AM.FURIOUS"
			case 71: return "Turbo_Toeter"; break;
			case 72: return "[GER] SasukeGewalt [GER]"; break;
			case 73: return "[ITA] Madatek [ITA]"; break;
			case 74: return "[TUR] Akin5000 [TUR]"; break;

			default: return "T.R.A.S.H.M.E.N"; break;
		} break;

		case"give_nick_admin":
		switch _info
		{
			case 1: return "[ADMIN] Hugo95=)"; break;
			case 2: return "[ADMIN] Rider735"; break;
			case 3: return "[ADMIN] Bla365"; break;
			case 4: return "[ADMIN] Manulaiko"; break;
			case 5: return "[ADMIN] fuso98"; break;
			case 7: return "[ADMIN] Predator"; break;

			default: return "[ADMIN] Administrator"; break;
		} break;
		#endregion

		default: show_debug_message("error in script info for " + item + " " + _info); break;
	}
}