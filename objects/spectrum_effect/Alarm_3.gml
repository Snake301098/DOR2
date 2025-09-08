/// @description Check target

var a;

with owner
{
	if instance_exists(target) then {a = target} else a = -1;
}
_target = a;


alarm[3] = 15;
