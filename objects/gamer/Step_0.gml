
//FIRING SPEED ---------------------------------------
#region
//if firing < 15 firing += 0.75;
//Let's make this shit toggelable :D

if global.firingspeed=1 then{
if firing < 15 firing += 0.75/2;}
if global.firingspeed=2 then{
if firing < 15 firing += 1;}
if global.firingspeed=3 then{
if firing < 15 firing+= 3;}


if firing < 15 firing += 0.5/2/1.5;
if firing >= 15 firing=15
#endregion
part_emitter_region( global.stars_sys, global._pemit1, 0, room_width, 0, room_height, ps_shape_rectangle, 0);
	

//FIRING SPEED ---------------------------------------
#region
var ii;
if attacking=true then 
{
	if firing = 15
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
				attacking=false;
			}
			else
			{
				var ammo_qty = 0;
				if ammo_selected = x1_ammo then ammo_qty = global.x1;
				if ammo_selected = x2_ammo then ammo_qty = global.x2;
				if ammo_selected = x3_ammo then ammo_qty = global.x3;
				if ammo_selected = x4_ammo then ammo_qty = global.x4;
				if ammo_selected = sab then ammo_qty = global.x5;
				if ammo_selected = rsb then ammo_qty = global.x6;
				
				if ammo_qty >= gamer.guns
				{
					if corporation=target.corporation then            
					{
						show_HUD_message(text.target_is_ally)
						attacking=false;
					}
					else
					{
						if point_distance(x,y,target.x,target.y) <= global.attack_range then
						{   
							restore:=false;
							if gamer.guns < 1 then 
							{
								show_HUD_message(text.no_gun);
				            }
							else
							{
								event_user(1);
							}
						}
						else
						{
							show_HUD_message(text.target_lenght_out);
						}
					}
				}
				else
				{
					show_HUD_message("No more ammos..");
				}
			}
		}
		firing = 0;
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




//FIXES
#region
if mouse_check_button(mb_left)=true and mouse_check_button(mb_right)=true then {attacking=false;}
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
if gamer.own_health > gamer.health_def or is_nan(own_health) then
{
	gamer.own_health=gamer.health_def
}

//fix2
if is_nan(own_shield) then own_shield = shield_def;

//Cloak fix; Prevens you from staying cloaked when shooting.
if attacking=true and global.cloaked=1 then {global.cloaked=0}

//Cloak fix; Prevents aliens/ships from even trying to lock you
{if global.cloaked=1 then cloaked=1 else if global.cloaked=0 then cloaked=0}
#endregion

//DEAD RESPAWN
if own_health <= 0
{   
	target = noone;
	attacking = false;
	//Remove gamer from targets
	with(ship){if instance_exists(target){if target = gamer.id then target = noone}}
	
	//GG lifes
	if room = GGA then global.alphalife--
	if room = GGB then global.alphalife--
	if room = GGY then global.alphalife--
	if room = GGD then global.alphalife--
	
	if global.alphalife <= 0
	{
		global.alphalife = 0
		global.alphaonmap = 0
		global.alphawave = 0
		global.alphaparts = 0
	}
	
	if global.betalife <= 0
	{
		global.betalife = 0
		global.betaonmap = 0
		global.betawave = 0
		global.betaparts = 0
	}
	
	if global.gammalife <= 0
	{
		global.gammalife = 0
		global.gammaonmap = 0
		global.gammawave = 0
		global.gammaparts = 0
	}
	
	if global.deltalife <= 0
	{
		global.deltalife = 0
		global.deltaonmap = 0
		global.deltawave = 0
		global.deltaparts = 0
	}
	
	with(PET){if owner=gamer.id then instance_destroy();}
	
	//Respawn
	if !instance_exists(respawn) then instance_create_depth(0,0,0,respawn);
}


followHP = lerp(followHP, own_health, 0.02) //hit health bar point effect
followShield = lerp(followShield, own_shield, 0.02) //hit health bar point effect

event_inherited()