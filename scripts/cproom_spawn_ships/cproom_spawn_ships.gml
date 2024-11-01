function cproom_spawn_ships(){
	
	var totalships, mmoships, eicships, vruships, mmowaitingships, eicwaitingships, vruwaitingships, mmospawnx, mmospawny, eicspawnx, eicspawny, vruspawnx, vruspawny;
	
	mmoships=0;
	eicships=0;
	vruships=0;
	mmowaitingships=0;
	eicwaitingships=0;
	vruwaitingships=0;
	totalships=0;
	
	var max_ships_by_corp = 20;

	with (ship)
	{
	    if corporation = 0 and isInvader = 1 then {mmoships+=1; if waiting_cp_spawn = 1 then mmowaitingships++};
	    if corporation = 1 and isInvader = 1 then {eicships+=1; if waiting_cp_spawn = 1 then eicwaitingships++};
	    if corporation = 2 and isInvader = 1 then {vruships+=1; if waiting_cp_spawn = 1 then vruwaitingships++};
	    totalships+=1;
	}

	mmospawnx = room_width * 1/13;
	mmospawny = room_height/2;
	
	eicspawnx = room_width * 3/4;
	eicspawny = room_height * 1/10;
	
	vruspawnx = room_width * 3/4;
	vruspawny = room_height * 9/10;
	
	var prob_spawn_healer = 25;
	var prob_release_ships = 10;
	
	var prob_release_adjust_mmo = 0;
	var prob_release_adjust_eic = 0;
	var prob_release_adjust_vru = 0;
	
	if mmowaitingships >= 8 then prob_release_adjust_mmo = 10;
	if eicwaitingships >= 8 then prob_release_adjust_eic = 10;
	if vruwaitingships >= 8 then prob_release_adjust_vru = 10;
	
	/*
	with(base)
	{
		if isCPspawn = true and corp = 0 then {mmospawnx = x; mmospawny = y;}
		if isCPspawn = true and corp = 1 then {eicspawnx = x; eicspawny = y;}
		if isCPspawn = true and corp = 2 then {vruspawnx = x; vruspawny = y;}
	}
*/

    if mmoships < max_ships_by_corp then //if missing MMO ships
    {
		//if too many ships on point we don't prepare ships waiting at spawn (or reduce proba), so they aren't too many ships ready to quickly
		var mmonotwaiting = mmoships - mmowaitingships;
		var mmoprobspawn = 0;
		if mmonotwaiting >= 5 and mmonotwaiting < 10 then mmoprobspawn = 1;
		if mmonotwaiting >= 10 and mmonotwaiting < 15 then mmoprobspawn = 2;
		if mmonotwaiting >= 15 then mmoprobspawn = -1;
		if mmoprobspawn != -1 and irandom(mmoprobspawn) = 0
		{
	        if global.cpfirm = 0 then //if MMO has the point
	        {
				if irandom(100) <= prob_spawn_healer then 
				{
					spawn_ship(mmospawnx,mmospawny,0,"healer",1,"aegis",choose(3,3,4,4,4,5,5),1);
				}
				else
				{
					spawn_ship(mmospawnx,mmospawny,0,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,4,5),1);
				}
	        }
	        else
	        {   //if MMO doesn't have the point
				if irandom(100) <= prob_spawn_healer + 10 then 
				{
					spawn_ship(mmospawnx,mmospawny,0,"healer",1,"aegis",choose(3,3,4,4,4,5,5),1);
				}
				else
				{
					spawn_ship(mmospawnx,mmospawny,0,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,3,4,4,4,5),1);
				}
	        }
		}
    }
	
	if irandom(100) <= prob_release_ships + mmowaitingships * 5 then 
	{
		with(ship)
		{
			if corporation = 0 then waiting_cp_spawn = 0;
		}
	}
     
	 
    if eicships < max_ships_by_corp then //if missing EIC ships
    {
		//if too many ships on point we don't prepare ships waiting at spawn (or reduce proba), so they aren't too many ships ready to quickly
		var eicnotwaiting = eicships - eicwaitingships;
		var eicprobspawn = 0;
		if eicnotwaiting >= 5 and eicnotwaiting < 10 then eicprobspawn = 1;
		if eicnotwaiting >= 10 and eicnotwaiting < 15 then eicprobspawn = 2;
		if eicnotwaiting >= 15 then eicprobspawn = -1;
		if eicprobspawn != -1 and irandom(eicprobspawn) = 0
		{
	        if global.cpfirm = 1 then //if EIC has the point
	        {
				if irandom(100) <= prob_spawn_healer then 
				{
					spawn_ship(eicspawnx,eicspawny,1,"healer",1,"aegis",choose(3,3,4,4,4,5,5),1);
				}
				else
				{
					spawn_ship(eicspawnx,eicspawny,1,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,4,5),1);
				}
	        }
	        else
	        {   //if EIC doesn't have the point
				if irandom(100) <= prob_spawn_healer + 10 then 
				{
					spawn_ship(eicspawnx,eicspawny,1,"healer",1,"aegis",choose(3,3,4,4,4,5,5),1);
				}
				else
				{
					spawn_ship(eicspawnx,eicspawny,1,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,3,4,4,4,5),1);
				}
	        }
		}
    }
	
	if irandom(100) <= prob_release_ships + eicwaitingships * 5 then 
	{
		with(ship)
		{
			if corporation = 1 then waiting_cp_spawn = 0;
		}
	}
        
    if vruships < max_ships_by_corp then //if missing VRU ships
    {
		//if too many ships on point we don't prepare ships waiting at spawn (or reduce proba), so they aren't too many ships ready to quickly
		var vrunotwaiting = vruships - vruwaitingships;
		var vruprobspawn = 0;
		if vrunotwaiting >= 5 and vrunotwaiting < 10 then vruprobspawn = 1;
		if vrunotwaiting >= 10 and vrunotwaiting < 15 then vruprobspawn = 2;
		if vrunotwaiting >= 15 then vruprobspawn = -1;
		if vruprobspawn != -1 and irandom(vruprobspawn) = 0
		{
	        if global.cpfirm = 2 then //if VRU has the point
	        {
				if irandom(100) <= prob_spawn_healer then 
				{
					spawn_ship(vruspawnx,vruspawny,2,"healer",1,"aegis",choose(3,3,4,4,4,5,5),1);
				}
				else
				{
					spawn_ship(vruspawnx,vruspawny,2,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,4,5),1);
				}
	        }
	        else
	        {   //if VRU doesn't have the point
				if irandom(100) <= prob_spawn_healer + 10 then 
				{
					spawn_ship(vruspawnx,vruspawny,2,"healer",1,"aegis",choose(3,3,4,4,4,5,5),1);
				}
				else
				{
					spawn_ship(vruspawnx,vruspawny,2,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,3,4,4,4,5),1);
				}
	        }
		}
    }
	
	if irandom(100) <= prob_release_ships + vruwaitingships * 5 then 
	{
		with(ship)
		{
			if corporation = 2 then waiting_cp_spawn = 0;
		}
	}
}





//OLD
#region
/*

function cproom_spawn_ships(){
	
	var totalships, mmoships, eicships, vruships, mmospawnx, mmospawny, eicspawnx, eicspawny, vruspawnx, vruspawny;
	
	mmoships=0;
	eicships=0;
	vruships=0;
	totalships=0;

	with (ship)
	{
	    if corporation = 0 then mmoships+=1;
	    if corporation = 1 then eicships+=1;
	    if corporation = 2 then vruships+=1;
	    totalships+=1;
	}
	
	with(base)
	{
		if isCPspawn = true and corp = 0 then {mmospawnx = x; mmospawny = y;}
		if isCPspawn = true and corp = 1 then {eicspawnx = x; eicspawny = y;}
		if isCPspawn = true and corp = 2 then {vruspawnx = x; vruspawny = y;}
	}


    if mmoships < irandom_range(2,5) then //if missing MMO ships
    {
        //mmospawnx=irandom_range(100,room_width-100);
        //mmospawny=irandom_range(100,room_height-100);
        for (i=1; i<=irandom_range(1,3); i+=1) 
            {
               spawn_ship(mmospawnx,mmospawny,0,"healer",1,"aegis",choose(3,3,4,4,4,5,5));
            }            
        if global.cpfirm = 0 then //if MMO has the point
        {
            for (i=1; i<=irandom_range(2,5); i+=1) 
            {
               spawn_ship(mmospawnx,mmospawny,0,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,4,5));
            }
        }
        else
        {   //if MMO doesn"t have the point
            for (i=1; i<=irandom_range(3,10); i+=1) 
            {
               spawn_ship(mmospawnx,mmospawny,0,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,3,4,4,5));
               //spawn_ship(mmospawnx,mmospawny,0,"battle",1,choose("vengeance","vengeance","vengeance"),choose(1,2,3,3,3,4,4,5));
            }
        }
    }
        
    if eicships < irandom_range(1,4) then //if missing EIC ships
    {
        //eicspawnx=irandom_range(100,room_width-100);
        //eicspawny=irandom_range(100,room_height-100);
        for (i=1; i<=irandom_range(1,3); i+=1) 
            {
               spawn_ship(eicspawnx,eicspawny,1,"healer",1,"aegis",choose(3,3,4,4,4,5,5));
            } 
        if global.cpfirm = 1 then //if EIC has the point
        {
            for (i=1; i<=irandom_range(2,5); i+=1) 
            {
               spawn_ship(eicspawnx,eicspawny,1,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,4,5));
            }
        }
        else
        {   //if EIC doesn"t have the point
            for (i=1; i<=irandom_range(2,9); i+=1) 
            {
               spawn_ship(eicspawnx,eicspawny,1,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,3,4,4,5));
            }
        }
    }
        
    if vruships < irandom_range(2,5) then //if missing VRU ships
    {
        //vruspawnx=irandom_range(100,room_width-100);
        //vruspawny=irandom_range(100,room_height-100);
        for (i=1; i<=irandom_range(1,3); i+=1) 
            {
               spawn_ship(vruspawnx,vruspawny,2,"healer",1,"aegis",choose(3,3,4,4,4,5,5));
            } 
        if global.cpfirm = 2 then //if VRU has the point
        {
            for (i=1; i<=irandom_range(2,5); i+=1) 
            {
               spawn_ship(vruspawnx,vruspawny,2,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,4,5));
            }
        }
        else
        {   //if VRU doesn"t have the point
            for (i=1; i<=irandom_range(3,10); i+=1) 
            {
               spawn_ship(vruspawnx,vruspawny,2,"battle",1,choose("goliath","goliath","goliath","goliath","goliath","vengeance","vengeance","vengeance","citadel"),choose(1,2,3,3,3,4,4,5));
            }
        }
    }

}

*/


#endregion