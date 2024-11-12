///@description attacking

if instance_exists(target) then 
{
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
		}
	}
}

alarm[2]=11*2*2;

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