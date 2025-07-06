function spawn_ship(xx=-5,yy=-5,corp,_action="farming",_isInvader=0,_shipType="goliath",_power=-1, _waiting_cp_spawn=0,nbr=1, group=false)
{
//arg0: x
//arg1: y
//arg2: corporation
//arg3: action
//arg4: isInvader
//arg5: Shiptype
//arg6: Power

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