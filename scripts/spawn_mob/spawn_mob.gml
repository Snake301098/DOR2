/// @description
function spawn_mob(mob_name,xx=-5,yy=-5,nbr=1)
{
	for(var i=0; i<nbr;i++)
    {
		if xx=-5 and yy=-5 then
		{
			var _xx = irandom_range(50,room_width-50);
			var _yy = irandom_range(50,room_height-50);
			
			//mob not suddenly appearing in front of gamer
			if point_distance(gamer.x,gamer.y,_xx,_yy) < 2000
			{
				_xx = room_width - _xx
				_yy = room_height - _yy
			}
		}
		else
		{
			_xx = xx
			_yy = yy
		}
		instance_create_depth(_xx,_yy,0,mob_name);
	}
}