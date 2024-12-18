/// @description Insert description here
// You can write your code in this editor

//if instance_exists(owner) then image_index = owner.image_index

if instance_exists(owner.target) then target = owner.target else target = noone
if owner.attacking = true then attacking = true

if attacking=false
{
	image_index = (direction *image_number / 360);
}
else
{
	if instance_exists(target) and attacking = true
	{
		directions=point_direction(x,y,round(target.x),round(target.y)); 
		image_index=(directions*image_number/360)
	}
}

if kamikaze = true and instance_exists(target)
{
	if target.corporation != owner.corporation
	{
		move_towards_point(target.x,target.y,ship_speed)
		if place_meeting(x,y,target)
		{
			kamikaze = false
			alarm[2] = 20;
		}
	}
}


