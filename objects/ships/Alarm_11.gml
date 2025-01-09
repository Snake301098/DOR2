/// @description RSB


if count <= 1 then firing=14
var vengx,vengy,goliex,goliey,uses;

//attacking = true

if id = gamer.id and hasused = 0
{
	if global.x6 < gamer.guns then {show_HUD_message("No enough ammos"); exit;}
	global.x6 -= gamer.guns; 
	update_stats("x6_used",gamer.guns)
	if gamer.attacking = false then gamer.attacking = true
}

if instance_exists(target)
{
	uses=5
	if hasused=0 then
	{
		
		with(target) a:=distance_to_object(gamer);
		if ((distance_to_object(gamer)<500) or (a<400) or (object_index=gamer)) then 
		{
		    if (point_distance(x,y,gamer.x,gamer.y) <= 500)
		    {
				a:=audio_play_sound(rsb_sound,1,false);
		    }
		}
		
		hasused=1     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
		
		var ii = instance_create_depth(x+lengthdir_x(94,image_angle),y+lengthdir_y(94,image_angle),0,rsb);
		var a =instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
		ii.speed = ((global.laser_speed)/2);
		ii.target:=target; ii.owner:=id;
		ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);
		alarm[10] = global.rsb_cooldown;

	}


	if count > 0
	{
		firing=0
		//-------------------------------
		//Make sure you name ALL the vengies
		if Ship="vengeance" or Ship="revenge" or Ship="avenger" or Ship="lightning" or Ship="admin" or Ship="spearhead" then 
		{
			while uses>0 
			{
				//---------------------
				SEEDVENG=irandom_range(1,4)
				if SEEDVENG=1      then {vengx = x+lengthdir_x(51.55,image_angle+18)    vengy = y+lengthdir_y(51.55,image_angle+18)}
				else if SEEDVENG=2 then {vengx = x+lengthdir_x(51.55,image_angle-18)    vengy = y+lengthdir_y(51,image_angle-18)}
				else if SEEDVENG=3 then {vengx = x+lengthdir_x(48.50,image_angle+81.70) vengy = y+lengthdir_y(48.50,image_angle+81.70)}
				else if SEEDVENG=4 then {vengx = x+lengthdir_x(48.50,image_angle-81.70) vengy = y+lengthdir_y(48.50,image_angle-81.70)}
				//---------------------
				ii = instance_create_depth(vengx,vengy,0,rsb);
				a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
				ii.speed = ((global.laser_speed)/1.5);
				ii.target:=target; ii.owner:=id;
				ii.damage:=0; ii.drawDamage=false; with(ii) event_user(0);
				uses-=1
			}
			count-=1; 
			alarm[11]=6;
		}
		else 
		{
			while uses>0 
			{
				//---------------------
				SEEDGOLIE=irandom_range(1,4)
				if SEEDGOLIE=1      then {goliex = x+lengthdir_x(34.48,image_angle+119.54) goliey = y+lengthdir_y(34.48,image_angle+119.54)}
				else if SEEDGOLIE=2 then {goliex = x+lengthdir_x(68.10,image_angle+29.54)  goliey = y+lengthdir_y(68.10,image_angle+29.54)}
				else if SEEDGOLIE=3 then {goliex = x+lengthdir_x(70.71,image_angle-28.74)  goliey = y+lengthdir_y(70.71,image_angle-28.74)}
				else if SEEDGOLIE=4 then {goliex = x+lengthdir_x(32.65,image_angle-117.35) goliey = y+lengthdir_y(32.65,image_angle-117.35)}
				//---------------------
				ii = instance_create_depth(goliex,goliey,0,rsb);
				a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
				ii.speed = ((global.laser_speed)/1.5);
				ii.target:=target; ii.owner:=id;
				ii.damage:=0; ii.drawDamage=false; with(ii) event_user(0);
				uses-=1
			}
			count-=1; 
			alarm[11]=6;
		}  
	}
}

