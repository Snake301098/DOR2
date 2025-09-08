/// @description
audio_play_sound(select,1,false)
KeyActionCURKEY=global.KeyAction5
event_user(15);

/*
var _canusersb=0;

just_hit_rsb=1

//with(object_get_parent(gamer))
//{
	_canusersb = canusersb
//}


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
	//if ammo[ammo[0,0],0] / global.code1<guns  {show_HUD_message(text.no_ammo); break;}           
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
				//if GunSprite[1]<1 then 
				//{
				//	show_HUD_message(text.no_gun); break;
			    //}
				//ammo[ammo[0,0],0]-=guns*global.code1;
				if _canusersb = 1 then {event_perform_object(object_get_parent(gamer),ev_alarm,11);with(object_get_parent(gamer)){canusersb=0;}}
			}
			else
			{
				show_HUD_message(text.target_lenght_out);
			}
		}
	}
}



