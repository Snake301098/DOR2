var a,b,c, myid;
b:=0; c:=0;

var gamer_get_reward = false;

if killed_by_gamer_kami = true then gamer_get_reward = true;

if instance_exists(gamer.target)
{
	if gamer.target = id
	{
		gamer_get_reward = true;
	}
}

if gamer_get_reward = true
{
	//SHIP SKINS
	var _xp_bonus = 1;
	var _honor_bonus = 1;
	var _uridium_bonus = 1;
	if gamer.ship_name = "adept" then _xp_bonus = 1.1;
	if gamer.ship_name = "veteran" then _xp_bonus = 1.1;
	if gamer.ship_name = "corsair" then _honor_bonus = 1.1;
	if gamer.ship_name = "exalted" then _honor_bonus = 1.1;
	if gamer.ship_name = "goal" then _uridium_bonus = 1.05;
	
	var EPPOINTS = 1;
	var HONORPOINTS = 1
	var URIDIUM = 1;
	var CREDITS = 1;
	if ship_name = "pheonix" then {EPPOINTS=100;HONORPOINTS=10;URIDIUM=10;CREDITS=10000;}
	if ship_name = "nostromo" then {EPPOINTS=6400;HONORPOINTS=64;URIDIUM=64;CREDITS=64000;}
	if ship_name = "leonov" then {EPPOINTS=400;HONORPOINTS=4;URIDIUM=4;CREDITS=4000;}
	if ship_name = "bigboy" then {EPPOINTS=25600;HONORPOINTS=256;URIDIUM=256;CREDITS=256000;}
	if info(ship_name,"ship_type") = "vengeance" then {EPPOINTS=12800;HONORPOINTS=128;URIDIUM=128;CREDITS=128000;}
	if info(ship_name,"ship_type") = "goliath" then {EPPOINTS=51200;HONORPOINTS=512;URIDIUM=512;CREDITS=512000;}
	if ship_name = "spearhead" then {EPPOINTS=7500;HONORPOINTS=75;URIDIUM=75;CREDITS=75000;}
	if ship_name = "aegis" then {EPPOINTS=25000;HONORPOINTS=25;URIDIUM=25;CREDITS=25000;}
	if ship_name = "citadel" then {EPPOINTS=120000;HONORPOINTS=1200;URIDIUM=1200;CREDITS=1200000;}
	
	
	//SHIP SKINS
	var _xp_bonus = 1;
	var _honor_bonus = 1;
	var _uridium_bonus = 1;
	if gamer.ship_name = "adept" then _xp_bonus = 1.1;
	if gamer.ship_name = "veteran" then _xp_bonus = 1.1;
	if gamer.ship_name = "corsair" then _honor_bonus = 1.1;
	if gamer.ship_name = "exalted" then _honor_bonus = 1.1;
	if gamer.ship_name = "goal" then _uridium_bonus = 1.05;
	URIDIUM = URIDIUM * (1 + gamer.luck_i * 0.02 + gamer.luck_ii * 0.03) * _uridium_bonus
	CREDITS = CREDITS * (1 + gamer.greed * 0.03)
	EPPOINTS = EPPOINTS * _xp_bonus;
	HONORPOINTS = HONORPOINTS * (1 + gamer.cruelty_i * 0.02 + gamer.cruelty_ii * 0.03) * _honor_bonus;		
	//LOGFILE REWARD based on Box Muller transfor to sort a normal distribution
	var i = random(1);
	var j = random(1);
	
	var X = sqrt(-2*ln(i))*cos(2*pi*j)
	
	var avg = 0.25
	var std = 1
	
	var logfiles_qty = round(avg + std * X)
	if logfiles_qty < 0 then logfiles_qty = 0
	   
	var _cargobox = instance_create_depth(x,y,0,cargo_box);
	_cargobox.color = "blue"
	_cargobox.logfile = logfiles_qty
		
	show_protocol_message("You have destroyed player " + nickname);
	global.experience+=EPPOINTS;
	global.honor+=HONORPOINTS
	global.uridium+=URIDIUM;
	global.credit+=CREDITS;
	show_protocol_message(string(text.received) + " " + string(EPPOINTS) + " " + string("xp"))
	show_protocol_message(string(text.received) + " " + string(HONORPOINTS) + " " + string("honor"))
	show_protocol_message(string(text.received) + " " + string(CREDITS) + " " + string("credits"));
	show_protocol_message(string(text.received) + " " + string(URIDIUM) + " " + "Uridium")
	check_quests(id,room);
	update_stats(ship_name +"_kills");
	update_stats("credit",CREDITS)
	update_stats("uridium",URIDIUM)
}

myid = id; //ID of who get killed
clear_ship_destroy_id(myid) //remove ship id from targets

	with (ships) {
	             if target=other.id then 
	                        {
	                        if (object_index=gamer or object_index=PET) then {if speed=0 then {direction=image_angle;} b:=1; c+=1;}
	                        else
	                            {
	                            c+=1;
	                            alarm[0]:=30*2;
	                            alarm[1]:=30*2;
	                            alarm[2]:=-1;
	                            alarm[3]:=30*2;
	                            attacking=false;
	                            rounding[4]:=0; with (rounding[5]) {instance_destroy();} rounding[5]:=noone;
	                            }
	                        target:=noone;
							targetedship=noone;
	                        }
	             }


//Just shítty fix
if gamer.target=id then {GKILL=1;}   //or PET.target=id 
if gamer.target=other.id  then {GKILL=1;}     //or PET.target=other.id


part_type_clear(Particle2)
part_type_destroy(Particle2)
part_particles_clear(P_System_linear);
part_system_destroy(P_System_linear);

/*
//TDM
if(tdmteam="vru")then{global.tdm_vru_lifes-=1;}  
if(tdmteam="eic")then{global.tdm_eic_lifes-=1;}    
if(tdmteam="mmo")then{global.tdm_mmo_lifes-=1;}  

if pvpClan = "mmo" then global.pvpmmo -=1;
if pvpClan = "eic" then global.pvpeic -=1;
if pvpClan = "vru" then global.pvpvru -=1;


//ENERGY LEECH FOR SHIP
*/


with (mob) {if target=other.id then {target:=noone; lock_:=false;}}
with (droid_obj) {if owner=other.id then instance_destroy();}
//with (shield_effect) {if owner=other.id then instance_destroy();}
with (ammo_ship) {if owner=other.id then instance_destroy();}
//with (shield_restore_ctrl) {if owner=other.id then instance_destroy();}
//with (laserdamage_expl) if owner=other.id then instanece_destroy();
//with (blust) if owner=other.id then instance_destroy();
//Ïðîâåðêà íóæíî ëè îòîáðàæàòü ýôôåêòû.




//FOR GAMER (?)

if visible=true then 
                    {
//Âçðûâ.
a=instance_create_depth(x,y,-3,bigexpl1);
a.image_xscale=1;
a.image_yscale=1;
//Óäàðíàÿ âîëíà.

/*
a=instance_create(x,y,wave);
a.image_xscale=1;
a.image_yscale=1;
a.shake[0]=5; a.shake[1]=10;*/
//Îáëîìêè.

/*
part_type_direction(global.efpiece1,0,359,0,0);//óêàçàòü íàïðàâëåíèå
part_emitter_region(global.efpiece,global.efpiece2,
other.x,other.x,other.y,other.y,ps_shape_rectangle,ps_distr_linear); //îòêóäà ëåòÿò ÷àñòèöû
part_emitter_burst(global.efpiece,global.efpiece2,global.efpiece1,100);//âûïóñòèòü ÷àñòèöû.
//Ãðóçîâàÿ êîðîáêà.*/
//if (b=1) and (c<=3) then
/* {
//Çàïèñü â ïðîòîêîë.
if b=true and c=1 then G=1
if ((G=1 or GKILL=1) and damageReceived > (owner.own_health+owner.own_shield)*0.25) then
{
//compute rpfactor fluctuation
rpfactor = global.rpfactor;
switch string(Ships.power)
    {
    case "adminplayer":
        {if (global.subimg<=10)then{rpfactor-=0.0001};
        if (global.subimg<=12)then{rpfactor-=0.0001};
        if (global.subimg<=14)then{rpfactor-=0.0002};
        if (global.subimg<=16)then{rpfactor-=0.0002};
        break;
        }
    case "norm":
        {if (global.subimg<=7)then{rpfactor-=0.0001};
        break;
        }
    case "good":
        {if (global.subimg<=7)then{rpfactor-=0.0001};
        if (global.subimg<=9)then{rpfactor-=0.0001};
        if (global.subimg<=11)then{rpfactor-=0.0001};
        break;
    }
    case "brutal":
        {if (global.subimg<=9)then{rpfactor-=0.0001};
        if (global.subimg<=10)then{rpfactor-=0.0001};
        if (global.subimg<=12)then{rpfactor-=0.0002};
        if (global.subimg<=14)then{rpfactor-=0.0002};
        break;
    }
    case "full":
        {if (global.subimg<=10)then{rpfactor-=0.0001};
        if (global.subimg<=12)then{rpfactor-=0.0001};
        if (global.subimg<=14)then{rpfactor-=0.0002};
        if (global.subimg<=16)then{rpfactor-=0.0002};
        break;
    }
    default:
    break;
    }

global.rpfactor=rpfactor;


//ENERGY LEECH
if gamer.Ship = "lightning" then { if gamer.useeleech=1 then with(eleech_obj){if owner.id=gamer.id then instance_destroy();}; eleech=instance_create(owner.x,owner.y,eleech_obj);eleech.owner=gamer.id;}

//Now let"s see what ship the ENEMY has :D
if Ship="phoenix" or Ship="admin" then
{
EPPOINTS:=100*global.GAMERATE
HONORPOINTS:=10*global.GAMERATE
URIDIUM:=2*global.GAMERATE
global.phoenixkills+=1
}

else if Ship="nostromo" then
{
EPPOINTS:=6400*global.GAMERATE
HONORPOINTS:=64*global.GAMERATE
URIDIUM:=15*global.GAMERATE
global.nostromokills+=1
}

else if Ship="leonov" then
{
EPPOINTS:=400*global.GAMERATE
HONORPOINTS:=4*global.GAMERATE
URIDIUM:=22*global.GAMERATE
global.leonovkills+=1
}

else if Ship="bigboy" then
{
EPPOINTS:=25600*global.GAMERATE
HONORPOINTS:=256*global.GAMERATE
URIDIUM:=55*global.GAMERATE
global.bigboykills+=1
}

else if Ship="vengeance" or Ship="adept" or Ship="corsair" or Ship="avenger" or Ship="revenge" or Ship="lightning" then
{
EPPOINTS:=12800*global.GAMERATE
HONORPOINTS:=128*global.GAMERATE
URIDIUM:=450*global.GAMERATE
global.vengeancekills+=1
}

else if Ship="goliath" or Ship="veteran" or Ship="exalted" or Ship="bastion" or Ship="enforcer" or Ship="venom"
or Ship="diminisher" or Ship="sentinel" or Ship="solace" or Ship="spectrum" or Ship="centaur" or Ship="saturn"
or Ship="referee" or Ship="goal" or Ship="kick" then
{
EPPOINTS:=51200*global.GAMERATE
HONORPOINTS:=512*global.GAMERATE
URIDIUM:=1080*global.GAMERATE
global.goliathkills+=1 
}

else if Ship="spearhead" then
{
EPPOINTS:=7500*global.GAMERATE
HONORPOINTS:=75*global.GAMERATE
URIDIUM:=230*global.GAMERATE
global.spearheadkills+=1
}

else if Ship="aegis" then
{
EPPOINTS:=25000*global.GAMERATE
HONORPOINTS:=2500*global.GAMERATE
URIDIUM:=315*global.GAMERATE
global.aegiskills+=1
}

else if Ship="citadel" then
{
EPPOINTS:=120000*global.GAMERATE
HONORPOINTS:=1200*global.GAMERATE
URIDIUM:=1450*global.GAMERATE
global.citadelkills+=1
}

global.kills+=1
global.killstreak+=1
//Now let"s check to see if YOU should get any extra points :D
    if gamer.Ship="adept" or gamer.Ship="veteran"or gamer.Ship="goal" then
{
FINALEP=round((EPPOINTS*1.1))
FINALHONOR=round(HONORPOINTS)
}
else if gamer.Ship="corsair" or gamer.Ship="exalted" then 
{
FINALHONOR=round((HONORPOINTS*1.1))
FINALEP=round(EPPOINTS)
}
else
{
FINALEP=round(EPPOINTS)
FINALHONOR=round(HONORPOINTS)
}
FINALURIDIUM=round(URIDIUM)
//Check for map bonus
if room=lv4_1 or room=lv4_2 or room=lv4_3 or room=lv4_4 or room=lv4_5 then mapbonus=1.2 else mapbonus=1;
//Now let"s actually give the points, shall we? :P
        global.experience+=(FINALEP*mapbonus);
        global.honor+=(FINALHONOR*mapbonus);
        global.uridium+=(FINALURIDIUM*mapbonus);
        show_protocol_message(string(text.received) + " " + string((FINALEP*mapbonus)) + " " + string(text.experience))
        show_protocol_message(string(text.received) + " " + string((FINALHONOR*mapbonus)) + " " + string(text.honor))
        show_protocol_message(string(text.received) + " " + string((FINALURIDIUM*mapbonus)) + " uridium")
}
if b=true and c=1 then G=1
if G=1 or GKILL=1 then {show_protocol_message(text_add(text.ship_dead,nickname))};
with(instance_create(x+irandom_range(-50,50),y+irandom_range(-50,50),box))
    {
    /*
    Loot[0,0]:=1;
    Loot[1,0]:="enemy_details";
    if c>1 then access=true;
    b=irandom(100)
    if b<=10
        {Loot[1,1]=2;}
    else if b<60 and b>10
        {Loot[1,1]=1;}
    else if b>=60
       {visible:=false;
       instance_destroy();}
       */
        /*
    Loot[0,0]:=1;
    Loot[1,0]:="enemy_details";
    if c>1 then access=true;
    b=irandom(100)
    if b<=10
        {Loot[1,1]=2;}
    else if b>10
        {Loot[1,1]=1;}
    }
                         }*/
                    }        