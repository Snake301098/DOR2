///@description attacking

if instance_exists(target)
{
	//close range
	if distance_to_object(target) <= global.range_close then
	{
		if action[0] = "healer" then
		{
			attacking=true;
			critical_hit = false;
			event_user(6);
		}
		else
		{
			attacking=true;
			critical_hit = choose(false,false,false,false,true);
			event_user(5);
		}
	}
	//long range
	else if distance_to_object(target) <= global.range and action[0] != "healer" then
	{
		attacking=true;
		critical_hit = choose(false,false,false,false,true);
		event_user(1);
	}
}

//if action[0] = "healer" then alarm[2]=11*2*2*3 else alarm[2]=11*2*2;
alarm[2]=11*2*2;