/// @description escape

if action[0] = "running"
{
	if hasJumped=0
	{
		hasJumped=1
		alarm[7]=irandom_range(50,70);
	}
}
