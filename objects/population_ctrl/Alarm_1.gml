///@description reset controlpoint



//SPAWN control point
if room = global.cproom and !instance_exists(controlpoint) then
{
    var cp = instance_create_depth(0,0,5,controlpoint)
    //cp.x = irandom_range(1000,room_width-1000);
    //cp.y = irandom_range(1000,room_height-1000);
    cp.x = room_width/2;
    cp.y = room_height/2;
	
	
	var base_0 = instance_create_depth(0,0,5,base);
	base_0.x = room_width * 1/13;
	base_0.y = room_height/2;
	base_0.corp = 0;
	base_0.isCPspawn = true;
    	
	var base_1 = instance_create_depth(0,0,5,base);
	base_1.x = room_width * 3/4;
	base_1.y = room_height * 1/10;
	base_1.corp = 1;
	base_1.isCPspawn = true;
		
	var base_2 = instance_create_depth(0,0,5,base);
	base_2.x = room_width * 3/4;
	base_2.y = room_height * 9/10;
	base_2.corp = 2;
	base_2.isCPspawn = true;
	
	
    //destroy all entities so no lags
    //with(mob){instance_destroy();}
    //with(bonus_box){instance_destroy();}
    //with(ship){instance_destroy();}
}

//destroy controlpoint if on a map that shouldn't be cp
if room != global.cproom and instance_exists(controlpoint) then
{
    with(controlpoint){instance_destroy();}
}

       
//check if need to change control point
if global.resetcpclock <= 0
{
	//end of CP when we are in CP room
    if room=global.cproom then
	{
		instance_destroy(controlpoint);
		//instance_destroy(ship);
		//CALCULATE WHO WON THE CP MATCH
		//GET REWARDS HERE
	}
	else //
	{
		
	}
       
    var changecpto,cptoroom;
    
    
    /*
    if global.cpison=0 then 
    { //no CP at the moment
        changecpto = choose(0,0,0,0,0,0,1,1,1,1)  //40% chance having a CP if no CP before
    } else //already have a CP
    {
        changecpto = choose(0,0,0,0,0,0,0,0,1,1)  //20% chance having another CP if already a CP
    }*/
    
	//NO CP AT THE MOMENT
    if global.cpison=0 then 
    { 
        changecpto = choose(1,1,1,1)  //40% chance having a CP if no CP before
    } else //ALREADY A CP
    {
        changecpto = choose(1,1)  //20% chance having another CP if already a CP
    }
    
    if changecpto = 0 then
    {
        global.cproom = noone;
        global.cpison = 0;
        show_HUD_message("CONTROL POINT IS NOW OFFLINE");
    }
    
    if changecpto = 1 then
    {
        //roomnumber = irandom_range(1,29);
        roomnumber = choose(17,17);
        switch roomnumber
        {
            case 1:
                 cptoroom = lv1_1;
                 break;
            case 2:
                 cptoroom = lv1_2;
                 break;
            case 3:
                 cptoroom = lv1_3;
                 break;
            case 4:
                 cptoroom = lv1_4;
                 break;
            case 5:
                 cptoroom = lv1_5;
                 break;
            case 6:
                 cptoroom = lv1_6;
                 break;
            case 7:
                 cptoroom = lv1_7;
                 break;
            case 8:
                 cptoroom = lv1_8;
                 break;
            case 9:
                 cptoroom = lv2_1;
                 break;
            case 10:
                 cptoroom = lv2_2;
                 break;
            case 11:
                 cptoroom = lv2_3;
                 break;
            case 12:
                 cptoroom = lv2_4;
                 break;
            case 13:
                 cptoroom = lv2_5;
                 break;
            case 14:
                 cptoroom = lv2_6;
                 break;
            case 15:
                 cptoroom = lv2_7;
                 break;
            case 16:
                 cptoroom = lv2_8;
                 break;
            case 17:
                 cptoroom = lv3_1;
                 break;
            case 18:
                 cptoroom = lv3_2;
                 break;
            case 19:
                 cptoroom = lv3_3;
                 break;
            case 20:
                 cptoroom = lv3_4;
                 break;
            case 21:
                 cptoroom = lv3_5;
                 break;
            case 22:
                 cptoroom = lv3_6;
                 break;
            case 23:
                 cptoroom = lv3_7;
                 break;
            case 24:
                 cptoroom = lv3_8;
                 break;
            case 25:
                 cptoroom = lv4_1;
                 break;
            case 26:
                 cptoroom = lv4_2;
                 break;
            case 27:
                 cptoroom = lv4_3;
                 break;
            case 28:
                 cptoroom = lv4_4;
                 break;
            case 29:
                 cptoroom = lv4_5;
                 break;
        }
            
        global.cproom = cptoroom;
        
        global.cpison = 1;
        show_HUD_message("CP ONLINE IN " + string(info_map(cptoroom,"name")));
        alarm[9]=room_speed;
        
    }
    
    //reset parameters
    global.mmoscorecp = 0;
    global.eicscorecp = 0;
    global.vruscorecp = 0;
    global.mmowincp = 0;
    global.eicwincp = 0;
    global.vruwincp = 0;
    global.mmooncp = 0;
    global.eiconcp = 0;
    global.vruoncp = 0;
    global.isgameronpc = 0;
    global.cpfirm = 3;
    
    global.resetcpclock = 60*10; //300 total time of the controlpoint
	global.cproundclock=60; //time of each round for the controlpoint
}


//if somewhere cp is activated
if global.cpison=1 then
{
	//if on cp room, increase the score
	if room=global.cproom
	{
		global.mmoscorecp += global.mmooncp*10;
		global.eicscorecp += global.eiconcp*10;
		global.vruscorecp += global.vruoncp*10;
	}
	
	if room != global.cproom and global.cproundclock<=20 //increase randomly (simulation)
	{
		global.mmoscorecp += irandom(5)*10;
		global.eicscorecp += irandom(5)*10;
		global.vruscorecp += irandom(5)*10;
	}
	
	//ROUND OVER
	if global.cproundclock<=0
	{
		var mmo, eic, vru
		
		//if not in room, just update score
		if room != global.cproom then
		{
			mmo = global.mmoscorecp;
		     eic = global.eicscorecp;
		     vru = global.vruscorecp;
     
		     if eic = mmo and eic = vru then {global.cpfirm = 3; global.mmowincp+=1; global.eicwincp+=1; global.vruwincp+=1;} //change to neutral sprite control point
		     if mmo = eic and eic > vru then {global.cpfirm = 3; global.mmowincp+=1; global.eicwincp+=1;} //change to neutral sprite control point
		     if mmo = vru and vru > eic then {global.cpfirm = 3; global.mmowincp+=1; global.vruwincp+=1;} //change to neutral sprite control point
		     if vru = eic and eic > mmo then {global.cpfirm = 3; global.vruwincp+=1; global.eicwincp+=1;} //change to neutral sprite control point
		     if eic > vru and eic > mmo then {global.cpfirm = 1; global.eicwincp+=1;} //add rewards uri
		     if mmo > vru and mmo > eic then {global.cpfirm = 0; global.mmowincp+=1;} //add rewards uri
		     if vru > eic and vru > mmo then {global.cpfirm = 2; global.vruwincp+=1;} //add rewards uri
		}

		//if in room, update score + show message and rec
		if room = global.cproom then
		{
		     mmo = global.mmoscorecp;
		     eic = global.eicscorecp;
		     vru = global.vruscorecp;
     
		     if eic = mmo and eic = vru then {global.cpfirm = 3; global.mmowincp+=1; global.eicwincp+=1; global.vruwincp+=1; show_protocol_message("DRAW");} //change to neutral sprite control point
		     if mmo = eic and eic > vru then {global.cpfirm = 3; global.mmowincp+=1; global.eicwincp+=1; show_protocol_message("MMO AND EIC WIN");} //change to neutral sprite control point
		     if mmo = vru and vru > eic then {global.cpfirm = 3; global.mmowincp+=1; global.vruwincp+=1; show_protocol_message("MMO AND VRU WIN");} //change to neutral sprite control point
		     if vru = eic and eic > mmo then {global.cpfirm = 3; global.vruwincp+=1; global.eicwincp+=1; show_protocol_message("EIC AND VRU WIN");} //change to neutral sprite control point
		     if eic > vru and eic > mmo then {global.cpfirm = 1; global.eicwincp+=1; show_protocol_message("EIC WIN");} //add rewards uri
		     if mmo > vru and mmo > eic then {global.cpfirm = 0; global.mmowincp+=1; show_protocol_message("MMO WIN");} //add rewards uri
		     if vru > eic and vru > mmo then {global.cpfirm = 2; global.vruwincp+=1; show_protocol_message("VRU WIN");} //add rewards uri
    
			//Reset parameters for next round
		    global.mmoscorecp = 0;
		    global.eicscorecp = 0;
		    global.vruscorecp = 0;
    
		    if global.mmowincp >= 10 then {show_protocol_message("MMO WINS THE CP!"); global.mmowincp=0;global.eicwincp=0;global.vruwincp=0;}
		    if global.eicwincp >= 10 then {show_protocol_message("EIC WINS THE CP!"); global.mmowincp=0;global.eicwincp=0;global.vruwincp=0;}
		    if global.vruwincp >= 10 then {show_protocol_message("VRU WINS THE CP!"); global.mmowincp=0;global.eicwincp=0;global.vruwincp=0;}
		}
		
		//reset round clock
		global.cproundclock=61;
		global.transfer_used = false;

	}
	
	//decrease clock of the round
	global.cproundclock-=1;
}

global.resetcpclock -=1;

alarm[1] = room_speed ;