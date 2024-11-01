function info_weapons(_weapon,_info,_level="")
{

	var goliath_health = 156000;
	var vengeance_health = 128000;
		
	switch _weapon
	{
		/************************************************
		                WEAPONS
		*************************************************/
		#region
		
		//LF3
		case "LF-3_1":
			if _info = "weapon_name" then return "LF-3";
			if _info = "level" then return 1;
			if _info = "type" then return "Laser";
   		    if _info = "damage" then return 1100;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "LF-3_2":
			if _info = "weapon_name" then return "LF-3";
			if _info = "level" then return 2;
			if _info = "type" then return "Laser";
   		    if _info = "damage" then return 1500;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "LF-3_3":
			if _info = "weapon_name" then return "LF-3";
			if _info = "level" then return 3;
			if _info = "type" then return "Laser";
   		    if _info = "damage" then return 1900;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "LF-3_4":
			if _info = "weapon_name" then return "LF-3";
			if _info = "level" then return 4;
			if _info = "type" then return "Laser";
   		    if _info = "damage" then return 2300;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
		
		case "LF-3_5":
			if _info = "weapon_name" then return "LF-3";
			if _info = "level" then return 5;
			if _info = "type" then return "Laser";
   		    if _info = "damage" then return 2700;
			if _info = "cost1" then return [5,3];
			if _info = "cost2" then return [2,0];
			if _info = "cost3" then return [1,2];
			break;		
		
		//LF4
		case "LF-4_1":
			if _info = "weapon_name" then return "LF-4";
			if _info = "level" then return 1;
			if _info = "type" then return "Laser";
   		    if _info = "damage" then return 1400;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "LF-4_2":
			if _info = "weapon_name" then return "LF-4";
			if _info = "level" then return 2;
			if _info = "type" then return "Laser";
   		    if _info = "damage" then return 1800;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "LF-4_3":
			if _info = "weapon_name" then return "LF-4";
			if _info = "level" then return 3;
			if _info = "type" then return "Laser";
   		    if _info = "damage" then return 2200;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "LF-4_4":
			if _info = "weapon_name" then return "LF-4";
			if _info = "level" then return 4;
			if _info = "type" then return "Laser";
   		    if _info = "damage" then return 2600;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
		
		case "LF-4_5":
			if _info = "weapon_name" then return "LF-4";
			if _info = "level" then return 5;
			if _info = "type" then return "Laser";
   		    if _info = "damage" then return 3000;
			if _info = "cost1" then return [5,3];
			if _info = "cost2" then return [2,0];
			if _info = "cost3" then return [1,2];
			break;
		
		
		
		//HST-1
		case "HST-1_1":
			if _info = "weapon_name" then return "HST-1";
			if _info = "level" then return 1;
			if _info = "type" then return "Gun";
   		    if _info = "damage" then return 900;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "HST-1_2":
			if _info = "weapon_name" then return "HST-1";
			if _info = "level" then return 2;
			if _info = "type" then return "Gun";
   		    if _info = "damage" then return 1300;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "HST-1_3":
			if _info = "weapon_name" then return "HST-1";
			if _info = "level" then return 3;
			if _info = "type" then return "Gun";
   		    if _info = "damage" then return 1700;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "HST-1_4":
			if _info = "weapon_name" then return "HST-1";
			if _info = "level" then return 4;
			if _info = "type" then return "Gun";
   		    if _info = "damage" then return 2100;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "HST-1_5":
			if _info = "weapon_name" then return "HST-1";
			if _info = "level" then return 5;
			if _info = "type" then return "Gun";
   		    if _info = "damage" then return 2500;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		
		//HST-2
		case "HST-2_1":
			if _info = "weapon_name" then return "HST-2";
			if _info = "level" then return 1;
			if _info = "type" then return "Gun";
   		    if _info = "damage" then return 1400;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "HST-2_2":
			if _info = "weapon_name" then return "HST-2";
			if _info = "level" then return 2;
			if _info = "type" then return "Gun";
   		    if _info = "damage" then return 1800;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "HST-2_3":
			if _info = "weapon_name" then return "HST-2";
			if _info = "level" then return 3;
			if _info = "type" then return "Gun";
   		    if _info = "damage" then return 2200;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "HST-2_4":
			if _info = "weapon_name" then return "HST-2";
			if _info = "level" then return 4;
			if _info = "type" then return "Gun";
   		    if _info = "damage" then return 2600;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
		case "HST-2_5":
			if _info = "weapon_name" then return "HST-2";
			if _info = "level" then return 5;
			if _info = "type" then return "Gun";
   		    if _info = "damage" then return 3000;
			if _info = "cost1" then return [5,100];
			if _info = "cost2" then return [3,120];
			if _info = "cost3" then return [1,110];
			break;
			
	}
		#endregion
    
}