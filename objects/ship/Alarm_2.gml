///@description attacking

if instance_exists(target) then 
{	
	if action[0] = "battle" then ammo_selected = x4_ammo
	
	if target.v_zone_bz=true then 
	{
		attacking=false;
		target=noone;
	}
	else
	{
	//if ammo[ammo[0,0],0] / global.code1<guns  {show_HUD_message(text.no_ammo); break;}           
		if corporation=target.corporation then            
		{
			attacking=false;
			target=noone;
		}
		else
		{
			if point_distance(x,y,target.x,target.y) <= global.attack_range then
			{   
				restore:=false;
				//if GunSprite[1]<1 then 
				//{
				//	show_HUD_message(text.no_gun); break;
			    //}
				//ammo[ammo[0,0],0]-=guns*global.code1;
				not_attacking_since = 0
				event_user(1);
			}
		}
	}
}

alarm[2]=11*2*1.5;

/*
if instance_exists(target)
{
	//close range
	if distance_to_object(target) <= range then
	{
		if action[0] = "healer" then
		{
			attacking=true;
			critical_hit = false;
			event_user(6);
		}
		else
		{
			attacking=true;
			critical_hit = choose(false,false,false,false,true);
			event_user(5);
		}
	}
	//long range
	else if distance_to_object(target) <= global.range and action[0] != "healer" then
	{
		attacking=true;
		critical_hit = choose(false,false,false,false,true);
		event_user(1);
	}
}

//if action[0] = "healer" then alarm[2]=11*2*2*3 else alarm[2]=11*2*2;
alarm[2]=11*2*2;