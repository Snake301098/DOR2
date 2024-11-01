function info_shiptypes(_shiptype,_info,_level=0)
{

	var goliath_health = 156000;
	var vengeance_health = 128000;
	
		
	switch _shiptype
	{
		/************************************************
		                SHIPS
		*************************************************/
		#region
		//BAD SHIPS
		case "phoenix":
		    if _info = "speed"
			{
				switch _level
				{
					case 0: return 8; break;
					case 1: return 8; break;
				}
			}
			
			if _info = "gun_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "laser_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "module_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "health"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "cargo" then return 230;
			
			if _info = "cost1"
			{
				switch _level
				{
					case 0: return [1,100]; break; //[cost_type;cost_qty]
					case 1: return [1,120]; break;
				}
			}
			
			if _info = "cost2"
			{
				switch _level
				{
					case 0: return [3,200]; break; //[cost_type;cost_qty]
					case 1: return [3,220]; break;
				}
			}
			
			if _info = "cost3"
			{
				switch _level
				{
					case 0: return [4,100]; break; //[cost_type;cost_qty]
					case 1: return [4,120]; break;
				}
		    }
		    break;
	
		case "nostromo":
		if _info = "speed"
			{
				switch _level
				{
					case 0: return 8; break;
					case 1: return 8; break;
				}
			}
			
			if _info = "gun_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "laser_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "module_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "health"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "cargo" then return 230;
			
			if _info = "cost1"
			{
				switch _level
				{
					case 0: return [1,100]; break; //[cost_type;cost_qty]
					case 1: return [1,120]; break;
				}
			}
			
			if _info = "cost2"
			{
				switch _level
				{
					case 0: return [3,200]; break; //[cost_type;cost_qty]
					case 1: return [3,220]; break;
				}
			}
			
			if _info = "cost3"
			{
				switch _level
				{
					case 0: return [4,100]; break; //[cost_type;cost_qty]
					case 1: return [4,120]; break;
				}
		    }
		    break;
	
		case "leonov":
		    if _info = "speed"
			{
				switch _level
				{
					case 0: return 8; break;
					case 1: return 8; break;
				}
			}
			
			if _info = "gun_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "laser_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "module_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "health"
			{
				switch _level
				{
					case 0: return 150000; break;
					case 1: return 150000; break;
				}
			}
			
			if _info = "cargo" then return 230;
			
			if _info = "cost1"
			{
				switch _level
				{
					case 0: return [1,100]; break; //[cost_type;cost_qty]
					case 1: return [1,120]; break;
				}
			}
			
			if _info = "cost2"
			{
				switch _level
				{
					case 0: return [3,200]; break; //[cost_type;cost_qty]
					case 1: return [3,220]; break;
				}
			}
			
			if _info = "cost3"
			{
				switch _level
				{
					case 0: return [4,100]; break; //[cost_type;cost_qty]
					case 1: return [4,120]; break;
				}
		    }
		    break;
	
		case "bigboy":
		    if _info = "speed"
			{
				switch _level
				{
					case 0: return 8; break;
					case 1: return 8; break;
				}
			}
			
			if _info = "gun_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "laser_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "module_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "health"
			{
				switch _level
				{
					case 0: return 200000; break;
					case 1: return 200000; break;
				}
			}
			
			if _info = "cargo" then return 230;
			
			if _info = "cost1"
			{
				switch _level
				{
					case 0: return [1,100]; break; //[cost_type;cost_qty]
					case 1: return [1,120]; break;
				}
			}
			
			if _info = "cost2"
			{
				switch _level
				{
					case 0: return [3,200]; break; //[cost_type;cost_qty]
					case 1: return [3,220]; break;
				}
			}
			
			if _info = "cost3"
			{
				switch _level
				{
					case 0: return [4,100]; break; //[cost_type;cost_qty]
					case 1: return [4,120]; break;
				}
		    }
		    break;
	
		//VENGEANCE
		case "vengeance":
		    if _info = "speed"
			{
				switch _level
				{
					case 0: return 10; break;
					case 1: return 10; break;
				}
			}
			
			if _info = "gun_slots"
			{
				switch _level
				{
					case 0: return 5; break;
					case 1: return 5; break;
				}
			}
			
			if _info = "laser_slots"
			{
				switch _level
				{
					case 0: return 5; break;
					case 1: return 5; break;
				}
			}
			
			if _info = "module_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "health"
			{
				switch _level
				{
					case 0: return vengeance_health; break;
					case 1: return vengeance_health; break;
				}
			}
			
			if _info = "cargo" then return 230;
			
			if _info = "cost1"
			{
				switch _level
				{
					case 0: return [1,100]; break; //[cost_type;cost_qty]
					case 1: return [1,120]; break;
				}
			}
			
			if _info = "cost2"
			{
				switch _level
				{
					case 0: return [3,200]; break; //[cost_type;cost_qty]
					case 1: return [3,220]; break;
				}
			}
			
			if _info = "cost3"
			{
				switch _level
				{
					case 0: return [4,100]; break; //[cost_type;cost_qty]
					case 1: return [4,120]; break;
				}
		    }
		    break;
	
		//GOLIATH
		case "goliath":
		    if _info = "speed"
			{
				switch _level
				{
					case 0: return 10; break;
					case 1: return 10; break;
				}
			}
			
			if _info = "gun_slots"
			{
				switch _level
				{
					case 0: return 5; break;
					case 1: return 5; break;
				}
			}
			
			if _info = "laser_slots"
			{
				switch _level
				{
					case 0: return 5; break;
					case 1: return 5; break;
				}
			}
			
			if _info = "module_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "health"
			{
				switch _level
				{
					case 0: return goliath_health; break;
					case 1: return goliath_health; break;
				}
			}
			
			if _info = "cargo" then return 230;
			
			if _info = "cost1"
			{
				switch _level
				{
					case 0: return [1,100]; break; //[cost_type;cost_qty]
					case 1: return [1,120]; break;
				}
			}
			
			if _info = "cost2"
			{
				switch _level
				{
					case 0: return [3,200]; break; //[cost_type;cost_qty]
					case 1: return [3,220]; break;
				}
			}
			
			if _info = "cost3"
			{
				switch _level
				{
					case 0: return [4,100]; break; //[cost_type;cost_qty]
					case 1: return [4,120]; break;
				}
		    }
		    break;
	          
	
		//NEWSHIPS
		case "spearhead":
		    if _info = "speed"
			{
				switch _level
				{
					case 0: return 10; break;
					case 1: return 10; break;
				}
			}
			
			if _info = "gun_slots"
			{
				switch _level
				{
					case 0: return 5; break;
					case 1: return 5; break;
				}
			}
			
			if _info = "laser_slots"
			{
				switch _level
				{
					case 0: return 5; break;
					case 1: return 5; break;
				}
			}
			
			if _info = "module_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "health"
			{
				switch _level
				{
					case 0: return 180000; break;
					case 1: return 180000; break;
				}
			}
			
			if _info = "cargo" then return 230;
			
			if _info = "cost1"
			{
				switch _level
				{
					case 0: return [1,100]; break; //[cost_type;cost_qty]
					case 1: return [1,120]; break;
				}
			}
			
			if _info = "cost2"
			{
				switch _level
				{
					case 0: return [3,200]; break; //[cost_type;cost_qty]
					case 1: return [3,220]; break;
				}
			}
			
			if _info = "cost3"
			{
				switch _level
				{
					case 0: return [4,100]; break; //[cost_type;cost_qty]
					case 1: return [4,120]; break;
				}
		    }
		    break;
	
		case "aegis":
		    if _info = "speed"
			{
				switch _level
				{
					case 0: return 10; break;
					case 1: return 10; break;
				}
			}
			
			if _info = "gun_slots"
			{
				switch _level
				{
					case 0: return 5; break;
					case 1: return 5; break;
				}
			}
			
			if _info = "laser_slots"
			{
				switch _level
				{
					case 0: return 5; break;
					case 1: return 5; break;
				}
			}
			
			if _info = "module_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "health"
			{
				switch _level
				{
					case 0: return 160000; break;
					case 1: return 160000; break;
				}
			}
			
			if _info = "cargo" then return 230;
			
			if _info = "cost1"
			{
				switch _level
				{
					case 0: return [1,100]; break; //[cost_type;cost_qty]
					case 1: return [1,120]; break;
				}
			}
			
			if _info = "cost2"
			{
				switch _level
				{
					case 0: return [3,200]; break; //[cost_type;cost_qty]
					case 1: return [3,220]; break;
				}
			}
			
			if _info = "cost3"
			{
				switch _level
				{
					case 0: return [4,100]; break; //[cost_type;cost_qty]
					case 1: return [4,120]; break;
				}
		    }
		    break;
	
		case "citadel":
		    if _info = "speed"
			{
				switch _level
				{
					case 0: return 10; break;
					case 1: return 10; break;
				}
			}
			
			if _info = "gun_slots"
			{
				switch _level
				{
					case 0: return 5; break;
					case 1: return 5; break;
				}
			}
			
			if _info = "laser_slots"
			{
				switch _level
				{
					case 0: return 5; break;
					case 1: return 5; break;
				}
			}
			
			if _info = "module_slots"
			{
				switch _level
				{
					case 0: return 3; break;
					case 1: return 3; break;
				}
			}
			
			if _info = "health"
			{
				switch _level
				{
					case 0: return 200000; break;
					case 1: return 200000; break;
				}
			}
			
			if _info = "cargo" then return 230;
			
			if _info = "cost1"
			{
				switch _level
				{
					case 0: return [1,100]; break; //[cost_type;cost_qty]
					case 1: return [1,120]; break;
				}
			}
			
			if _info = "cost2"
			{
				switch _level
				{
					case 0: return [3,200]; break; //[cost_type;cost_qty]
					case 1: return [3,220]; break;
				}
			}
			
			if _info = "cost3"
			{
				switch _level
				{
					case 0: return [4,100]; break; //[cost_type;cost_qty]
					case 1: return [4,120]; break;
				}
		    }
		    break;                                                                  
		#endregion
	}
}