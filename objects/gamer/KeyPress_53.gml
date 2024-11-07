/// @description RSB
var _canusersb=0;
with(object_get_parent(gamer))
{
	_canusersb = canusersb
}
if _canusersb = 1 then {event_perform_object(object_get_parent(gamer),ev_alarm,11);with(object_get_parent(gamer)){canusersb=0;}}
