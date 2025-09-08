/// @description sprite effect

var a;

with owner
{
	if instance_exists(target) then {a = target} else a = -1;
}
_target_old = _target;
_target = a;

//if target changed or no more target then end
if _target != _target_old or _target = -1 then instance_destroy()

if instance_exists(_target) then deal_damage(owner,_target,"venom_effect",_DMG) else instance_destroy();

_DNG += 200;

if _DMG > 8500 then instance_destroy();



image_speed=1// /15;

alarm[1] = 1.5 * room_speed;

