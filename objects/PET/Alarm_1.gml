/// @description MOVE

if kamikaze = false or target = noone
{
	if owner.speed = 0 and distance_to_object(owner) < irandom_range(100,200)
	{
		move_towards_point(0,0,0)
	}
	else
	{
		if distance_to_object(owner) > 350
		{
			ship_speed = owner.ship_speed*random_range(0.85,1.15)
	
			if distance_to_object(owner) > 600
			{
				ship_speed = owner.ship_speed*random_range(1.15,1.55)
			}

			var xx = owner.x + irandom_range(-200,200);
			var yy = owner.y + irandom_range(-200,200);
			move_towards_point(xx,yy,ship_speed)
			//var _way = instance_create_depth(xx,yy,0,way)
			//_way.owner = id;
		}
	}
}

alarm[1] = irandom_range(30,60)