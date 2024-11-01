
//FIRING SPEED ---------------------------------------
#region
//if firing < 15 firing += 0.75;
//Let's make this shit toggelable :D
/*
if global.firingspeed=1 then{
if firing < 15 firing += 0.75/2;}
if global.firingspeed=2 then{
if firing < 15 firing += 1;}
if global.firingspeed=3 then{
if firing < 15 firing+= 3;}
*/

if firing < 15 firing += 0.5;
if firing > 15 firing=15
#endregion


//FIRING SPEED ---------------------------------------
#region
var ii;
if attacking=true then 
{
	if firing = 0
	{
		if not instance_exists(target)
		{
			target = noone;
			attacking=false;
		}
	    else 
		{   
	        if target.v_zone_bz=true then 
			{
				show_HUD_message(text.target_in_security);
			}
			else
			{
			//if ammo[ammo[0,0],0] / global.code1<guns  {show_HUD_message(text.no_ammo); break;}           
				if corporation=target.corporation then            
				{
					show_HUD_message(text.target_is_ally)
				}
				else
				{
					var range = 500;
					if point_distance(x,y,target.x,target.y) <= range+target.sprite_width*0.75 then
					{   
						restore:=false;
						//if GunSprite[1]<1 then 
						//{
						//	show_HUD_message(text.no_gun); break;
			            //}
						//ammo[ammo[0,0],0]-=guns*global.code1;
						event_user(1);
					}
					else
					{
						show_HUD_message(text.target_lenght_out);
					}
				}
			}
		}
	}
}
#endregion
	

//MOVE SHIP -------------------------------------------------
#region
/*
//MOVE SHIP
xdec=0;
ydec=0;
if keyboard_check(ord("Z"))
{
    xdec+=1;
    ydec-=30;
}

if keyboard_check(ord("S"))
{
    xdec+=-1;
    ydec+=30;
}

if keyboard_check(ord("Q"))
{
    xdec-=30;
    ydec+=1;
}

 if keyboard_check(ord("D"))
{
    xdec+=30;
    ydec+=-1;
} 

if destroyed=1 or instance_exists(window_background)
{
	
}else if ((!keyboard_check(ord("Z")) and !keyboard_check(ord("S")) and !keyboard_check(ord("Q")) and !keyboard_check(ord("D"))) or (xdec=0 and ydec=0)) then with(gamer) speed=0 else with(gamer) move_towards_point(gamer.x+xdec, gamer.y+ydec, ship_speed);
*/
#endregion


//ATTACKING LAUNCHER ---------------------------------
#region
//Ïðîâåðêà ðàññòîÿíèÿ äî îáúåêòà â ëîêå è îòêðûòèå ñòðåëüáû ïî âîçìîæíîñòè.
var ii;
    if attacking=true and attacking_laser=false and stoped=false then 
    {
    if firing = shoot_delay then firing = 0;
    //if not instance_exists(target) {target = noone;attacking=false;} 
        //else 
        if firing = 0 then
        {   
            //if target.v_zone_bz=true then {show_message("NDZ"); exit }
            //firing = 1;
    //if ammo[ammo[0,0],0] / global.code1<guns  {show_message("No ammo"); }           
            //else
    //if corporation!=target.corporation then            
    //{
    //if point_distance(x,y,target.x,target.y) <= range+target.sprite_width*0.75 then
        //{   
            restore:=0;
            if guns<1 then 
                {
					show_message("No canons installed"); exit;
                }
            //if !(debug_mode and global.unlimited_ammo)
                //ammo[ammo[0,0],0]-=guns*global.code1;
				critical_hit = choose(false,false,false,false,true);
            event_user(1); //HERREEEE
        //}
            //else
            //{show_HUD_message(text.target_lenght_out); break;}
    //}
    //else {show_HUD_message(text.target_is_ally);target=noone;}
        }
    }

#endregion


//ATTACKING LASER ---------------------------------
#region
//Ïðîâåðêà ðàññòîÿíèÿ äî îáúåêòà â ëîêå è îòêðûòèå ñòðåëüáû ïî âîçìîæíîñòè.
var ii;
    if attacking_laser=true and attacking=false and stoped=false then 
    {
    if firing = shoot_delay then firing = 0;
    //if not instance_exists(target) {target = noone;attacking=false;} 
        //else 
        if firing = 0 then
        {   
            //if target.v_zone_bz=true then {show_message("NDZ"); exit }
            //firing = 1;
    //if ammo[ammo[0,0],0] / global.code1<guns  {show_message("No ammo"); }           
            //else
    //if corporation!=target.corporation then            
    //{
    //if point_distance(x,y,target.x,target.y) <= range+target.sprite_width*0.75 then
        //{   
            restore:=0;
            if lasers<1 then 
                {
                show_message("No guns installed"); exit;
                }
            //if !(debug_mode and global.unlimited_ammo)
                //ammo[ammo[0,0],0]-=guns*global.code1;
				critical_hit = choose(false,false,false,false,true);
            event_user(5); //HERREEEE
        //}
            //else
            //{show_HUD_message(text.target_lenght_out); break;}
    //}
    //else {show_HUD_message(text.target_is_ally);target=noone;}
        }
    }

#endregion


//FIXES
#region
if mouse_check_button(mb_left)=true and mouse_check_button(mb_right)=true then {attacking=false; attacking_laser=false;}
if damageToDraw>0 and hasStartedAlarm8=false then {hasStartedAlarm8=true; alarm[8] = 6;}
if visible=false then visible=true
//Autolock fix
//if target.own_health = 1000 and target.own_shield = 0 and autolock=1 then target=noone;
//BOT fix, I HOPE
if attacking=true then {with (target) {flee=true; GKILL=1;}}
//EMP fix; Make's sure you won't act like an autolocker and shoot trough EMPs :D
//if target.emp=1 then
//{
//lock_=false; target:=noone;
//}

//PET fix
//Passive fix :D
if passive=true then
{
//Check if somebody is attacking us;
var enemy;
enemy=target.target
if enemy.id = id and target.attacking=true then{
//Somebody is attacking us:D
isattacked=true;
with(repbot){instance_destroy()}
}
else
{isattacked=false;}
}

//Some weird lock fix
if target=id then target=noone;

//Health fix; Prevens HP from going over max when using energy leech.
if gamer.own_health > gamer.health_def then
{
gamer.own_health=gamer.health_def
}

//Cloak fix; Prevens you from staying cloaked when shooting.
if attacking=true and global.cloaked=1 then {global.cloaked=0}

//Cloak fix; Prevents aliens/ships from even trying to lock you
{if global.cloaked=1 then cloaked=1 else if global.cloaked=0 then cloaked=0}
#endregion

//DEAD RESPAWN
if own_health <= 0
{   
	//Remove gamer from targets
	with(ship){if instance_exists(target){if target = gamer.id then target = noone}}
	if !instance_exists(respawn) then instance_create_depth(0,0,0,respawn);
}


followHP = lerp(followHP, own_health, 0.02) //hit health bar point effect