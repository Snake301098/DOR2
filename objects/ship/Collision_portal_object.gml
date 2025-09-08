/// @description escape

if action[0] = "running" or (action[0] = "voyager" and fully_spawned = true)
{
	if hasJumped=0
	{
		hasJumped=1
		alarm[7]=irandom_range(40,80);
	}
}
