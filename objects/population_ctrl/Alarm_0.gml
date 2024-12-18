///@description SPAWN MOBS

var a,b,xx,yy,ship_numb, numb_waiters, numb_corp, numb_travelers,numb_bonus_grubers,numb_hunters_mob;
//Îáíóëåíèå ïåðåìåííûõ.
numb_waiters:=0; numb_corp[0]:=0; numb_corp[1]:=0; numb_corp[2]:=0; numb_travelers:=0;
numb_bonus_grubers:=0; numb_hunters_mob:=0;



//Variables
var smallAlien, largeAlien, uberMap, bonusbox_limit, bossNormal, bossPVP, uberPVP
smallAlien = 22;
largeAlien = 10;
bossNormal = 4;
uberMap = 1;   
bonusbox_limit=40; 


//X-1       
if (room=lv1_1 or room=lv2_1 or room=lv3_1)   then 
{
    if instance_number(streuner)<smallAlien/2 then
	{
		spawn_mob(streuner,,,irandom_range(smallAlien/4,smallAlien/2));
	}
}

//X-2
if (room=lv1_2 or room=lv2_2 or room=lv3_2)   then 
{
    if instance_number(streuner)<smallAlien/2 then
	{
		spawn_mob(streuner,,,irandom(smallAlien/2));
	}
	
    if instance_number(lordakia)<smallAlien/2 then
	{
		spawn_mob(lordakia,,,irandom_range(smallAlien/4,smallAlien/2));
	}
}

//X-3
if (room=lv1_3 or room=lv2_3 or room=lv3_3)   then 
{
    if instance_number(lordakia)<smallAlien/2 then
	{
		spawn_mob(lordakia,,,irandom(smallAlien/2));
	}
	
    if instance_number(saimon)<smallAlien/2 then
	{
		spawn_mob(saimon,,,irandom_range(smallAlien/4,smallAlien/2));
	}
	
    if instance_number(mordon)<smallAlien/2 then
	{
		spawn_mob(mordon,,,irandom_range(smallAlien/4,smallAlien/2));
	}
	
    if instance_number(devolarium)<largeAlien/2 then
	{
		spawn_mob(devolarium,,,irandom_range(largeAlien/4,largeAlien/2));
	}
}

//X-4
if (room=lv1_4 or room=lv2_4 or room=lv3_4)   then 
{
    if instance_number(lordakia)<smallAlien/2 then
	{
		spawn_mob(lordakia,,,irandom(smallAlien/2));
	}
	
    if instance_number(saimon)<smallAlien/2 then
	{
		spawn_mob(saimon,,,irandom_range(smallAlien/4,smallAlien/2));
	}
	
    if instance_number(mordon)<smallAlien/2 then
	{
		spawn_mob(mordon,,,irandom_range(smallAlien/4,smallAlien/2));
	}
	
    if instance_number(sibelon)<largeAlien/2 then
	{
		spawn_mob(sibelon,,,irandom_range(largeAlien/4,largeAlien/2));
	}
}

//X-5
if (room=lv1_5 or room=lv2_5 or room=lv3_5)   then 
{
    if instance_number(lordakia)<smallAlien/2 then
	{
		spawn_mob(lordakia,,,irandom(smallAlien/2));
	}
	
    if instance_number(sibelonit)<smallAlien/2 then
	{
		spawn_mob(sibelon,,,irandom_range(smallAlien/4,smallAlien/2));
	}
	
    if instance_number(lordakium)<largeAlien/2 then
	{
		spawn_mob(lordakium,,,irandom_range(largeAlien/4,largeAlien/2));
	}
}

//X-6
if (room=lv1_6 or room=lv2_6 or room=lv3_6)   then 
{
    if instance_number(kristallin)<smallAlien/2 then
	{
		spawn_mob(kristallin,,,irandom(smallAlien/2));
	}
	
    if instance_number(kristallon)<largeAlien/2 then
	{
		spawn_mob(kristallon,,,irandom_range(largeAlien/4,largeAlien/2));
	}
}

//X-7
if (room=lv1_7 or room=lv2_7 or room=lv3_7)   then 
{
    if instance_number(kristallin)<smallAlien/2 then
	{
		spawn_mob(kristallin,,,irandom(smallAlien/2));
	}
	
    if instance_number(kristallon)<largeAlien/2 then
	{
		spawn_mob(kristallon,,,irandom_range(largeAlien/4,largeAlien/2));
	}
}

//X-8
if (room=lv1_8 or room=lv2_8 or room=lv3_8)   then 
{
    if instance_number(streunerR)<smallAlien/2 then
	{
		spawn_mob(streunerR,,,irandom(smallAlien/2));
	}
}

alarm[0]  = irandom_range(5,15) * room_speed;    
    /*
if (room=lv1_2 or room=lv2_2 or room=lv3_2) then
    {
    
    
    
    //Ìîáû.
    if instance_number(streuner)<smallAlien/2 then
        while instance_number(streuner)<smallAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),streuner);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
    if instance_number(lordakia)<smallAlien/2 then
        while instance_number(lordakia)<smallAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),lordakia);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
    if instance_number(boss_lordakia)<bossNormal/2 then
        while instance_number(boss_lordakia)<bossNormal
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_lordakia);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
    if instance_number(boss_streuner)<bossNormal/2 then
        while instance_number(boss_streuner)<bossNormal
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_streuner);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}                                        
    //Áîíóñíûå êîðîáêè.
    if instance_number(bonus_box)<bonusbox_limit/2 then
        while instance_number(bonus_box)<bonusbox_limit
            {instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),bonus_box);} 
            
            
    //ÊÎÐÀÁËÈ---------------------------------------
    for (i=1; i<=4-numb_waiters; i+=1)
            {
            a:=1+irandom(10);
            b:=0;
            if a=10 then 
                {
                a:=teleport.id;
                b:=100;
                }
            }
    for (i=1; i<=3-numb_bonus_grubers; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,1,0,1,1)
                alarm[5]=irandom(500);
                action[0]:="bonus_grub";
                corporation:=info_map("map",room,"owners");
                Power:=choose("noob","fish","fish","fish","fish","norm","norm","funny");
                }
            }
    for (i=1; i<=6-numb_hunters_mob; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,1,0,1,1)
                alarm[5]=irandom(500);
                action[0]:="hunt_mob";
                corporation:=info_map("map",room,"owners");
                Power:=choose("norm","norm","fish","fish","fish","good","norm","good","good","brutal","low","full");
                }
            }
    popupennemy = irandom_range(0,100);
            if(popupennemy >= 60)then {
            with(instance_create_depth(x,y,ship))
                                        {
                                        corporation=info_map("map",a,"owners");
                                        numb_corp[corporation]+=1; action[0]:="battle";
                                        isInvader=1;
                                        alarm[5]=irandom(500);
                                        Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                        }
    }
    if (popupennemy >= 80) then {
    with(instance_create_depth(x,y,ship))
                                {
                                corporation=info_map("map",a,"owners");
                                numb_corp[corporation]+=1; action[0]:="battle";
                                isInvader=1;
                                alarm[5]=irandom(500); 
                                Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                }
        } 
    }

if (room=lv1_3 or room=lv2_3 or room=lv3_3) then
    {
    //Ìîáû.
    if instance_number(lordakia)<smallAlien/2 then
        while instance_number(lordakia)<smallAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),lordakia);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(saimon)<largeAlien/2 then
        while instance_number(saimon)<largeAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),saimon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(mordon)<largeAlien/2 then
        while instance_number(mordon)<largeAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),mordon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(devolarium)<largeAlien/2 then
        while instance_number(devolarium)<largeAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),devolarium);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(boss_mordon)<bossNormal/2 then
        while instance_number(boss_mordon)<bossNormal
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_mordon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(boss_devolarium)<bossNormal/2 then
        while instance_number(boss_devolarium)<bossNormal
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_devolarium);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
                                                                                                    
    //Áîíóñíûå êîðîáêè.
    if instance_number(bonus_box)<bonusbox_limit/2 then
        while instance_number(bonus_box)<bonusbox_limit
            {instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),bonus_box);} 
    //ÊÎÐÀÁËÈ---------------------------------------
    for (i=1; i<=4-numb_waiters; i+=1)
            {
            a:=1+irandom(10);
            b:=0;
            if a=10 then 
                {
                a:=teleport.id;
                b:=100;
                }
            }
    for (i=1; i<=3-numb_bonus_grubers; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1)
                alarm[5]=irandom(500);
                action[0]:="bonus_grub";
                corporation:=info_map("map",room,"owners");
                Power:=choose("noob","fish","fish","fish","fish","norm","norm","funny");
                }
            }
    for (i=1; i<=6-numb_hunters_mob; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1)                
                alarm[5]=irandom(500);
                action[0]:="hunt_mob";
                corporation:=info_map("map",room,"owners"); 
                Power:=choose("noob","fish","fish","fish","fish","fish","fish","norm","norm","good","norm","good","brutal","full");
                }
            }
    popupennemy = irandom_range(0,100);
            if(popupennemy >= 50)then {
            with(instance_create_depth(x,y,ship))
                                        {
                                        corporation=info_map("map",a,"owners");
                                        numb_corp[corporation]+=1; action[0]:="battle";
                                        isInvader=1;
                                        alarm[5]=irandom(500); 
                                        Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                        }
    }
    if (popupennemy >= 60) then {
    with(instance_create_depth(x,y,ship))
                                {
                                corporation=info_map("map",a,"owners");
                                numb_corp[corporation]+=1; action[0]:="battle";
                                isInvader=1;
                                alarm[5]=irandom(500); 
                                Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                }
        } 
    }
if (room=lv1_4 or room=lv2_4 or room=lv3_4) then
    {
    //Ìîáû.
    if instance_number(lordakia)<smallAlien/2 then
        while instance_number(lordakia)<smallAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),lordakia);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(saimon)<smallAlien/2 then
        while instance_number(saimon)<smallAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),saimon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(mordon)<largeAlien/2 then
        while instance_number(mordon)<largeAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),mordon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(sibelon)<largeAlien/2 then
        while instance_number(sibelon)<largeAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),sibelon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(boss_saimon)<bossNormal/2 then
        while instance_number(boss_saimon)<bossNormal
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_saimon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(boss_sibelon)<bossNormal/2 then
        while instance_number(boss_sibelon)<bossNormal
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_sibelon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
                                                                                                    
    //Áîíóñíûå êîðîáêè.
    if instance_number(bonus_box)<bonusbox_limit/2 then
        while instance_number(bonus_box)<bonusbox_limit
            {instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),bonus_box);} 
    //ÊÎÐÀÁËÈ---------------------------------------
    for (i=1; i<=4-numb_waiters; i+=1)
            {
            a:=1+irandom(10);
            b:=0;
            if a=10 then 
                {
                a:=teleport.id;
                b:=100;
                }
            }
    for (i=1; i<=3-numb_bonus_grubers; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1)                
                alarm[5]=irandom(500);
                action[0]:="bonus_grub";
                corporation:=info_map("map",room,"owners");
                Power:=choose("noob","noob","norm","norm","funny");
                }
            }
    for (i=1; i<=6-numb_hunters_mob; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1)                
                alarm[5]=irandom(500);
                action[0]:="hunt_mob";
                corporation:=info_map("map",room,"owners"); 
                Power:=choose("noob","norm","norm","good","norm","good","brutal","full");
                }
            }
    popupennemy = irandom_range(0,100);
            if(popupennemy >= 50)then {
            with(instance_create_depth(x,y,ship))
                                        {
                                        corporation=info_map("map",a,"owners");
                                        numb_corp[corporation]+=1; action[0]:="battle";
                                        isInvader=1;
                                        alarm[5]=irandom(500); 
                                        Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                        }
    }
    if (popupennemy >= 60) then {
    with(instance_create_depth(x,y,ship))
                                {
                                corporation=info_map("map",a,"owners");
                                numb_corp[corporation]+=1; action[0]:="battle";
                                isInvader=1;
                                alarm[5]=irandom(500); 
                                Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                }
        } 
    }
else if (room=lv4_1 or room=lv4_2 or room=lv4_3) then
    {
    if(global.quality==1 || global.quality==3) ship_numb=5; else ship_numb=8;
    //ÊÎÐÀÁËÈ---------------------------------------
    if instance_number(ships)<ship_numb*2 then
        {
        with(teleport)
            {
            if map1=room then a:=map2 else a:=map1;
                if info_map("map",a,"owners")<=2 then
                    {
                    if info_map("map",a,"owners")=info_map("map",room,"owners") then
                        while numb_corp[info_map("map",a,"owners")]<(ship_numb-irandom(3)) do
                            {
                            with(instance_create_depth(x,y,ship))
                                {
                                corporation=info_map("map",a,"owners");
                                numb_corp[corporation]+=1; action[0]:="battle";
                                alarm[5]=irandom(500);
                                Power:=choose("norm","norm","norm","good","good","good","good","brutal","brutal","brutal","brutal","full","full");
                                }
                            }
                    else while numb_corp[info_map("map",a,"owners")]<((ship_numb div 2)-irandom(4))div 2 do
                            {
                            with(instance_create_depth(x,y,ship))
                                {
                                corporation=info_map("map",a,"owners");
                                numb_corp[corporation]+=1; action[0]:="battle";
                                alarm[5]=irandom(500);
                                Power:=choose("norm","norm","norm","good","good","good","good","brutal","brutal","brutal","brutal","full","full");
                                }
                            }
                    }
                else while numb_corp[info_map("map",room,"owners")]<ship_numb div 2 do
                            {
                            with(instance_create_depth(x,y,ship))
                                {
                                corporation=info_map("map",room,"owners");
                                numb_corp[corporation]+=1; action[0]:="battle";
                                alarm[5]=irandom(500);
                                Power:=choose("norm","norm","norm","good","good","good","good","brutal","brutal","brutal","brutal","full","full");
                                }
                            }
            }
        }
    //Ïóòåøåñòâåííèêè
    for (i=1; i<=choose(1,2)-numb_travelers; i+=1)
            {
            with(teleport) 
                {
                if info_map("map",map1,"owners")=info_map("map",room,"owners") and
                    info_map("map",map2,"owners")=info_map("map",room,"owners") then
                        {
                        a:=id;
                        }
                else if info_map("map",map1,"owners")=3 or
                    info_map("map",map2,"owners")=3 then
                        {
                        b:=id;
                        }
                }
            xx:=choose(a,b);
            if xx=a then yy:=b
            else if xx=b then yy:=a;
            with(instance_create_depth(xx.x,xx.y,ship))
                {
                alarm[5]=irandom(500);
                action[0]:="travel";
                action[1]:=yy;
                corporation:=info_map("map",room,"owners");
                Power:=choose("norm","norm","norm","good","good","good","good","brutal","brutal","brutal","brutal","full","full");
                }
            }
    } 
              
else if room=lv4_4  then  
    {
    if (global.quality==1 || global.quality==3) ship_numb=8; ship_numb=15;
    //Êîðàáëè.
        if instance_number(ship)<ship_numb then{
            while instance_number(ship) < ship_numb * 2
                {
                with(instance_create_depth(irandom_range(100,room_width-100),irandom_range(100,room_height-100),ship))
                    {
                    alarm[5]=1;
                    corporation=choose(0,1,23)
                    action[0]:="battle";
                    //if corporation=0 then {pvpClan = "mmo"; global.pvpmmo+=1}
                    //else if corporation=1 then {pvpClan = "eic"; global.pvpeic+=1}
                    //else {pvpClan = "vru"; global.pvpvru+=1}                
                    //Power:=choose("good","brutal","brutal","brutal","full","full");
                    Power:=choose("norm","norm","norm","good","good","good","good","brutal","brutal","brutal","brutal","full","full");
                    }}
                }
            }
            
            /*         

else if room=chaos then  
    {
    show_protocol_message("NOOOOOWW");
    /*
    with(instance_create_depth(gamer.x+100,gamer.y+100,ship))
                {
                alarm[5]=1;
                action[0]:="battle";
                corporation:=1;
                Power:=choose("full");
                isBot:="Yes";
                //isbotter=choose(1,0,1,0,0)
                }
    ship_numb=15;
    //Êîðàáëè.
        if instance_number(ship)<ship_numb then{
            while instance_number(ship) < ship_numb * 2
                {
                with(instance_create_depth(irandom_range(100,6000-100),irandom_range(100,3750-100),ship))
                    {
                    alarm[5]=1;
                    corporation=choose(0,1,23)
                    action[0]:="battle";
                    //if corporation=0 then {pvpClan = "mmo"; global.pvpmmo+=1}
                    //else if corporation=1 then {pvpClan = "eic"; global.pvpeic+=1}
                    //else {pvpClan = "vru"; global.pvpvru+=1}                
                    //Power:=choose("good","brutal","brutal","brutal","full","full");
                    Power:=choose("norm","norm","norm","good","good","good","good","brutal","brutal","brutal","brutal","full","full");
                    }}
                }
                
            } */                       
           
            
           /* 
else if room=lv4_5 then  
    {
//ALIENS :D
    if instance_number(boss_streuner)<uberMap then
        while instance_number(boss_streuner)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_streuner);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
    if instance_number(uber_streuner)<uberMap then
        while instance_number(uber_streuner)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_streuner);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}            
    if instance_number(boss_StreuneR)<uberMap then
        while instance_number(boss_StreuneR)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_StreuneR);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
    if instance_number(uber_StreuneR)<uberMap then
        while instance_number(uber_StreuneR)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_StreuneR);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}            
    if instance_number(boss_lordakia)<uberMap then
        while instance_number(boss_lordakia)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_lordakia);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}} 
    if instance_number(uber_lordakia)<uberMap then
        while instance_number(uber_lordakia)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_lordakia);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}  
    if instance_number(boss_saimon)<uberMap then
        while instance_number(boss_saimon)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_saimon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}} 
    if instance_number(uber_saimon)<uberMap then
        while instance_number(uber_saimon)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_saimon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}    
    if instance_number(boss_mordon)<uberMap then
        while instance_number(boss_mordon)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_mordon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
    if instance_number(uber_mordon)<uberMap then
        while instance_number(uber_mordon)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_mordon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}} 
    if instance_number(boss_sibelonit)<uberMap then
        while instance_number(boss_sibelonit)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_sibelonit);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}  
    if instance_number(uber_sibelonit)<uberMap then
        while instance_number(uber_sibelonit)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_sibelonit);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
    if instance_number(boss_kristallin)<uberMap then
        while instance_number(boss_kristallin)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_kristallin);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
    if instance_number(uber_kristallin)<uberMap then
        while instance_number(uber_kristallin)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_kristallin);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}      
    if instance_number(boss_devolarium)<uberMap then
        while instance_number(boss_devolarium)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_devolarium);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}  
    if instance_number(uber_devolarium)<uberMap then
        while instance_number(uber_devolarium)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_devolarium);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}  
    if instance_number(boss_sibelon)<uberMap then
        while instance_number(boss_sibelon)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_sibelon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
    if instance_number(uber_sibelon)<uberMap then
        while instance_number(uber_sibelon)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_sibelon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}  
    if instance_number(boss_lordakium)<uberMap then
        while instance_number(boss_lordakium)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_lordakium);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}   
    if instance_number(uber_lordakium)<uberMap then
        while instance_number(uber_lordakium)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_lordakium);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}   
    if instance_number(boss_kristallon)<uberMap then
        while instance_number(boss_kristallon)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_kristallon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}   
    if instance_number(uber_kristallon)<uberMap then
        while instance_number(uber_kristallon)<uberMap*2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),uber_kristallon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}                                                                                                                                                                                                       
    ship_numb=4;
    //Êîðàáëè.
    if instance_number(ship)<ship_numb then{
            while instance_number(ship) < ship_numb
                {
                with(instance_create_depth(irandom_range(100,room_width-100),irandom_range(100,room_height-100),ship))
                    {
                    alarm[5]=1;
                    corporation=choose(0,1,23)
                    action[0]:="hunt_mob";                
                    Power:=choose("norm","norm","norm","good","fish","fish","good","good","good","brutal","brutal","brutal","brutal","full","full");
                    }}
                }
            }               
if (room=lv1_5 or room=lv2_5 or room=lv3_5) then
    {
    //Ìîáû.
    if instance_number(lordakia)<smallAlien/2 then
        while instance_number(lordakia)<smallAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),lordakia);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(lordakium)<largeAlien/2 then
        while instance_number(lordakium)<largeAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),lordakium);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}    
            
    if instance_number(boss_lordakium)<bossNormal/2 then
        while instance_number(boss_lordakium)<bossNormal
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_lordakium);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}  
            
    if instance_number(sibelonit)<smallAlien/2 then
        while instance_number(sibelonit)<smallAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),sibelonit);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}} 
            
    if instance_number(boss_sibelonit)<bossNormal then
        while instance_number(boss_sibelonit)<bossNormal/2
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_sibelonit);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}      
                                                                                                                                       
    //Áîíóñíûå êîðîáêè.
    if instance_number(bonus_box)<bonusbox_limit/2 then
        while instance_number(bonus_box)<bonusbox_limit
            {instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),bonus_box);} 
    //ÊÎÐÀÁËÈ---------------------------------------
    for (i=1; i<=4-numb_waiters; i+=1)
            {
            a:=1+irandom(10);
            b:=0;
            if a=10 then 
                {
                a:=teleport.id;
                b:=100;
                }
            }
    for (i=1; i<=3-numb_bonus_grubers; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1,0,1,0,1,0)
                alarm[5]=irandom(500);
                action[0]:="bonus_grub";
                corporation:=info_map("map",room,"owners");
                Power:=choose("good","norm","fish","fish","fish","fish","norm","norm","good","good","full");
                }
            }
    for (i=1; i<=6-numb_hunters_mob; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1,0,1,0,1,0)
                alarm[5]=irandom(500);
                action[0]:="hunt_mob";
                corporation:=info_map("map",room,"owners"); 
                Power:=choose("norm","norm","fish","fish","fish","fish","good","norm","good","good","good","brutal","brutal","full");
                }
            }
    popupennemy = irandom_range(0,100);
            if(popupennemy >= 40)then {
            with(instance_create_depth(x,y,ship))
                                        {
                                        corporation=info_map("map",a,"owners");
                                        numb_corp[corporation]+=1; action[0]:="battle";
                                        isInvader=1;
                                        alarm[5]=irandom(500); 
                                        Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                        }
    }
    if (popupennemy >= 60) then {
    with(instance_create_depth(x,y,ship))
                                {
                                corporation=info_map("map",a,"owners");
                                numb_corp[corporation]+=1; action[0]:="battle";
                                isInvader=1;
                                alarm[5]=irandom(500); 
                                Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                }
        } 
    }
if (room=lv1_6 or room=lv2_6 or room=lv3_6) then
    {
    //Ìîáû.
    if instance_number(kristallin)<smallAlien/2 then
        while instance_number(kristallin)<smallAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),kristallin);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(cubikon)<1 then
        while instance_number(cubikon)<1
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),cubikon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}    
            
    if instance_number(boss_kristallin)<bossNormal/2 then
        while instance_number(boss_kristallin)<bossNormal
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_kristallin);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}  
            
    if instance_number(kristallon)<largeAlien/2 then
        while instance_number(kristallon)<largeAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),kristallon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}  
                                                                                                                                       
    //Áîíóñíûå êîðîáêè.
    if instance_number(bonus_box)<bonusbox_limit/2 then
        while instance_number(bonus_box)<bonusbox_limit
            {instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),bonus_box);} 
    //ÊÎÐÀÁËÈ---------------------------------------
    for (i=1; i<=4-numb_waiters; i+=1)
            {
            a:=1+irandom(10);
            b:=0;
            if a=10 then 
                {
                a:=teleport.id;
                b:=100;
                }
            }
    for (i=1; i<=3-numb_bonus_grubers; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1,0,1,0,1,0)
                alarm[5]=irandom(500);
                action[0]:="bonus_grub";
                corporation:=info_map("map",room,"owners");
                Power:=choose("good","fish","fish","fish","fish","good","good","norm","norm","full");
                }
            }
    for (i=1; i<=6-numb_hunters_mob; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1,0,1,0,1,0)
                alarm[5]=irandom(500);
                action[0]:="hunt_mob";
                corporation:=info_map("map",room,"owners"); 
                Power:=choose("norm","fish","fish","fish","fish","norm","good","good","good","good","brutal","brutal","full");
                }
            }
    popupennemy = irandom_range(0,100);
            if(popupennemy >= 40)then {
            with(instance_create_depth(x,y,ship))
                                        {
                                        corporation=info_map("map",a,"owners");
                                        numb_corp[corporation]+=1; action[0]:="battle";
                                        isInvader=1;
                                        alarm[5]=irandom(500); 
                                        Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                        }
    }
    if (popupennemy >= 60) then {
    with(instance_create_depth(x,y,ship))
                                {
                                corporation=info_map("map",a,"owners");
                                numb_corp[corporation]+=1; action[0]:="battle";
                                isInvader=1;
                                alarm[5]=irandom(500); 
                                Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                }
        } 
    }
if (room=lv1_7 or room=lv2_7 or room=lv3_7) then
    {
    //Ìîáû.
    if instance_number(kristallin)<smallAlien/2 then
        while instance_number(kristallin)<smallAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),kristallin);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}
           
    if instance_number(boss_kristallin)<bossNormal/2 then
        while instance_number(boss_kristallin)<bossNormal
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_kristallin);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}  
            
    if instance_number(kristallon)<largeAlien/2 then
        while instance_number(kristallon)<largeAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),kristallon);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}  
                                                                                                                                       
    //Áîíóñíûå êîðîáêè.
    if instance_number(bonus_box)<bonusbox_limit/2 then
        while instance_number(bonus_box)<bonusbox_limit
            {instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),bonus_box);} 
    //ÊÎÐÀÁËÈ---------------------------------------
    for (i=1; i<=4-numb_waiters; i+=1)
            {
            a:=1+irandom(10);
            b:=0;
            if a=10 then 
                {
                a:=teleport.id;
                b:=100;
                }
            }
    for (i=1; i<=3-numb_bonus_grubers; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1,0,1,0,1,0)
                alarm[5]=irandom(500);
                action[0]:="bonus_grub";
                corporation:=info_map("map",room,"owners");
                Power:=choose("good","fish","fish","fish","fish","norm","norm","good","good","full");
                }
            }
    for (i=1; i<=6-numb_hunters_mob; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1,0,1,0,1,0)
                alarm[5]=irandom(500);
                action[0]:="hunt_mob";
                corporation:=info_map("map",room,"owners"); 
                Power:=choose("norm","fish","fish","fish","fish","norm","good","good","good","norm","good","brutal","brutal","full");
                }
            }
    popupennemy = irandom_range(0,100);
            if(popupennemy >= 40)then {
            with(instance_create_depth(x,y,ship))
                                        {
                                        corporation=info_map("map",a,"owners");
                                        numb_corp[corporation]+=1; action[0]:="battle";
                                        isInvader=1;
                                        alarm[5]=irandom(500); 
                                        Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                        }
    }
    if (popupennemy >= 60) then {
    with(instance_create_depth(x,y,ship))
                                {
                                corporation=info_map("map",a,"owners");
                                numb_corp[corporation]+=1; action[0]:="battle";
                                isInvader=1;
                                alarm[5]=irandom(500); 
                                Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                }
        } 
    }
if (room=lv1_8 or room=lv2_8 or room=lv3_8)then
    {
    //Ìîáû.
    if instance_number(StreuneR)<smallAlien/2 then
        while instance_number(StreuneR)<smallAlien
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),StreuneR);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}

    if instance_number(boss_StreuneR)<bossNormal/2 then
        while instance_number(boss_StreuneR)<bossNormal
            {a=instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),boss_StreuneR);
            with (a)
            {while place_meeting(x,y,base) {x=random_range(20,room_width-20); y=random_range(20,room_height-20);}}}    
                                                                                                                                       
    //Áîíóñíûå êîðîáêè.
    if instance_number(bonus_box)<bonusbox_limit/2 then
        while instance_number(bonus_box)<bonusbox_limit
            {instance_create_depth(random_range(20,room_width-20),random_range(20,room_height-20),bonus_box);} 
    //ÊÎÐÀÁËÈ---------------------------------------
    for (i=1; i<=4-numb_waiters; i+=1)
            {
            a:=1+irandom(10);
            b:=0;
            if a=10 then 
                {
                a:=teleport.id;
                b:=100;
                }
            }
    for (i=1; i<=3-numb_bonus_grubers; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1,0,1,0,1,0)
                alarm[5]=irandom(500);
                action[0]:="bonus_grub";
                corporation:=info_map("map",room,"owners");
                Power:=choose("good","fish","fish","norm","norm","good","good","full");
                }
            }
    for (i=1; i<=6-numb_hunters_mob; i+=1)
            {
            a:=instance_find(teleport,irandom((instance_number(teleport))-1));
            with(instance_create_depth(a.x,a.y,ship))
                {
                //isbotter=choose(1,0,1,0,1,0,1,0,1,0)
                alarm[5]=irandom(500);
                action[0]:="hunt_mob";
                corporation:=info_map("map",room,"owners"); 
                Power:=choose("norm","fish","fish","norm","good","good","good","good","brutal","brutal","full");
                }
            }
    popupennemy = irandom_range(0,100);
            if(popupennemy >= 40)then {
            with(instance_create_depth(x,y,ship))
                                        {
                                        corporation=info_map("map",a,"owners");
                                        numb_corp[corporation]+=1; action[0]:="battle";
                                        isInvader=1;
                                        alarm[5]=irandom(500); 
                                        Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                        }
    }
    if (popupennemy >= 60) then {
    with(instance_create_depth(x,y,ship))
                                {
                                corporation=info_map("map",a,"owners");
                                numb_corp[corporation]+=1; action[0]:="battle";
                                isInvader=1;
                                alarm[5]=irandom(500); 
                                Power:=choose("norm","good","good","brutal","brutal","brutal","brutal","full","full");
                                }
        } 
    }   
alarm[0]=500; //500        