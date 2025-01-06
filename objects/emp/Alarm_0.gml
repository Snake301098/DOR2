/// @description Init
owner.can_use_emp = false;
owner.is_using_emp = true;

if point_distance(gamer.x,gamer.y,owner.x,owner.y) <= 600 then audio_play_sound(emp_sound,1,false)

var myid = owner.id
with(ship)
{
	if instance_exists(target)
	{
		if target = myid then {target = noone; attacking=false;alarm[0]=irandom_range(30,100)}
	}
}

with(mob)
{
	if instance_exists(target)
	{
		if target = myid then {target = noone; attacking=false}
	}
}

with(gamer)
{
	if instance_exists(target)
	{
		if target = myid then {target = noone; attacking=false}
	}
}

if owner = gamer.id then update_stats("emp_used")