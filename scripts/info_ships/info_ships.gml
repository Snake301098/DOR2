function info_ships(_ship,_info,lvl=0)
{

	var goliath_health = 156000;
	var vengeance_health = 128000;
	
		
	switch _ship
	{
		/************************************************
		                SHIPS
		*************************************************/
		#region
		//BAD SHIPS
		case "phoenix":
		    switch _info 
		        {
				case "ship_class": return "other"; break;
		        case "speed": return 220; break;
		        case "gun_slots": return 3; break;
		        case "generator_slots": return 5; break;
		        case "engine_slots": return 7; break;
		        case "health": return 6000; break;
		        case "cost": return 0; break;
		        case "type": return "ship"; break;
		        }
		    break;
	
		case "nostromo":
		    switch _info 
		        {
				case "ship_class": return "other"; break;
		        case "speed": return 220; break;
		        case "gun_slots": return 5; break;
		        case "generator_slots": return 7; break;
		        case "engine_slots": return 8; break;
		        case "health": return 64000; break;
		        case "cost1": return [2,150]; break;
		        case "cost2": return [5,115]; break;
		        case "cost3": return [7,50]; break;
		        case "cost": return 75000; break;
		        case "type": return "ship"; break;
		        }
		    break;
	
		case "leonov":
		    switch _info 
		        {
				case "ship_class": return "other"; break;
		        case "speed": return 280; break;
		        case "gun_slots": return 14; break;
		        case "generator_slots": return 8; break;
		        case "engine_slots": return 13; break;
		        case "health": return 150000; break;
		        case "cost": return 15000; break;
		        case "type": return "ship"; break;
		        }
		    break;
	
		case "bigboy":
		    switch _info 
		        {
				case "ship_class": return "other"; break;
		        case "speed": return 200; break;
		        case "gun_slots": return 10; break;
		        case "generator_slots": return 10; break;
		        case "engine_slots": return 8; break;
		        case "health": return 128000; break;
		        case "cost": return 200000; break;
		        case "type": return "ship"; break;
		        }
		    break;
	
		//VENGEANCE
		case "vengeance":
		    switch _info 
		        {
				case "ship_class": return "vengeance"; break;
		        case "speed": return 380; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 10; break;
		        case "engine_slots": return 15; break;
		        case "health": return vengeance_health; break;
		        case "cost1": return [2,250]; break;
		        case "cost2": return [4,180]; break;
		        case "cost3": return [5,85]; break;
		        case "cost": return 35000; break;
		        case "type": return "ship"; break;
		        }
		    break; 
	
		case "avenger":
		    switch _info 
		        {
				case "ship_class": return "vengeance"; break;
		        case "speed": return 10; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 10; break;
		        case "engine_slots": return 15; break;
		        case "health": return vengeance_health; break;
		        case "cost": return 100000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "revenge":
		    switch _info 
		        {
				case "ship_class": return "vengeance"; break;
		        case "speed": return 10; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 10; break;
		        case "engine_slots": return 15; break;
		        case "health": return vengeance_health; break;
		        case "cost": return 100000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "adept":
		    switch _info 
		        {
				case "ship_class": return "vengeance"; break;
		        case "speed": return 10; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 10; break;
		        case "engine_slots": return 15; break;
		        case "health": return vengeance_health; break;
		        case "cost": return 100000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break; 
	
		case "corsair":
		    switch _info 
		        {
				case "ship_class": return "vengeance"; break;
		        case "speed": return 10; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 10; break;
		        case "engine_slots": return 15; break;
		        case "health": return vengeance_health; break;
		        case "cost": return 100000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;     
	
		case "lightning":
		    switch _info 
		        {
				case "ship_class": return "vengeance"; break;
		        case "speed": return 10; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 10; break;
		        case "engine_slots": return 15; break;
		        case "health": return vengeance_health; break;
		        case "cost": return 250000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;   
	
		//GOLIATH
		case "goliath":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 80000; break;
		        case "type": return "ship"; break;
		        }
		    break;
	
		case "bastion":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 100000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "enforcer":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 100000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "venom":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 250000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "diminisher":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 250000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "spectrum":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 250000; break;
		        case "cargo": return 20; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "solace":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 250000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
		case "sentinel":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 250000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break; 
	
		case "centaur":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 100000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "saturn":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 300000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "referee":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 300000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "goal":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 300000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "kick":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 300000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;   
	
		case "veteran":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 100000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;
	
		case "exalted":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 15; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return goliath_health; break;
		        case "cost": return 100000; break;
		        case "type": return "shipDesign"; break;
		        }
		    break;           
	
		//NEWSHIPS
		case "spearhead":
		    switch _info 
		        {
				case "ship_class": return "other"; break;
		        case "speed": return 12; break;
		        case "gun_slots": return 12; break;
		        case "generator_slots": return 12; break;
		        case "engine_slots": return 12; break;
		        case "health": return 180000; break;
		        case "cost": return 165000; break;
		        case "type": return "ship"; break;
		        }
		    break;
	
		case "aegis":
		    switch _info 
		        {
				case "ship_class": return "aegis"; break;
		        case "speed": return 3; break;
		        case "gun_slots": return 10; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 12; break;
		        case "health": return 160000; break;
		        case "cost": return 375000; break;
		        case "type": return "ship"; break;
		        }
		    break;
	
		case "citadel":
		    switch _info 
		        {
				case "ship_class": return "citadel"; break;
		        case "speed": return 2; break;
		        case "gun_slots": return 8; break;
		        case "generator_slots": return 15; break;
		        case "engine_slots": return 10; break;
		        case "health": return 200000; break;
		        case "cost": return 500000; break;
		        case "type": return "ship"; break;
		        }
		    break;        
	
		case "admin":
		    switch _info 
		        {
				case "ship_class": return "goliath"; break;
		        case "speed": return 25; break;
		        case "gun_slots": return 25; break;
		        case "generator_slots": return 25; break;
		        case "engine_slots": return 15; break;
		        case "health": return 1000000; break;
		        case "cost": return 200000; break;
		        case "type": return "ship"; break;
		        }
		    break;                                                                
		#endregion
	}
}