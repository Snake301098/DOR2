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
		    }
		    break;
			
		case "x2":
		    switch _info
		    {
		        case "cost_qty": return 2; 
		        case "cost_type": return "credit"; 
		    }
		    break;
			
		case "x3":
		    switch _info
		    {
		        case "cost_qty": return 1; 
		        case "cost_type": return "uridium"; 
		    }
		    break;
			
		case "x4":
		    switch _info
		    {
		        case "cost_qty": return 5; 
		        case "cost_type": return "uridium"; 
		    }
		    break;
			
		case "x5":
		    switch _info
		    {
		        case "cost_qty": return 5; 
		        case "cost_type": return "uridium"; 
		    }
		    break;
			
		case "x6":
		    switch _info
		    {
		        case "cost_qty": return 2; 
		        case "cost_type": return "uridium"; 
		    }
		    break;
	
		case "shieldbackup":
		    switch _info
		    {
		        case "cost_qty": return 500; 
		        case "cost_type": return "uridium"; 
		    }
		    break;
    
		case "warrep":
		    switch _info
		    {
		        case "cost_qty": return 500; 
		        case "cost_type": return "uridium"; 
		    }
		    break;
			
			
		case "ish":
		    switch _info
		    {
		        case "cost_qty": return 500; 
		        case "cost_type": return "uridium"; 
		    }
		    break;
			
		case "smb":
		    switch _info
		    {
		        case "cost_qty": return 500; 
		        case "cost_type": return "uridium"; 
		    }
		    break;
			
		case "emp":
		    switch _info
		    {
		        case "cost_qty": return 500; 
		        case "cost_type": return "uridium"; 
		    }
		    break;
	
		//---------------- Boosters --------------------
		case "boosters": return 15000;    

		#endregion
		
		/************************************************
		                SHIPS
		*************************************************/
		#region

		case "phoenix":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return phoenix_spr;
			if _info = "ship_type" then return "phoenix";
			break;
			
		case "nostromo":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return nostromo_spr;
			if _info = "ship_type" then return "nostromo";
			break;
			
		case "leonov":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return leonov_spr;
			if _info = "ship_type" then return "leonov";
			break;
			
		case "bigboy":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return bigboy_spr;
			if _info = "ship_type" then return "bigboy";
			break;
			
		case "vengeance":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return vengeance_spr;
			if _info = "ship_type" then return "vengeance";
			break;
			
		case "adept":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return adept_spr;
			if _info = "ship_type" then return "vengeance";
			break;
			
		case "avenger":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return avenger_spr;
			if _info = "ship_type" then return "vengeance";
			break;
			
		case "lightning":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return lightning_spr;
			if _info = "ship_type" then return "vengeance";
			break;
			
		case "revenge":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return revenge_spr;
			if _info = "ship_type" then return "vengeance";
			break;
			
		case "corsair":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return corsair_spr;
			if _info = "ship_type" then return "vengeance";
			break;
			
		case "goliath":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return goliath_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "bastion":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return bastion_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "enforcer":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return enforcer_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "centaur":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return centaur_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "exalted":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return exalted_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "goal":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return goal_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "kick":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return kick_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "referee":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return referee_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "saturn":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return saturn_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "veteran":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return veteran_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "diminisher":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return diminisher_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "sentinel":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return sentinel_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "solace":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return solace_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "spectrum":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return spectrum_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "venom":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return venom_spr;
			if _info = "ship_type" then return "goliath";
			break;
			
		case "spearhead":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return spearhead_spr;
			if _info = "ship_type" then return "spearhead";
			break;
			
		case "aegis":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return aegis_spr;
			if _info = "ship_type" then return "aegis";
			break;
			
		case "citadel":
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 256000;
			if _info = "sprite" then return citadel_spr;
			if _info = "ship_type" then return "citadel";
			break;
			
		#endregion
		
		/************************************************
		                WEAPONS
		*************************************************/
		#region
		
		case "LF-4":
			if _info = "type" then return "gun";
			if _info = "damage" then return 200;
			break;
			
			
		case "LF-3":
			if _info = "type" then return "gun";
			if _info = "damage" then return 175;
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 10000;
			break;
			
			
		case "MP-1":
			if _info = "type" then return "gun";
			if _info = "damage" then return 125;
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 150000;
			break;
			
		
		case "B0-2":
			if _info = "type" then return "shield";
			if _info = "quantity" then return 10000;
			if _info = "absorb" then return 0.8;
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 10000;
			break;
		
		
		case "B0-1":
			if _info = "type" then return "shield";
			if _info = "quantity" then return 8000;
			if _info = "absorb" then return 0.7;
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 256000;
			break;
			
			
		case "B0-0":
			if _info = "type" then return "shield";
			if _info = "quantity" then return 6000;
			if _info = "absorb" then return 0.6;
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 50000;
			break;
			
			
		case "SPD-3":
			if _info = "type" then return "generator";
			if _info = "quantity" then return 10;
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 2000;
			break;
		
		
		case "SPD-2":
			if _info = "type" then return "generator";
			if _info = "quantity" then return 7;
			if _info = "cost_type" then return "uridium";
			if _info = "cost_qty" then return 1000;
			break;
			
			
		case "SPD-1":
			if _info = "type" then return "generator";
			if _info = "quantity" then return 5;
			if _info = "cost_type" then return "credit";
			if _info = "cost_qty" then return 25000;
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
		            case 1: return 2000; break;
		            case 2: return 4000 break;
		            case 3: return 6000 break;
		            case 4: return 10000 break;
		            case 5: return 15000 break;
		            case 6: return 22000 break;
		            case 7: return 30000 break;
		            case 8: return 40000 break;
		            }
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
		        }
		    break;
		    case "apis":
		    switch _info
		        {
		        case "type": return "drone"; break;
		        case "numb_slot": return 2; break;
		        case "cost": return 1000000; break;
		        }
		    break;
		    case "zeus":
		    switch _info
		        {
		        case "type": return "drone"; break;
		        case "numb_slot": return 2; break;
		        case "cost": return 2000000; break;
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
		        case "description": return "qzds"; break;
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