event_inherited();

//FOLLOW CHEF
#region

if chef > 0 and action[0] != "running" then 
{
	if path_index != follow_chef_0 and path_index != follow_chef_1 and path_index != follow_chef_2	and path_index != follow_chef_3 and path_index != follow_chef_4 and path_index != follow_chef_5 and path_index != follow_chef_6 and path_index != follow_chef_7 then 
	{
		//path_start(follow_chef,ship_speed,path_action_continue,false)
		//path_scale = random_range(1,3);
		//path_orientation = point_direction(x,y,chef.x,chef.y);
		path_end();
	}
}


/*
actionclock-=1;

if (actionclock < 0) then 
{
    
    actionclock = 1500
    
    //IF HEALER
    if action[0]="healer" then
    {
        for (i=1; i<=15; i+=1) 
        {
             testship = instance_find(ships, irandom(instance_number(ships) - 1));
             if testship.corporation = corporation and testship.id != id and distance_to_point(testship.x,testship.y) < 1000 then
             {
                chef = testship;
                break;  
             }                 
        }
    } else {
    
    //if (irandom(0) == 0) then
    //{
        buffership = instance_find(ship, irandom(instance_number(ship) - 1));
        if (buffership.RPOINT > RPOINT and buffership.corporation == corporation) then
        {
            chef = buffership.id;
            
        }
        
        //show_protocol_message(string(RPOINT));
    //}
    //move_towards_point(1000,1000,30);
    if (irandom(round(instance_number(ship))*2) == 0 and corporation == gamer.corporation) then
    {
        chef = gamer.id;
    }
    
    if (irandom(3) == 0) then
    {
        chef = 0;
    }
    //show_protocol_message(chef.nickname);
}

//show_protocol_message("okkk");
//move_towards_point(chef.x, chef.y, 30)

if chef != 0 then
{
    if irandom(100) == 0 then
    {
        if chef.target!=noone and chef.attacking=true then {target=chef.target}
    }
}
}


//BEHAVIOR WITH CHEF
if chef != 0 then
{
    //show_protocol_message("okkk");
    //move_towards_point(chef.x, chef.y, 30)
    if chef.speed=0 then 
        {
            if distance_to_object(chef) > 80 then 
            {
                //show_protocol_message("RANGE > 50");
                move_towards_point(chef.x+random_range(-20,20),chef.y+random_range(-20,20),ship_speed); //*random_range(0.8,1.3)
            }
        }
        else if chef.speed > 1 then
        {
            if distance_to_object(chef) > 200 then 
            {
                //show_protocol_message("RANGE > 150");
                //show_protocol_message(chef.x);
                attacking=false;
                target:=noone;
                attacking=false;
                move_towards_point(chef.x+random_range(-5,5),chef.y+random_range(-5,5),(ship_speed));//*2
            }
            else if distance_to_object(chef) > 80 then 
            {
                //show_protocol_message("RANGE > 50");
                move_towards_point(chef.x+random_range(-20,20),chef.y+random_range(-20,20),ship_speed);//*random_range(0.8,1.3)
            }
        }

    if(target != noone and abs(point_distance(chef.x,chef.y,target.x,target.y))>1200) then 
    {
        //show_protocol_message("OUT OF RANGE"); attacking=false;lock_=false; target:=noone;
    }
}
*/
#endregion

//CONTROLPOINT
#region
/*
if instance_exists(controlpoint) then
{
    cp = instance_nearest(x,y,controlpoint);
    xdec=irandom_range(-200,200);
    ydec=irandom_range(-200,200);
    if distance_to_point(cp.x+xdec, cp.y+ydec) > 900 then
    {
        cpisfar="yes";
    } else cpisfar="no";
} else cpisfar="no";  */ 
#endregion

//FIXES
#region
//if !instance_exists(target) then target=noone;

if damageToDraw>0 and hasStartedAlarm8=false then {hasStartedAlarm8=true; alarm[8] = 6;}


if instance_exists(target) and waiting_cp_spawn = 0 then 
{  
	if distance_to_object(target) > irandom_range(0.7*range+sprite_width,range+sprite_width) then 
	{
        with (way) {if owner=other.id then instance_destroy()};
        with(instance_create_depth(target.x,target.y,0,way)) {owner=other.id;}
	}
}


			
#endregion

//IMPROVED AI
#region
/*
OwnerID = id
if attacking=true then{
//attacking

if instance_exists(target) then {
if target.object_index=ship or target.object_index=gamer then{
//Proper target
if distance_to_object(target) > range*2 then
{move_towards_point(target.x,target.y,ship_speed)}


/*
if distance_to_object(target) < range*1.5 then{
//Proper range
//Blabla random check
if BOOMGOESISH=0 then {SetVar1 = irandom_range(0,100)}
if BOOMGOESEMP=0 then {SetVar2 = irandom_range(0,100)}
if SetVar1 <= 5 then BOOMGOESISH=1
if SetVar2 <= 10 then BOOMGOESEMP=1

//Cast EMP @ <80% hp or 40% shield left
if (own_health <= ((health_def/100)*80))  and (canuseemp=1 and ish=0 and BOOMGOESEMP=1 and emp=0) then{ //or own_shield<=((shield_def/100)*35))
if irandom_range(0,100) <= 10 then{
if hasemp=1 then{
empobj=instance_create(x,y,emp_obj)
empobj.owner=OwnerID
emp=1
BOOMGOESEMP=0
MyCooldown.alarm[2]=1.5*room_speed*2.5
canuseemp=0;
MyCooldown.alarm[1]=15*room_speed*2.5;}}}

//Now let"s do some ISH stuff :)
//Cast ISH when hp and shield are REALLY low, and you can"t use EMP yet
if (own_health <= ((health_def/100)*60)) and ( canuseemp=0 and canuseish=1 and emp=0 and BOOMGOESISH=1 and ish=0) then{
if irandom_range(0,100) <= 10 then{
if hasish=1 then{
ishobj=instance_create(x,y,ish_obj)
ishobj.owner=OwnerID
ish=1
BOOMGOESISH=0
MyCooldown.alarm[4]=2*room_speed*2.5
canuseish=0;
MyCooldown.alarm[3]=15*room_speed*2.5;}}}


//Warrep and shieldbackup
/*
if(canshieldbackup && hasshieldbackup){ //Cast shieldbackup if shield is below 10%
    if(own_shield < ((shield_def/100)*25) ){
        MyCooldown.alarm[8] = 15*room_speed*2.5;
        temp = instance_create(x,y,shieldbackup);
        temp.owner = id;
        canshieldbackup = false;
    }
}
*//*
if(canwarrep && haswarrep){
    if( (own_health < ((health_def/100)*40) ) || (own_health < ((health_def/100) * 50)  )  ){ //&& own_shield < ((shield_def/100) * 35)
        MyCooldown.alarm[7] = 15*room_speed*2.5;
        temp = instance_create(x,y,warrep);
        temp.owner = id;
        canwarrep = false;
    }
}

//SMARTBOEM!
if(cansmb && hassmb){
    if(target.ish != 1 && target.own_health > 50000 && irandom_range(0,100) <= 5 && distance_to_object(target) < 1250){
        OwnerID=id;
        a=instance_create(x,y,smb_obj)
        a.ownerNumber = id;
        cansmb=0;
        MyCooldown.alarm[9]=20*room_speed*2.5;
    } 
}

//Check if in range for rsb
if distance_to_object(target) <= range and canusersb=1 and hasemp=1 then{
event_user(15)
}//Not within range for emp/ish :(
}else {exit;}
//Wrong target
} else {exit;}*/
//Not attacking
/*} }else {exit;}
}*/
#endregion

//OTHER FIXES
#region
/*
if (own_health > health_def){
    own_health = health_def;
}
//Let"s define stuff :D I like defining stuff :D
var EscapePortal, myid;
EscapePortal = instance_nearest(x,y,teleport)
myid         = id
/*
if room=lvJPA then{
if target!=gamer.id target=gamer.id
if corporation=gamer.corporation then {id.corporation=irandom_range(0,3)} else {break;}
if ammo!=MaxAmmo then ammo=MaxAmmo
}
*/

//If they"re botters, they ain"t gonna be shooting back, now are they?
/*if isbotter=1 then
{
//Don"t want botters to shoot at us, duh!
{if target=gamer.id and own_health > (health_def*0.9)  then target=instance_nearest(x,y,mob)} //and own_shield > (shield_def*0.7)
//Check if health is pretty darn low.. Like 90%ish?? DAFUQ?? LOWW???
//if own_health < (health_def*0.9) or own_shield <(shield_def*0.7) then {
if flee=true and distance_to_object(gamer) < gamer.range then{
target=EscapePortal
attacking=false
runing=true
fleeing=true
//Try to escape, like the silly botter you are :D
        with (way) {if owner=other.id then instance_destroy()};
        with(instance_create_depth(EscapePortal.x,EscapePortal.y,0,way))
            {owner=myid;}
if distance_to_object(EscapePortal) < 15 then { visible=false; instance_destroy();}            
}
//Health isn"t that low.... 
}

//Makes sure you won"t get shot at from other side of map :)
//if instance_exists(target) then{
//if distance_to_object(target) > range+sprite_width then
//{attacking=false}}

if instance_exists(target) then {  
if distance_to_object(target) > range+sprite_width then {
        with (way) {if owner=other.id then instance_destroy()};
        with(instance_create_depth(target.x,target.y,0,way))
            {owner=other.id;}}              }
//Makes sure you don"t get shot while cloaked
{
if instance_exists(gamer) then if target=gamer.id or target=gamer.object_index then
{
if attacking=true then {}
else if global.cloaked=1 then {target:=noone;}
}
}
*/
#endregion

if own_health <= 0
{   
    instance_destroy();
}


if own_health > health_def then own_health = health_def;

followHP = lerp(followHP, own_health, 0.02) //hit health bar point effect

if action[0] = "running"
{
	path_end();
	var nearest_portal = instance_nearest(x,y, teleport);
	if  instance_exists(nearest_portal)
	{
		move_towards_point(nearest_portal.x,nearest_portal.y,ship_speed)
	}
}

if Ship = "aegis" then action[0]="healer"
if alarm[2]<0 then alarm[2]=11*2*2
/*
//if too far from target
if instance_exists(target) then 
{
	if distance_to_object(target) > irandom_range(500,800) then 
	{
		alarm[1] = 1;
	}
}

//if too far from CP
if instance_exists(controlpoint) then 
{
	if distance_to_object(controlpoint) > 50//irandom_range(100,200) then 
	{
		alarm[1] = 1;
	}
}



//if now has a new target or no target anymore
if (hadTarget = 1 and instance_exists(target) = false) or (hadTarget = 0 and instance_exists(target)) then  alarm[1] = 1;



/* OLD
if isStopped=0 then
{
	//if reached destination	
	if point_distance(x,y,x2-xdec,y2-ydec) < 60 and cooldown_alarm1 = 1 then event_user(2);
	
	//if now has a new target or no target anymore
	if (hadTarget = 1 and instance_exists(target) = false) or (hadTarget = 0 and instance_exists(target)) and cooldown_alarm1 = 1 then event_user(2);

	//if is under attack
	
	
	
	//turn and move
	xdec = xdec*0.993;
	ydec = ydec*0.993;
	move_towards_point(x2-xdec,y2-ydec,ship_speed);
} else move_towards_point(x,y,0);

//if ship is attacked, has to defend
if isAttacked = 1 then {action[0]="battle"; event_user(2);}

/* instance_exists(target) then
{
	//mettre un cooldown
	if point_distance(x,y,target.x,target.y) > irandom_range(500,600) then alarm[1]=1;
}*/