/// @description INIT

owner.can_use_venom = false;
owner.is_using_venom = true;

var a;

with owner
{
	if instance_exists(target) then {a = target} else a = -1;
}

_target = a;
_target_old = a;

if owner = gamer.id then update_stats("venom_used")

