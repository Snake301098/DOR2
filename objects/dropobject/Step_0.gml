if movement = "bouncing"
{
	x += xdec;
	y += ydec;
}

if object_qty > 0
{
	if movement = "to_player"
	{
		move_towards_point(gamer.x,gamer.y-30,irandom_range(8,15));
		if point_distance(x,y,gamer.x,gamer.y-30) <= 15 event_user(0);
	}

	if movement = "pause"
	{
		move_towards_point(gamer.x,gamer.y-30,irandom_range(1,5));
	}

	if movement = "touched_player"
	{
		ydec2 += 1.2;
		y = gamer.y-30 - ydec2;
		x = gamer.x;
		if image_alpha <= 0.05 then instance_destroy();
	}
}

if movement = "pause" and object_qty = 0 then instance_destroy();

