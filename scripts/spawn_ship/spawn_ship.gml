function spawn_ship(xx,yy,corp,_action="farming",_isInvader=0,_shipType="goliath",_power=-1, _waiting_cp_spawn=0)
{
//arg0: x
//arg1: y
//arg2: corporation
//arg3: action
//arg4: isInvader
//arg5: Shiptype
//arg6: Power
	var _Ship = _shipType;

	if _power = -1  then  _power  =  choose(1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,4,4,4,5,5);
			
	if _shipType = "vengeance" then _Ship = choose("vengeance","revenge","avenger","adept","corsair","lightning")
	if _shipType = "goliath" then _Ship = choose("goliath","enforcer","bastion","exalted","veteran","diminisher","venom","solace","sentinel","spectrum","saturn","goal","kick","referee")
	if _shipType="badships" then _Ship = choose("phoenix","nostromo","bigboy","leonov")

	z=instance_create_depth(xx,yy,0,ship)
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
	show_debug_message(z.nickname + " " + string(z.Power))
}