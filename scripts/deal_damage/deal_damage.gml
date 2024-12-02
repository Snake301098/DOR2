// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deal_damage(_attacker,_victim,_ammo,_bar,_damage,_side,_color=c_white,_comment="")
{
	//SIDE: "+" is getting more HP or more shield, "-" is loosing HP or shield
	
	a=instance_create_depth(round(0),round(0),-5500,damage_drawer)
	a.idship=_victim;
	a.t=_damage; //dmg
	a.color_1=_color;
	
	if _side = "-"
	{
		if _victim = gamer.id then with(gamer){alarm[2] = 3*60} else with(_victim){alarm[4]=3*60}
		with(shield_restore_ctrl){if owner=_victim then instance_destroy();}
		with(repbot){if owner=_victim then instance_destroy();}
	}
}


