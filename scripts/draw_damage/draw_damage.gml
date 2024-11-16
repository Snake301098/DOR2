function draw_damage(ship_id,dmg,color)
{
	a=instance_create_depth(round(0),round(0),-5500,damage_drawer)
	a.idship=ship_id;
	a.t=dmg; //dmg
	a.color_1=color;
	
	if color != c_lime
	{
		if ship_id = gamer.id then with(gamer){alarm[2] = 3*60} else with(ship_id){alarm[4]=3*60}
		with(shield_restore_ctrl){if owner=ship_id then instance_destroy();}
		with(repbot){if owner=ship_id then instance_destroy();}
	}
}