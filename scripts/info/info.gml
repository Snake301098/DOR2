function info(item,_info,lvl="")
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
	
		case "shieldbackup":
		    if _info="cost" then return 500;
		    break;
    
		case "warrep":
		    if _info="cost" then return 500;
		    break;   
	
		//---------------- Boosters --------------------
		case "boosters": return 15000;    

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
		        case "cost":
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
		        case "cost":
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
	
		case "HAVOC":
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
    
		case "HERCULES":
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