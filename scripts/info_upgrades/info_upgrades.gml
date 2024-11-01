/// @description
function infos_upgrades(item, level, info="")
{
	//cost to unlock level n of item
	//if level = 0 it's for buying in the shop else it's for upgrading
	
	/************************************************
		                CARGO
	*************************************************/
	/*
	#region
	if item = "cargo"
	{
		if level = 0
		{
			if info = "cost1_type" then return 2
			if info = "cost1_amount" then return 2
		}
	}
	#endregion
	
	*/
	
	
	
	
	
	
switch item
{
/************************************************
                CARGO
*************************************************/
#region
		case "cargo":
		{
			switch level
			{
				case 1: 
				{
					switch info
					{
						case "amount": return 0; break;
						case "upgrade": return []; break;
					}
					break;
				}
				
				case 2: 
				{
					switch info
					{
						case "amount": return 10; break;
						case "upgrade": return [["endurium", 10],["prometium",15]]; break;
					}
					break;
				}
				
				case 3: 
				{
					switch info
					{
						case "amount": return 20; break;
						case "upgrade": return [["endurium", 30],["prometium",25],["seprom",6]]; break;
					}
					break;
				}
			}
			break;
		}
#endregion



/************************************************
                STORAGE
*************************************************/
#region
		case "storage":
		{
			switch level
			{
				case 1: 
				{
					switch info
					{
						case "amount": return 0; break;
						case "upgrade": return []; break;
					}
					break;
				}
				
				case 2: 
				{
					switch info
					{
						case "amount": return 100; break;
						case "upgrade": return [["endurium", 10],["prometium",15]]; break;
					}
					break;
				}
				
				case 3: 
				{
					switch info
					{
						case "amount": return 200; break;
						case "upgrade": return [["endurium", 30],["prometium",25],["seprom",6]]; break;
					}
					break;
				}
			}
			break;
		}
#endregion

	}
}