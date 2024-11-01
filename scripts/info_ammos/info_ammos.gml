function info_ammos(_ammo,_info,_level="")
{
		
	switch _ammo
	{
		/************************************************
		                AMMOS
		*************************************************/
		#region
		
		//PREMIUM LASERS
		case "premium_lasers":
			if _info = "ammo_name" then return "LF+ (x100)";
			if _info = "level" then return 1;
			if _info = "type" then return "Ammos";
   		    if _info = "bonus" then return 1.2;
   		    if _info = "base_quantity" then return 100;
			if _info = "cost1" then return [4,10];
			if _info = "cost2" then return [3,10];
			if _info = "cost3" then return [1,10];
			break;
			
			
	}
		#endregion
    
}