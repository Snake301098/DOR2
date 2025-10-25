/// @description CHECK target ZNA

var target_check = false;
if instance_exists(target)
{
	with (target)
	{
		if (distance_to_object(portal_object) or distance_to_object(base)) and (attacking = false) then target_check = true;
	}
}

if target_check then 
{
	target=noone;
	with (way) {if owner=other.id then instance_destroy()};
	speed:=0;
}

alarm[5] = irandom_range(60,150);
