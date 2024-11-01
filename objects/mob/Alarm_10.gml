///@description run

if own_health<health_def*0.15 then //or own_shield_bilo>own_shield 
    {
		var _way = instance_create_depth(_run_to_x,_run_to_y,0,way);
		_way.owner = id;
    }
alarm[10]=irandom_range(15,50);