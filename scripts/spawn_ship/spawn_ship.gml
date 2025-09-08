function spawn_ship(xx=-5,yy=-5,corp,_action="farming",_isInvader=0,_shipType="none",_power=-1, _waiting_cp_spawn=0,nbr=1, group=false)
{
//arg0: x
//arg1: y
//arg2: corporation
//arg3: action
//arg4: isInvader
//arg5: Shiptype
//arg6: Power


	//VOYAGER
	#region
	var voyager_x1=0;
	var voyager_x2=0;
	var voyager_y1=0;
	var voyager_y2=0;
	if _action = "voyager" and room != arena
	{
		var portal_target = 0;
		var portal_origin = 0;
		var all_portals = [];
		with portal_object {array_push(all_portals,id)}
		if array_length(all_portals) >= 2
		{
			var indice_origin = irandom_range(0,array_length(all_portals)-1)
			portal_origin = all_portals[indice_origin]
			voyager_x1 = portal_origin.x
			voyager_y1 = portal_origin.y
			array_delete(all_portals,indice_origin,1);
			
			var indice_target = irandom_range(0,array_length(all_portals)-1)
			portal_target = all_portals[indice_target]
			voyager_x2 = (portal_target.x - voyager_x1)*1000000 + voyager_x1
			voyager_y2 = (portal_target.y - voyager_y1)*1000000 + voyager_y1
		}
		else
		{
			show_message("Issue found only one portal for voyager spawning")
		}
	}
	#endregion

	var _id_chef = 0;


	var _xx, _yy;

	if group = true
	{
		if xx=-5 and yy=-5 then
		{
			_xx = irandom_range(100,room_width-100);
			_yy = irandom_range(100,room_height-100);
			
			//mob not suddenly appearing in front of gamer
			if point_distance(gamer.x,gamer.y,_xx,_yy) < 2000
			{
				_xx = room_width - _xx
				_yy = room_height - _yy
			}
		}
		else
		{
			_xx = xx
			_yy = yy
		}
	}


	for(var i=0; i<nbr;i++)
	{
		var _Ship = _shipType;

		if _power = -1  then  _power  =  choose(1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,4,4,4,5,5);
		
		if _shipType = "none" then _shipType = choose("goliath","goliath","goliath","vengeance","badships","newships");
		
		if _shipType = "newships" then _Ship = choose("aegis","aegis","aegis","citadel","citadel","spearhead");
		if _shipType = "vengeance" then _Ship = choose("vengeance","revenge","avenger","adept","corsair","lightning")
		if _shipType = "goliath" then _Ship = choose("goliath","enforcer","bastion","exalted","veteran","diminisher","venom","solace","sentinel","spectrum","saturn","goal","kick","referee")
		if _shipType="badships" then _Ship = choose("phoenix","nostromo","bigboy","leonov")

		if group = false 
		{
			if xx=-5 and yy=-5 then
			{
				_xx = irandom_range(100,room_width-100);
				_yy = irandom_range(100,room_height-100);
			
				//mob not suddenly appearing in front of gamer
				if point_distance(gamer.x,gamer.y,_xx,_yy) < 2000
				{
					_xx = room_width - _xx
					_yy = room_height - _yy
				}
			}
			else
			{
				_xx = xx
				_yy = yy
			}
		}
		z=instance_create_depth(_xx,_yy,0,ship)
		z.corporation=corp
		z.action[0]:=_action;
		z.isInvader=_isInvader;
		z.alarm[5]=irandom(500); 
		z.Shiptype=_shipType;
		z.Ship = _Ship
		z.Power:=_power;
		z.waiting_cp_spawn:=_waiting_cp_spawn;
		with(z)
		{
			event_inherited();                      //Çàïóñê ðîä. ñîáûòèÿ.
			event_user(3);
			guns_installation(id);
			own_health=health_def;
			if action[0] = "voyager" and room != arena
			{
				x = voyager_x1 + irandom_range(-100,100);
				y = voyager_y1 + irandom_range(-100,100);
				voyager_target_x = voyager_x2 + irandom_range(-100,100);
				voyager_target_y = voyager_y2 + irandom_range(-100,100);
			}
		}
		
		if group = true
		{
			if i = 0
			{
				_id_chef = z.id;
			}
			else 
			{
				z.chef = _id_chef;
			}	
		}
		
		show_debug_message(z.nickname + " " + string(z.Power))
	}
}