/// @description
function save_hangar(hangar_nbr)
{
	//ini_open("Hangar" + string(hangar_nbr) + ".sav");
	ini_open("newSave.sav");
	
	//ADD SAVE IN THE CURRENT FILE
	var _hangar_string;
	//ini_open("hangar"+string(hangar_nbr)+".sav");
	
	
	//HANGAR + DRONES
	_hangar_string = "Hangar" + string(hangar_nbr);
	ini_write_string(_hangar_string,"ship",gamer.ship_name);
	ini_write_real(_hangar_string,"ship_level",global.ship_level);



	//Gun
	for(i=1; i<=20; i+=1)
	{
		//C1
		if i < array_length(gamer.GunC1)
		{
			ini_write_string(_hangar_string,"gun"+string(i)+"C1",gamer.GunC1[i]);
		}
		else
		{
			ini_write_string(_hangar_string,"gun"+string(i)+"C1","");
		}
		//C2
		if i < array_length(gamer.GunC2)
		{
			ini_write_string(_hangar_string,"gun"+string(i)+"C2",gamer.GunC2[i])
		}
		else
		{
			ini_write_string(_hangar_string,"gun"+string(i)+"C2","");
		}
	}
	
	
	//Engine
	for(i = 1; i<=20; i+=1)
	{
		//C1
		if i < array_length(gamer.EngineC1)
		{
			ini_write_string(_hangar_string,"engine"+string(i)+"C1",gamer.EngineC1[i]);
		}
		else
		{
			ini_write_string(_hangar_string,"engine"+string(i)+"C1","");
		}
		//C2
		if i < array_length(gamer.EngineC2)
		{
			ini_write_string(_hangar_string,"engine"+string(i)+"C2",gamer.EngineC2[i]);
		}
		else
		{
			ini_write_string(_hangar_string,"engine"+string(i)+"C2","");
		}		
	}
	
	
	ini_close();
}