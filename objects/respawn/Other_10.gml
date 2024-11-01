/// @description Repair on map

//DO CREDITS -500
	var portal = instance_nearest(gamer.x,gamer.y,teleport);
	gamer.x=portal.x;
	gamer.y=portal.y;
	
	//BASE CP RESPAWN
	var _base_cp_spawn;
	if room = global.cproom
	{
		var _corp = gamer.corporation;
		with(base)
		{
			if isCPspawn = true and corp = _corp then _base_cp_spawn = id;
		}
		
		if instance_exists(_base_cp_spawn)
		{
			gamer.x=_base_cp_spawn.x;
			gamer.y=_base_cp_spawn.y;
		}
	}
	
	
	
	gamer.cloaked=1;
	show_protocol_message("Invisible for 10 seconds");
	with(ship) {if target=gamer.id then target=noone}
	gamer.v_zone_bz=true;
	alarm[1]=1;
	gamer.destroyed=0;
	with(droid_obj){if owner=gamer.id then destroyed=0};
	global.cloaked=1;
	gamer.own_health=50000;